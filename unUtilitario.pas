unit unUtilitario;

interface

uses
 Messages, Controls, Dialogs, FMTBcd, StdCtrls, Buttons, Forms,
 ZDataset, FrmPrincipal, windows, SysUtils, MATH, Classes, jpeg, Graphics,
 IdFTPList, DateUtils, IdText, IdAttachmentFile, Shellapi, DBGrids, unConfiguracao;

type
    TRGBArray = array[Word] of TRGBTriple;
    pRGBArray = ^TRGBArray;
    ArrOfStr = array of string;

function setMensagem(menssagem, tipo: string): integer;
function getSelect(sql: String): TZQuery;
function getPosicaoCaracter(Busca, Texto : string) : integer;
function RemoveCaracterEspecial(Str: string): string;
function getNomeComputador(): string;
function Criptografia(mStr, mChave: string): string;
function getStrToCurr(DinheiroSTRING: string): Currency;
function getCurrToStr(DinheiroCURRENCY: Currency; ComR: Boolean): String;
function getSQL(sql: String): TZQuery;
function formataDataSQL(data: String): String;
function formataDinheiroSQL(dinheiro: String): String;
function getComboBox(sql: String): TStringList;
function IDCampo(CAMPO: string): integer;
function getNumeroHD(): String;
function GetVersaoSistema(): string;
function verificaStringInt(minhaString: String): boolean;
procedure conectaFTP(host,login,senha: String);
function formataDataFTP(arquivo: String): TDateTime;
function Formatadata(Data: String): String;
function NameMonth(Mes:String):String;
procedure conectaMySQL(banco,host,login,senha: String);
procedure tamanhoImagem(FileName: string; Nome: String);
procedure SmoothResize(Src, Dst: TBitmap);
function SaveJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string; Quality: Integer): Boolean;
function GetFileList(const Path: string): TStringList;
function RemoveAcentos(Frase:String): String;
function descobreCodImovel(codigoFoto: String): String;
function descobreIDSelect(query: TZQuery; campoID: String): String;
function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
function tbFileSize(const FileName: string): integer;
function verificaDuplicidade(tabela, colunaId, id, camposIgualdade: String): boolean;
procedure verificaAtualizacao();
Function wordcount(str : string) : integer;
Function contarPalavras(frase, palavra : string) : integer;
function explode(sPart, sInput: string): ArrOfStr;
Function tratarBusca(frase: String): String;
function descobrirPalavra(palavraBase, frase: String): String;
function descobrirNumero(palavraBase, frase: String): String;
procedure setBackup();
function StrIndex(const S: string; const List: array of string): Integer;
function IDCampoSTR(CAMPO: string): String;
function alinhaStringlist(lista: TStringList): String;
function preparaNumeroBoleto(numero: String): String;
procedure AjustarLargura(ComboBox: TComboBox);
function retiraFormatacaoDinheiro(DinheiroFormatado: string): Double;
function desmarcarDepositos(texto: String): string;
function desmarcarBoletos(texto: String): string;
function informacaoBoletos(texto: String): String;
procedure espera(segundos: Smallint; texto: string);
function dimobFormataCidade(cidade: String): String;
procedure salvaGrid(formulario: String; grid: TDBGrid);
function pegaGrid(formulario: String; grid: TDBGrid): TDBGrid;
function getCodigosConta(contas: String): TStringList;
function getCodigosContaSomente(posicao: integer; texto: String): String;
function getValorTotal(Coluna: String; componente: TZQuery): String;
function copiaArquivo(origem, nomeDestino, pasta: String): String;
function verificaPermissao(permissao: String): Boolean;
function PasswordInputBox(const ACaption, APrompt:string): string;
function verificaPermissaoAdministrador(permissao: String): Boolean;
function verificaAdministrador(): Boolean;
function verificaMesmaPessoa(): Boolean;
function colocarMascara(edt: String;str:String):string;
function formataTextoSQL(texto: String): String;
procedure SetHorizontalScrollBar(lb : TListBox);
function Dias_Uteis(DataI, DataF:TDateTime):Integer;
function validaPontoDinheiroChange(componente: TEdit): TEdit;
function verificaAspasSimples(componenteDB: TZQuery): boolean;
procedure usuarioLogadoRetira();
procedure usuarioLogadoColoca();
function usuarioLogadoVerifica(): Boolean;

implementation

uses unINI, IdMessage, IdMessageParts, IdAttachment, DB, unLog, thrAtualizacao;

function getSelect(sql: String): TZQuery;
Begin

     if NOT PRINCIPAL.Conexao.Connected then
     Begin
          principal.setmensagem('Você não está conectado(a) ao servidor. Favor verificar a sua rede (máquina, cabo e equipamentos) O sistema vai TENTAR RECONECTAR AUTOMATICAMENTE agora.');

          try
             PRINCIPAL.Conexao.Connected := True;
          except
                Begin
                     unUtilitario.setmensagem('Verifique os problemas da rede para conseguir usar o sistema. (O sistema será fechado.)','erro');
                     PRINCIPAL.Close;
                end;
          end;
     end;
     

      try
         result := TZQuery.Create(PRINCIPAL);
         result.Connection := PRINCIPAL.Conexao;
         result.SQL.Add(' '+sql);
         result.Open;
         //result.RecordCount;

         if POS('UPDATE', UpperCase(result.SQL.Text)) > 0 then
            setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', result.SQL.Text);

         if POS('INSERT', UpperCase(result.SQL.Text)) > 0 then
            setLogSQL('SQL INSERT', 'SQL', 'RASTREAMENTO DE COMANDOS', result.SQL.Text);

         if POS('DELETE', UpperCase(result.SQL.Text)) > 0 then
            setLogSQL('SQL DELETE', 'SQL', 'RASTREAMENTO DE COMANDOS', result.SQL.Text);

      except
            On E : Exception Do
            Begin
                 if (StrPos(pchar(E.Message), 'Failed to establish a connection.') <> nil) then
                 Begin
                      ShowMessage('Problemas na rede! O sistema não conseguiu se conectar ao Servidor! Verifique o campo SERVIDOR no Login.'+#13+#13+SQL+#13+'ERRO: '+#13+e.Message);
                      PRINCIPAL.Close;
                 end
                 else
                 Begin
                      ShowMessage('Problemas na rede! Erro ao passar um comando SQL ao Servidor!'+#13+#13+SQL+#13+'ERRO: '+#13+e.Message);
                 end;
                 FreeAndNil(result);
                 exit;
            End;
      end;
end;

procedure setBackup();
VAR arquivoRAR, arquivoBkp: String;
    varSQL: TZQuery;
Begin

TRY
     varSQL := getSelect('SELECT VALOR FROM SISTEMA WHERE TIPO = ''BKP_DATA'' ');

     if (FormatDateTime('dd/mm/yyyy',varSQL.Fields[0].AsDateTime) <> FormatDateTime('dd/mm/yyyy',Date)) AND (getConf('BKP_ATIVO') = 'SIM') AND ((UpperCase(getUser('SERVIDOR')) = UpperCase(getUser('MAQUINA'))) OR (getUser('SERVIDOR') = getUser('IP'))) then
     Begin
          PRINCIPAL.setMensagem('REALIZANDO BACKUP DO SISTEMA...');

          arquivoRAR := getConf('BKP_DESTINO1')+getConf('CLIENTE')+'_'+ formataDataSQL(DateToStr(Date))+'.rar';
          arquivoBkp := getConf('BKP_DESTINO1')+getConf('CLIENTE')+'_'+ formataDataSQL(DateToStr(Date))+'.BKP';

          if (getConf('BKP_DESTINO1') = 'NULO') OR (Trim(getConf('BKP_DESTINO1')) = '') Then
          Begin
               PRINCIPAL.setMensagem('O DESTINO1 do backup NÃO está configurado no sistema.');
               EXIT;
          end;

          if (getConf('BKP_DESTINO2') = 'NULO') OR (Trim(getConf('BKP_DESTINO2')) = '') Then
          Begin
               PRINCIPAL.setMensagem('O DESTINO2 do backup NÃO está configurado no sistema.');
               EXIT;
          end;

          if (getConf('BKP_ORIGEM') = 'NULO') OR (Trim(getConf('BKP_ORIGEM')) = '') Then
          Begin
               PRINCIPAL.setMensagem('A ORIGEM do backup NÃO está configurado no sistema.');
               EXIT;
          end;

          //Comprime o banco e realiza o Garbage Collection
          WinExec(pchar(ExtractFilePath(ParamStr(0))+'gbak -backup -t -v -user '+firebirdUsuario+' -password '+firebirdSenha+' "'+getConf('BKP_ORIGEM')+'" "'+arquivoBkp+'"'), SW_SHOW);

          espera(100,'Comprimindo e Criptografando o banco...');

          WinExec(pchar(ExtractFilePath(ParamStr(0))+'gbak -backup -t -v -user '+firebirdUsuario+' -password '+firebirdSenha+' "'+getConf('BKP_ORIGEM')+'" "'+getConf('BKP_DESTINO2')+getConf('CLIENTE')+'_ '+ formataDataSQL(DateToStr(Date))+'.BKP"'), SW_SHOW);

          //Zipa e envia para a internet.
          //if (DayOfTheMonth(Date) = 1) OR (DayOfTheMonth(Date) = 6) OR (DayOfTheMonth(Date) = 13) OR (DayOfTheMonth(Date) = 20) OR (DayOfTheMonth(Date) = 27) then
          if ((DayOfTheMonth(Date) mod 2) = 0) then
          Begin
               WinExec(PChar(ExtractFilePath(ParamStr(0))+'Rar.exe a "'+arquivoRAR+'" "'+arquivoBkp+'"'), SW_SHOW);

               espera(100,'Compactando backup e enviando para a Nuvem...');
               PRINCIPAL.setMensagem('Conectando-se ao FTP...');
               conectaFTP(ftpImoveisServidor,ftpImoveisUsuario,ftpImoveisSenha);
               //PRINCIPAL.ObjFTP.ChangeDir(getConf('BKP_CAMINHO_FTP'));
               PRINCIPAL.ObjFTP.ChangeDir('/backup_banco_imobiliarias/');
               PRINCIPAL.setMensagem('Enviando backup para o FTP...');
               PRINCIPAL.ObjFTP.Put(arquivoRAR);
          end;

          varSQL := getSQL('UPDATE sistema set valor = '''+FormatDateTime('dd/mm/yyyy',Date)+''' where tipo = ''BKP_DATA''');
          varSQL.ApplyUpdates;

     end;

finally
       PRINCIPAL.setMensagem('AÇÃO FINALIZADA.');
       PRINCIPAL.ObjFTP.Disconnect;
       varSQL.Close;
       FreeAndNil(varSQL);
end;

End;

function validaPontoDinheiroChange(componente: TEdit): TEdit;
Begin
     if Pos('.',componente.Text) > 0 then
     Begin
          componente.Text := StringReplace(componente.Text,'.',',',[rfReplaceAll]);
          componente.SelStart := Length(componente.Text);
     end;
            
     result := componente;
end;

function verificaAspasSimples(componenteDB: TZQuery): boolean;
var i: integer;
begin
     for I := 0 to componenteDB.FieldCount -1 do
     begin
          if POS(Chr(39), componenteDB.Fields[i].AsString) > 0  then
          Begin
             setMensagem('Antes de SALVAR o registro, RETIRE as ASPAS do campo: '+componenteDB.Fields[i].FieldName+'.','erro');
             result := false;
             exit;
          end;
     end;

     result := true;
end;

procedure SetHorizontalScrollBar(lb : TListBox);
var
  j, MaxWidth: integer;
begin
  MaxWidth := 0;

  for j := 0 to lb.Items.Count - 1 do
      if MaxWidth < lb.Canvas.TextWidth(lb.Items[j]) then
         MaxWidth := lb.Canvas.TextWidth(lb.Items[j]) ;

  SendMessage(lb.Handle, LB_SETHORIZONTALEXTENT, MaxWidth + 5, 0) ;

end;

function PasswordInputBox(const ACaption, APrompt:string): string;
var Form: TForm;
Prompt: TLabel;
Edit: TEdit;
DialogUnits: TPoint;
ButtonTop, ButtonWidth, ButtonHeight: Integer;
Value: string;
I: Integer;
Buffer: array[0..51] of Char;
begin     //Form = É USADO SIM (DEBUG)
    Result := '';
Form := TForm.Create(Application);
     with Form do
          try
             Canvas.Font := Font;
             for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
                 for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
                     GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
             DialogUnits.X := DialogUnits.X div 52;
             BorderStyle := bsDialog;
             Caption := ACaption;
             ClientWidth := MulDiv(180, DialogUnits.X, 4);
             ClientHeight := MulDiv(63, DialogUnits.Y, 8);
             Position := poScreenCenter;
             Prompt := TLabel.Create(Form);
             with Prompt do
             begin
                Parent := Form;
                 AutoSize := True;
                  Left := MulDiv(8, DialogUnits.X, 4);
                  Top := MulDiv(8, DialogUnits.Y, 8);
                  Caption := APrompt;
             end;             Edit := TEdit.Create(Form);
             with Edit do
             begin
                  Parent := Form;
                  Left := Prompt.Left;
                  Top := MulDiv(19, DialogUnits.Y, 8);
                  Width := MulDiv(164, DialogUnits.X, 4);
                  MaxLength := 255;
                  PasswordChar := '*';
                  SelectAll;
            end;             ButtonTop := MulDiv(41, DialogUnits.Y, 8);
             ButtonWidth := MulDiv(50, DialogUnits.X, 4);
             ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
             with TButton.Create(Form) do
             begin
                  Parent := Form;
                  Caption := 'Validar';
                  ModalResult := mrOk;
                  Default := True;
                  SetBounds(MulDiv(38, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
             end;             with TButton.Create(Form) do
             begin
                  Parent := Form;
                  Caption := 'Cancelar';
                  ModalResult := mrCancel;
                  Cancel := True;
                  SetBounds(MulDiv(92, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
             end;             if ShowModal = mrOk then
             begin
                  Value := Edit.Text;
                  Result := Value;
             end;          finally
                 Form.Free;
                 Form:=nil;
          end;
end;

function verificaPermissaoAdministrador(permissao: String): Boolean;
Var varSQL: TZQuery;
    senha: String;
Begin
     result := FALSE;

     senha := Trim(PasswordInputBox('ACESSO BLOQUEADO','Entre com a senha de administrador:'));

     if Length(senha) <= 0 then
        exit;

     varSQL := getSelect('select first 1 nome from usuario where ativo = ''SIM'' and administrador = ''SIM'' and senha = '''+senha+''' ');

     if varSQL.RecordCount = 1 then
     begin
          result := TRUE;

          setLog(varSQL.FieldByName('nome').AsString, 'PERMISSAO', permissao, varSQL);
          PRINCIPAL.setMensagem('ADMINISTRADOR(A) '+varSQL.FieldByName('nome').AsString+' AUTENTICADO(A) COM ÊXITO.');
     end
     else
     begin
          setLog(getUser('CODIGO_USUARIO'), 'PERMISSAO ERRADA!', permissao, varSQL);
          PRINCIPAL.setMensagem('SENHA ERRADA!');
     end;

     FreeAndNil(varSQL);
end;

function verificaAdministrador(): Boolean;
Var varSQL: TZQuery;
Begin
     result := FALSE;

     varSQL := getSelect('select id_usuario from usuario where ativo = ''SIM'' and administrador = ''SIM'' and id_usuario = '+getUser('CODIGO_USUARIO'));

     if varSQL.RecordCount >= 1 then
        result := TRUE;

     if not result then
        PRINCIPAL.setMensagem('VOCÊ NÃO TEM PERMISSÃO DE ADMINISTRADOR! PROCURE O SEU GERENTE.');

     FreeAndNil(varSQL);
end;

function verificaPermissao(permissao: String): Boolean;
Var varSQL: TZQuery;
Begin
     result := TRUE;
     
     varSQL := getSelect('select ID_TABELA from tabela where trim(nome) = '''+Trim(getUser('CODIGO_USUARIO'))+''' and obs = '''+Trim(permissao)+''' ');

     if varSQL.RecordCount > 0 then
     Begin
          result := FALSE;
          PRINCIPAL.setMensagem('O USUÁRIO NÃO TEM PERMISSÃO PARA ESTA AÇÃO!');
     end;

     FreeAndNil(varSQL);
End;

function usuarioLogadoVerifica(): Boolean;
Var varSQL: TZQuery;
Begin
     result := FALSE;

     varSQL := getSelect('select count(1) as contador from tabela where NOME = '''+Trim(getUser('CODIGO_USUARIO'))+''' and NOMETEC = ''LOGIN'' and OBS = ''LOGIN >> BLOQUEADO'' ');

     if varSQL.FieldByName('contador').AsInteger > 0 then
        result := TRUE;

     varSQL.Close;
     FreeAndNil(varSQL);
End;

procedure usuarioLogadoColoca();
Var varSQL: TZQuery;
Begin
     varSQL := getSQL('insert into tabela values (null, '''+Trim(getUser('CODIGO_USUARIO'))+''', ''LOGIN'', ''LOGIN >> BLOQUEADO'') ');
     FreeAndNil(varSQL);
End;

procedure usuarioLogadoRetira();
Var varSQL: TZQuery;
Begin
     if PRINCIPAL.conexao.connected then
     Begin
          varSQL := getSQL('delete from tabela where NOME = '''+Trim(getUser('CODIGO_USUARIO'))+''' and NOMETEC = ''LOGIN'' and OBS = ''LOGIN >> BLOQUEADO'' ');
          varSQL.Close;
          FreeAndNil(varSQL);
     end;
End;

function copiaArquivo(origem, nomeDestino, pasta: String): String;
var retorno: String;
Begin
     retorno := 'SEM ARQUIVO!';
     Try
     TRY
        retorno := nomeDestino+extractfileext(origem); 
        nomeDestino := '\\'+getUser('SERVIDOR')+'\IMOBILIARIA\'+pasta+'\'+retorno;

        if NOT copyfile(PChar(origem),PChar(nomeDestino),False) Then
           setMensagem('Erro ao copiar arquivo! Verifique a conexão com a rede interna ou chame o suporte técnico.'+#13+nomeDestino,'erro')
        else
          setMensagem('Arquivo copiado com sucesso!'+#13+'Local: '+nomeDestino,'informa');
          
     except
            retorno := 'ERRO!';
     end;
     finally
       result := retorno;
     end;
End;

function getValorTotal(Coluna: String; componente: TZQuery): String;
Var valor: Currency;
Begin
  componente.First;

  valor := 0.00;

  while NOT componente.eof do
  Begin
    valor := valor + componente.FieldByName(Coluna).AsCurrency;
    componente.Next;
  end;

  componente.First;

  result := getCurrToStr(valor, false);

end;

procedure salvaGrid(formulario: String; grid: TDBGrid);
Var
   str : TFileStream;
   arquivo: String;
begin
     arquivo := ExtractFilePath(ParamStr(0))+'grid_'+formulario+'.bin';

     str := TFileStream.Create(arquivo, fmCreate);
     str.WriteComponent(grid);

     FreeAndNil(str);
end;

function pegaGrid(formulario: String; grid: TDBGrid): TDBGrid;
Var
   str : TFileStream;
   arquivo: String;
begin

     arquivo := ExtractFilePath(ParamStr(0))+'grid_'+formulario+'.bin';

     if FileExists(arquivo) then
     Begin
          result := grid;
          str := TFileStream.Create(arquivo, fmOpenRead);
          str.ReadComponent(result);
          FreeAndNil(str);
     end
     else
         result := grid;
end;

procedure espera(segundos: Smallint; texto: string);
Var marcador: Smallint;
Begin
     marcador := 0;
     REPEAT
           PRINCIPAL.setMensagem('['+IntToStr(marcador)+' de '+IntToStr(segundos)+' segundos] '+texto);
           Application.Title := '['+IntToStr(marcador)+' de '+IntToStr(segundos)+' segundos]';
           marcador := marcador + 1;
           Sleep(1000);
     UNTIL marcador = segundos;

     PRINCIPAL.setMensagem('');
     Application.Title := Titulo;
end;

{
function desmarcarBoletos(texto: String): string;
var I, pos1, pos2: integer;
begin

     if POS('BOLETO_EMITIDO', texto) > 0 then
     Begin
          pos1 := Pos('[BOLETO_EMITIDO',texto);
          pos2 := Pos(']',texto);

          for I := pos1 to pos2 do
          Begin
               texto[I]:= ' ';
          end;

          texto := trim(texto);

          PRINCIPAL.setMensagem('A marcação do boleto foi removida com sucesso!');
          result := texto;
     end
     else
     Begin
          PRINCIPAL.setMensagem('Não foi encontrado nenhuma marcação de boleto neste registro.');
          result := trim(texto);
     end;
end;
}

function desmarcarBoletos(texto: String): string;
var I, pos1, pos2: integer;
begin

     if POS('[BOLETO', texto) > 0 then
     Begin
          pos1 := Pos('[BOLETO',texto);
          pos2 := Pos(']',texto);

          for I := pos1 to pos2 do
          Begin
               texto[I]:= ' ';
          end;

          texto := trim(texto);

          PRINCIPAL.setMensagem('A marcação do boleto foi removida com sucesso!');
          result := texto;
     end
     else
     Begin
          PRINCIPAL.setMensagem('Não foi encontrado nenhuma marcação de boleto neste registro.');
          result := trim(texto);
     end;
end;

function desmarcarDepositos(texto: String): string;
var I, pos1, pos2: integer;
begin

     if POS('[DEPOSITO]', texto) > 0 then
     Begin
          pos1 := Pos('[DEPOSITO',texto);
          pos2 := Pos(']',texto);

          for I := pos1 to pos2 do
          Begin
               texto[I]:= ' ';
          end;

          texto := trim(texto);

          PRINCIPAL.setMensagem('A marcação do deposito foi removida com sucesso!');
          result := texto;
     end
     else
     Begin
          PRINCIPAL.setMensagem('Não foi encontrado nenhuma marcação de deposito neste registro.');
          result := trim(texto);
     end;
end;

function informacaoBoletos(texto: String): String;
var novoTexto: String;
    I, pos1, pos2: integer;
begin

     if pos('[BOLETO_EMITIDO', texto) > 0 then
     Begin
          pos1 := Pos('[BOLETO_EMITIDO',texto);
          pos2 := Pos(']',texto);

          for I := pos1 to pos2 do
              novoTexto := novoTexto + texto[I];

          Result := trim(novoTexto);
     end
     else
     Begin
          Result := 'Este registro não está marcado para recebimento com boleto atualmente.';
     end;
end;

function retiraFormatacaoDinheiro(DinheiroFormatado: string): Double;
Begin
     try
        result := StrToCurr(StringReplace(formataDinheiroSQL(DinheiroFormatado),'.',',',[rfReplaceAll]));
     except
           result := 0.00;
     end;
end;

procedure AjustarLargura(ComboBox: TComboBox);
var
  I: Integer;
  TextLen: LongInt;
  lf: LOGFONT;
  f: HFONT;
  w: Integer;
begin
  FillChar(lf, SizeOf(lf), 0);

  StrPCopy(lf.lfFaceName, ComboBox.Font.Name);
  lf.lfHeight := ComboBox.Font.Height;
  lf.lfWeight := FW_NORMAL;
  if fsBold in ComboBox.Font.Style then begin
    lf.lfWeight := lf.lfWeight or FW_BOLD;
  end;
  f := CreateFontIndirect(lf);
  if f <> 0 then begin
    try
      ComboBox.Canvas.Handle := GetDC(ComboBox.Handle);
      SelectObject(ComboBox.Canvas.Handle, f);
      try
        w := 0;
        for I := 0 to Pred(ComboBox.Items.Count) do begin
          TextLen := ComboBox.Canvas.TextWidth(ComboBox.Items[I]);
          if TextLen > w then begin
            w := TextLen;
          end;
        end;
        Inc(w, GetSystemMetrics(SM_CYVTHUMB) + GetSystemMetrics(SM_CXVSCROLL));

        SendMessage(ComboBox.Handle, CB_SETDROPPEDWIDTH, w, 0);
      finally
        ReleaseDC(ComboBox.Handle, ComboBox.Canvas.Handle);
      end;
    finally
      DeleteObject(f);
    end;
  end;
end;

function preparaNumeroBoleto(numero: String): String;
var i: Integer;
Begin
     if Length(numero) > 3 then
     Begin
          i := Length(numero);
          result := numero[i-2];
          result := result + numero[i-1];
          result := result + numero[i];
     end
     else
     Begin
          result := FormatFloat('000',StrToFloat(numero));     
     end;
       
end;


function dimobFormataCidade(cidade: String): String;
Begin
     cidade := StringReplace(cidade,'AC','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'AL','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'AP','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'AM','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'BA','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'CE','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'DF','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'ES','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'GO','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'MA','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'MT','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'MS','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'MG','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'PA','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'PB','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'PR','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'PE','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'PI','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'RJ','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'RN','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'RS','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'RO','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'RR','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'SC','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'SP','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'SE','',[rfReplaceAll]);
     cidade := StringReplace(cidade,'TO','',[rfReplaceAll]);

     Result := cidade;
End;

function StrIndex(const S: string; const List: array of string): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := Low(List) to High(List) do
  begin
    if AnsiSameText(S, List[I]) then
    begin
      Result := I + 1;
      Break;
    end;
  end;
end;

Function wordcount(str : string) : integer;
// Retorna o número de palavras que contem em uma string
var
count : integer;
i : integer;
len : integer;
begin
len := length(str);
count := 0;
i := 1;
while i <= len do
  begin
  while ((i <= len) and ((str[i] = #32) or (str[i] = #9) or (Str[i] = ';'))) do
  inc(i);
  if i <= len then
  inc(count);
  while ((i <= len) and ((str[i] <> #32) and (str[i] <> #9) and (Str[i] <> ';'))) do
  inc(i);
  end;
  wordcount := count;
end;

function explode(sPart, sInput: string): ArrOfStr;
begin
  while Pos(sPart, sInput) <> 0 do 
    begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1] := Copy(sInput, 0, Pos(sPart, sInput) - 1);
      Delete(sInput, 1, Pos(sPart, sInput));
  end;

  SetLength(Result, Length(Result) + 1);
  Result[Length(Result) - 1] := sInput;
end;

function descobrirPalavra(palavraBase, frase: String): String;
var posicaoBase, i, posAnd, posOr, tamanhoFrase: integer;
    fraseX, palavraY: String;
Begin
     //FECHA AS ASPAS QUANDO PROCURA POR NOMES EM LIKE
     
     posicaoBase := Pos(palavraBase, frase);
     posicaoBase := posicaoBase + Length(palavraBase);
     posAnd := Pos(' AND ',frase);
     posOr := Pos(' OR ',frase);
     tamanhoFrase := Length(frase);
     fraseX := frase;

     if (posAnd <> 0) and (posicaoBase < posAnd) then
        for i := posAnd to tamanhoFrase do
            fraseX[i] := ' ';

     if (posOr <> 0) and (posicaoBase < posOr) then
        for i := posOr to tamanhoFrase do
            fraseX[i] := ' ';

     fraseX := TrimRight(fraseX);

     for i := posicaoBase to Length(fraseX) do
         palavraY := palavraY + frase[i];

     result := StringReplace(frase,palavraY,palavraY+''')||''%'')',[rfReplaceAll,rfIgnoreCase]);
End;

function descobrirNumero(palavraBase, frase: String): String;
var posicaoBase, i, posAnd, tamanhoFrase: integer;
    fraseX: String;
Begin
     //CÓDIGO (10 E 20)
     
     posicaoBase := Pos(palavraBase, frase);
     posicaoBase := posicaoBase + Length(palavraBase);
     posAnd := Pos(' AND ',frase);
     tamanhoFrase := Length(frase);
     fraseX := frase;

     if (posAnd <> 0) and (posicaoBase < posAnd) then
        for i := posicaoBase to tamanhoFrase do
            if frase[i] <> ')' then
               fraseX[i] := frase[i]
            else
                Break;

     frase := StringReplace(frase, fraseX, '',[rfReplaceAll]);
     fraseX := StringReplace(fraseX, ' AND ',') AND (', [rfReplaceAll]);

     result := StringReplace(frase, palavraBase, palavraBase + fraseX,[rfReplaceAll]);
End;


Function contarPalavras(frase, palavra : string) : integer;
var i, qtde: integer;
    palavras: ArrOfStr;
//Procura a quantidade de ocorrencias de uma palavra em uma string;
Begin
     qtde := 0;

     palavras := explode(' ', frase);

     for i := 0 to Length(palavras) - 1 do
         if palavra = palavras[i] then
            qtde := qtde + 1;

     result := qtde;

end;

Function tratarBusca(frase: String): String;
Begin

     //Remove estaços em branco
     frase := trim(frase);

     //Remover todo o tipo de acento
     frase := RemoveAcentos(frase);

    //Nova forma de consultar tudo e evitar tráfego na rede sem necessidade
    if Length(frase) = 0 then
    Begin
         unUtilitario.setMensagem('Caso queira buscar todos os registros, digite "TUDO", "TODO" ou até mesmo "TODOS" na consulta.','informa');
         result :=  'false';
         exit;
    end;

    varAte := contarPalavras(frase, 'ATE');
    varA := contarPalavras(frase, 'A');

    frase := StringReplace(frase,' E ',' AND ',[rfReplaceAll]);
    frase := StringReplace(frase,' A ',' AND ',[rfReplaceAll]);
    frase := StringReplace(frase,' ATE ',' AND ',[rfReplaceAll]);
    frase := StringReplace(frase,' OU ',' OR ',[rfReplaceAll]);

    result :=  frase;
end;

function verificaDuplicidade(tabela, colunaId, id, camposIgualdade: String): boolean;
var varSQL: TZQuery;
begin

     result := true; // Valor padrão, não importa o que ocorra.

     varSQL := getSelect('select first 1 ' + id +' from ' + tabela + ' where ' + camposIgualdade + ' AND  '+colunaId+' <>  '+id);

     if varSQL.RecordCount = 1 then
     Begin
          if setMensagem('Foi identificado um registro PARECIDO com esse no sistema! (Código:  '+varSQL.Fields[0].AsString+' ) '+#13+'CUIDADO, você pode duplicar um registro já existente sem necessidade. '+#13+'DESEJA GRAVAR MESMO ASSIM?','confirma') = IDYES Then
             result := true
          else
              result := false;
     end;


end;

function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
     if Expressao then
        Result := ParteTRUE
     else
         Result := ParteFALSE;
end;

function alinhaStringlist(lista: TStringList): String;
Var i: integer;
Begin
          Result := '';

          For i := 0 to lista.Count - 1 Do
          Begin
               Result := Result + lista.Strings[i];

               If i < lista.Count - 1 Then
               Result := Result + ',';
          End;

          if Length(trim(Result)) = 0 then
             Result := ' 0 ';
          
End;

function descobreIDSelect(query: TZQuery; campoID: String): String;
begin
     Result := ' in (';

     if query.RecordCount > 0 then
     begin
          query.First;

          while not query.Eof do
          Begin
               Result := Result + query.FieldByName(campoID).AsString+' , ';
               query.Next;
          end;

          result := result +'0) '; 
     end
     else
         result := ' in (0) ';

end;

function descobreCodImovel(codigoFoto: String): String;
var i: integer;
    resultado: String;
Begin
     //I_10010131_259_2.JPG

     resultado := '';

     for i := 3 to Length(codigoFoto) do
     Begin
          if codigoFoto[i] <> '_' Then
          Begin
               resultado := resultado + codigoFoto[i];
          End
          else
              Break;
     End;

     result := resultado;
End;

function RemoveAcentos(Frase:String): String;
var
i: Integer;
begin

for i := 1 to Length ( Frase ) do

case Frase[i] of
    'Á': Frase[i] := 'A';
    'É': Frase[i] := 'E';
    'Í': Frase[i] := 'I';
    'Ó': Frase[i] := 'O';
    'Ú': Frase[i] := 'U';
    'À': Frase[i] := 'A';
    'È': Frase[i] := 'E';
    'Ì': Frase[i] := 'I';
    'Ò': Frase[i] := 'O';
    'Ù': Frase[i] := 'U';
    'Â': Frase[i] := 'A';
    'Ê': Frase[i] := 'E';
    'Î': Frase[i] := 'I';
    'Ô': Frase[i] := 'O';
    'Û': Frase[i] := 'U';
    'Ä': Frase[i] := 'A';
    'Ë': Frase[i] := 'E';
    'Ï': Frase[i] := 'I';
    'Ö': Frase[i] := 'O';
    'Ü': Frase[i] := 'U';
    'Ã': Frase[i] := 'A';
    'Õ': Frase[i] := 'O';
    'Ñ': Frase[i] := 'N';
    'Ç': Frase[i] := 'C';
    '*': Frase[i] := ' '; //Facilitar os filtros
    ',': Frase[i] := '.'; //Facilitar os filtros

    'á': Frase[i] := 'a';
    'é': Frase[i] := 'e';
    'í': Frase[i] := 'i';
    'ó': Frase[i] := 'o';
    'ú': Frase[i] := 'u';
    'à': Frase[i] := 'a';
    'è': Frase[i] := 'e';
    'ì': Frase[i] := 'i';
    'ò': Frase[i] := 'o';
    'ù': Frase[i] := 'u';
    'â': Frase[i] := 'a';
    'ê': Frase[i] := 'e';
    'î': Frase[i] := 'i';
    'ô': Frase[i] := 'o';
    'û': Frase[i] := 'u';
    'ã': Frase[i] := 'a';
    'õ': Frase[i] := 'o';
    'ñ': Frase[i] := 'n';
    'ç': Frase[i] := 'c';


end;

Result := Frase;
end;

function GetFileList(const Path: string): TStringList;
 var
   I: Integer;
   SearchRec: TSearchRec;
 begin
   Result := TStringList.Create;
   try
     I := FindFirst(Path, 0, SearchRec);
     while I = 0 do
     begin
       Result.Add(SearchRec.Name);
       I := FindNext(SearchRec);
     end;
   except
     FreeAndNil(Result);
     raise;
   end;
 end;

procedure SmoothResize(Src, Dst: TBitmap);
var
   x, y: Integer;
   xP, yP: Integer;
   xP2, yP2: Integer;
   SrcLine1, SrcLine2: pRGBArray;
   t3: Integer;
   z, z2, iz2: Integer;
   DstLine: pRGBArray;
   DstGap: Integer;
   w1, w2, w3, w4: Integer;
begin
     Src.PixelFormat := pf24Bit;
     Dst.PixelFormat := pf24Bit;

     if (Src.Width = Dst.Width) and (Src.Height = Dst.Height) then
        Dst.Assign(Src)
     else
         begin
              DstLine := Dst.ScanLine[0];
              DstGap := Integer(Dst.ScanLine[1]) - Integer(DstLine);

              xP2 := MulDiv(pred(Src.Width), $10000, Dst.Width);
              yP2 := MulDiv(pred(Src.Height), $10000, Dst.Height);
              yP := 0;

              for y := 0 to pred(Dst.Height) do begin
                  xP := 0;

                  SrcLine1 := Src.ScanLine[yP shr 16];

                  if (yP shr 16 < pred(Src.Height)) then
                     SrcLine2 := Src.ScanLine[succ(yP shr 16)]
                  else
                      SrcLine2 := Src.ScanLine[yP shr 16];

                  z2 := succ(yP and $FFFF);
                  iz2 := succ((not yp) and $FFFF);

                  for x := 0 to pred(Dst.Width) do begin
                      t3 := xP shr 16;

                  z := xP and $FFFF;
                  w2 := MulDiv(z, iz2, $10000);
                  w1 := iz2 - w2;
                  w4 := MulDiv(z, z2, $10000);
                  w3 := z2 - w4;
                  DstLine[x].rgbtRed := (SrcLine1[t3].rgbtRed * w1 +
                  SrcLine1[t3 + 1].rgbtRed * w2 +
                  SrcLine2[t3].rgbtRed * w3 + SrcLine2[t3 + 1].rgbtRed * w4) shr 16;
                  DstLine[x].rgbtGreen := (SrcLine1[t3].rgbtGreen * w1 + SrcLine1[t3 + 1].rgbtGreen * w2 + SrcLine2[t3].rgbtGreen * w3 + SrcLine2[t3 + 1].rgbtGreen * w4) shr 16;
                  DstLine[x].rgbtBlue := (SrcLine1[t3].rgbtBlue * w1 +
                  SrcLine1[t3 + 1].rgbtBlue * w2 +
                  SrcLine2[t3].rgbtBlue * w3 +
                  SrcLine2[t3 + 1].rgbtBlue * w4) shr 16;
                  Inc(xP, xP2);
              end; {for}

              Inc(yP, yP2);
              DstLine := pRGBArray(Integer(DstLine) + DstGap);
         end; {for}
     end; {if}
end;

function SaveJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string; Quality: Integer): Boolean;
begin
     Result := True;
     try
        if ForceDirectories(FilePath) then
        begin
             with TJPegImage.Create do
             begin
                  try
                     Assign(Bitmap);
                     CompressionQuality := Quality;
                     SaveToFile(FilePath + FileName);
                  finally
                         Free;
                  end;
             end;
        end;
     except
           raise;
           Result := False;
     end;
end;


procedure tamanhoImagem(FileName: string; Nome: String);
var
   OldBitmap: TBitmap;
   NewBitmap: TBitmap;
   JPEGImage: TJPEGImage;
   MaxWidth: Integer;
begin
     JPEGImage := TJPEGImage.Create;
     JPEGImage.LoadFromFile(FileName);
     OldBitmap := TBitmap.Create;
     MaxWidth := 600; //Tamanho máximo da Imagem

     try
        OldBitmap.Assign(JPEGImage);

        if (OldBitmap.Width > MaxWidth) then
          begin
            NewBitmap := TBitmap.Create;
            try
              NewBitmap.Width := MaxWidth;
              NewBitmap.Height := MulDiv(MaxWidth, OldBitmap.Height, OldBitmap.Width);
              SmoothResize(OldBitmap, NewBitmap);
              SaveJPEGPictureFile(NewBitmap, ExtractFilePath(ParamStr(0)), Nome, 65);

              //O FTP TEM QUE SER INICIADO ANTES DE ENTRAR NESSA FUNÇÃO POR CAUSA DESSA LINHA!
              PRINCIPAL.ObjFTP.Put(ExtractFilePath(ParamStr(0))+Nome, Nome);
              DeleteFile(pchar(ExtractFilePath(ParamStr(0))+Nome));
              //DeleteFile(pchar('C:\ '+Nome)); tem um espaço no nome

            finally
              FreeAndNil(NewBitmap);
            end; {try}
          end
        Else
          Begin
            //CASO NÃO PASSE O TAMANHO
            SaveJPEGPictureFile(OldBitmap,ExtractFilePath(ParamStr(0)), Nome, 65);

            //ENVIAR PARA A WEB
            PRINCIPAL.ObjFTP.Put(ExtractFilePath(ParamStr(0))+Nome, Nome);
            DeleteFile(pchar(ExtractFilePath(ParamStr(0))+Nome));
          end;

     finally
       FreeAndNil(OldBitmap);
     end; {try}
end;

procedure conectaFTP(host,login,senha: String);
Begin
     try
        PRINCIPAL.setMensagem('Conectando à nuvem '+host+'...');
        PRINCIPAL.ObjFTP.Disconnect;
        PRINCIPAL.ObjFTP.Host := host;
        PRINCIPAL.ObjFTP.Port := 21;
        PRINCIPAL.ObjFTP.Username := login;
        PRINCIPAL.ObjFTP.Password := senha;
        PRINCIPAL.ObjFTP.Connect;
        PRINCIPAL.setMensagem('FTP Conectado com Sucesso!');
     except
           on e: Exception do
              PRINCIPAL.setMensagem('Erro se conectando ao FTP '+host+':  '+e.Message);
     end;
End;

function colocarMascara(edt: String;str:String):string;
var
  i : integer;
begin
  for i := 1 to Length(edt) do
  begin
     if (str[i] = '9') and not (edt[i] in ['0'..'9']) and (Length(edt)=Length(str)+1) then
        delete(edt,i,1);
     if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
        insert(str[i],edt, i);
  end;
  result := edt;
end;

//FUNÇÃO QUE RETORNA O NOME DE UM MÊS ABREVIADO OU NÃO
function NameMonth(Mes:String):String;
var i: Integer;
const
  NameL : array [1..12] of String[9] = ('JAN','FEB','MAR','APR','MAY','JUN','JUL','AGU','SEP','OCT','NOV','DEC');
begin

     For i:=1 to 12 do
         if UpperCase(Mes) = NameL[i] Then
         Begin
            Mes := IntToStr(i);
            Break;
         End;

         result := Mes;
end;

function Formatadata(Data: String): String;
var Dia, Mes, Ano: Word;
Dia1, Mes1, Ano1, Hora, DataCompleta: String;
begin
     DecodeDate(Date, Ano, Mes, Dia);

     Ano1 := IntToStr(Ano);
     Mes1 := IntToStr(Mes);
     Dia1 := IntToStr(Dia);

     Mes1 := '';
     Mes1 := Mes1 + Data[1];
     Mes1 := Mes1 + Data[2];
     Mes1 := Mes1 + Data[3];

     Dia1 := '';
     Dia1 := Dia1 + Data[5];
     Dia1 := Dia1 + Data[6];

     Hora := '';
     Hora := Hora + Data[8];
     Hora := Hora + Data[9];
     Hora := Hora + Data[10];
     Hora := Hora + Data[11];
     Hora := Hora + Data[12];

     Mes1 := NameMonth(Mes1);

     DataCompleta := Dia1 + '/' + Mes1 + '/' + IntToStr(Ano) + ' ' + Hora;

     DataCompleta := FormatDateTime('dd/mm/yyyy HH:mm', StrToDateTime(DataCompleta));

     Result := DataCompleta;

End;


function formataDataFTP(arquivo: String): TDateTime;
Var y, b, i: integer;
    DataArquivoNovo: String;
    DataArquivo: array[1..12] of String;
begin
     Try
        y := 1;
        b := 12;

        //TRABALHA COM A DATA DO ARQUIVO REMOTO
        for i:= length(arquivo) - 23 downto 1  do
            if y <= 12 Then
            begin
                 DataArquivo[b] := arquivo[i];
                 y := y+1;
                 b := b-1;
            End
            else
                Break;

         DataArquivoNovo := '';

         for i := 1 to 12 do
             DataArquivoNovo := DataArquivoNovo + DataArquivo[i];

         //FormatDateTime('dd/mm/yyyy HH:mm', DataArquivoNovo)
         
         result := StrToDateTime(Formatadata(DataArquivoNovo));
         //FIM DATA DO ARQUIVO REMOTO
     Except
           PRINCIPAL.setMensagem('Erro ao formatar data do arquivo remoto.');
           result := StrToDateTime('01/01/2001 01:01:01');
           Exit;
     end;
end;

function tbFileSize(const FileName: string): integer;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(FileName, faArchive, SR);
  try
    if I = 0 then
      Result := SR.Size
    else
      Result := -1;
  finally
    FindClose(SR);
  end;
end;

procedure verificaAtualizacao();
begin
  PRINCIPAL.Tread := threadAtualizacao.Create(false);
end;

procedure conectaMySQL(banco,host,login,senha: String);
Begin
     try
        PRINCIPAL.setMensagem('Conectando ao Banco Remoto.');
        PRINCIPAL.MySQL.Disconnect;
        PRINCIPAL.MySQL.Database := banco;
        PRINCIPAL.MySQL.HostName := host;
        PRINCIPAL.MySQL.User := login;
        PRINCIPAL.MySQL.Password := senha;
        PRINCIPAL.MySQL.Connect;
        PRINCIPAL.setMensagem('Conectado com Sucesso!');
     except
           on e: Exception do
              PRINCIPAL.setMensagem('(Você está sem INTERNET.) Erro se conectando ao banco Remoto:'+#13+#13+e.Message);
     end;
End;

function verificaStringInt(minhaString: String): boolean;
//Verifica se a String é um inteiro ou não.
begin
     try
        if Length(Trim(minhaString)) >= 0 then //TINHA O VALOR 10 AQUI: <= 10
           StrToInt(Trim(minhaString))
        else
        begin
             result := False;
             exit;
        end;
     except
           On EConvertError do
           begin
                result := False;
                exit;
           end;
     end;

     result := True;
end;

function getNumeroHD(): String;
var
   Serial: DWord;
   DirLen, Flags: DWord;
   DLabel : Array[0..11] of Char;
begin
     Try
        GetVolumeInformation(PChar('C:\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
        Result := IntToHex(Serial,8);
     Except
           Result := '';
     end;
end;

function IDCampo(CAMPO: string): integer;
//RETORNA O CÓDIGO DO CAMPO ESCOLHIDO
Var x, y, z: Integer;
Cod: string;
Begin

try
     Result := 0;
     CAMPO := trim(CAMPO);

     If Length(CAMPO) > 0 Then
     Begin
          For x := Length(CAMPO) downto 0 do
              if CAMPO[x] = '-' then
              Begin
                   z := x+1;
                   For y := z to Length(CAMPO) do
                       Cod := Cod + CAMPO[y];

                   if verificaStringInt(Cod) then
                      Result := StrToInt(Trim(Cod))
                   else
                       Result := 0;
                       
                   exit;
              end;
     End
     Else
     Begin
          Result := 0;
          PRINCIPAL.setMensagem('Erro ao buscar o código do registro escolhido!');
     End;
except
      PRINCIPAL.setMensagem('Erro ao buscar o código do registro escolhido! ('+CAMPO+')');
      Result := 0;
end;
End;

function IDCampoSTR(CAMPO: string): String;
//RETORNA O CÓDIGO DO CAMPO ESCOLHIDO só que em string
Var x, y: Integer;
Cod: string;
Begin         
If Length(CAMPO) > 0 Then
Begin
     For x := Length(CAMPO) downto 1 do
         if CAMPO[x] = '-' then
         Begin
              For y := x+1 to Length(CAMPO) do
                  Cod := Cod + CAMPO[y];

              Result := Trim(Cod);
              exit;
         end;
End
Else
Begin
     Result := '0';
     PRINCIPAL.setMensagem('Erro ao buscar o código do registro escolhido!');

End;

End;

function getComboBox(sql: String): TStringList;
Var varSQL: TZQuery;
begin
     varSQL := getSelect(sql);

     result := TStringList.Create;

     while not varSQL.Eof do
     begin
          result.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     end;

     FreeAndNil(varSQL);
end;

function getCodigosContaSomente(posicao: integer; texto: String): String;
Var i: integer;
Begin
  posicao := posicao+1;
  result := '';
  for i := posicao to Length(texto) - 1 do
    if texto[i] <> ' ' then
    Begin
      result := result + texto[i];
    End
    else
      Break;
end;

function getCodigosConta(contas: String): TStringList;
var i: integer;
  //numero: String;
Begin
  result := TStringList.Create;

  contas := trim(contas);

  for I := 1 to Length(contas) do
  begin
       //numero := contas[i];
       if contas[i] = '#' then
          result.Add(getCodigosContaSomente(i,contas));
  end;
  
end;

function getStrToCurr(DinheiroSTRING: string): Currency;
begin
     DinheiroSTRING := StringReplace(DinheiroSTRING, ThousandSeparator, '', [rfReplaceAll]);
     DinheiroSTRING := StringReplace(DinheiroSTRING, CurrencyString,'', [rfReplaceAll]);
     //Usar o STRTOCURRDEF para formatar com o padrao caso dê algum erro.
     Result := StrToCurrDef(DinheiroSTRING, 0.00);
end;

function formataDataSQL(data: String): String;
Begin
     result := StringReplace(data, '/', '.',[rfReplaceAll]);
End;

function formataTextoSQL(texto: String): String;
Begin
     result := StringReplace(texto, '''', '',[rfReplaceAll]);
     result := StringReplace(result, '"', '',[rfReplaceAll]);
End;

function formataDinheiroSQL(dinheiro: String): String;
Begin
     dinheiro := StringReplace(dinheiro,'.','',[rfReplaceAll]);
     result := StringReplace(CurrToStr(getStrToCurr(dinheiro)), ',', '.',[rfReplaceAll]);
End;

function getCurrToStr(DinheiroCURRENCY: Currency; ComR: Boolean): String;
begin
      SetRoundMode(rmNearest);
      
      if ComR then
      Begin
           Try
              result := FormatFloat('R$ ###,###,###,##0.00', SimpleRoundTo(DinheiroCURRENCY,-2));
           except
                 result := 'R$ 0,00';
           end;
      end
      else
      begin
           Try
              result := FormatFloat('###,###,###,##0.00', SimpleRoundTo(DinheiroCURRENCY,-2));
           except
                 result := '0,00';
           end;
      end;
end;

function Criptografia(mStr, mChave: string): string;
//Criptografa uma String. Criptografia(Str,Chave);
//A chave é uma constante no FrmPrincipal: const chaveCripto = '';
//Para descriptografar, usar a mesma função!
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
begin

     Result := StringReplace(mStr,'-','=',[rfReplaceAll,rfIgnoreCase]);

     TamanhoString := Length(mStr);
     TamanhoChave := Length(mChave);
  
     for i := 1 to TamanhoString do
     begin
          pos := (i mod TamanhoChave);

          if pos = 0 then
             pos := TamanhoChave;
      
          posLetra := ord(Result[i]) xor ord(mChave[pos]);

          if posLetra = 0 then
             posLetra := ord(Result[i]);
      
          Result[i] := chr(posLetra);
     end;
end;

function getNomeComputador(): string;
const
   MAX_COMPUTER_LENGTH = 30;
var
   pNome : PChar;
   len : DWord;
begin
   try
      pNome := '';
      len := MAX_COMPUTER_LENGTH + 1;
      GetMem(pNome, len);
      if GetComputerName(pNome, len) then
         Result := pNome
      else
         Result := 'SEM INFORMAÇÃO';
   finally
      FreeMem(pNome, len); //SIM, FOI INICIADA = Pascal Warning
   end;
end;

function RemoveCaracterEspecial(Str: string): string;
begin;

      Str := StringReplace(Str, 'à','a',[rfReplaceAll]);
      Str := StringReplace(Str, 'â','a',[rfReplaceAll]);
      Str := StringReplace(Str, 'á','a',[rfReplaceAll]);
      Str := StringReplace(Str, 'ã','a',[rfReplaceAll]);
      Str := StringReplace(Str, 'è','e',[rfReplaceAll]);
      Str := StringReplace(Str, 'ê','e',[rfReplaceAll]);
      Str := StringReplace(Str, 'é','e',[rfReplaceAll]);
      Str := StringReplace(Str, 'í','i',[rfReplaceAll]);
      Str := StringReplace(Str, 'ò','o',[rfReplaceAll]);
      Str := StringReplace(Str, 'ó','o',[rfReplaceAll]);
      Str := StringReplace(Str, 'õ','o',[rfReplaceAll]);
      Str := StringReplace(Str, 'ù','u',[rfReplaceAll]);
      Str := StringReplace(Str, 'ú','u',[rfReplaceAll]);
      Str := StringReplace(Str, 'û','u',[rfReplaceAll]);
      Str := StringReplace(Str, 'ü','u',[rfReplaceAll]);
      Str := StringReplace(Str, 'ç','c',[rfReplaceAll]);

      Str := StringReplace(Str, 'À','A',[rfReplaceAll]);
      Str := StringReplace(Str, 'Â','A',[rfReplaceAll]);
      Str := StringReplace(Str, 'Á','A',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ã','A',[rfReplaceAll]);
      Str := StringReplace(Str, 'È','E',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ê','E',[rfReplaceAll]);
      Str := StringReplace(Str, 'É','E',[rfReplaceAll]);
      Str := StringReplace(Str, 'Í','I',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ò','O',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ó','O',[rfReplaceAll]);
      Str := StringReplace(Str, 'Õ','O',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ù','U',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ú','U',[rfReplaceAll]);
      Str := StringReplace(Str, 'Û','U',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ü','U',[rfReplaceAll]);
      Str := StringReplace(Str, 'Ç','C',[rfReplaceAll]);

      Str := StringReplace(Str, '@','',[rfReplaceAll]);
      Str := StringReplace(Str, '#','',[rfReplaceAll]);
      Str := StringReplace(Str, '$','',[rfReplaceAll]);
      Str := StringReplace(Str, '%','',[rfReplaceAll]);
      Str := StringReplace(Str, '¨','',[rfReplaceAll]);
      Str := StringReplace(Str, '&','',[rfReplaceAll]);
      Str := StringReplace(Str, '*','',[rfReplaceAll]);
      Str := StringReplace(Str, '(','',[rfReplaceAll]);
      Str := StringReplace(Str, ')','',[rfReplaceAll]);
      Str := StringReplace(Str, '§','',[rfReplaceAll]);
      Str := StringReplace(Str, 'ª','',[rfReplaceAll]);
      Str := StringReplace(Str, 'º','',[rfReplaceAll]);
      Str := StringReplace(Str, '°','',[rfReplaceAll]);
      Str := StringReplace(Str, '?','',[rfReplaceAll]);
      Str := StringReplace(Str, '!','',[rfReplaceAll]);
      Str := StringReplace(Str, '.','',[rfReplaceAll]);
      Str := StringReplace(Str, '-','',[rfReplaceAll]);
      Str := StringReplace(Str, '/','',[rfReplaceAll]);
      Str := StringReplace(Str, '\','',[rfReplaceAll]);
      Str := StringReplace(Str, ',','',[rfReplaceAll]);
      Str := StringReplace(Str, '£','',[rfReplaceAll]);
      Str := StringReplace(Str, '¹','',[rfReplaceAll]);
      Str := StringReplace(Str, '²','',[rfReplaceAll]);
      Str := StringReplace(Str, '³','',[rfReplaceAll]);
      Str := StringReplace(Str, '¢','',[rfReplaceAll]);
      Str := StringReplace(Str, '¬','',[rfReplaceAll]);
      Str := StringReplace(Str, '|','',[rfReplaceAll]);
      Str := StringReplace(Str, ':','',[rfReplaceAll]);
      Str := StringReplace(Str, ';','',[rfReplaceAll]);
      Str := StringReplace(Str, '+','',[rfReplaceAll]);
      Str := StringReplace(Str, '"','',[rfReplaceAll]);
      Str := StringReplace(Str, '''','',[rfReplaceAll]);
      Str := StringReplace(Str, '^','',[rfReplaceAll]);
      Str := StringReplace(Str, '~','',[rfReplaceAll]);
      Str := StringReplace(Str, '[','',[rfReplaceAll]);
      Str := StringReplace(Str, ']','',[rfReplaceAll]);
      Str := StringReplace(Str, '{','',[rfReplaceAll]);
      Str := StringReplace(Str, '}','',[rfReplaceAll]);
      Str := StringReplace(Str, '´','',[rfReplaceAll]);
      Str := StringReplace(Str, '`','',[rfReplaceAll]);
      Str := StringReplace(Str, '=','',[rfReplaceAll]);
      Str := StringReplace(Str, '_','',[rfReplaceAll]);
         
      Result := Str;
end;

function getPosicaoCaracter(Busca, Texto : string) : integer;
//RETORNA A POSIÇÃO DE UM CARACTERE EM UMA STRING.
var n,retorno : integer;
begin
retorno := 0;
for n := 1 to length(Texto) do
   begin
      if Copy(Texto,n,1) = Busca then
         begin
            retorno := n;
            break;
         end;
   end;
Result := retorno;
end;

function Dias_Uteis(DataI, DataF:TDateTime):Integer;
var
 contador:Integer;
begin
{
1 	 = Sunday
2 	 = Monday
3 	 = Tuesday
4 	 = Wednesday
5 	 = Thursday
6 	 = Friday
7 	 = Saturday
}

 if DataI > DataF then
 begin
   result  := 0;
   exit
 end;
 Contador := 0;
 while (DataI <= DataF) do
 begin
   if (DayOfWeek(DataI) <> 1) then
     Inc(Contador);
     
   DataI := DataI + 1

 end;
 result := Contador;
end;

function getSQL(sql: String): TZQuery;
Begin

      //ALTERAR PARA DEXECUTAR A SQL SEM RETORNAR UMA QUERY, POIS NÃO É O CASO DESSA FUNÇÃO!
      try
         result := TZQuery.Create(PRINCIPAL);
         result.Connection := PRINCIPAL.Conexao;
         result.SQL.Add(' '+sql);
         result.ExecSQL;
         result.ApplyUpdates;

         if POS('UPDATE', UpperCase(result.SQL.Text)) > 0 then
            setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', result.SQL.Text);

         if POS('INSERT', UpperCase(result.SQL.Text)) > 0 then
            setLogSQL('SQL INSERT', 'SQL', 'RASTREAMENTO DE COMANDOS', result.SQL.Text);

         if POS('DELETE', UpperCase(result.SQL.Text)) > 0 then
            setLogSQL('SQL DELETE', 'SQL', 'RASTREAMENTO DE COMANDOS', result.SQL.Text);

      except
            On E : Exception Do
            Begin
                 ShowMessage('ERRO AO EXECUTAR O COMANDO: '+#13+sql+#13+#13+'ERRO: '+#13+e.Message);
                 FreeAndNil(result);
                 result := TZQuery.Create(PRINCIPAL);
                 Exit;
            End;
      end;
end;

function setMensagem(menssagem, tipo: string): integer;
var
  mensagem: TForm;
begin
     if LowerCase(tipo) = 'confirma' then
     Begin
          mensagem := CreateMessageDialog(menssagem, mtConfirmation, [mbYes, mbNo]);
          mensagem.Caption := 'CONFIRMAÇÃO';
     end
     else
     if LowerCase(tipo) = 'informa' then
     Begin
          mensagem := CreateMessageDialog(menssagem, mtInformation, [mbOK]);
          mensagem.Caption := 'INFORMAÇÃO';
     end
     else
     if LowerCase(tipo) = 'erro' then
     Begin
          mensagem := CreateMessageDialog(menssagem, mtError, [mbOK]);
          mensagem.Caption := 'ERRO';
     end
     else
     Begin
          mensagem := CreateMessageDialog(menssagem, mtCustom, [mbYes]);
          mensagem.Caption := 'RECADO';
     end;

  (mensagem.FindComponent('OK') as TButton).Caption := 'Entendi';
  (mensagem.FindComponent('YES') as TButton).Caption := 'Sim';
  (mensagem.FindComponent('NO') as TButton).Caption := 'Não';

  result := mensagem.ShowModal;
end;

function GetVersaoSistema(): string;
var VerInfoSize: DWORD;
VerInfo: Pointer;
VerValueSize: DWORD;
VerValue: PVSFixedFileInfo;
Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,
    VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue),
    VerValueSize);
with VerValue^ do
begin
Result := IntToStr(dwFileVersionMS shr 16);
Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
end;
FreeMem(VerInfo, VerInfoSize);
end;

//---Pede confirmação de senha do usuário(a) logado...
function verificaMesmaPessoa(): Boolean;
var Senha : String;
    SqlSenha : TZQuery;
begin
   result := false;
   Senha := Trim(UpperCase(PasswordInputBox('Verificação de usuário(a)','Entre com a sua senha de usuário(a):')));
   if Length(Trim(Senha)) <= 0 then begin
      unUtilitario.setMensagem('Senha não informada','informa');
      exit;
   end;
   SqlSenha := unUtilitario.getSelect('select senha from usuario where id_usuario = '''+getUser('CODIGO_USUARIO')+''' and  ativo = ''SIM''');
   if Senha = SqlSenha.FieldByName('SENHA').AsString then begin
      result := true;
   end
   else
       unUtilitario.setMensagem('Senha incorreta','erro');
   FreeAndNil(SqlSenha);
end;

end.
