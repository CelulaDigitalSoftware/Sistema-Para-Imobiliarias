unit unCaixasSimples;

interface

uses ZDataset,SysUtils, FrmDM_FINANCEIRO, FrmPrincipal, unUtilitario, Graphics,
     FrmCaixasSimples, DateUtils, StdCtrls, Forms, FrmDM_RELATORIOS, Classes, Windows,
     RpDefine, DB, unFinanceiro, Math, Dialogs, FrmDM_REL, ShellAPI;

function getCaixa(): Boolean;
function calcPorcentagem(total, dinheiro: Currency): String;
function calcDinheiro(total, porcentagem: Currency): String;
procedure buscaRegistro(valor: String);
procedure setComponentes();
procedure setCaixa(cx: String);
procedure limpaComponentes();
procedure setInfoRecibo(id_caixa: integer; caixa, formulario: String; previa: Boolean);
procedure setInfoCupom(id_caixa: integer; caixa, formulario: String; previa: Boolean);
procedure baixaContas(contaBase: Integer);
procedure imprimir();
procedure setCalculoTotal();
procedure setSalvaRegistro(id_caixa, caixa: String);
function buscaInteligente(texto: String): String;
function getValorEntrada(): String;

var
   contaBase: integer;
   caixaBase, modeloRecibo: String;
   imprimirUnica: Boolean;
   rowEntrada, rowSaida: TStringList;

implementation

uses FrmCaixasItens, unINI, unLog;

procedure setSalvaRegistro(id_caixa, caixa: String);
var varSQL: Tzquery;
begin
     try
        varSQL := unUtilitario.getSQL('update caixa_'+caixa+' set DATA_ALT = current_date, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', VALOR_JUROS = '+StringReplace(CurrToStr(getStrToCurr(CAD_CaixasSimples.EditValorJurosPorc.Text)),',','.',[rfReplaceAll])+', VALOR_MULTA = '+StringReplace(CurrToStr(getStrToCurr(CAD_CaixasSimples.EditValorMultaPorc.Text)),',','.',[rfReplaceAll])+', VALOR_DESCONTO = '+StringReplace(CurrToStr(getStrToCurr(CAD_CaixasSimples.EditValorDesconto.Text)),',','.',[rfReplaceAll])+' where id_caixa = '+ id_caixa);
        varSQL.ApplyUpdates;
        FreeAndNil(varSQL);
     except
           on e: exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao salvar as alterações!'+#13+e.Message,'erro');
                DM_FINANCEIRO.ZCaixaSimples.CancelUpdates;
                DM_FINANCEIRO.ZCaixaSimples.Close;
                CAD_CaixasSimples.ValorBusca.SetFocus;
                FreeAndNil(varSQL);
                exit;
           end;
     end;
end;

procedure setCalculoTotal();
Begin
     CAD_CaixasSimples.EditValorFinal.Text := getCurrToStr(getDinheiroTotal(CAD_CaixasSimples.EditValorBase.Text, CAD_CaixasSimples.EditValorJurosPorc.Text, CAD_CaixasSimples.EditValorMultaPorc.Text, CAD_CaixasSimples.EditValorDesconto.Text, CAD_CaixasSimples.LabelDataVencimento.Caption, CAD_CaixasSimples.LabelDataPagamento.Caption, getConf('EMPRESA_CALCULO')),FALSE);
     CAD_CaixasSimples.EditValorPago.Text := CurrToStr(CAD_CaixasSimples.somaPagamentos());

     CAD_CaixasSimples.pagamentoDinheiro(StrToCurr(StringReplace(CAD_CaixasSimples.EditValorFinal.Text, '.','',[rfReplaceAll,rfIgnoreCase])), false);
end;


procedure baixaContas(contaBase: Integer);
Var varSQL, varSQLTotais, varSQL2: TZQuery;
    totalDinEntrada, totalDinSaida: String;
    i: Integer;

Begin

   if rowEntrada.Count > 0 then
   Begin
        if CAD_CaixasSimples.RadioCalculado.Checked then
           varSQLTotais := unUtilitario.getSelect('select SUM((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_ENTRADA c where c.id_caixa in ('+alinhaStringlist(rowEntrada)+')')
        else
            varSQLTotais := unUtilitario.getSelect('select SUM((select result from spvalorcobranca1(0, c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_ENTRADA c where c.id_caixa in ('+alinhaStringlist(rowEntrada)+')');

        totalDinEntrada := varSQLTotais.Fields[0].AsString;
   end
   else
       totalDinEntrada := '0,00';

   if rowSaida.Count > 0 then
   Begin
        if CAD_CaixasSimples.RadioCalculado.Checked then
           varSQLTotais := unUtilitario.getSelect('select SUM((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_SAIDA c where c.id_caixa in ('+alinhaStringlist(rowSaida)+')')
        else
            varSQLTotais := unUtilitario.getSelect('select SUM((select result from spvalorcobranca1(0, c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_SAIDA c where c.id_caixa in ('+alinhaStringlist(rowSaida)+')');

        totalDinSaida := varSQLTotais.Fields[0].AsString;
   end
   else
       totalDinSaida := '0,00';

   FreeAndNil(varSQLTotais);

  //LOG
  if unUtilitario.setMensagem('Deseja QUITAR a(s) conta(s)?'+#13+#13+
  '   Qtde encontrada no Cx Entrada/Recebimento:  '+IntToStr(rowEntrada.Count)+#13+
  '   Montante Entrada: R$ '+ formataDinheiroSQL(totalDinEntrada) +#13+#13+
  '   Qtde encontrada no Cx Saída/Pagamento:  '+IntToStr(rowSaida.Count)+ #13+
  '   Montante Saída: R$ '+ formataDinheiroSQL(totalDinSaida) +#13+#13+
  '   Total Geral: R$ '+ formataDinheiroSQL(CurrToStr(StrToCurr(totalDinEntrada) - StrToCurr(totalDinSaida)))
  ,'confirma') = Idyes then
  begin


  TRY

     //CÓPIA EM IMAGEM DO RECIBO PARA SEGUNDA VIA
     if not DirectoryExists('\\'+StringReplace(getConf('MAQUINA_SERVIDORA'),'_','',[rfReplaceAll,rfIgnoreCase])+'\IMOBILIARIA\REL\pdf') then
        forceDirectories('\\'+StringReplace(getConf('MAQUINA_SERVIDORA'),'_','',[rfReplaceAll,rfIgnoreCase])+'\IMOBILIARIA\REL\pdf');

     DM_RELATORIOS.Rave_System.SystemSetups := DM_RELATORIOS.Rave_System.SystemSetups - [ssAllowSetup];
     DM_RELATORIOS.Rave_System.DefaultDest := rdFile;
     DM_RELATORIOS.Rave_System.DoNativeOutput:= false;
     DM_RELATORIOS.Rave_System.RenderObject:= DM_REL.RV_RENDER_PDF;
     DM_RELATORIOS.Rave.SelectReport('Report1',True);                                                                                                                                                     
     //DM_RELATORIOS.Rave_System.OutputFileName := ExtractFilePath(ParamStr(0))+'REL\pdf\PGTO_E'+StringReplace(StringReplace(Trim(alinhaStringlist(rowEntrada)+alinhaStringlist(rowSaida)),',','E',[rfReplaceAll]),' ','_',[rfReplaceAll])+'.pdf';
     DM_RELATORIOS.Rave_System.OutputFileName := '\\'+StringReplace(getConf('MAQUINA_SERVIDORA'),'_','',[rfReplaceAll,rfIgnoreCase])+'\IMOBILIARIA\REL\pdf\PGTO_E'+Copy(StringReplace(StringReplace(Trim(alinhaStringlist(rowEntrada)),',','E',[rfReplaceAll])+'_S'+StringReplace(Trim(alinhaStringlist(rowSaida)),',','S',[rfReplaceAll]),' ','_',[rfReplaceAll]),1,190)+'.PDF';

      DM_RELATORIOS.Rave.Execute;

     ShellExecute(0, 'open', PAnsiChar(DM_RELATORIOS.Rave_System.OutputFileName), nil, nil, SW_SHOWMAXIMIZED);
  EXCEPT
        on e: Exception do
        Begin
             unUtilitario.setMensagem('AVISO 3344: sistema encontrou um erro ao gerar o recibo (gerar Rave)!'+#13+'As contas podem NÃO TEREM SIDO BAIXADAS!'+#13+e.message,'erro');
             Exit;
        End;
  END;



         //if getTela('CAIXASIMPLES_IMPRESSAO_MOSTRA') = 'SIM' then
         // DM_RELATORIOS.Rave_System.DefaultDest := rdPreview
       //else
       //    DM_RELATORIOS.Rave_System.DefaultDest := rdPrinter;




   try
       for I := 0 to rowEntrada.Count - 1 do
            rowEntradaConfirmacao.Add(rowEntrada.Strings[i]);

       for I := 0 to rowSaida.Count - 1 do
            rowSaidaConfirmacao.Add(rowSaida.Strings[i]);

       varSQL := unUtilitario.getSQL('update caixa_ENTRADA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', operacao = ''QUITADO NO CAIXA SIMPLES COM A CONTA '+IntToStr(contaBase)+' DO CAIXA '+UpperCase(CAD_CaixasSimples.caixaLocal)+'. '' where id_caixa in ('+alinhaStringlist(rowEntrada)+')');
       
       varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', operacao = ''QUITADO NO CAIXA SIMPLES COM A CONTA '+IntToStr(contaBase)+' DO CAIXA '+UpperCase(CAD_CaixasSimples.caixaLocal)+'. ''  where id_caixa in ('+alinhaStringlist(rowSaida)+') ');

       //PRINCIPAL.Conexao.Commit;
       PRINCIPAL.setMensagem('Contas quitadas com sucesso!');

       //SE CASO DESEJAR MOSTRAR O PDF NO FINAL
       //WinExec(Pchar(DM_RELATORIOS.Rave_System.OutputFileName), SW_SHOW);
       //ShellExecute(Handle, nil, PChar(DM_RELATORIOS.Rave_System.OutputFileName), nil,  nil, SW_SHOWNORMAL);
   except
         on e: Exception do
         begin
              unUtilitario.setMensagem('Houve um ERRO ao baixar as contas! O processo não será continuado! '+#13+e.Message,'ERRO');
         end;
   end;
        try

       //VERIFICA SE A CONTA SAIDA FOI BAIXADA SEM SER GARANTIDO, E ALTERA O STATUS GARANTIDO DO CAIXA ENTRADA PARA BATER COM O RELATÓRIO GERAL DO PROPRIETÁRIO
       //Alterar o status para garantido SIM no caixa entrada e saída quando efetuar um pgto que não possui aluguel garantido.

       { SOMENTE POR ENQUANTO - COMENTAR ESSA TAREFA
       if rowSaida.Count > 0 then
       Begin
            varSQL := unUtilitario.getSelect('select c.* from caixa_SAIDA c where c.id_caixa in ('+unUtilitario.alinhaStringlist(rowSaida)+')');

            while NOT varSQL.Eof do
            Begin
            
                if NOT varSQL.FieldByName('ID_ENTRADA').IsNull then
                if (varSQL.FieldByName('GARANTIDO').AsString = 'NAO') and (Length(varSQL.FieldByName('ID_ENTRADA').AsString) > 0) then
                Begin
                     //verificar se a conta do caixa entrada foi recebida
                     varSQL2 := unUtilitario.getSelect('select * from caixa_entrada where id_caixa = '+varSQL.FieldByName('ID_ENTRADA').AsString);
                     if varSQL2.FieldByName('DATA_PGTO').IsNull then
                     Begin
                          varSQL2 := unUtilitario.getSQL('update caixa_entrada set garantido = ''SIM'', id_funcionario = '+getUser('CODIGO_USUARIO')+', operacao = operacao ||''- PAGA C.SAIDA SEM RECEBIMENTO ALTERADO P GARANTIDO'', data_alt = current_timestamp where id_caixa = '+varSQL.FieldByName('ID_ENTRADA').AsString);
                          varSQL2 := unUtilitario.getSQL('update caixa_saida set data_pgto = current_date, hora_pgto = current_time, garantido = ''SIM'', id_funcionario = '+getUser('CODIGO_USUARIO')+', operacao = operacao ||''- PAGA SEM RECEBIMENTO ALTERADO P GARANTIDO'', data_alt = current_timestamp where id_caixa = '+varSQL.FieldByName('ID_CAIXA').AsString);
                     end;
                     varSQL2.close;
                end;
                varSQL.Next;
            end;

            //PRINCIPAL.Conexao.Commit;
            PRINCIPAL.setMensagem('Verificação de contas garantidas, ok.');

       end;
       }

       CAD_CaixasSimples.efetuarPagamentoDinheiroCheque();

       //VERIFICAR SE A CONTA FOI QUITADA REALMENTE
       {
       if rowEntrada.Count > 0 then
       Begin
            varSQL := unUtilitario.getSelect('select c.* from caixa_ENTRADA c where c.id_caixa in ('+unUtilitario.alinhaStringlist(rowEntrada)+')');

            while not varSQL.Eof do
            Begin
                 if varSQL.FieldByName('DATA_PGTO').IsNull then
                 Begin
                      unUtilitario.setMensagem('(ENTRADA) Foi identificado que a conta '+varSQL.FieldByName('ID_CAIXA').AsString+' não foi quitada na primeira tentativa!'+#13+'O sistema fará uma nova tentativa de quitação agora! Avise ao nosso Suporte Técnico se caso isto ocorrer com frequência e verifique no Caixa Composto se esta conta foi realmente quitada.','ERRO');
                      varSQL2 := unUtilitario.getSQL('update caixa_ENTRADA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_date, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', operacao = ''(2 TENTATIVA) QUITADO NO CAIXA SIMPLES AUTOMATICAMENTE EM CONJUNTO COM A CONTA '+IntToStr(contaBase)+' DO CAIXA '+UpperCase(CAD_CaixasSimples.caixaLocal)+'. '' where id_caixa = '+varSQL.FieldByName('ID_CAIXA').AsString);
                      //varSQL2.ApplyUpdates;
                 end;
                 varSQL.Next;
            end;
            varSQL.close;
       end;

       if rowSaida.Count > 0 then
       Begin
            varSQL := unUtilitario.getSelect('select c.* from caixa_SAIDA c where c.id_caixa in ('+unUtilitario.alinhaStringlist(rowSaida)+')');

            while not varSQL.Eof do
            Begin
                 if varSQL.FieldByName('DATA_PGTO').IsNull then
                 Begin
                      unUtilitario.setMensagem('(SAÍDA) Foi identificado que a conta '+varSQL.FieldByName('ID_CAIXA').AsString+' não foi quitada na primeira tentativa!'+#13+'O sistema fará uma nova tentativa de quitação agora! Avise ao nosso Suporte Técnico se caso isto ocorrer com frequência e verifique no Caixa Composto se esta conta foi realmente quitada.','ERRO');
                      varSQL2 := unUtilitario.getSQL('update caixa_SAIDA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_date, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', operacao = ''(2 TENTATIVA) QUITADO NO CAIXA SIMPLES AUTOMATICAMENTE EM CONJUNTO COM A CONTA '+IntToStr(contaBase)+' DO CAIXA '+UpperCase(CAD_CaixasSimples.caixaLocal)+'. '' where id_caixa = '+varSQL.FieldByName('ID_CAIXA').AsString);
                      //varSQL2.ApplyUpdates;
                 end;
                 varSQL.Next;
            end;
            varSQL.close;
       end;
       
       FreeAndNil(varSQL2);
       FreeAndNil(varSQL);
       }

  except
        on e: Exception do
        begin
             unUtilitario.setMensagem('baixaContas()'+#13+'AVISO 4455: Erro ao baixar contas!'+#13+'As contas podem NÃO ESTAR QUITADAS! VERIFIQUE!'+e.Message,'erro');
             //RINCIPAL.Conexao.AutoCommit := True;
             FreeAndNil(varSQL);
             exit;
        end;
  end;
       //unUtilitario.setMensagem('Contas quitadas com sucesso!','informa');
       FreeAndNil(varSQL);
  end;

  //CONFIGURAÇOES ORIGINAIS DO RELATÓRIO
  DM_RELATORIOS.Rave_System.DefaultDest := rdPreview;
  DM_RELATORIOS.Rave_System.SystemPrinter.Copies := 1;
  DM_RELATORIOS.DSC_3.DataSet := DM_RELATORIOS.SQL3;
  DM_RELATORIOS.SQL1.CancelUpdates;
  DM_RELATORIOS.SQL2.CancelUpdates;
  DM_RELATORIOS.SQL1.Close;
  DM_RELATORIOS.SQL2.Close;
end;

procedure setInfoCupom(id_caixa: integer; caixa, formulario: String; previa: Boolean);
begin

end;

function getValorEntrada(): String;
Begin

     if getconf('REPASSA_MULTA') <> '0' Then
     begin   
          if getTela('CAIXASIMPLES_PGTO_SEM_RECEB') = 'SIM' then
             result := ' (select cast(xx.valor as numeric(12,2)) - cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) * '+
             '(select first 1 pi.porcentagem from pessoa_imovel pi where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 as VALOR_ENTRADA,'+
             ' (select cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) as TaxaImob, (select cast(xx.valor as numeric(12,2))'+
             ' from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) * (select first 1 pi.porcentagem from pessoa_imovel pi where pi.id_imovel = c.id_imovel and pi.id_pessoa '+
             ' = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 as valInquilino '
          else
              if getTela('CAIXASIMPLES_IMPRESSAO_CALCULADO') = 'SIM' then
                 result := ' (select cast((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', xx.data_ref, xx.data_pgto, xx.valor, xx.valor_juros, xx.valor_multa, xx.valor_desconto))'+
                 ' as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) * (select first 1 pi.porcentagem from pessoa_imovel pi where pi.id_imovel = c.id_imovel'+
                 ' and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 as VALOR_ENTRADA, (select cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx '+
                 ' where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) as TaxaImob, (select cast((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', xx.data_ref, xx.data_pgto, '+
                 ' xx.valor, xx.valor_juros, xx.valor_multa, xx.valor_desconto)) as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) *  '+
                 '(select first 1 pi.porcentagem from pessoa_imovel pi where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 as valInquilino '
              else
                  result := ' (select cast(xx.valor as numeric(12,2)) - cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) '+
                  ' * (select first 1 pi.porcentagem from pessoa_imovel pi where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 '+
                  ' as VALOR_ENTRADA, (select cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) as TaxaImob, '+
                  ' (select cast(xx.valor as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) * (select first 1 pi.porcentagem from pessoa_imovel pi '+
                  ' where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 as valInquilino ';
     end
     else
         result := ' (select cast(xx.valor as numeric(12,2)) - cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) * '+
         ' (select first 1 pi.porcentagem from pessoa_imovel pi '+'where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' order by pi.id_pessoa_imovel asc)/100 as VALOR_ENTRADA,'+
         ' (select cast(xx.valor_desconto as numeric(12,2)) from caixa_entrada xx where xx.ativo = ''SIM'' and xx.id_caixa = c.id_entrada) as TaxaImob,  (select cont.valor from contrato cont '+
         ' where cont.ativo = ''SIM'' and cont.id_contrato = c.id_contrato) * (select first 1 pi.porcentagem from pessoa_imovel pi '+'where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' '+
         ' order by pi.id_pessoa_imovel asc)/100 as valInquilino ';

         // ANTIGO result := ' (select cont.valor from contrato cont where cont.ativo = ''SIM'' and cont.id_contrato = c.id_contrato) - C.valor_desconto as VALOR_ENTRADA,'+' (select cont.tarifa from contrato cont where cont.id_contrato = c.id_contrato) as TaxaImob,  (select cont.valor from contrato cont where cont.ativo = ''SIM'' and cont.id_contrato = c.id_contrato) * (select first 1 pi.porcentagem from pessoa_imovel pi '+'where pi.id_imovel = c.id_imovel and pi.id_pessoa = c.id_pessoa and pi.ativo = ''SIM'' '+'order by pi.id_pessoa_imovel asc)/100 as valInquilino ';

End;


procedure setInfoRecibo(id_caixa: integer; caixa, formulario: String; previa: Boolean);
Var IDPESSOA, IDCONTRATO, DATAREF, DATA, COD_Calculo, valor_juros, valor_multa, valor_pgto: String;
    varSQL, sqlEmail, checaArquivamento: TZQuery;  //checaArquivamento = Para saber se arquiva na empresa (externamente).
begin
     //VARIÁVEIS PARA GUARDAR OS TODOS OS REGISTROS A SEREM BAIXADOS
     rowEntrada.Clear;
     rowSaida.Clear;
     contaBase := id_caixa;
     caixaBase := caixa;
     formulario := ' '+formulario; // Para validar melhor na rotina POS.

     //SE CASO O USUÁIO MARCAR PARA NÃO CALCULAR O VALOR COM JUROS E MULTA.
     if CAD_CaixasSimples.RadioCalculado.Checked then
     begin
          COD_Calculo := getConf('EMPRESA_CALCULO');
          valor_multa := ' CAST(((c.valor_multa * c.valor)/100) AS NUMERIC(12,2)) ';
          valor_juros := ' cast( cast((C.valor_juros * c.valor)/100 as numeric(12,2)) * (current_date - c.data_ref) as numeric(12,2)) ';
     end
     else
     begin
          COD_Calculo := '0';
          valor_multa := '0.00';
          valor_juros := '0.00';
     end;

     //Para nao mostrar alguns campos no recibo.
     //DM_RELATORIOS.Rave.SetParam('varCalculado', getTela('CAIXASIMPLES_IMPRESSAO_CALCULADO'));

     //MODELO 1 (OFICIAL CÉLULA DIGITAL)
     IF (getConf('MODELO_RECIBO') = '1') or (getConf('MODELO_RECIBO') = '6') or (getConf('MODELO_RECIBO') = '7') Then
     Begin
          //CAMPOS DA CONTA
          if UpperCase(caixa) = 'ENTRADA' then
          Begin
               if Pos('Painel',formulario) > 0 then //segunda via
               Begin
               varSQL := unUtilitario.getSelect('select C.DATA_REF, c.id_caixa, c.parcela, c.id_contrato, p.id_pessoa, '+
               ' p.nome, p.nascimento, i.id_imovel, i.numero, i.complemento, l.tipo, l.nome as LOGRADOURO,'+
               ' (select FIRST 1 pr.nome from pessoa pr inner join pessoa_imovel pi'+
               ' on pi.id_pessoa = pr.id_pessoa where pi.status = ''PROPRIETARIO'' and pi.id_imovel = '+
               ' i.id_imovel order by pi.id_pessoa_imovel desc) as PROPRIETARIO from CAIXA_ENTRADA C'+
               ' left join imovel i on i.id_imovel = c.id_imovel left join pessoa p on p.id_pessoa = c.id_pessoa'+
               ' left join logradouro l on l.id_logradouro = i.id_logradouro where c.id_caixa = '+IntToStr(id_caixa));
               end
               else
               Begin
               varSQL := unUtilitario.getSelect('select C.DATA_REF, c.id_caixa, c.parcela, c.id_contrato, p.id_pessoa, '+
               ' p.nome, p.nascimento, i.id_imovel, i.numero, i.complemento, l.tipo, l.nome as LOGRADOURO,'+
               ' (select FIRST 1 pr.nome from pessoa pr inner join pessoa_imovel pi'+
               ' on pi.id_pessoa = pr.id_pessoa where pi.status = ''PROPRIETARIO'' and pi.id_imovel = '+
               ' i.id_imovel order by pi.id_pessoa_imovel desc) as PROPRIETARIO from CAIXA_ENTRADA C'+
               ' left join imovel i on i.id_imovel = c.id_imovel left join pessoa p on p.id_pessoa = c.id_pessoa'+
               ' left join logradouro l on l.id_logradouro = i.id_logradouro where c.id_caixa = '+IntToStr(id_caixa));

               end;


               //varMENSAGEM
               DM_RELATORIOS.Rave.SetParam('varMesagem', getConf('EMPRESA_MENSAGEM'));

               if MonthOf(Date()) = 2 Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(FEVEREIRO) - FELIZ CARNAVAL! DIVIRTA-SE!');

               if MonthOf(Date()) = 4 Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(ABRIL) - FELIZ PÁSCOA! MUITOS CHOCOLATES PARA VOCÊ!');

               if MonthOf(Date()) = 12 Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(DEZEMBRO) - UM PRÓSPERO ANO NOVO! BOAS FESTAS!');

               if (MonthOf(varSQL.FieldByName('NASCIMENTO').AsDateTime) = MonthOf(Date())) and (not varSQL.FieldByName('NASCIMENTO').IsNull) Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(DIA '+IntToStr(DayOf(varSQL.FieldByName('NASCIMENTO').AsDateTime))+') - FELIZ ANIVERSÁRIO! NOSSOS SINCEROS VOTOS DE FELICIDADE!');

               if (varSQL.FieldByName('PARCELA').AsInteger <> 0) AND ( varSQL.FieldByName('PARCELA').AsInteger MOD 12 = 0) Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(REAJUSTE ANUAL) - PODERÁ HAVER REAJUSTE DOS VALORES NO PRÓXIMO MÊS, INFORME-SE!');

               if Pos('Painel',formulario) > 0 then
               Begin
                    DM_RELATORIOS.Rave.SetParam('varMesagem','-- SEGUNDA VIA DO RECIBO --');
                    DM_RELATORIOS.Rave.SetParam('varFormaPgto', '________________________________');   
               end;

               //Variáveis
               IDPESSOA := varSQL.FieldByName('ID_PESSOA').AsString;
               IDCONTRATO := varSQL.FieldByName('ID_CONTRATO').AsString;
               DATAREF := varSQL.FieldByName('DATA_REF').AsString;
               DATA := ' current_date ';

               //varCAIXA
               DM_RELATORIOS.Rave.SetParam('varCaixa',caixa);
               DM_RELATORIOS.Rave.SetParam('varMostrarJurosMulta',getTela('CAIXASIMPLES_IMPRESSAO_NAOMOSTRAJUROSMULTA'));

               //varPESSOA
               DM_RELATORIOS.Rave.SetParam('varPessoa', varSQL.FieldByName('NOME').AsString + ' (CÓD: '+varSQL.FieldByName('ID_PESSOA').AsString+')');

               //varCONTRATO
               IF NOT varSQL.FieldByName('ID_CONTRATO').IsNull Then
               Begin
                  DM_RELATORIOS.Rave.SetParam('varContrato',  varSQL.FieldByName('ID_CONTRATO').AsString);
                  checaArquivamento := unUtilitario.getSelect('select HONORARIO_APOS from CONTRATO where id_contrato = '+varSQL.FieldByName('ID_CONTRATO').AsString);

                  if checaArquivamento.Fields[0].AsInteger = 1 then
                     DM_RELATORIOS.Rave.SetParam('varAviso', getTela('RECADO_RECIBO')+' [INTERNO]')
                  else
                      DM_RELATORIOS.Rave.SetParam('varAviso', getTela('RECADO_RECIBO'));

                  checaArquivamento.Close;
                  FreeAndNil(checaArquivamento);
               end
               else
               Begin
                   DM_RELATORIOS.Rave.SetParam('varContrato',  '0');
               End;

               //varIMOVEL
               IF NOT varSQL.FieldByName('ID_IMOVEL').IsNull Then
                  DM_RELATORIOS.Rave.SetParam('varImovel',  varSQL.FieldByName('TIPO').AsString +' '+varSQL.FieldByName('LOGRADOURO').AsString +' Nº '+ varSQL.FieldByName('NUMERO').AsString +' '+varSQL.FieldByName('COMPLEMENTO').AsString+' (PROP: '+ varSQL.FieldByName('PROPRIETARIO').AsString+')')
               else
                   DM_RELATORIOS.Rave.SetParam('varImovel',  ' -- SEM IMÓVEL -- ');

               //GERAR UM AVISO CASO A CONTA SEJA A ÚLTIMA, OU EM CASO DE REAJUSTE.
               if getTela('RECADO_RECIBO') = 'NULO' Then
                  setTela('RECADO_RECIBO', InputBox('Informe o que deverá estar escrito no rodapé do recibo.','Entre com alguma informação que deverá estar em todos os rodapés dos recibos.'+#13+'(ATENÇÃO) Para mudar, vá na linha "RECADO_RECIBO" do arquivo "Configuracao.ini" em sua máquina.'+#13+'ESTE AVISO É MOSTRADO SOMENTE 1 VEZ!'+#13+'Exemplo de recado que poderá ser mostrado:','*Este recibo não quita débitos anteriores. *Recibo válido mediante a devida compesação dos cheques.'));


               //varSQL.Close;

               //CAIXA ENTRADA - BUSCA OS REGISTOS ANTERIORES AO DIA DE HOJE.
               DM_RELATORIOS.SQL1.Close;
               DM_RELATORIOS.SQL1.SQL.Clear;

               if imprimirUnica then
               Begin
                    if UpperCase(caixa) = 'ENTRADA' then
                    Begin
                          DM_RELATORIOS.SQL1.SQL.Text := 'select c.id_caixa, c.documento, c.parcela, '+
                          ' (select count(cc.id_caixa) from caixa_ENTRADA cc where cc.id_categoria = c.id_categoria and '+
                          ' cc.id_subtipo = c.id_subtipo and cc.id_tipo = c.id_tipo and cc.id_pessoa = c.id_pessoa and '+
                          ' cc.id_contrato = c.id_contrato and cc.ativo = ''SIM'' ) as PARCELA_TOTAL, '+valor_multa+' AS valor_multa, '+
                          ' '+valor_juros+' as valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
                          ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
                          ' c.valor_multa, c.valor_desconto)) as VALOR_REAL from caixa_ENTRADA C '+
                          '  where c.id_caixa = '+IntToStr(id_caixa);
                          DM_RELATORIOS.SQL1.Open;
                          //DM_RELATORIOS.Rave.SetParam('varFormaPgto', 'DINHEIRO');
                    end
                    else
                    Begin
                         DM_RELATORIOS.SQL1.SQL.Text := 'select c.id_caixa, c.documento, c.parcela, '+
                         ' (select count(cc.id_caixa) from caixa_ENTRADA cc where cc.id_categoria = c.id_categoria and '+
                         ' cc.id_subtipo = c.id_subtipo and cc.id_tipo = c.id_tipo and cc.id_pessoa = c.id_pessoa and '+
                         ' cc.id_contrato = c.id_contrato and cc.ativo = ''SIM'' ) as PARCELA_TOTAL, '+valor_multa+' AS valor_multa, '+
                         ' '+valor_juros+' as valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
                         ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
                         ' c.valor_multa, c.valor_desconto)) as VALOR_REAL from caixa_ENTRADA C '+
                         '  where c.id_caixa = 0';
                    end;
               end
               Else
               Begin
                    DM_RELATORIOS.SQL1.SQL.Text := 'select c.id_caixa, c.documento, c.parcela, '+
                    ' (select count(cc.id_caixa) from caixa_ENTRADA cc where cc.id_categoria = c.id_categoria and '+
                    ' cc.id_subtipo = c.id_subtipo and cc.id_tipo = c.id_tipo and cc.id_pessoa = c.id_pessoa and '+
                    ' cc.id_contrato = c.id_contrato and cc.ativo = ''SIM'' ) as PARCELA_TOTAL, '+valor_multa+' AS valor_multa, '+
                    ' '+valor_juros+' as valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
                    ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
                    ' c.valor_multa, c.valor_desconto)) as VALOR_REAL from caixa_ENTRADA C';

                    if Pos('CAD_CaixasSimples',formulario) > 0  Then
                       if Length(CAD_CaixasSimples.whereEntrada) > 0 then
                          DM_RELATORIOS.SQL1.SQL.Add(CAD_CaixasSimples.whereEntrada+' and c.data_pgto is null and c.ativo=''SIM'' and c.pendente = ''NAO'' ')
                       Else
                           IF Length(IDCONTRATO) = 0 Then
                              DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA)
                           else
                               DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_contrato = ' + IDCONTRATO+' and c.id_pessoa = ' + IDPESSOA);
                               //DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_contrato = ' + IDCONTRATO);


                    DM_RELATORIOS.SQL1.Open;
                    DM_RELATORIOS.SQL1.SQL.Text;

                    if DM_RELATORIOS.SQL1.RecordCount > 0 then
                       while not DM_RELATORIOS.SQL1.Eof do
                       begin
                            //PEGA CAMPO ID_CAIXA PARA BAIXAR CONTAS DEPOIS
                            rowEntrada.Add(DM_RELATORIOS.SQL1.Fields[0].AsString);
                            DM_RELATORIOS.SQL1.Next;
                       end;

                    DM_RELATORIOS.SQL1.First;

                    //CAIXA SAIDA - BUSCA OS REGISTOS ANTERIORES AO DIA DE HOJE.
                    DM_RELATORIOS.SQL2.Close;
                    DM_RELATORIOS.SQL2.SQL.Clear;

                    if imprimirUnica then
                    Begin
                         if UpperCase(caixa) = 'SAIDA' then
                         //passar mais informaçoes para os recibos
                         Begin
                              DM_RELATORIOS.SQL2.SQL.Text := 'select (select c.id_caixa, '+getValorEntrada()+' , c.documento, c.parcela, '+
                              ' (select count(cc.id_caixa) from caixa_SAIDA cc where cc.id_categoria = c.id_categoria and '+
                              ' cc.id_subtipo = c.id_subtipo and cc.id_tipo = c.id_tipo and cc.id_pessoa = c.id_pessoa and '+
                              ' cc.id_contrato = c.id_contrato and cc.ativo = ''SIM'' ) as PARCELA_TOTAL, '+valor_multa+' AS valor_multa, '+
                              ' c.valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
                              ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
                              ' c.valor_multa, c.valor_desconto)) as VALOR_REAL from caixa_SAIDA C '+
                              ' where c.id_caixa = '+IntToStr(id_caixa);
                         end
                         Else
                         Begin
                              DM_RELATORIOS.SQL2.SQL.Text := 'select c.id_caixa, '+getValorEntrada()+' , c.documento, c.parcela, '+
                              ' (select count(cc.id_caixa) from caixa_SAIDA cc where cc.id_categoria = c.id_categoria and '+
                              ' cc.id_subtipo = c.id_subtipo and cc.id_tipo = c.id_tipo and cc.id_pessoa = c.id_pessoa and '+
                              ' cc.id_contrato = c.id_contrato and cc.ativo = ''SIM'' ) as PARCELA_TOTAL, '+valor_multa+' AS valor_multa, '+
                              ' c.valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
                              ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
                              ' c.valor_multa, c.valor_desconto)) as VALOR_REAL from caixa_SAIDA C '+
                              ' where c.id_caixa = 0';
                         end;
                    end
                    Else
                    Begin
                         DM_RELATORIOS.SQL2.SQL.Text := 'select c.id_caixa, '+getValorEntrada()+' ,  c.documento, c.parcela, '+
                         ' (select count(cc.id_caixa) from caixa_SAIDA cc where cc.id_categoria = c.id_categoria and '+
                         ' cc.id_subtipo = c.id_subtipo and cc.id_tipo = c.id_tipo and cc.id_pessoa = c.id_pessoa and '+
                         ' cc.id_contrato = c.id_contrato and cc.ativo = ''SIM'' ) as PARCELA_TOTAL, '+valor_multa+' AS valor_multa, '+
                         ' c.valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
                         ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
                         ' c.valor_multa, c.valor_desconto)) as VALOR_REAL from caixa_SAIDA C ';

                         if Pos('CAD_CaixasSimples',formulario) > 0 Then
                            if Length(CAD_CaixasSimples.whereSaida) > 0 then
                               DM_RELATORIOS.SQL2.SQL.Add(CAD_CaixasSimples.whereSaida+' and c.data_pgto is null and c.ativo=''SIM'' and c.pendente = ''NAO'' ')
                            Else
                                IF Length(IDCONTRATO) = 0 Then
                                   DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA)
                                else
                                    DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_contrato = ' + IDCONTRATO+' and c.id_pessoa = ' + IDPESSOA);
                                    //DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_contrato = ' + IDCONTRATO);

                                //Original que estava aqui
                                //DM_RELATORIOS.SQL2.SQL.Add(' where c.data_ref <= '''+StringReplace(DATAREF,'/','.',[rfReplaceAll])+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA);

                    end;

                    DM_RELATORIOS.SQL2.Open;
                    DM_RELATORIOS.SQL2.SQL.Text;

                    if DM_RELATORIOS.SQL2.RecordCount > 0 then
                       while not DM_RELATORIOS.SQL2.Eof do
                       begin
                            //PEGA CAMPO ID_CAIXA PARA BAIXAR CONTAS DEPOIS
                            rowSaida.Add(DM_RELATORIOS.SQL2.Fields[0].AsString);
                            DM_RELATORIOS.SQL2.Next;
                       end;

                    //FORMA DE PAGAMENTO NO RECIBO
                    CAD_CaixasSimples.DSPagamento.DataSet.First;
                    valor_pgto := '';
                    while NOT CAD_CaixasSimples.DSPagamento.DataSet.Eof do
                    Begin
                         if CAD_CaixasSimples.DSPagamento.DataSet.FieldByName('VALOR').AsCurrency > 0 then
                         Begin
                              valor_pgto := valor_pgto +
                              CAD_CaixasSimples.DSPagamento.DataSet.FieldByName('NOME').AsString + ' '+
                              getCurrToStr(CAD_CaixasSimples.DSPagamento.DataSet.FieldByName('VALOR').AsCurrency,true)+ '  ';
                         end;
                         CAD_CaixasSimples.DSPagamento.DataSet.Next;
                    end;
                    
                    DM_RELATORIOS.Rave.SetParam('varFormaPgto', valor_pgto);

                    DM_RELATORIOS.SQL2.First;

               End;

               DM_RELATORIOS.Rave.Close;

               //IMPRIMIR COM SLIP DE CONTROLE?
               if CAD_CaixasSimples.RadioSlip.Checked Then
               Begin
                    DM_RELATORIOS.DSC_3.DataSet := FrmCaixasSimples.CAD_CaixasSimples.CDS_Cheques;
                    DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_CAIXA_RECIBO'+getConf('MODELO_RECIBO')+'_SLIP.rav';
               end
               else
                   DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_CAIXA_RECIBO'+getConf('MODELO_RECIBO')+'.rav';

               principal.setRelatorio(DM_RELATORIOS.Rave);
               DM_RELATORIOS.Rave.Open;


               if previa then
                  DM_RELATORIOS.Rave_System.DefaultDest := rdPreview
               else
                   DM_RELATORIOS.Rave_System.DefaultDest := rdPrinter;

          end
          else //CAIXA SAÍDA
          Begin
               //VERIFICAR SE É UM PROPRIETÁRIO OU UMA CONTA NORMAL
               if Pos('Painel',formulario) > 0 then //segunda via
               Begin
               varSQL := unUtilitario.getSelect('select p.*, cs.*, c.data_pgto as data_inq from pessoa p '+
               ' inner join caixa_saida cs on cs.id_pessoa = p.id_pessoa and cs.id_caixa = '+IntToStr(id_caixa));

               end
               else
               Begin
               varSQL := unUtilitario.getSelect('select p.*, cs.*, c.data_pgto as data_inq from pessoa p '+
               ' inner join caixa_saida cs on cs.id_pessoa = p.id_pessoa and cs.ativo = ''SIM'' left join caixa_entrada c on c.id_caixa = cs.id_entrada and c.ativo = ''SIM'' where cs.id_caixa = '+IntToStr(id_caixa));
               end;
               //varMENSAGEM
               DM_RELATORIOS.Rave.SetParam('varMesagem', getConf('EMPRESA_MENSAGEM'));

               if MonthOf(Date()) = 2 Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(FEVEREIRO) - FELIZ CARNAVAL! DIVIRTA-SE!');

               if MonthOf(Date()) = 3 Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(MARÇO) - FELIZ PÁSCOA! MUITOS CHOCOLATES PARA VOCÊ!');

               if MonthOf(Date()) = 12 Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(DEZEMBRO) - PRÓSPERO ANO NOVO PARA VOCÊ E TODA A SUA FAMÍLIA! BOAS FESTAS!');

               if (MonthOf(varSQL.FieldByName('NASCIMENTO').AsDateTime) = MonthOf(Date())) and (not varSQL.FieldByName('NASCIMENTO').IsNull) Then
                  DM_RELATORIOS.Rave.SetParam('varMesagem','(DIA '+IntToStr(DayOf(varSQL.FieldByName('NASCIMENTO').AsDateTime))+') - FELIZ ANIVERSÁRIO! NOSSOS SINCEROS VOTOS DE FELICIDADE!');

               if Pos('Painel',formulario) > 0 then
               Begin
                    DM_RELATORIOS.Rave.SetParam('varMesagem','-- SEGUNDA VIA DO RECIBO --');
                    DM_RELATORIOS.Rave.SetParam('varFormaPgto', '________________________________');   
               end;

               //Variáveis
               IDPESSOA := varSQL.FieldByName('ID_PESSOA').AsString;
               IDCONTRATO := varSQL.FieldByName('ID_CONTRATO').AsString;
               DATAREF := varSQL.FieldByName('DATA_REF').AsString;
               DATA := ' current_date ';

               //varPERIODO
               DM_RELATORIOS.Rave.SetParam('varPeriodo',getPeriodoConta(varSQL.FieldByName('ID_ENTRADA').AsInteger));
               //DATA EM QUE O INQUILINO PAGOU A CONTA DELE!
               if varSQL.FieldByName('data_inq').IsNull then
                  DM_RELATORIOS.Rave.SetParam('varDiaAcerto', '')
               else
                   DM_RELATORIOS.Rave.SetParam('varDiaAcerto', varSQL.FieldByName('data_inq').AsString);

               //varCAIXA
               DM_RELATORIOS.Rave.SetParam('varCaixa',caixa);

               //varPESSOA
               DM_RELATORIOS.Rave.SetParam('varPessoa', varSQL.FieldByName('NOME').AsString);

               if varSQL.FieldByName('ICQ').IsNull then
                  DM_RELATORIOS.Rave.SetParam('varConta', 'Sem conta para depósito')
               else
                   DM_RELATORIOS.Rave.SetParam('varConta', varSQL.FieldByName('ICQ').AsString);

               //GERAR UM AVISO CASO A CONTA SEJA A ÚLTIMA, OU EM CASO DE REAJUSTE.
               if getTela('RECADO_RECIBO_SAIDA') = 'NULO' Then
                  setTela('RECADO_RECIBO_SAIDA', InputBox('Informe o que deverá estar escrito no rodapé do recibo.','Entre com alguma informação que deverá estar em todos os rodapés dos recibos.'+#13+'(ATENÇÃO) Para mudar, vá na linha "RECADO_RECIBO" do arquivo "Configuracao.ini" em sua máquina.'+#13+'ESTE AVISO É MOSTRADO SOMENTE 1 VEZ!'+#13+'Exemplo de recado que poderá ser mostrado:','*Informe-se sobre os valores das renovações. *Visite o nosso site e conheça mais a nossa imobiliária.'));

               if varSQL.FieldByName('ID_CONTRATO').isnull then
                  DM_RELATORIOS.Rave.SetParam('varAviso', getTela('RECADO_RECIBO_SAIDA'))
               else
               Begin
                    checaArquivamento := unUtilitario.getSelect('select HONORARIO_APOS from CONTRATO where id_contrato = '+varSQL.FieldByName('ID_CONTRATO').AsString);

                    if checaArquivamento.Fields[0].AsInteger = 1 then
                     DM_RELATORIOS.Rave.SetParam('varAviso', getTela('RECADO_RECIBO_SAIDA')+' [INTERNO]')
                  else
                      DM_RELATORIOS.Rave.SetParam('varAviso', getTela('RECADO_RECIBO_SAIDA'));

                  checaArquivamento.Close;
                  FreeAndNil(checaArquivamento);
               end;

               //varSQL.Close;

               //CAIXA ENTRADA - BUSCA OS REGISTOS ANTERIORES AO DIA DE HOJE.
               DM_RELATORIOS.SQL1.Close;
               DM_RELATORIOS.SQL1.SQL.Clear;

               DM_RELATORIOS.SQL1.SQL.Text := 'select c.id_contrato, c.id_caixa, c.documento, c.parcela, '+
               ' c.id_subtipo as PARCELA_TOTAL, c.valor_multa, c.valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
               ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
               ' c.valor_multa, c.valor_desconto)) as VALOR_REAL, P.nome, I.*, L.tipo||'' ''||L.nome AS LOGRADOURO, '+
               ' CI.nome AS CIDADE, BA.nome AS BAIRRO, U.sigla AS UF, U.nome AS ESTADO from caixa_ENTRADA C '+
               ' LEFT JOIN contrato con on con.id_contrato = c.id_contrato '+
               ' LEFT join pessoa_contrato pc on pc.id_contrato = con.id_contrato and (PC.tipo LIKE ''LOCAT_RIO'' '+
               ' or PC.tipo LIKE ''COMPRADOR'' or PC.tipo LIKE ''INQUILINO'' or PC.tipo LIKE ''MORADOR'') '+
               ' LEFT join pessoa p on p.id_pessoa = pc.id_pessoa '+
               ' LEFT join imovel i on i.id_imovel = c.id_imovel '+
               ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = I.id_logradouro '+
               ' LEFT JOIN CIDADE CI ON CI.id_cidade = L.id_cidade '+
               ' LEFT JOIN BAIRRO BA ON BA.id_bairro = L.id_bairro '+
               ' LEFT JOIN UF U ON U.id_sigla = L.id_sigla ';

               if Length(CAD_CaixasSimples.whereEntrada) > 0 then
                  DM_RELATORIOS.SQL1.SQL.Add(CAD_CaixasSimples.whereEntrada+' and c.data_pgto is null and c.ativo=''SIM'' and c.pendente = ''NAO'' ')
               Else
                   IF Length(IDCONTRATO) = 0 Then
                      DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA)
                   else
                       DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_contrato = ' + IDCONTRATO+' and c.id_pessoa = ' + IDPESSOA);

                   //DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA);

               DM_RELATORIOS.SQL1.Open;

               if DM_RELATORIOS.SQL1.RecordCount > 0 then
                  while not DM_RELATORIOS.SQL1.Eof do
                  begin
                       //PEGA CAMPO ID_CAIXA PARA BAIXAR CONTAS DEPOIS
                       rowEntrada.Add(DM_RELATORIOS.SQL1.FieldByName('ID_CAIXA').AsString);
                       DM_RELATORIOS.SQL1.Next;
                  end;

               DM_RELATORIOS.SQL1.First;

               //CAIXA SAIDA - BUSCA OS REGISTOS ANTERIORES AO DIA DE HOJE.
               DM_RELATORIOS.SQL2.Close;
               DM_RELATORIOS.SQL2.SQL.Clear;

               //DM_RELATORIOS.SQL2.SQL.Text := 'select case when c.id_contrato is null then c.documento else ''CONTRATO: '' || c.id_contrato ||'' ''||c.documento end as documento, c.id_contrato, c.id_caixa, c.parcela, '+
               DM_RELATORIOS.SQL2.SQL.Text := 'select case when c.id_contrato is null then c.documento else ''CONTRATO: '' || c.id_contrato ||'' ''||c.documento end as documento, c.id_contrato, c.id_caixa, c.parcela, '+
               ' c.id_subtipo as PARCELA_TOTAL, c.valor_multa, c.valor_juros, c.valor_desconto, c.valor, c.data_ref, '+
               ' (select result from spvalorcobranca1('+COD_Calculo+', c.data_ref, '+DATA+', c.valor, c.valor_juros, '+
               ' c.valor_multa, c.valor_desconto)) as VALOR_REAL, P.nome, I.*, L.tipo||'' ''||L.nome AS LOGRADOURO, '+
               ' CI.nome AS CIDADE, BA.nome AS BAIRRO, U.sigla AS UF, U.nome AS ESTADO, '+getValorEntrada()+' from caixa_SAIDA C '+
               ' LEFT JOIN contrato con on con.id_contrato = c.id_contrato '+
               ' LEFT join pessoa_contrato pc on pc.id_contrato = con.id_contrato and (PC.tipo LIKE ''LOCAT_RIO'' '+
               ' or PC.tipo LIKE ''COMPRADOR'' or PC.tipo LIKE ''INQUILINO'' or PC.tipo LIKE ''MORADOR'') '+
               ' LEFT join pessoa p on p.id_pessoa = pc.id_pessoa '+
               ' LEFT join imovel i on i.id_imovel = c.id_imovel '+
               ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = I.id_logradouro '+
               ' LEFT JOIN CIDADE CI ON CI.id_cidade = L.id_cidade '+
               ' LEFT JOIN BAIRRO BA ON BA.id_bairro = L.id_bairro '+
               ' LEFT JOIN UF U ON U.id_sigla = L.id_sigla ';

               if Length(CAD_CaixasSimples.whereSaida) > 0 then
                  DM_RELATORIOS.SQL2.SQL.Add(CAD_CaixasSimples.whereSaida+' and c.data_pgto is null and c.ativo=''SIM'' and c.pendente = ''NAO'' ')
               Else
                   IF Length(IDCONTRATO) = 0 Then
                      DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA)
                   else
                       DM_RELATORIOS.SQL1.SQL.Add(' where c.data_ref <= '''+formataDataSQL(DATAREF)+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_contrato = ' + IDCONTRATO+' and c.id_pessoa = ' + IDPESSOA);

                   //DM_RELATORIOS.SQL2.SQL.Add(' where c.data_ref <= '''+StringReplace(DATAREF,'/','.',[rfReplaceAll])+''' and c.data_pgto is null and c.pendente =''NAO'' and c.ativo = ''SIM'' and c.id_pessoa = ' + IDPESSOA);

               DM_RELATORIOS.SQL2.Open;
               DM_RELATORIOS.SQL2.SQL.text;

               if DM_RELATORIOS.SQL2.RecordCount > 0 then
                  while not DM_RELATORIOS.SQL2.Eof do
                  begin
                       //PEGA CAMPO ID_CAIXA PARA BAIXAR CONTAS DEPOIS
                       rowSaida.Add(DM_RELATORIOS.SQL2.FieldByName('ID_CAIXA').AsString);
                       DM_RELATORIOS.SQL2.Next;
                  end;


                  //FORMA DE PAGAMENTO NO RECIBO
                  valor_pgto := '';
                  if CAD_CaixasSimples.DSCheques.DataSet.RecordCount > 0 then
                  Begin
                       CAD_CaixasSimples.DSCheques.DataSet.First;
                       valor_pgto := 'CHEQUE: ';
                       while NOT CAD_CaixasSimples.DSCheques.DataSet.Eof do
                       Begin
                            if CAD_CaixasSimples.DSCheques.DataSet.FieldByName('VALOR').AsCurrency > 0 then
                            Begin
                                 valor_pgto := valor_pgto +
                                 'CC:'+CAD_CaixasSimples.DSCheques.DataSet.FieldByName('CC').AsString + ' NUM:'+
                                 CAD_CaixasSimples.DSCheques.DataSet.FieldByName('NUM_CHEQUE').AsString+ ' - ';
                            end;
                            CAD_CaixasSimples.DSCheques.DataSet.Next;
                       end;
                  end;
                  DM_RELATORIOS.Rave.SetParam('varFormaPgto', valor_pgto);


               DM_RELATORIOS.SQL2.First;

               DM_RELATORIOS.Rave.Close;

               //COLOCAR CONTROLE POR SLIP NO CAIXA SAIDA TB!

               if getConf('MODELO_RECIBO') = '1' then
                  DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_CAIXA_RECIBO_EXTRATO.rav'
               else
                   DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_CAIXA_RECIBO_EXTRATO'+getConf('MODELO_RECIBO')+'.rav';
                   
               principal.setRelatorio(DM_RELATORIOS.Rave);
               DM_RELATORIOS.Rave.Open;

               if (getTela('CAIXASIMPLES_RECIBO_EMAIL') = 'SIM') or (getTela('CAIXASIMPLES_RECIBO_EMAIL') = 'NULO') then
               Begin
                    DM_RELATORIOS.Rave_System.SystemSetups := DM_RELATORIOS.Rave_System.SystemSetups - [ssAllowSetup];
                    DM_RELATORIOS.Rave_System.DefaultDest := rdFile;
                    DM_RELATORIOS.Rave_System.DoNativeOutput:= false;
                    DM_RELATORIOS.Rave_System.RenderObject:= DM_REL.RV_RENDER_PDF;
                    DM_RELATORIOS.Rave.SelectReport('Report1',True);
                    DM_RELATORIOS.Rave_System.OutputFileName := ExtractFilePath(ParamStr(0))+'REL\pdf\Conta_Pagamento_'+IntToStr(id_caixa)+'.pdf';
                    DM_RELATORIOS.Rave.Execute;

                    sqlEmail := unUtilitario.getSelect('select nome, email, yahoo from pessoa where id_pessoa = '+varSQL.FieldByName('ID_PESSOA').AsString);

                    if not sqlEmail.FieldByName('email').IsNull then
                       if Length(Trim(sqlEmail.FieldByName('email').AsString)) > 0 then
                          principal.enviaEmail(0, 'RECIBO DE PAGAMENTO', sqlEmail.FieldByName('email').AsString, sqlEmail.FieldByName('nome').AsString, DM_RELATORIOS.Rave_System.OutputFileName, 'CARO CLIENTE, SEU PAGAMENTO SERÁ REALIZADO HOJE E O RECIBO SE ENCONTRA ANEXADO NESTE E-MAIL.');

                    if not sqlEmail.FieldByName('yahoo').IsNull then
                       if Length(Trim(sqlEmail.FieldByName('yahoo').AsString)) > 0 then
                          principal.enviaEmail(0, 'RECIBO DE PAGAMENTO', sqlEmail.FieldByName('yahoo').AsString, sqlEmail.FieldByName('nome').AsString, DM_RELATORIOS.Rave_System.OutputFileName, 'CARO CLIENTE, SEU PAGAMENTO SERÁ REALIZADO HOJE E O RECIBO SE ENCONTRA ANEXADO NESTE E-MAIL.');

                    sqlEmail.Close;
               end;

                DM_RELATORIOS.SQL2.SQL.Text;
                DM_RELATORIOS.SQL1.SQL.Text;

               if previa then
                  DM_RELATORIOS.Rave_System.DefaultDest := rdPreview
               else
                   DM_RELATORIOS.Rave_System.DefaultDest := rdPrinter;

               FreeAndNil(varSQL);
          End;
     End;

end;

procedure imprimir();
begin

     if CAD_CaixasSimples.contaAluguel > 0 then
        setInfoRecibo(CAD_CaixasSimples.contaAluguel,CAD_CaixasSimples.caixaLocal,'CAD_CaixasSimples',FrmCaixasSimples.CAD_CaixasSimples.RadioMostra.Checked)
     else
         setInfoRecibo(DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger,CAD_CaixasSimples.caixaLocal,'CAD_CaixasSimples',FrmCaixasSimples.CAD_CaixasSimples.RadioMostra.Checked);

end;

function calcPorcentagem(total, dinheiro: Currency): String;
Begin
     if (total <= 0) OR (dinheiro <= 0) then
     Begin
          result := '0,00';
          Exit;
     end;

     result := getCurrToStr((dinheiro * 100)/total,FALSE);
End;

function calcDinheiro(total, porcentagem: Currency): String;
Begin
     if (total <= 0) OR (porcentagem <= 0) then
     Begin
          result := '0,00';
          Exit;
     end;

     SetRoundMode(rmDown);
     result := getCurrToStr(SimpleRoundTo((total * SimpleRoundTo(porcentagem, -2))/100, -2),FALSE);
End;

procedure setComponentes();
Var varSQL: TZQuery; 
Begin
     If DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.IsNull Then
     Begin
          unUtilitario.setMensagem('Nenhuma conta foi selecionada!','erro');
          CAD_CaixasSimples.ValorBusca.SetFocus;
          Exit
     end;

     CAD_CaixasSimples.LabelDataVencimento.Caption := DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsString;
     CAD_CaixasSimples.LabelDataPagamento.Caption := DateToStr(Date());
     CAD_CaixasSimples.EditDias.Text := IntToStr(DaysBetween(Date(), DM_FINANCEIRO.ZCaixaSimplesDATA_REF.Value)) +' Dias';
     CAD_CaixasSimples.EditValorBase.Text := getCurrToStr(DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency,FALSE);
     CAD_CaixasSimples.EditValorMulta.Text := calcDinheiro(getStrToCurr(DM_FINANCEIRO.ZCaixaSimplesVALOR.AsString),getStrToCurr(DM_FINANCEIRO.ZCaixaSimplesVALOR_MULTA.AsString));
     CAD_CaixasSimples.EditValorMultaPorc.Text := getCurrToStr(DM_FINANCEIRO.ZCaixaSimplesVALOR_MULTA.AsCurrency, False);
     CAD_CaixasSimples.EditValorJurosPorc.Text := FormatFloat('###,###,###,###0.000', SimpleRoundTo(DM_FINANCEIRO.ZCaixaSimplesVALOR_JUROS.AsFloat,-3));
     CAD_CaixasSimples.EditValorJuros.Text := getCurrToStr(StrToInt(StringReplace(CAD_CaixasSimples.EditDias.Text,' Dias','',[rfReplaceAll])) * getPorcToDinh(DM_FINANCEIRO.ZCaixaSimplesVALOR_JUROS.AsString, DM_FINANCEIRO.ZCaixaSimplesVALOR.AsString),false);   
     CAD_CaixasSimples.EditValorDesconto.Text := DM_FINANCEIRO.ZCaixaSimplesVALOR_DESCONTO.AsString;
     CAD_CaixasSimples.EditValorDescontoPorc.Text := calcPorcentagem(getStrToCurr(DM_FINANCEIRO.ZCaixaSimplesVALOR.AsString),getStrToCurr(DM_FINANCEIRO.ZCaixaSimplesVALOR_DESCONTO.AsString));
     CAD_CaixasSimples.EditValorFinal.Text := getCurrToStr(SimpleRoundTo(DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency, -2),FALSE);
     CAD_CaixasSimples.pagamentoDinheiro(StrToCurr(StringReplace(CAD_CaixasSimples.EditValorFinal.Text,'.','',[rfReplaceAll])),False);
     CAD_CaixasSimples.EditValorTroco.Text := '0,00';

     varSQL := unUtilitario.getSelect('select sum((select result from spvalorcobranca1(1, c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada C where c.data_PGTO is null and c.id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString+' and c.data_ref <= '''+StringReplace(DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsString,'/','.',[rfReplaceAll])+'''');

     {
     if (varSQL.Fields[0].AsCurrency - DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency) <= 0 then
        CAD_CaixasSimples.EditValorAnterior.Text := '0,00'
     Else
         CAD_CaixasSimples.EditValorAnterior.Text := getCurrToStr(varSQL.Fields[0].AsCurrency - DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency,FALSE);
     }
     //varSQL.Close;

     //CAD_CaixasSimples.TabInformacao.Show;

     CAD_CaixasSimples.EditValorPago.SetFocus;

     setCalculoTotal();

     CAD_CaixasSimples.EditValorPago.Text := CAD_CaixasSimples.EditValorFinal.Text;

     //setRecuperaPagamentos();

     //setEditValorFaltando();

     FreeAndNil(varSQL);
End;

procedure limpaComponentes();
Begin
     CAD_CaixasSimples.LabelDataVencimento.Caption := '00/00/0000';
     CAD_CaixasSimples.LabelDataPagamento.Caption := '00/00/0000';
     CAD_CaixasSimples.EditDias.Text := '00 Dias';
     CAD_CaixasSimples.EditValorBase.Text := '0,00';
     CAD_CaixasSimples.EditValorMulta.Text := '0,00';
     CAD_CaixasSimples.EditValorMultaPorc.Text := '0,00';
     CAD_CaixasSimples.EditValorJuros.Text := '0,00';
     CAD_CaixasSimples.EditValorJurosPorc.Text := '0,00';
     CAD_CaixasSimples.EditValorDesconto.Text := '0,00';
     CAD_CaixasSimples.EditValorDescontoPorc.Text := '0,00';
     CAD_CaixasSimples.EditValorFinal.Text := '0,00';
     CAD_CaixasSimples.EditValorPago.Text := '0,00';
     CAD_CaixasSimples.EditValorTroco.Text := '0,00';
     //CAD_CaixasSimples.EditValorFaltando.Text := '0,00';
     //CAD_CaixasSimples.EditValorInserido.Text := '0,00';
     //CAD_CaixasSimples.EditValorAnterior.Text := '0,00';
     //CAD_CaixasSimples.LabelTotalCaixaSaida.Caption := 'R$ 0,00';
     //CAD_CaixasSimples.LabelTotalCaixaEntrada.Caption := 'R$ 0,00';
     //CAD_CaixasSimples.LabelTopoSaida.Caption := 'Caixa Saída / Pagamentos';
     //CAD_CaixasSimples.LabelTopoEntrada.Caption := 'Caixa Entrada / Recebimentos';

     DM_FINANCEIRO.ZCaixaPgto.Close;

     if CAD_CaixasSimples.varSQLEntrada <> nil Then
     Begin
          CAD_CaixasSimples.varSQLEntrada.Close;
          CAD_CaixasSimples.varSQLSaida.Close;
     End;
end;

function buscaInteligente(texto: String): String;
Begin
     result := '';

     if CAD_CaixasSimples.labelCategoriaGrupo.Font.Color = clLime then
     Begin
          if (CAD_CaixasSimples.comboCategoria.Text <> 'NENHUM') and (CAD_CaixasSimples.comboCategoria.Text <> 'Categoria:') then
             result := ' (id_categoria = '+unUtilitario.IDCampoSTR(CAD_CaixasSimples.comboCategoria.Text)+') and ';

          if (CAD_CaixasSimples.comboGrupo.Text <> 'NENHUM') and (CAD_CaixasSimples.comboGrupo.Text <> 'Grupo:') then
             result := result + ' (id_tipo = '+unUtilitario.IDCampoSTR(CAD_CaixasSimples.comboGrupo.Text)+') and ';

          if (CAD_CaixasSimples.comboSubgrupo.Text <> 'NENHUM') and (CAD_CaixasSimples.comboSubgrupo.Text <> 'Subgrupo:') then
             result := result + ' (id_subtipo = '+unUtilitario.IDCampoSTR(CAD_CaixasSimples.comboSubgrupo.Text)+') and ';
     end;

     If StrPos(Pchar(texto),'CONTRATO') <> nil then
          result := result + StringReplace(texto, 'CONTRATO', ' ce.id_contrato = ',[rfReplaceAll,rfIgnoreCase])
     else
     If StrPos(Pchar(texto),'PESSOA') <> nil then
          result := result + StringReplace(texto, 'PESSOA', ' ce.id_pessoa = ',[rfReplaceAll,rfIgnoreCase])
     else
     If (StrPos(Pchar(texto),'TELEFONE') <> nil) then
     Begin
          result := result + ' (ce.id_pessoa = (SELECT first 1 T.id_pessoa FROM telefone T where t.numero = '''+StringReplace(texto, 'TELEFONE ', '',[rfReplaceAll,rfIgnoreCase])+'''))';
     end
     else
     If (StrPos(Pchar(texto),'IMÓVEL') <> nil) OR (StrPos(Pchar(texto),'IMOVEL') <> nil) then
     Begin
          result := result + StringReplace(texto, 'IMOVEL', ' ce.id_imovel = ',[rfReplaceAll,rfIgnoreCase]);
          result := StringReplace(result, 'IMÓVEL', ' ce.id_imovel = ',[rfReplaceAll,rfIgnoreCase]);
     end
     else
     If (StrPos(Pchar(texto),'CÓDIGO') <> nil) OR (StrPos(Pchar(texto),'CODIGO') <> nil) then
     Begin
          result := result + StringReplace(texto, 'CODIGO', ' ce.id_caixa = ',[rfReplaceAll,rfIgnoreCase]);
          result := StringReplace(result, 'CÓDIGO', ' ce.id_caixa = ',[rfReplaceAll,rfIgnoreCase]);
     end
     else
     Begin

          if getTela('CAIXASIMPLES_CONTASPAGAMENTO_MOSTRA') = 'SIM' then
             result := result + ' (( select first 1 count(X.id_caixa) from caixa_entrada X where X.ATIVO = ''SIM'' AND X.data_pgto IS NOT NULL AND X.id_caixa = ce.ID_ENTRADA ) > 0 OR ce.ID_ENTRADA is NULL) AND ';

             
          result := result + CAD_CaixasSimples.verificaData()+' (i.complemento like ''%'+texto+'%'' or p.nome like ''%'+texto+'%'' or'+
          ' p.nome_fantasia like ''%'+texto+'%'' or p.empresa like ''%'+texto+'%'' or p.mae like ''%'+texto+'%'' or'+
          ' l.nome like ''%'+texto+'%'' or l.cep like ''%'+texto+'%'' or ce.documento like ''%'+texto+'%'''+
          ' ) order by '+CAD_CaixasSimples.setOrdenacao();

          Exit;
     end;

     result := result + ' order by '+CAD_CaixasSimples.setOrdenacao();


End;


procedure buscaRegistro(valor: String);
Begin

     if Length(valor) <= 0 then
     Begin
          DM_FINANCEIRO.ZCaixaSimples.Close;
          exit;
     end;

     Valor := StringReplace(Valor, '*','%', [rfReplaceAll]);

Try
     if getCaixa() then //ENTRADA
     Begin
          DM_FINANCEIRO.ZCaixaSimples.Close;
          DM_FINANCEIRO.ZCaixaSimples.SQL.Clear;
          DM_FINANCEIRO.ZCaixaSimples.SQL.Add(
          'select  CAST(CE.VALOR AS NUMERIC(15,2)) AS VALOR, CAST(CE.VALOR_JUROS AS NUMERIC(15,3))'+' AS VALOR_JUROS, CAST(CE.VALOR_MULTA AS NUMERIC(15,2)) AS VALOR_MULTA, CAST(CE.VALOR_DESCONTO AS NUMERIC(15,2)) AS VALOR_DESCONTO , cat.nome as categoria, tip.nome as tipo, stip.nome as subtipo,'+
          ' p.nome as pessoa, l.nome as logradouro, i.numero, i.complemento, '+
          ' ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, '+
          ' ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL'+
          ' from caixa_ENTRADA ce left join imovel i on i.id_imovel = ce.id_imovel'+
          ' left join logradouro l on l.id_logradouro = i.id_logradouro'+
          ' left join pessoa p on p.id_pessoa = ce.id_pessoa'+
          ' left join caixa_sis cat on cat.id_caixa_sis = ce.id_categoria'+
          ' left join caixa_sis tip on tip.id_caixa_sis = ce.id_tipo'+
          ' left join caixa_sis stip on stip.id_caixa_sis = ce.id_subtipo'+
          ' where (cat.ativo = ''SIM'' and tip.ativo = ''SIM'' and stip.ativo = ''SIM'' and'+
          ' ce.ativo = ''SIM'' and ce.data_pgto is NULL and ce.pendente = ''NAO'' '+
          ' and p.ativo = ''SIM'')  and '+ buscaInteligente(valor));
          
          DM_FINANCEIRO.ZCaixaSimples.Open;
          DM_FINANCEIRO.ZCaixaSimples.SQL.Text;

          CAD_CaixasSimples.LabelRecebimento.Hint := 'Caixa Entrada (R$ '+getValorTotal('VALORREAL',DM_FINANCEIRO.ZCaixaSimples)+')';
          
          exit;
     End
     Else
     Begin
          DM_FINANCEIRO.ZCaixaSimples.Close;
          DM_FINANCEIRO.ZCaixaSimples.SQL.Clear;
          DM_FINANCEIRO.ZCaixaSimples.SQL.Add(
          'select cat.nome as categoria, tip.nome as tipo, stip.nome as subtipo,'+
          ' p.nome as pessoa, l.nome as logradouro, i.numero, i.complemento, '+
          ' ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, '+
          ' ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL'+
          ' from caixa_SAIDA ce left join imovel i on i.id_imovel = ce.id_imovel'+
          ' left join logradouro l on l.id_logradouro = i.id_logradouro'+
          ' left join pessoa p on p.id_pessoa = ce.id_pessoa'+
          ' left join caixa_sis cat on cat.id_caixa_sis = ce.id_categoria'+
          ' left join caixa_sis tip on tip.id_caixa_sis = ce.id_tipo'+
          ' left join caixa_sis stip on stip.id_caixa_sis = ce.id_subtipo'+
          ' where (cat.ativo = ''SIM'' and tip.ativo = ''SIM'' and stip.ativo = ''SIM'' and'+
          ' ce.ativo = ''SIM'' and ce.data_pgto is NULL and ce.pendente = ''NAO'' '+
          ' and p.ativo = ''SIM'') and '+ buscaInteligente(valor));
          
          DM_FINANCEIRO.ZCaixaSimples.Open;

          CAD_CaixasSimples.LabelPagamento.Hint := 'Caixa Pagamento (R$ '+getValorTotal('VALORREAL',DM_FINANCEIRO.ZCaixaSimples)+')';
          CAD_CaixasSimples.LabelRecebimento.Hint := 'Caixa Entrada';
          exit;
     end;

except
      on e: Exception do
      begin
           unUtilitario.setMensagem('Erro ao buscar os registros!'+#13+'Verifique os dados informados.'+#13+'Caso continue gerando erros, entre em contato como suporte.','erro');
           Exit;
      end;

end;

     unUtilitario.setMensagem('buscaRegistro()'+#13+'Escolha um caixa!','erro');
End;

//RETORNA SE O CAIXA É ATIVO = ENTRADA OU DESATIVO = SAÍDA
function getCaixa(): Boolean;
Begin
     if UpperCase(CAD_CaixasSimples.caixaLocal) = 'ENTRADA' then
        result := True
     else
         result := False;
End;

procedure setCaixa(cx: String);
Begin

     DM_FINANCEIRO.ZCaixaSimples.Close;
     //CAD_CaixasSimples.ValorBusca.Text := '';

     if UpperCase(cx) = 'ENTRADA' then
     Begin
          CAD_CaixasSimples.caixaLocal := 'ENTRADA';
          CAD_CaixasSimples.LabelPagamento.Font.Color := clBlack;
          CAD_CaixasSimples.LabelRecebimento.Font.Color := clLime;
          CAD_CaixasSimples.RadioPgtoSemRecebimento.Visible := False;
          CAD_CaixasSimples.RadioEmail.Visible := False;
          CAD_CaixasSimples.CheckDisponivelPagamento.Visible := False;
          CAD_CaixasSimples.CheckDisponivelPagamentonNOME.Visible := False;
          exit;
     end;

     if UpperCase(cx) = 'SAIDA' then
     Begin
          CAD_CaixasSimples.caixaLocal := 'SAIDA';
          CAD_CaixasSimples.LabelPagamento.Font.Color := clLime;
          CAD_CaixasSimples.LabelRecebimento.Font.Color := clBlack;
          CAD_CaixasSimples.RadioPgtoSemRecebimento.Visible := True;
          CAD_CaixasSimples.RadioEmail.Visible := True;
          CAD_CaixasSimples.CheckDisponivelPagamento.Visible := True;
          CAD_CaixasSimples.CheckDisponivelPagamentonNOME.Visible := True;
          exit;
     end;

     unUtilitario.setMensagem('setCaixa()'+#13+'Escolha um caixa!','erro');
end;
//CAIXA

end.
