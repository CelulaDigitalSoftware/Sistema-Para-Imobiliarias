unit unCamposBusca;

interface

uses ZDataset, SysUtils, Dialogs, ZDbcIntfs, Forms;

Function CAMPOS(CAMPO: integer):string;
Function SQL(CAMPOS:string; TABELA:string; PARAMETROS:string; ORDEM:string): string;
Procedure BUSCA(DATASET: TZQuery; SQL:string);
Function IDCampo(CAMPO: string): integer;
function TROCA(Text,Busca,Troca : string) : string;
function TROCA_LETRA(Frase: String ): String;
procedure buscaIndividual(Variacao, Codigo: integer; FormCriatura: TFormClass; FormCriador: TForm);

implementation

uses FrmPrincipal, unMsg, FrmDM_Cadastro, FrmPessoa,
  FrmCheques, FrmImovel, FrmAluguel, FrmCaixas, unUtilitario;

Function IDCampo(CAMPO: string): integer;
//RETORNA O C�DIGO DO CAMPO ESCOLHIDO
Var x, y: Integer;
Cod: string;
Begin
If Length(CAMPO) > 0 Then
Begin
     For x := 1 to Length(CAMPO) do
     Begin
          if CAMPO[x] = '-' then
          Begin
               For y := x+1 to Length(CAMPO) do
                   Cod := Cod + CAMPO[y];

               Result := StrToInt(Cod);
               exit;
          end;
     End;
End
Else
Begin
     unMsg.ERRO(8);
     Result := 0;
End;

End;

Function CAMPOS(CAMPO: integer):string;
//ENVIA O NOME DA CONSULTA PARA UM COMPONENTE
Begin

     case CAMPO of
          1: Result := 'C�digo-1';
          2: Result := 'Nome-2';
          3: Result := 'Data-3';
          4: Result := 'Endere�o-4';
          5: Result := 'Bairro-5';
          6: Result := 'Cidade-6';
          7: Result := 'CEP-7';
          8: Result := 'Apelido/Fantasia-8';
          9: Result := 'Email-9';
          10: Result := 'Telefone-10';
          11: Result := 'CPF/CNPJ-11';
          12: Result := 'RG/IE-12';
          13: Result := 'Usu�rio-13';
          14: Result := 'Tabela-14';
          15: Result := 'Estado-15';
          16: Result := 'Sigla-16';
          17: Result := 'Tipo-17';
          18: Result := 'N�mero-18';
          19: Result := 'Altera��o-19';
          20: Result := 'Finalidade-20';
          21: Result := 'Status-21';
          22: Result := '�rea Constru�da-22';
          23: Result := 'Aluguel-23';
          24: Result := 'Valor-24';
          25: Result := 'Caracter�stica-25';
          26: Result := 'Im�vel-26';
          27: Result := 'Propriet�rio-27';
          28: Result := 'Inquilino-28';
          29: Result := 'Vencimento-29';
          30: Result := 'C�digo do Im�vel-30';
          31: Result := 'C�digo do An�ncio-31';
          32: Result := 'Refer�ncia-32';
          33: Result := 'Data Refer�ncia-33';
          34: Result := 'Data Pagamento-34';
          35: Result := 'Contrato-35';
          36: Result := 'C�digo da Pessoa-36';
          37: Result := 'Documento-37';
          38: Result := 'Nome da Pessoa-38';
          39: Result := 'Rua do Imovel-39';
          40: Result := 'Pessoas Envolvidas-40';
          41: Result := 'Valor Calculado-41';
          42: Result := 'Nota-42';
          43: Result := 'An�ncios-43';
          44: Result := 'Textos-44';
          45: Result := 'C�digo do Contrato-45';
          46: Result := 'Classifica��o-46';
          47: Result := 'Vencimento do Contrato-47';
          48: Result := 'N�mero do Cheque-48';
          49: Result := 'N�mero da Conta-49';
          50: Result := 'Ocupa��o-50';
          51: Result := 'Datas-51';
          52: Result := 'N�meros-52';
          Else
              Begin
                   unMsg.ERRO(5);
                   Exit;
              End;
     End;

End;

Function SQL(CAMPOS:string; TABELA:string; PARAMETROS:string; ORDEM:string): string;
//RETORNA UMA SQL PRONTA
Begin
     Result := 'select '+CAMPOS+' from '+TABELA+' where '+PARAMETROS+' order by '+ORDEM;

End;

Procedure BUSCA(DATASET: TZQuery; SQL:string);
//REALIZA A FORMA��O DE UMA SQL E EFETUA A BUSCA DIRETAMENTE NO DATASET PASSADO
Begin

  TRY
     If DATASET.Active Then
        DATASET.Close;

     DATASET.Params.Clear;
     DATASET.SQL.Clear;
     DATASET.SQL.add(SQL);
     DATASET.Open;

  EXCEPT
    on EZSQLException do
       BEGIN
            unMsg.ERRO(9);
       END;
  END;


//If DATASET.Active Then
  //PRINCIPAL.setMensagem(IntToStr(DATASET.RecordCount)+' Registro(s) encontrado(s)');
End;

function TROCA(Text,Busca,Troca : string) : string;
// Substitui um caractere dentro da string - ACABAR COM ESSA FUN��O E USAR DIRETO O StringReplace()
var n : integer;
begin

for n := 1 to length(Text) do
  begin
  if Copy(Text,n,1) = Busca then
  begin
       Delete(Text,n,1);
       Insert(Troca,Text,n);
  end;
  end;
Result := Text;
end;


function TROCA_LETRA(Frase: String ): String;
begin
     //Fun��o antiga, mantida para retrocompatibilidade.
     unUtilitario.RemoveAcentos(Frase);
end;

procedure buscaIndividual(Variacao, Codigo: integer; FormCriatura: TFormClass; FormCriador: TForm);
Var formulario: Tform;
i: integer;
begin

if Codigo > 0 then
     Begin

          PRINCIPAL.CriarForm(FormCriatura, FormCriador, IntToStr(Variacao));

          Try
             for I := 0 to Screen.FormCount - 1 do
             begin
                  if Screen.Forms[I] is FormCriatura then
                  begin
                       Formulario := Screen.Forms[i];
                  end;
             end;

             if FormCriatura = TCAD_Pessoa then
                TCAD_Pessoa(Formulario).buscaIndividual(Codigo);


             //if FormCriatura = TCAD_ContaSaida then
             //   TCAD_ContaSaida(Formulario).buscaIndividual(Codigo);

             //if FormCriatura = TCAD_ContaEntrada then
             //   TCAD_ContaEntrada(Formulario).buscaIndividual(Codigo);

             if FormCriatura = TCAD_Imovel then
                TCAD_Imovel(Formulario).buscaIndividual(Codigo);

             if FormCriatura = TCAD_Caixas then
                IF Variacao = 1 Then // 1-ENTRADA 2-SA�DA
                   TCAD_Caixas(Formulario).mostraContaEntrada(Codigo)
                else
                    TCAD_Caixas(Formulario).mostraContaSaida(Codigo);
          Except
                ShowMessage('Problemas ao abrir janela.');
          end;

          //FormCriador.Close;
end
Else
Begin
  ShowMessage('Nenhuma informa��o encontrada.');
end;

end;



 {
procedure ImpressaoCaixaEntrada();
Var
base, conteudo: Integer;
XDia,XMes,XAno:Word;
Mes,Ano: String;
Begin

//N�O EST� COMPLETO!!!

try
   base := StrToInt(InputBox('Escolha a base para a busca:','1 - Pessoa.'+#13+'2 - Im�vel.'+#13+'3 - Contrato.',''));
Except
      ShowMessage('Somente N�MEROS s�o aceitos!');
end;

If Length(base) = 0 Then
   ShowMessage('Impress�o calcelada.')
else
    conteudo := StrToInt(InputBox('Escolha o que deseja imprimir:','1 - Gerar Pagamento.'+#13+'2 - Gerar Extrato Consolidado.',''));

If Length(conteudo) = 0 Then
   ShowMessage('Impress�o calcelada.');

   //Pessoa - Gerar Pagamento
   If (base = 1) and (conteudo = 1) Then
   begin

        DecodeDate(Date,XAno,XMes,XDia);

        Ano := InputBox('Entre com o ANO para a busca','Ano:',IntToStr(XAno));
        Mes := InputBox('Entre com o M�S para a busca','M�s:',IntToStr(XMes));

        DM_REL.ZQUERY1.SQL.Clear;
        DM_REL.ZQUERY1.SQL.Add('select CE.id_contas_entada, CE.valor, CE.data_ref, CE.documento from conta_entrada CE where CE.id_imovel = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_IMOVEL').AsString+' and Extract(month from CE.data_ref) <= '+Mes+' and Extract(year from CE.data_ref) <= '+Ano+' and CE.ativo = ''SIM'' and CE.ativo_extra = ''NAO'' order by CE.data');
        DM_REL.ZQUERY1.Open;

        DM_REL.ZQUERY2.SQL.Clear;
        DM_REL.ZQUERY2.SQL.Add('select CS.id_contas_entada, CS.valor, CS.data_ref, CS.documento from conta_saida CS where CS.id_pessoa = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_pessoa').AsString+' and Extract(month from CS.data_ref) <= '+Mes+' and Extract(year from CS.data_ref) <= '+Ano+' and CS.ativo = ''SIM'' and CS.ativo_extra = ''NAO'' order by CS.data');
        DM_REL.ZQUERY2.Open;

        DM_REL.ZQUERY3.SQL.clear;
        DM_REL.ZQUERY3.SQL.Add('select PI.id_pessoa, P.nome from pessoa_imovel PI left join pessoa P on P.id_pessoa = PI.id_pessoa where (PI.status = ''PROPRIETARIO'') and (PI.id_imovel = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_IMOVEL').AsString+') order by PI.porcentagem');
        DM_REL.ZQUERY3.Open;

        DM_REL.ZQUERY4.SQL.clear;
        DM_REL.ZQUERY4.SQL.Add('select PC.id_pessoa, P.nome from pessoa_contrato PC left join pessoa P on P.id_pessoa = PC.id_pessoa where ((PC.tipo = ''LOCAT�RIO'') or (PC.tipo = ''LOCATARIO'')) and (PC.id_contrato = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_CONTRATO').AsString+')');
        DM_REL.ZQUERY4.Open;

        DM_REL.ZQUERY5.SQL.clear;
        DM_REL.ZQUERY5.SQL.Add('select CE.*, I.numero, L.tipo, L.nome from conta_entrada CE left join imovel I on I.id_imovel = CE.id_imovel left join logradouro L on L.id_logradouro = I.id_logradouro where CE.id_contas_entada = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('id_contas_entada').AsString);
        DM_REL.ZQUERY5.Open;

        DM_REL.RV_IMPRESSAO.Close;
        DM_REL.RV_IMPRESSAO.ProjectFile := EnderecoLocal + '\REL\RV_CERECIBO.rav';
        principal.setLogo(dm_rel.RV_IMPRESSAO);
        DM_REL.RV_IMPRESSAO.Open;

        DM_REL.RV_IMPRESSAO.Execute;

        DM_REL.ZQUERY1.Close;
        DM_REL.ZQUERY2.Close;
        DM_REL.ZQUERY3.Close;
        DM_REL.ZQUERY4.Close;
        DM_REL.ZQUERY5.Close;

        
   end;







  DecodeDate(Date,XAno,XMes,XDia);

  Ano := InputBox('Entre com o ANO para a busca','Ano:',IntToStr(XAno));
  Mes := InputBox('Entre com o M�S para a busca','M�s:',IntToStr(XMes));

  DM_REL.ZQUERY1.SQL.Clear;
  DM_REL.ZQUERY1.SQL.Add('select CE.id_contas_entada, CE.valor, CE.data_ref, CE.documento from conta_entrada CE where CE.id_imovel = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_IMOVEL').AsString+' and Extract(month from CE.data_ref) <= '+Mes+' and Extract(year from CE.data_ref) <= '+Ano+' and CE.ativo = ''SIM'' and CE.ativo_extra = ''NAO'' order by CE.data');
  DM_REL.ZQUERY1.Open;

  DM_REL.ZQUERY2.SQL.Clear;
  DM_REL.ZQUERY2.SQL.Add('select CS.id_contas_entada, CS.valor, CS.data_ref, CS.documento from conta_saida CS where CS.id_pessoa = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_pessoa').AsString+' and Extract(month from CS.data_ref) <= '+Mes+' and Extract(year from CS.data_ref) <= '+Ano+' and CS.ativo = ''SIM'' and CS.ativo_extra = ''NAO'' order by CS.data');
  DM_REL.ZQUERY2.Open;

  DM_REL.ZQUERY3.SQL.clear;
  DM_REL.ZQUERY3.SQL.Add('select PI.id_pessoa, P.nome from pessoa_imovel PI left join pessoa P on P.id_pessoa = PI.id_pessoa where (PI.status = ''PROPRIETARIO'') and (PI.id_imovel = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_IMOVEL').AsString+') order by PI.porcentagem');
  DM_REL.ZQUERY3.Open;

  DM_REL.ZQUERY4.SQL.clear;
  DM_REL.ZQUERY4.SQL.Add('select PC.id_pessoa, P.nome from pessoa_contrato PC left join pessoa P on P.id_pessoa = PC.id_pessoa where ((PC.tipo = ''LOCAT�RIO'') or (PC.tipo = ''LOCATARIO'')) and (PC.id_contrato = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('ID_CONTRATO').AsString+')');
  DM_REL.ZQUERY4.Open;

  DM_REL.ZQUERY5.SQL.clear;
  DM_REL.ZQUERY5.SQL.Add('select CE.*, I.numero, L.tipo, L.nome from conta_entrada CE left join imovel I on I.id_imovel = CE.id_imovel left join logradouro L on L.id_logradouro = I.id_logradouro where CE.id_contas_entada = '+DM_FINANCEIRO.ZContaEntrada.FieldByName('id_contas_entada').AsString);
  DM_REL.ZQUERY5.Open;

  DM_REL.RV_IMPRESSAO.Close;
  DM_REL.RV_IMPRESSAO.ProjectFile := EnderecoLocal + '\REL\RV_CERECIBO.rav';
  principal.setLogo(dm_rel.RV_IMPRESSAO);
  DM_REL.RV_IMPRESSAO.Open;

  DM_REL.RV_IMPRESSAO.Execute;

  DM_REL.ZQUERY1.Close;
  DM_REL.ZQUERY2.Close;
  DM_REL.ZQUERY3.Close;
  DM_REL.ZQUERY4.Close;
  DM_REL.ZQUERY5.Close;

End;
  }
end.
