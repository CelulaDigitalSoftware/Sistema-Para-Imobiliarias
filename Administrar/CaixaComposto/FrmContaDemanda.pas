unit FrmContaDemanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, DB, Buttons, ZDataset, Grids,
  DBGrids, strutils, DateUtils;

type
  TContaDemanda = class(TForm)
    PageControl1: TPageControl;
    EscolhaCAIXA: TTabSheet;
    EscolhaManipula: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    ComboOperacao: TComboBox;
    PageControl2: TPageControl;
    TabGrupo: TTabSheet;
    ListRegistros: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    MSG: TStatusBar;
    DBLookupGrupo: TDBLookupComboBox;
    TabSubgrupo: TTabSheet;
    Label4: TLabel;
    DBLookupSubgrupo: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    TabReferencia: TTabSheet;
    BitBtn3: TBitBtn;
    EditRef: TEdit;
    TabPessoa: TTabSheet;
    TabImovel: TTabSheet;
    TabContrato: TTabSheet;
    TabBTReferencia: TTabSheet;
    TabDTPagamento: TTabSheet;
    TabObs: TTabSheet;
    TabFormPagamento: TTabSheet;
    TabPendente: TTabSheet;
    TabValor: TTabSheet;
    GridPessoa: TDBGrid;
    EditPessoa: TEdit;
    BitBtn5: TBitBtn;
    EditImovel: TEdit;
    BitBtn6: TBitBtn;
    GridImovel: TDBGrid;
    DBText1: TDBText;
    EditContrato: TEdit;
    BitBtn8: TBitBtn;
    DBText2: TDBText;
    GridContrato: TDBGrid;
    BitBtn10: TBitBtn;
    MesPagamento: TMonthCalendar;
    BitBtn11: TBitBtn;
    EditObes: TEdit;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    CheckPendente: TCheckBox;
    BitBtn14: TBitBtn;
    RadioCONCATObs: TRadioButton;
    RadioSUBSObs: TRadioButton;
    RadioSUBSRef: TRadioButton;
    RadioCONCATRef: TRadioButton;
    EscolhaCONTRATO: TTabSheet;
    TabExclusao: TTabSheet;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    GroupBox5: TGroupBox;
    CheckValor: TRadioButton;
    CheckPorcentagem: TRadioButton;
    BitBtn15: TBitBtn;
    Label7: TLabel;
    EditValor: TEdit;
    EditPorcentagem: TEdit;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox6: TGroupBox;
    chkDia: TCheckBox;
    EditDia: TEdit;
    chkMes: TCheckBox;
    EditMes: TEdit;
    chkAno: TCheckBox;
    EditAno: TEdit;
    Label8: TLabel;
    TabCategoria: TTabSheet;
    Label10: TLabel;
    DBLookupCategoria: TDBLookupComboBox;
    BitBtn17: TBitBtn;
    TabDesconto: TTabSheet;
    TabJuros: TTabSheet;
    TabMulta: TTabSheet;
    TabGarantidos: TTabSheet;
    CheckGarantido: TCheckBox;
    BitBtn4: TBitBtn;
    EditDesconto: TEdit;
    Label12: TLabel;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    EditJuros: TEdit;
    Label5: TLabel;
    BitBtn16: TBitBtn;
    EditMulta: TEdit;
    Label11: TLabel;
    Panel2: TPanel;
    Label16: TLabel;
    editValorManual: TEdit;
    editMultaR: TEdit;
    Label14: TLabel;
    Label17: TLabel;
    editMultaP: TEdit;
    editJurosP: TEdit;
    Label18: TLabel;
    editJurosR: TEdit;
    Label19: TLabel;
    editDescontoP: TEdit;
    editDescontoR: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    editValorFinal: TEdit;
    editDividir: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    editValorParcelas: TEdit;
    Label24: TLabel;
    GroupBox3: TGroupBox;
    editCategoria: TComboBox;
    editTipo: TComboBox;
    editSubtipo: TComboBox;
    editDocumento: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    editVencimento: TDateTimePicker;
    editNomePessoa: TComboBox;
    btnCriarConta: TButton;
    editPagamento: TDateTimePicker;
    Label27: TLabel;
    labelCaixa: TLabel;
    checkJuros: TCheckBox;
    TabParcela: TTabSheet;
    Label13: TLabel;
    EditParcela: TEdit;
    BitBtn18: TBitBtn;
    Label15: TLabel;
    Label28: TLabel;
    GroupBox4: TGroupBox;
    EditValorAdicionar: TEdit;
    Label29: TLabel;
    BitBtn19: TBitBtn;
    GroupBox7: TGroupBox;
    Label30: TLabel;
    EditValorSubtrair: TEdit;
    BitBtn20: TBitBtn;
    Label31: TLabel;
    Label32: TLabel;
    TabOperacao: TTabSheet;
    BitBtn21: TBitBtn;
    RadioColocaBoleto: TRadioButton;
    RadioRetiraBoleto: TRadioButton;
    RadioColocaDeposito: TRadioButton;
    RadioRetiraDeposito: TRadioButton;
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure checkJurosClick(Sender: TObject);
    procedure checkJurosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnCriarContaClick(Sender: TObject);
    procedure editNomePessoaDropDown(Sender: TObject);
    procedure editDividirChange(Sender: TObject);
    procedure editVencimentoChange(Sender: TObject);
    procedure editPagamentoChange(Sender: TObject);
    procedure editDescontoPChange(Sender: TObject);
    procedure editDescontoRChange(Sender: TObject);
    procedure editJurosRChange(Sender: TObject);
    procedure editJurosPChange(Sender: TObject);
    procedure EscolhaManipulaShow(Sender: TObject);
    procedure editValorManualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editMultaPChange(Sender: TObject);
    procedure editMultaRChange(Sender: TObject);
    procedure editValorManualChange(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure CheckPendenteClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TabDTPagamentoShow(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure TabContratoShow(Sender: TObject);
    procedure EditContratoChange(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure EditImovelChange(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabImovelShow(Sender: TObject);
    procedure TabPessoaShow(Sender: TObject);
    procedure EditPessoaChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboOperacaoChange(Sender: TObject);
    procedure TabSubgrupoShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabGrupoShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckPorcentagemClick(Sender: TObject);
    procedure CheckValorClick(Sender: TObject);
    procedure chkMesClick(Sender: TObject);
    procedure chkAnoClick(Sender: TObject);
    procedure chkDiaClick(Sender: TObject);
    procedure TabCategoriaShow(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure CheckGarantidoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
  private
    { Private declarations }
  public
  SQLCaixaEntrada: TZQuery;
  SQL1: TZQuery;
  Operacao: TZQuery;
  DS: TDataSource;
  CAIXA: String;
  WHERE: String;
  procedure limpaCampo();
  procedure pegaWhere();
  procedure setCaixa(CaixaEntrada: Boolean);
  function VerificarDia(id_caixa, dia: string): String;
  function VerificarMes(): String;
  function VerificarAno(): String;
  procedure LogDemanda(Acao: String);
  procedure calculaTudo();
  procedure ordenaComponente();
    { Public declarations }
  end;
       //LOG em tudo
var
  ContaDemanda: TContaDemanda;
  passei: Boolean;

implementation

uses ZAbstractRODataset, FrmPrincipal,
  unCamposBusca, FrmDM_FINANCEIRO, unINI, unUtilitario, unLog, FrmCaixas,
  unFinanceiro;

{$R *.dfm}

procedure TContaDemanda.setCaixa(CaixaEntrada: Boolean);
Begin
    If CaixaEntrada Then
       CAIXA := 'CAIXA_ENTRADA CE'
    Else
      CAIXA := 'CAIXA_SAIDA CE';

    EscolhaCAIXA.TabVisible := True;
End;



procedure TContaDemanda.SpeedButton1Click(Sender: TObject);
begin

      if verificaPermissaoAdministrador('EXCLUIR CONTAS USANDO ACOES EM DEMANDA!') then
      Begin

      sql1.Close;
      sql1.sql.Clear;
      sql1.SQL.Add('update ' + caixa + ' set ATIVO = ''XXX'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp where ' + where);
      try
        sql1.ExecSQL;
        setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', sql1.SQL.Text);
        setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'EXCLUSÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);
        application.MessageBox('Os registros foram excluídos com sucesso!', 'Aviso Célula Digital', mb_ok);
      EXCEPT
        application.MessageBox('Não foi possível excluir os Registros!', 'Aviso Célula Digital', mb_ok);
      end;

      sql1.Close;
      end;
end;

procedure TContaDemanda.limpaCampo();
Begin

     DBLookupCategoria.DataSource := nil;
     DBLookupCategoria.ListField := '';
     DBLookupCategoria.KeyField := '';

     DBLookupGrupo.DataSource := nil;
     DBLookupGrupo.ListField := '';
     DBLookupGrupo.KeyField := '';

     DBLookupSubgrupo.DataSource := nil;
     DBLookupSubgrupo.ListField := '';
     DBLookupSubgrupo.KeyField := '';

     GridPessoa.DataSource := nil;
     DBText1.DataSource := nil;
     GridImovel.DataSource := nil;
     GridContrato.DataSource := nil;

End;

procedure TContaDemanda.LogDemanda(Acao: String);
begin
  {sqlcaixaentrada.Close;
  sqlcaixaentrada.SQL.Clear;
  sqlcaixaentrada.SQL.Add('select * from log where id_log = 0');

  try
    sqlcaixaentrada.Open;
    sqlcaixaentrada.Insert;

    principal.setID(sqlcaixaentrada, 'id_log', 'log');
    sqlcaixaentrada.FieldByName('acao').AsString := 'DEM';
    sqlcaixaentrada.fieldbyname('componente').AsString := 'Ação em Demanda';
    sqlcaixaentrada.FieldByName('campos').AsString := ListRegistros.Items.CommaText;
    sqlcaixaentrada.FieldByName('data').Asdatetime := date + time;
    sqlcaixaentrada.fieldbyname('id_func').AsString := getUser('CODIGO_USUARIO');
    sqlcaixaentrada.FieldByName('id_conta').asinteger := 0;
    sqlcaixaentrada.fieldbyname('OBS').asstring := ACAO + ' - ' + CAIXA;
    sqlcaixaentrada.FieldByName('ATIVO').AsString := 'SIM';

    sqlcaixaentrada.Post;
    sqlcaixaentrada.ApplyUpdates;
  except
    application.messagebox('Ocorreu um problema no Sistema! Por favor, informe à equipe da Célula Digital!', 'Aviso Célula Digital', MB_OK);
  end;

  sqlcaixaentrada.Close;
  }
end;

procedure TContaDemanda.FormCreate(Sender: TObject);
begin
     SQLCaixaEntrada := TZQuery.Create(self);
     SQL1 := TZQuery.Create(self);

     SQLCaixaEntrada.Connection := PRINCIPAL.Conexao;
     SQL1.Connection := PRINCIPAL.Conexao;

     DS := TDataSource.Create(ContaDemanda);

     ListRegistros.Sorted := false;
     ListRegistros.Items := PRINCIPAL.SELECAO;

     pegaWhere();

     TabGrupo.TabVisible := FALSE;
     TabSubgrupo.TabVisible := FALSE;
     TabReferencia.TabVisible := FALSE;
     TabPessoa.TabVisible := FALSE;
     TabImovel.TabVisible := FALSE;
     TabContrato.TabVisible := FALSE;
     TabBTReferencia.TabVisible := FALSE;
     TabDTPagamento.TabVisible := FALSE;
     TabObs.TabVisible := FALSE;
     TabFormPagamento.TabVisible := FALSE;
     TabPendente.TabVisible := FALSE;
     TabValor.TabVisible := FALSE;
     TABEXCLUSAO.TabVisible := FALSE;
     TabCategoria.TabVisible := FALSE;
     TabGarantidos.TabVisible := FALSE;
     TabJuros.TabVisible := FALSE;
     TabMulta.TabVisible := FALSE;
     TabDesconto.TabVisible := FALSE;
     TabParcela.TabVisible := FALSE;
     TabOperacao.TabVisible := FALSE;

     EscolhaCAIXA.TabVisible := False;
     EscolhaManipula.TabVisible := False;
     EscolhaCONTRATO.TabVisible := False;

end;

procedure TContaDemanda.TabGrupoShow(Sender: TObject);
begin
     limpaCampo();

     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('select NOME, ID_CAIXA_SIS from caixa_sis where tipo = ''GRUPO'' AND ATIVO = ''SIM'' ORDER BY NOME');
     SQL1.Open;

     DS.DataSet := SQL1;

     DBLookupGrupo.ListSource := DS;
     DBLookupGrupo.ListField := 'NOME';
     DBLookupGrupo.KeyField := 'ID_CAIXA_SIS';

end;

procedure TContaDemanda.BitBtn1Click(Sender: TObject);
Var sql: TZQuery;
    i, j: Integer;
    texto: String;
begin
     If MessageDlg('Deseja alterar os GRUPOS?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET ID_TIPO = '+ IntToStr(DBLookupGrupo.KeyValue) +', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;

             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);

             sql := unUtilitario.getSelect('select ce.documento, ce.id_caixa from '+CAIXA+' inner join caixa_sis cs on cs.id_caixa_sis = ce.id_tipo where '+WHERE);

             while not sql.eof do
             Begin
                  texto := sql.FieldByName('documento').AsString;
                  for i := 1 to Length(texto) do
                      if texto[I] = '/' then
                      Begin
                         for j := 1 to I-2 do
                             texto[j] := ' ';

                         texto := SQL1.FieldByName('NOME').AsString+' '+Trim(texto);
                         SQLCaixaEntrada.SQL.Clear;
                         SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET DOCUMENTO = '''+ texto +''' WHERE id_caixa =' + sql.FieldByName('ID_CAIXA').AsString);
                         SQLCaixaEntrada.ExecSQL;
                         SQLCaixaEntrada.ApplyUpdates;
                      end;

                  sql.Next;
             end;

             DM_FINANCEIRO.ZCaixa.Refresh;

          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn20Click(Sender: TObject);
begin

   If APPLICATION.MESSAGEBOX('Deseja SUBTRAIR o VALOR?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          IF (Length(Trim(EditValorSubtrair.Text)) > 0) and (EditValorSubtrair.Text <> '0,00') Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET OPERACAO = OPERACAO  || '' - VAL ANTIGO: R$ '' || VALOR, VALOR = VALOR - '+ formataDinheiroSQL(EditValorSubtrair.Text)+', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          else
          Begin
              unUtilitario.setMensagem('Entre com um valor!','erro');
              exit;
          end;
              
          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn21Click(Sender: TObject);
Var sql, sqlUpdate: TZQuery;
begin

   If MessageDlg('Deseja alterar a OPERAÇÃO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          if RadioColocaBoleto.Checked Then
          Begin
               sql := getSQL('UPDATE '+CAIXA+' SET OPERACAO = OPERACAO||'' [BOLETO_EMITIDO DEMANDA]'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);
          end
          else
          if RadioRetiraBoleto.Checked Then
          Begin
             sql := getSelect('select id_caixa, operacao from '+CAIXA+' where '+WHERE);

             while not sql.Eof do
             Begin
                  sqlUpdate := getSQL('update '+CAIXA+' set OPERACAO = '''+formataTextoSQL(desmarcarBoletos(sql.FieldByName('OPERACAO').AsString))+''' where id_caixa = '+sql.FieldByName('ID_CAIXA').AsString);
                  sql.Next;
             end;
             sql.Close;
          end
          else
          if RadioColocaDeposito.Checked Then
          Begin
               sql := getSQL('UPDATE '+CAIXA+' SET OPERACAO = OPERACAO||'' [DEPOSITO]'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);
          end
          else
          if RadioRetiraDeposito.Checked Then
          Begin
             sql := getSelect('select id_caixa, operacao from '+CAIXA+' where '+WHERE);

             while not sql.Eof do
             Begin
                  sqlUpdate := getSQL('update '+CAIXA+' set OPERACAO = '''+formataTextoSQL(desmarcarDepositos(sql.FieldByName('OPERACAO').AsString))+''' where id_caixa = '+sql.FieldByName('ID_CAIXA').AsString);
                  sql.Next;
             end;
             sql.Close;
          end;

          ShowMessage('Processo concluído!');
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
                                                            
end;

procedure TContaDemanda.BitBtn2Click(Sender: TObject);
Var sql: TZQuery;
    i, j: Integer;
    texto, selecaoTexto: String;
    ok: boolean;
begin
     If MessageDlg('Deseja alterar os SUBGRUPOS?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET ID_SUBTIPO = '+ IntToStr(DBLookupSubgrupo.KeyValue) +', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             

             sql := unUtilitario.getSelect('select ce.documento, ce.id_caixa from '+CAIXA+' inner join caixa_sis cs on cs.id_caixa_sis = ce.id_subtipo where '+WHERE);

             while not sql.eof do
             Begin
                  texto := sql.FieldByName('documento').AsString;
                  ok := false;
                  for i := 1 to Length(texto) do
                  Begin
                      if texto[I] = '/' then
                         for j := i+2 to Length(texto) do
                         begin

                             if texto[j] <> ':' then
                                selecaoTexto := selecaoTexto+texto[j]
                             else
                             Begin

                                  texto := StringReplace(sql.FieldByName('documento').AsString, Trim(selecaoTexto+':'), SQL1.FieldByName('NOME').AsString+':', [rfReplaceAll, rfIgnoreCase] );
                                  SQLCaixaEntrada.SQL.Clear;
                                  SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET DOCUMENTO = '''+ texto +''' WHERE id_caixa =' + sql.FieldByName('ID_CAIXA').AsString);
                                  SQLCaixaEntrada.ExecSQL;
                                  SQLCaixaEntrada.ApplyUpdates;
                                  ok := true;
                                  selecaoTexto := '';
                                  Break;
                             end;
                         end;
                         if ok then
                            Break;
                  end;

                  sql.Next;
             end;

             DM_FINANCEIRO.ZCaixa.Refresh;

          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';

end;

procedure TContaDemanda.TabCategoriaShow(Sender: TObject);
begin
     limpaCampo();

     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('select NOME, ID_CAIXA_SIS from caixa_sis where tipo = ''CATEGORIA'' AND ATIVO = ''SIM'' ORDER BY NOME');
     SQL1.Open;

     DS.DataSet := SQL1;

     DBLookupCategoria.ListSource := DS;
     DBLookupCategoria.ListField := 'NOME';
     DBLookupCategoria.KeyField := 'ID_CAIXA_SIS';
end;

procedure TContaDemanda.TabSubgrupoShow(Sender: TObject);
begin
     limpaCampo();

     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('select NOME, ID_CAIXA_SIS from caixa_sis where tipo = ''SUBGRUPO'' AND ATIVO = ''SIM'' ORDER BY NOME');
     SQL1.Open;

     DS.DataSet := SQL1;

     DBLookupSubgrupo.ListSource := DS;
     DBLookupSubgrupo.ListField := 'NOME';
     DBLookupSubgrupo.KeyField := 'ID_CAIXA_SIS';

end;


function TContaDemanda.VerificarAno: String;
var
  ano: String;
begin
  if chkano.State = cbChecked then
    begin
      try
        strtoint(editano.Text);
        ano := editano.Text;
        if (strtoint(ano) < 1900) or (strtoint(ano) > 2100) then
          begin
            application.messagebox('Ano Inválido!', 'Aviso Célula Digital', mb_ok);
            editano.SetFocus;
            passei := false;
          end
        else
          result := ano;
      except
        application.messagebox('Ano Inválido!', 'Aviso Célula Digital', mb_ok);
        editano.SetFocus;
        passei := false;
      end;
    end;
end;


function TContaDemanda.VerificarDia(id_caixa, dia: string): String;
var
  aano, ames, adia: Word;
  varSQL: TZQuery;
begin
  if chkDia.State = cbChecked then
  begin
      try
        strtoint(dia);

        if (strtoint(dia) >= 1) and (strtoint(dia) <= 31) then
        begin
             varSQL := unUtilitario.getSelect('select data_ref from '+caixa+' where id_caixa = '+id_caixa);

             DecodeDate(varSQL.Fields[0].AsDateTime, aAno, aMes, aDia);
             try
                StrToDate(dia+'/'+IntToStr(aMes)+'/'+IntToStr(aAno));
                result := dia;
             except
                   Try
                      dia := IntToStr(StrToInt(dia) - 1);
                      StrToDate(dia+'/'+IntToStr(aMes)+'/'+IntToStr(aAno));
                      result := dia;
                   except
                         dia := IntToStr(StrToInt(dia) - 2);
                         StrToDate(dia+'/'+IntToStr(aMes)+'/'+IntToStr(aAno));
                         result := dia;
                   end;
             end;
        end
        else
        Begin
             setMensagem('Entre com um dia válido! (1 à 31)','erro');
             passei := false;
             editdia.SetFocus;
             exit;
        end;
      except
        application.messagebox('Dia Inválido! Informe um número entre 1 e 31!', 'Aviso Célula Digital', mb_ok);
        editdia.SetFocus;
        passei := false;
        exit;
      end;
  end;
end;


function TContaDemanda.VerificarMes: String;
var
  mes: String;
begin
  if chkMes.State = cbChecked then
    begin
      try
        strtoint(editmes.Text);
        mes := editmes.Text;
        if (strtoint(mes) < 1) or (strtoint(mes) > 12) then
          begin
            application.messagebox('Mês Inválido! Digite um número entre 1 e 12', 'Aviso Célula Digital', mb_ok);
            editmes.SetFocus;
            passei := false;            
          end
        else
          result := mes;
      except
        application.messagebox('Mês Inválido!', 'Aviso Célula Digital', mb_ok);
        editmes.SetFocus;
        passei := false;
      end;
    end;
end;


procedure TContaDemanda.ComboOperacaoChange(Sender: TObject);
begin
{
Alterar Categoria
Alterar Grupo
Alterar Subgrupo
Alterar Referência/Documento
Alterar Operação
Alterar Pessoa
Alterar Imóvel
Alterar Conta
Alterar Parcela
Alterar Contrato
Alterar Dt. Cadastro
Alterar Dt. Referência
Alterar Dt. Pagamento
Alterar Observações
Alterar Estorno de Contas
Alterar Pendente
Alterar Desconto
Alterar Juros
Alterar Multa
Alterar Garantidos
Alterar Valor
---
Excluir Contas

ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR CONTA
ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR DT. CADASTRO

}

     TabGrupo.TabVisible := FALSE;
     TabSubgrupo.TabVisible := FALSE;
     TabReferencia.TabVisible := FALSE;
     TabPessoa.TabVisible := FALSE;
     TabImovel.TabVisible := FALSE;
     TabContrato.TabVisible := FALSE;
     TabBTReferencia.TabVisible := FALSE;
     TabDTPagamento.TabVisible := FALSE;
     TabObs.TabVisible := FALSE;
     TabFormPagamento.TabVisible := FALSE;
     TabPendente.TabVisible := FALSE;
     TabValor.TabVisible := FALSE;
     TabExclusao.TabVisible := false;
     TabCategoria.TabVisible := false;
     TabDesconto.TabVisible := false;
     TabJuros.TabVisible := false;
     TabMulta.TabVisible := false;
     TabParcela.TabVisible := false;
     TabGarantidos.TabVisible := FALSE;
     TabOperacao.TabVisible := FALSE;

 If ComboOperacao.Text = 'Estorno de Contas' Then
 Begin
      //TabFormPagamento.TabVisible := true;
 End
 else
 If ComboOperacao.Text = 'Alterar Categoria' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR CATEGORIA') then
         Exit;
      TabCategoria.TabVisible := True;
 End
 else
 If ComboOperacao.Text = 'Alterar Grupo' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR GRUPO') then
         Exit;
      TabGrupo.TabVisible := True;
 End
 Else
 If ComboOperacao.text = 'Alterar Subgrupo' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR SUBGRUPO') then
         Exit;
      TabSubgrupo.TabVisible := True;
 End
 else
 If ComboOperacao.text = 'Alterar Referência/Documento' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR REFERÊNCIA/DOCUMENTO') then
         Exit;
      TabReferencia.TabVisible := True;
 End
 else
 If ComboOperacao.Text = 'Alterar Pessoa' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR PESSOA') then
         Exit;
      TabPessoa.TabVisible := True;
 End
 Else
 If ComboOperacao.text = 'Alterar Imóvel' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR IMÓVEL') then
         Exit;
      TabImovel.TabVisible := True;
 End
 else
 If ComboOperacao.text = 'Alterar Contrato' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR CONTRATO') then
         Exit;
      TabContrato.TabVisible := True;
 End
 Else
 If ComboOperacao.text = 'Alterar Dt. Referência' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR DT. REFERÊNCIA') then
         Exit;
      TabBTReferencia.TabVisible := True;
 End
 else
 If ComboOperacao.text = 'Alterar Dt. Pagamento' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR DT. PAGAMENTO') then
         Exit;
      TabDTPagamento.TabVisible := True;
 End
 else
 If ComboOperacao.text = 'Alterar Observações' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR OBSERVAÇÕES') then
         Exit;
      TabObs.TabVisible := True;
 End
 else
 If ComboOperacao.Text = 'Alterar Estorno de Contas' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR ESTORNO DE CONTAS') then
         Exit;
      TabFormPagamento.TabVisible := True;
 End
 Else
 If ComboOperacao.text = 'Alterar Pendente' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR PENDENTE') then
         Exit;
      TabPendente.TabVisible := True;
 End
 else
 If ComboOperacao.text = 'Alterar Valor' Then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR VALOR') then
         Exit;
      TabValor.TabVisible := True;
 End
 else
 if ComboOperacao.Text = 'Excluir Contas' then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = EXCLUIR CONTAS') then
         Exit;
    tabExclusao.TabVisible := true;
 end
 else
 if ComboOperacao.Text = 'Alterar Desconto' then
 begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR DESCONTO') then
         Exit;
    TabDesconto.TabVisible := true;
 end
 else
 if ComboOperacao.Text = 'Alterar Juros' then
 begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR JUROS') then
         Exit;
    TabJuros.TabVisible := true;
 end
 else
 if ComboOperacao.Text = 'Alterar Multa' then
 begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR MULTA') then
         Exit;
    TabMulta.TabVisible := true;
 end
 else
 if ComboOperacao.Text = 'Alterar Garantidos' then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR GARANTIDOS') then
         Exit;
    TabGarantidos.TabVisible := true;
 end
 else
 if ComboOperacao.Text = 'Alterar Operações' then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR OPERAÇÃO') then
         Exit;
    TabOperacao.TabVisible := true;
 end
 else
 if ComboOperacao.Text = 'Alterar Parcela' then
 Begin
       if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = ALTERAR PARCELA') then
         Exit;
    TabParcela.TabVisible := true;
 end;

end;


procedure TContaDemanda.BitBtn3Click(Sender: TObject);
begin
     If MessageDlg('Deseja alterar a DOCUMENTO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          if RadioCONCATRef.Checked Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET DOCUMENTO = DOCUMENTO ||'' ''||'''+ EditRef.Text +''', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE)
          else
              SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET DOCUMENTO = '''+ EditRef.Text +''', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';

end;

procedure TContaDemanda.BitBtn4Click(Sender: TObject);
begin
   If MessageDlg('Deseja alterar as GARANTIAS?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          If CheckGarantido.State <> cbGrayed Then
             If CheckGarantido.Checked Then
                SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET GARANTIDO = ''SIM'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
                else
                SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET GARANTIDO = ''NAO'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          Else
          Begin
               ShowMessage('Escolha: (SIM) - Garantido / (NÃO) Não Garantido.');
               exit;
          End;

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.pegaWhere();
Var i: integer;
Begin

  WHERE := '';

  For i := 0 to ListRegistros.Items.Count - 1 Do
  Begin
    WHERE := WHERE + ' ID_CAIXA = '+ ListRegistros.Items.Strings[i];

    If i < ListRegistros.Items.Count - 1 Then
      Where := Where + ' OR ';
  End;
End;

procedure TContaDemanda.BitBtn5Click(Sender: TObject);
begin
    If MessageDlg('Deseja alterar a PESSOA?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin
          If SQL1.RecordCount > 1 Then
          Begin
             MSG.Panels[0].Text := 'Foi encontrado mais de uma opção de pessoa... Somente uma pessoa por vez.';
             exit;
          End;

          If SQL1.RecordCount = 0 Then
          Begin
             MSG.Panels[0].Text := 'Não foi encontrado nenhuma pessoa...';
             exit;
          End;

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET ID_PESSOA = '+ SQL1.FieldByName('ID_PESSOA').AsString +', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE);
          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
                 SQL1.Close;
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.EditPessoaChange(Sender: TObject);
begin
     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('SELECT ID_PESSOA, NOME FROM PESSOA WHERE ATIVO = ''SIM'' AND NOME LIKE ''' + EditPessoa.Text + '%''');
     SQL1.Open;
end;

procedure TContaDemanda.editValorManualChange(Sender: TObject);
begin
     if Length(trim(editValorManual.Text)) = 0  then
        editValorManual.Text := '0';

     if Length(trim(editMultaR.Text)) = 0  then
        editMultaR.Text := '0';

     if Length(trim(editMultaP.Text)) = 0  then
        editMultaP.Text := '0';

     if Length(trim(editJurosP.Text)) = 0  then
        editJurosP.Text := '0';

     if Length(trim(editJurosR.Text)) = 0  then
        editJurosR.Text := '0';

     if Length(trim(editDescontoP.Text)) = 0  then
        editDescontoP.Text := '0';

     if Length(trim(editDescontoR.Text)) = 0  then
        editDescontoR.Text := '0';

     if Length(trim(editValorFinal.Text)) = 0  then
        editValorFinal.Text := '0';

     if Length(trim(editDividir.Text)) = 0  then
        editDividir.Text := '0';

     if Length(trim(editValorParcelas.Text)) = 0  then
        editValorParcelas.Text := '0';

     if Length(trim(editValorParcelas.Text)) = 0  then
        editValorParcelas.Text := '0';

     calculaTudo();
     editDividirChange(Sender);
end;


procedure TContaDemanda.editValorManualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = VK_RETURN then
        calculaTudo();
end;

procedure TContaDemanda.editVencimentoChange(Sender: TObject);
begin
     editValorManualChange(Sender);
end;

procedure TContaDemanda.EscolhaManipulaShow(Sender: TObject);
Var varSQL: TZQuery;
begin
     editVencimento.Date := Date();
     editPagamento.Date := Date();

     varSQL := unUtilitario.getSelect('select nome ||''-''||ID_CAIXA_SIS from caixa_sis where ativo = ''SIM'' and tipo = ''CATEGORIA'' order by nome');
     editCategoria.Items.Clear;

     while not varSQL.Eof do
     Begin
          editCategoria.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     End;

     varSQL := unUtilitario.getSelect('select nome ||''-''||ID_CAIXA_SIS from caixa_sis where ativo = ''SIM'' and tipo = ''GRUPO'' order by nome');
     editTipo.Items.Clear;

     while not varSQL.Eof do
     Begin
          editTipo.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     End;

     varSQL := unUtilitario.getSelect('select nome ||''-''||ID_CAIXA_SIS from caixa_sis where ativo = ''SIM'' and tipo = ''SUBGRUPO'' order by nome');
     editSubtipo.Items.Clear;

     while not varSQL.Eof do
     Begin
          editSubtipo.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     End;

     if labelCaixa.Caption = 'ENTRADA' then
     Begin
          if Length(trim(WHERE)) > 0 then
             varSQL := unUtilitario.getSelect('select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c where '+WHERE)
          else
              varSQL := unUtilitario.getSelect('select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c where id_caixa = 0');
     end
     ELSE
     Begin
          if Length(trim(WHERE)) > 0 then
             varSQL := unUtilitario.getSelect('select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c where '+WHERE)
          else
              varSQL := unUtilitario.getSelect('select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c where id_caixa = 0');
     end;

     if varSQL.Fields[0].AsCurrency > 0 then
     Begin
          editValorManual.Text := varSQL.Fields[0].AsString;
          editValorManual.ReadOnly := True;
     end
     Else
     Begin
          editValorManual.Text := '0';
          editValorManual.ReadOnly := False;
     end;

     FreeAndNil(varSQL);
end;

procedure TContaDemanda.TabPessoaShow(Sender: TObject);
begin
     limpaCampo();
     
     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('SELECT ID_PESSOA, NOME FROM PESSOA WHERE ATIVO = ''SIM'' AND NOME LIKE ''%''');
     SQL1.Open;

     DS.DataSet := SQL1;

     GridPessoa.DataSource := DS;
end;

procedure TContaDemanda.TabImovelShow(Sender: TObject);
begin
     limpaCampo();
     
     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('SELECT I.ID_IMOVEL, L.nome  FROM IMOVEL I LEFT JOIN LOGRADOURO L ON L.id_logradouro = I.id_logradouro WHERE I.ativo = ''SIM'' and NOME LIKE ''%''');
     SQL1.Open;

     DS.DataSet := SQL1;

     GridImovel.DataSource := DS;

     DBText1.DataSource := DS;
end;

procedure TContaDemanda.BitBtn6Click(Sender: TObject);
begin
If MessageDlg('Deseja alterar o IMÓVEL?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          If SQL1.RecordCount = 0 Then
          Begin
             MSG.Panels[0].Text := 'Não foi encontrado nenhum imóvel...';
             exit;
          End;

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET ID_IMOVEL = '+ SQL1.FieldByName('ID_IMOVEL').AsString +', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);            
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
                 SQL1.Close;
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn7Click(Sender: TObject);
begin
   If APPLICATION.MESSAGEBOX('Deseja alterar o JUROS?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          if Length(EditJuros.Text) > 0 Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET VALOR_JUROS = ' + formataDinheiroSQL(EditJuros.Text) + ', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          else
          Begin
              unUtilitario.setMensagem('Entre com um valor!','erro');
              exit;
          End;

          Try
          Try
             SQLCaixaEntrada.SQL.Text;
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.EditImovelChange(Sender: TObject);
begin
     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('SELECT I.ID_IMOVEL, L.nome  FROM IMOVEL I LEFT JOIN LOGRADOURO L ON L.id_logradouro = I.id_logradouro WHERE I.ativo = ''SIM'' AND NOME LIKE ''' + EditImovel.Text + '%''');
     SQL1.Open;
end;

procedure TContaDemanda.editJurosPChange(Sender: TObject);
begin

     if editJurosP.Focused then
     Begin
          editValorManualChange(Sender);
          editJurosR.Text := converteValorPorcentagem(editJurosP.Text, editValorManual.Text, True);
          editDividirChange(Sender);
     end;
end;

procedure TContaDemanda.editJurosRChange(Sender: TObject);
begin
     if editJurosR.Focused then
     Begin
          editValorManualChange(Sender);
          editJurosP.Text := converteValorPorcentagem(editJurosR.Text, editValorManual.Text, False);
          editDividirChange(Sender);
     end;
end;

procedure TContaDemanda.editMultaPChange(Sender: TObject);
begin
     if editMultaP.Focused then
     Begin
          editValorManualChange(Sender);
          editMultaR.Text := converteValorPorcentagem(editMultaP.Text, editValorManual.Text, True);
          //calculaTudo();
          editDividirChange(Sender);
     end;
end;

procedure TContaDemanda.editMultaRChange(Sender: TObject);
begin
     if editMultaR.Focused then
     Begin
          editValorManualChange(Sender);
          editMultaP.Text := converteValorPorcentagem(editMultaR.Text, editValorManual.Text, False);
          editDividirChange(Sender);
     end;
end;

procedure TContaDemanda.editNomePessoaDropDown(Sender: TObject);
Var varSQL: TZQuery;
begin

     editNomePessoa.Items.Clear;

     if Length(Trim(editNomePessoa.Text)) = 0 then
        Exit;

     varSQL := unUtilitario.getSelect('SELECT NOME ||''-''|| ID_PESSOA FROM PESSOA WHERE ATIVO = ''SIM'' AND NOME LIKE '''+editNomePessoa.Text+'%'' ORDER BY NOME');

     while not varSQL.Eof do
     Begin
          editNomePessoa.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     End;

     AjustarLargura(editNomePessoa);
     FreeAndNil(varSQL);
end;

procedure TContaDemanda.editPagamentoChange(Sender: TObject);
begin
     editValorManualChange(Sender);
end;

procedure TContaDemanda.calculaTudo();
begin
     editValorFinal.Text := getCurrToStr(getDinheiroTotal(editValorManual.Text, editJurosP.Text, editMultaP.Text, editDescontoR.Text, DateToStr(editVencimento.Date), DateToStr(editPagamento.Date), getConf('EMPRESA_CALCULO')),FALSE);
end;

procedure TContaDemanda.BitBtn8Click(Sender: TObject);
begin
If MessageDlg('Deseja alterar o CONTRATO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          If SQL1.RecordCount = 0 Then
          Begin
             MSG.Panels[0].Text := 'Não foi encontrado nenhum contrato...';
             exit;
          End;

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET ID_CONTRATO = '+ SQL1.FieldByName('ID_CONTRATO').AsString +', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);            
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
                 SQL1.Close;
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn9Click(Sender: TObject);
begin
   If APPLICATION.MESSAGEBOX('Deseja alterar o DESCONTO?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          if Length(EditDesconto.Text) > 0 Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET VALOR_DESCONTO = ' + formataDinheiroSQL(EditDesconto.Text) + ', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          else
          Begin
              unUtilitario.setMensagem('Entre com um valor!','erro');
              exit;
          End;
              
          Try
          Try
             SQLCaixaEntrada.SQL.Text;
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.btnCriarContaClick(Sender: TObject);
Var texto: String;
    I: Integer;
    Vencimento: TDate;
    varSQL: TZQuery;
begin
// Botão colocado Visible = False, chamado #536744 - Bruno Pádua
     //VALIDAÇÃO
     Try
     if (NOT verificaStringInt(IntToStr(IDCampo(editNomePessoa.Text)))) OR (IDCampo(editNomePessoa.Text) <= 0) then
     Begin
          unUtilitario.setMensagem('Informe a pessoa!','informa');
          editNomePessoa.SetFocus;
          exit;
     end;

     if (NOT verificaStringInt(IntToStr(IDCampo(editCategoria.Text)))) OR (IDCampo(editCategoria.Text) <= 0) then
     Begin
          unUtilitario.setMensagem('Informe a categoria!','informa');
          editCategoria.SetFocus;
          exit;
     end;

     if (NOT verificaStringInt(IntToStr(IDCampo(editTipo.Text)))) OR (IDCampo(editTipo.Text) <= 0) then
     Begin
          unUtilitario.setMensagem('Informe a Tipo!','informa');
          editTipo.SetFocus;
          exit;
     end;

     if (NOT verificaStringInt(IntToStr(IDCampo(editSubtipo.Text)))) OR (IDCampo(editSubtipo.Text) <= 0) then
     Begin
          unUtilitario.setMensagem('Informe a Subtipo!','informa');
          editSubtipo.SetFocus;
          exit;
     end;

     try
        if StrToCurr(editValorManual.Text) <= 0 then
        Begin
          unUtilitario.setMensagem('Informe o VALOR!','informa');
          editSubtipo.SetFocus;
          exit;
        end;
     except
          unUtilitario.setMensagem('Informe o VALOR!','informa');
          editSubtipo.SetFocus;
          exit;
     end;
     except
           unUtilitario.setMensagem('VERIFIQUE TODOS OS VALORES ANTES DE CONTINUAR!'+#13+'O sistema encontrou erros em sua entrada.','informa');
           exit;
     end;

     Vencimento := editVencimento.Date;

     if StrToInt(editDividir.Text) > 0 then
     Begin
          for I := 1 to StrToInt(editDividir.Text) do
          Begin
               texto := texto + #13+'Parcela '+IntToStr(I)+' de R$ '+editValorParcelas.Text+' Vencimento: '+DateToStr(Vencimento);
               Vencimento := IncMonth(Vencimento,1);
          end;
     end
     else
     Begin
          texto := #13+'Conta única de R$ '+editValorFinal.Text+' Vencimento: '+DateToStr(Vencimento);
     end;


     if unUtilitario.setMensagem('Deseja gerar a(s) conta(s) no caixa '+labelCaixa.Caption+' com base nessas informações?'+#13'Caso tenha selecionado alguma conta na tela anterior, essas contas vão ser apagadas para a criação das novas contas.'+texto,'confirma') = IDYES then
     Begin
          Vencimento := editVencimento.Date;
          
          if StrToInt(editDividir.Text) > 0 then
          Begin
               for I := 1 to StrToInt(editDividir.Text) do
               Begin
                    if labelCaixa.Caption = 'ENTRADA' then
                       cadastraConta('ENTRADA', '0', IntToStr(IDCampo(editCategoria.Text)), IntToStr(IDCampo(editSubtipo.Text)), IntToStr(IDCampo(editTipo.Text)), IntToStr(IDCampo(editNomePessoa.Text)), '0', '0', getUser('CODIGO_USUARIO'), '0', '0', DateToStr(Vencimento), DateTimeToStr(Now()), DateTimeToStr(Now()), editTipo.Text+' / '+editSubtipo.Text+': ACERTO - ' + editDocumento.Text , 'ACERTO DE CONTAS. CONTAS ANTIGAS:'+StringReplace(WHERE,'ID_CAIXA = ','',[rfReplaceAll]), CurrToStr((StrToCurr(editDescontoR.Text)/StrToCurr(editDividir.Text))+StrToCurr(StringReplace(formataDinheiroSQL(editValorParcelas.Text),'.',',',[rfReplaceAll]))), editJurosP.Text, editMultaP.Text, CurrToStr(StrToCurr(editDescontoR.Text)/StrToCurr(editDividir.Text)), IntToStr(I), 'NAO', 'SIM', 'NAO')
                    else
                        cadastraConta('SAIDA', '0', IntToStr(IDCampo(editCategoria.Text)), IntToStr(IDCampo(editSubtipo.Text)), IntToStr(IDCampo(editTipo.Text)), IntToStr(IDCampo(editNomePessoa.Text)), '0', '0', getUser('CODIGO_USUARIO'), '0', '0', DateToStr(Vencimento), DateTimeToStr(Now()), DateTimeToStr(Now()), editTipo.Text+' / '+editSubtipo.Text+': ACERTO - ' + editDocumento.Text , 'ACERTO DE CONTAS. CONTAS ANTIGAS:'+StringReplace(WHERE,'ID_CAIXA = ','',[rfReplaceAll]), CurrToStr((StrToCurr(editDescontoR.Text)/StrToCurr(editDividir.Text))+StrToCurr(StringReplace(formataDinheiroSQL(editValorParcelas.Text),'.',',',[rfReplaceAll]))), editJurosP.Text, editMultaP.Text, '0', IntToStr(I), 'NAO', 'SIM', 'NAO');

                    Vencimento := IncMonth(Vencimento,1);
               end;
          end
          else
          Begin
                    if labelCaixa.Caption = 'ENTRADA' then
                       cadastraConta('ENTRADA', '0', IntToStr(IDCampo(editCategoria.Text)), IntToStr(IDCampo(editSubtipo.Text)), IntToStr(IDCampo(editTipo.Text)), IntToStr(IDCampo(editNomePessoa.Text)), '0', '0', getUser('CODIGO_USUARIO'), '0', '0', DateToStr(Vencimento), DateTimeToStr(Now()), DateTimeToStr(Now()), editTipo.Text+' / '+editSubtipo.Text+': ACERTO - ' + editDocumento.Text , 'ACERTO DE CONTAS. CONTAS ANTIGAS:'+StringReplace(WHERE,'ID_CAIXA = ','',[rfReplaceAll]), editValorManual.Text, editJurosP.Text, editMultaP.Text, editDescontoR.Text, '1', 'NAO', 'SIM', 'NAO')
                    else
                        cadastraConta('SAIDA', '0', IntToStr(IDCampo(editCategoria.Text)), IntToStr(IDCampo(editSubtipo.Text)), IntToStr(IDCampo(editTipo.Text)), IntToStr(IDCampo(editNomePessoa.Text)), '0', '0', getUser('CODIGO_USUARIO'), '0', '0', DateToStr(Vencimento), DateTimeToStr(Now()), DateTimeToStr(Now()), editTipo.Text+' / '+editSubtipo.Text+': ACERTO - ' + editDocumento.Text , 'ACERTO DE CONTAS. CONTAS ANTIGAS:'+StringReplace(WHERE,'ID_CAIXA = ','',[rfReplaceAll]), editValorManual.Text, editJurosP.Text, editMultaP.Text, editDescontoR.Text, '1', 'NAO', 'SIM', 'NAO');
          end;

          if Length(trim(WHERE)) > 0 then
          begin
               if labelCaixa.Caption = 'ENTRADA' then
                  varSQL := unUtilitario.getSQL('UPDATE CAIXA_ENTRADA SET ATIVO = ''XXX'' WHERE '+WHERE)
               ELSE
                   varSQL := unUtilitario.getSQL('UPDATE CAIXA_SAIDA SET ATIVO = ''XXX'' WHERE '+WHERE);

               setLogSQL(WHERE, 'EXCLUSÃO', 'MANIPULAR CONTAS', varSQL.SQL.Text);

               FreeAndNil(varSQL);
          end;

          unUtilitario.setMensagem('O processo de criação de contas foi concluído.','informa');

          if DM_FINANCEIRO.ZCaixaBackup.Active then
             DM_FINANCEIRO.ZCaixaBackup.Refresh;

          if DM_FINANCEIRO.ZCaixa.Active then
             DM_FINANCEIRO.ZCaixa.Refresh;

          Self.Close;
     
     end;
     
end;

procedure TContaDemanda.EditContratoChange(Sender: TObject);
begin
     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('SELECT C.id_contrato, C.vencimento, C.valor, C.id_imovel, L.nome FROM CONTRATO C LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro WHERE C.ATIVO = ''SIM'' and l.nome like ''' + EditContrato.Text + '%'' ORDER BY C.id_contrato');
     SQL1.Open;
end;

procedure TContaDemanda.editDescontoPChange(Sender: TObject);
begin
     if editDescontoP.Focused then
     Begin
          editValorManualChange(Sender);
          editDescontoR.Text := converteValorPorcentagem(editDescontoP.Text, editValorManual.Text, True);
          editDividirChange(Sender);
     end;
end;

procedure TContaDemanda.editDescontoRChange(Sender: TObject);
begin
     if editDescontoR.Focused then
     Begin
          editValorManualChange(Sender);
          editDescontoP.Text := converteValorPorcentagem(editDescontoR.Text, editValorManual.Text, False);
          editDividirChange(Sender);
     end;
end;

procedure TContaDemanda.editDividirChange(Sender: TObject);
Var valorJuros, valorOriginal: Double;
begin

     if (Length(trim(editDividir.Text)) = 0) OR (trim(editDividir.Text) = '0')  then
     Begin
         editDividir.Text := '0';
         editValorParcelas.Text := '0';
         calculaTudo();
         exit;
     end;

     //usar aqui depois a função retiraFormatacaoDinheiro!
     if StrToCurr(StringReplace(formataDinheiroSQL(editValorFinal.Text),'.',',',[rfReplaceAll])) > 0  then
     Begin
          if StrToInt(editDividir.Text) > 0 then
          Begin
               calculaTudo();

               if checkJuros.State = cbChecked then //Em forma de financiamento
               Begin               
                    valorJuros := StrToCurr(StringReplace(formataDinheiroSQL(editJurosP.Text),'.',',',[rfReplaceAll])) * 30;
                    valorOriginal := StrToCurr(StringReplace(formataDinheiroSQL(editValorFinal.Text),'.',',',[rfReplaceAll]));

                    editValorFinal.Text := getCurrToStr(((valorOriginal * (valorJuros + 100))/100), false);
                    editValorParcelas.Text := getCurrToStr(StrToCurr(StringReplace(formataDinheiroSQL(editValorFinal.Text),'.',',',[rfReplaceAll])) / StrToInt(editDividir.Text), false);
               end
               else
               Begin //Sem Juros
                    editValorParcelas.Text := getCurrToStr(StrToCurr(StringReplace(formataDinheiroSQL(editValorFinal.Text),'.',',',[rfReplaceAll])) / StrToInt(editDividir.Text), false);
               end;
          End;

     end
     else
         editValorParcelas.Text := '0';
     
end;

procedure TContaDemanda.TabContratoShow(Sender: TObject);
begin
    limpaCampo();

     SQL1.Close;
     SQL1.SQL.Clear;
     SQL1.SQL.Add('SELECT C.id_contrato, C.vencimento, C.valor, C.id_imovel, L.nome FROM CONTRATO C  LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro WHERE C.ATIVO = ''SIM'' ORDER BY C.id_contrato');
     SQL1.Open;

     DS.DataSet := SQL1;

     GridContrato.DataSource := DS;
end;

procedure TContaDemanda.BitBtn10Click(Sender: TObject);
var
  dia, mes, ano: String;
  varSQL: TZQuery;
  i: Integer;
begin
  passei := true;

  dia := 'extract(day from data_ref)';
  mes := 'extract(month from data_ref)';
  ano := 'extract(year from data_ref)';

  mes := verificarmes();
  ano := verificarano();

  if passei = true then
    if application.messagebox('Deseja realmente alterar a DATA DE REFERENCIA dos registros?', 'Aviso Célula Digital', mb_yesno) = mryes then
      begin
           try

           if not chkDia.Checked Then
              varSQL := unUtilitario.getSQL('update '+  caixa + ' set data_ref = ' + dia + ' || ''.'' || ' + mes + ' || ''.'' || ' + ano + ', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp where ' + where)
           else
           Begin
                for i := 0 to PRINCIPAL.SELECAO.Count - 1 Do
                Begin
                     dia := verificardia(PRINCIPAL.SELECAO.Strings[i],editdia.Text);
                     varSQL := unUtilitario.getSQL('update '+  caixa + ' set data_ref = ' + dia + ' || ''.'' || ' + mes + ' || ''.'' || ' + ano + ', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp where id_caixa = ' + PRINCIPAL.SELECAO.Strings[i])
                end;
           end;

          //setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);
          FreeAndNil(VarSQL);          
          application.messagebox('Operação realizado com sucesso!', 'Aviso Célula Digital', MB_OK);
        except
          application.messagebox('Não foi possível realizar a alteração! Verifique os valores.', 'Aviso Célula Digital', mb_ok);
        end;
    end;
end;

procedure TContaDemanda.TabDTPagamentoShow(Sender: TObject);
begin
     MesPagamento.Date := Date;
end;

procedure TContaDemanda.BitBtn11Click(Sender: TObject);
begin

If MessageDlg('Deseja alterar a Data de Pagamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          If date = MesPagamento.Date Then
               If MessageDlg('A data selecionada é a de hoje... Você aceita isso?', mtConfirmation, [mbYes, Mbno], 0) = mrNo Then
                  Exit;

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET DATA_PGTO = '''+ unCamposBusca.TROCA(DateToStr(MesPagamento.Date),'/','.') + ''', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', hora_pgto = current_time, DATA_ALT = current_timestamp WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);

             DM_FINANCEIRO.ZCaixa.Refresh;

          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
                 SQL1.Close;
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn12Click(Sender: TObject);
begin
   If MessageDlg('Deseja alterar a OBSERVAÇÃO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          if RadioCONCATObs.Checked Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET OBS = OBS||'' ''||'''+ EditObes.Text +''', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE)
          Else
              SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET OBS = '''+ EditObes.Text +''', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn13Click(Sender: TObject);
VAR i: Integer;
begin

     setMensagem('Esta ação não é mais permitida neste menu. Vá em Arquivos >> Sistema >> Administração Geral >> Estorno de Contas.','informa');
     exit;

    If MessageDlg('Deseja retirar o PAGAMENTO DAS CONTAS?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          //SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET data_pgto = null, hora_pgto = null, ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);            
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;

          WHERE := '';

          For i := 0 to ListRegistros.Items.Count - 1 Do
          Begin
               WHERE := WHERE + ' ID_'+StringReplace(CAIXA,'CE', '',[rfReplaceAll,rfIgnoreCase])+' = '+ ListRegistros.Items.Strings[i];

               If i < ListRegistros.Items.Count - 1 Then
               Where := Where + ' OR ';
          End;

          //ALTERANDO OS PAGAMENTOS UNITÁRIOS
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('delete from caixa_pgto where '+ Where);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
                 CLOSE;
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn14Click(Sender: TObject);
begin
   If MessageDlg('Deseja alterar o PENDENTE?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          If CheckPendente.State <> cbGrayed Then
             If CheckPendente.Checked Then
                SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET PENDENTE = ''SIM'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
                else
                SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET PENDENTE = ''NAO'', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          Else
          Begin
               ShowMessage('Escolha: (SIM) - Pendente / (NÃO) Não pendente.');
               exit;
          End;

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.checkJurosClick(Sender: TObject);
begin
     editDividirChange(Sender);
end;

procedure TContaDemanda.checkJurosMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('Calcular JUROS nas parcelas como forma de financiamento?');
end;

procedure TContaDemanda.CheckGarantidoClick(Sender: TObject);
begin
     If CheckGarantido.Checked Then
        CheckGarantido.Caption := 'SIM'
     Else
         CheckGarantido.Caption := 'NÃO';
end;

procedure TContaDemanda.CheckPendenteClick(Sender: TObject);
begin
     If CheckPendente.Checked Then
        CheckPendente.Caption := 'SIM'
     Else
         CheckPendente.Caption := 'NÃO';
end;

procedure TContaDemanda.CheckPorcentagemClick(Sender: TObject);
begin
  editvalor.Enabled := false;
  editvalor.Color := clScrollBar;
  EditPorcentagem.Enabled := true;
  editporcentagem.color := clwindow;
end;

procedure TContaDemanda.CheckValorClick(Sender: TObject);
begin
  editvalor.Enabled := true;
  editvalor.Color := clWindow;
  EditPorcentagem.Enabled := false;
  editporcentagem.color := clScrollBar;
end;

procedure TContaDemanda.chkAnoClick(Sender: TObject);
begin
  editano.Clear;
  if chkano.State = cbChecked then
    begin
      editano.ReadOnly := false;
      editano.Color := clWindow;
      editano.SetFocus;
    end
  else
    begin
      editano.ReadOnly := true;
      editano.Color := clScrollBar;
    end;
end;

procedure TContaDemanda.chkDiaClick(Sender: TObject);
begin
  editdia.Clear;

  if chkdia.State = cbChecked then
    begin
      editdia.ReadOnly := false;
      editdia.Color := clWindow;
      editdia.SetFocus;
    end
  else
    begin
      editdia.ReadOnly := true;
      editdia.Color := clScrollBar;
    end;

end;

procedure TContaDemanda.chkMesClick(Sender: TObject);
begin
  editmes.Clear;
  
  if chkmes.State = cbChecked then
    begin
      editmes.ReadOnly := false;
      editmes.Color := clWindow;
      editmes.SetFocus;
    end
  else
    begin
      editmes.ReadOnly := true;
      editmes.Color := clScrollBar;
    end;
end;

procedure TContaDemanda.BitBtn15Click(Sender: TObject);
begin

   If APPLICATION.MESSAGEBOX('Deseja alterar o VALOR?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          If CheckPorcentagem.Checked Then
             IF (Length(trim(EditPorcentagem.Text)) > 0) and (EditPorcentagem.Text <> '100') Then
                SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET OPERACAO = OPERACAO  || '' - VAL ANTIGO: R$ '' || VALOR, VALOR = (VALOR * '+ formataDinheiroSQL(EditPorcentagem.Text)+')/100, ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
             else
             Begin
                unUtilitario.setMensagem('Entre com um valor!','erro');
                exit;
             end;

          If CheckValor.Checked Then
             IF (Length(trim(EditValor.Text)) > 0) and (EditValor.Text <> '0,00') Then
                SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET OPERACAO = OPERACAO  || '' - VAL ANTIGO: R$ '' || VALOR, VALOR = ' + formataDinheiroSQL(EditValor.Text) + ', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
             else
                 unUtilitario.setMensagem('Entre com um valor!','erro');
          Try
          Try
             SQLCaixaEntrada.SQL.Text;
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn16Click(Sender: TObject);
begin
   If APPLICATION.MESSAGEBOX('Deseja alterar a MULTA?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          if Length(EditMulta.Text) > 0 Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET VALOR_MULTA = ' + formataDinheiroSQL(EditMulta.Text) + ', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          else
          Begin
              unUtilitario.setMensagem('Entre com um valor!','erro');
              exit;
          End;

          Try
          Try
             SQLCaixaEntrada.SQL.Text;
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn17Click(Sender: TObject);
begin
     If MessageDlg('Deseja alterar a Categoria?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
     Begin

          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;
          SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET ID_CATEGORIA = '+ IntToStr(DBLookupCategoria.KeyValue) +', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp  WHERE ' + WHERE);

          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);

             WHERE := '';

             DM_FINANCEIRO.ZCaixa.Refresh

          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.ordenaComponente();
var lista: TStringList;
  menor, i, j, ponteiro: integer;
begin

  lista := TStringList.Create;

  ponteiro := 0;

while ponteiro < 1 do
begin
  for i := 0 to PRINCIPAL.SELECAO.Count - 1 do
  Begin
      menor := 0;
      for j := 0 to PRINCIPAL.SELECAO.Count - 1 do
      Begin
          if (strtoint(PRINCIPAL.SELECAO.Strings[i]) <= strtoint(PRINCIPAL.SELECAO.Strings[j])) and (strtoint(PRINCIPAL.SELECAO.Strings[i]) > 0) then
             menor := menor + 1;

          if (menor = PRINCIPAL.SELECAO.Count - lista.Count) AND (menor > 0) then
          Begin
            lista.Add(PRINCIPAL.SELECAO.Strings[i]);
            PRINCIPAL.SELECAO[i] := '0';
          end;
      end;
  end;

  if lista.Count >= PRINCIPAL.SELECAO.Count Then
    ponteiro := 2;
end;

  PRINCIPAL.SELECAO.Clear;
  PRINCIPAL.SELECAO :=  lista;
  ListRegistros.Items.Clear;
  ListRegistros.Items := lista;

end;

procedure TContaDemanda.BitBtn18Click(Sender: TObject);
var numeroInicial: Integer;
VarSQL: TZQuery;
begin

     numeroInicial := 0;
     
   If APPLICATION.MESSAGEBOX('Deseja alterar a NUMERAÇÃO DAS PARCELAS?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          if verificaStringInt(EditParcela.Text) Then
            numeroInicial := strtoint(trim(EditParcela.Text));

          if numeroInicial <= 0 Then
          Begin
            setMensagem('Entre com um valor maior que zero para ser o número inicial da parcela.','erro');
            exit;
          end;

          VarSQL := unUtilitario.getSelect('SELECT ID_CAIXA, DATA_REF FROM '+CAIXA+' WHERE ID_CAIXA IN ('+unUtilitario.alinhaStringlist(PRINCIPAL.SELECAO)+') ORDER BY DATA_REF ASC');

          Try
            Try
              while NOT VarSQL.eof do              
              Begin
                SQLCaixaEntrada := unUtilitario.getSQL('UPDATE ' +CAIXA+ ' SET PARCELA = '+IntToStr(numeroInicial)+', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE id_caixa = '+VarSQL.FieldByName('ID_CAIXA').AsString);
                inc(numeroInicial);
                varSQL.Next;
              end;
            except
              MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações, pois o sistema já pode ter alterado algumas contas...';
            End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

procedure TContaDemanda.BitBtn19Click(Sender: TObject);
begin

   If APPLICATION.MESSAGEBOX('Deseja ADICIONAR o VALOR?', 'Aviso Célula Digital', MB_YESNO) = mrYes Then
     Begin
          SQLCaixaEntrada.Close;
          SQLCaixaEntrada.SQL.Clear;

          IF (Length(Trim(EditValorAdicionar.Text)) > 0) and (EditValorAdicionar.Text <> '0,00') Then
             SQLCaixaEntrada.SQL.Add('UPDATE ' +CAIXA+ ' SET OPERACAO = OPERACAO  || '' - VAL ANTIGO: R$ '' || VALOR, VALOR = VALOR + '+ formataDinheiroSQL(EditValorAdicionar.Text)+', ID_FUNCIONARIO = ' + getUser('CODIGO_USUARIO') + ', DATA_ALT = current_timestamp WHERE ' + WHERE)
          else
          Begin
              unUtilitario.setMensagem('Entre com um valor!','erro');
              exit;
          end;
              
          Try
          Try
             SQLCaixaEntrada.ExecSQL;
             SQLCaixaEntrada.ApplyUpdates;
             setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', SQLCaixaEntrada.SQL.Text);
             setLogSQL(StringReplace(StringReplace(WHERE,'ID_CAIXA =','',[rfReplaceAll]),'OR',',',[rfReplaceAll]), 'ALTERAÇÃO', 'AÇÕES EM DEMANDA: '+ComboOperacao.Text, SQLCaixaEntrada.SQL.Text);             
          except
                MSG.Panels[0].Text := 'O programa encontrou um problema! Verifique as informações.';
                SQLCaixaEntrada.CancelUpdates;
          End;
          finally
                 ShowMessage('Processo concluído!');
          End;
     End
     else
         MSG.Panels[0].Text := 'Nenhum registro foi alterado!';
end;

end.
