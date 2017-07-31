unit unCobreBem;
{$IFDEF VER140}
{$DEFINE USAVARIANTS}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE USAVARIANTS}
{$ENDIF}
interface

uses ComObj, Classes, unConfiguracao, unUtilitario, unValidacao,
ZDataset,{$IFDEF USAVARIANTS} Variants,{$ENDIF} SysUtils, unLog, ShellApi, Windows;

var
   CobreBemX: Variant;
   MDados1, MDados2, MDados3, MDados4: Variant;
   LayoutBoleto: String; //CNAB400 ou FEBRABAN240
   diretorioRemessa, diretorioRetorno: String;

const
     feeSMTPBoletoHTML = $00000000;
     feeSMTPMensagemBoletoHTMLAnexo = $00000001;
     feeSMTPMensagemBoletoPDFAnexo = $00000002;
     feeSMTPMensagemLinhaDigitavelURLCobreBemECommerce = $00000003;
     feeSMTPMensagemURLCobreBemECommerce = $00000004;
     feeSMTPMensagemLinhaDigitavel = $00000005;
     feeOutlookBoletoHTML = $00000006;
     feeOutlookMensagemBoletoHTMLAnexo = $00000007;
     feeOutlookMensagemBoletoPDFAnexo = $00000008;
     feeOutlookMensagemLinhaDigitavelURLCobreBemECommerce = $00000009;
     feeOutlookMensagemURLCobreBemECommerce = $0000000A;
     feeOutlookMensagemLinhaDigitavel = $0000000B;
     scpExecutar = $00000000;
     scpOK = $00000001;
     scpInvalido = $00000002;
     scpErro = $00000003;

//Project Celula_Imobiliaria.exe raised exception class EOleSysError with message 'Nome desconhecido'.

procedure gerarBoletoCobrebem(codigo: String; individual: Boolean; acao: String);
procedure confCobreBem();
function getNossoNumero(texto: String): String;
function lerArquivoRetorno(arquivo: String): TStringList;

implementation

uses FrmPrincipal, unMsg, unINI, DB;

function lerArquivoRetorno(arquivo: String): TStringList;
var
   Boleto: Variant;
   i, j: Integer;
   sql, sqlDetalhe: TZQuery;
   texto: String;
begin
     confCobreBem();
     CobreBemX.ArquivoRetorno.Arquivo := ExtractFileName(arquivo);
     CobreBemX.ArquivoRetorno.Diretorio := ExtractFileDir(arquivo);
     CobreBemX.ArquivoRetorno.Layout := LayoutBoleto;
     CobreBemX.CarregaArquivosRetorno;

     for I := 0 to CobreBemX.OcorrenciasCobranca.Count - 1 do
   begin
         texto := texto + 'Iniando Leitura do Titulo...'+#13;
         texto := texto + 'NossoNumero: '+CobreBemX.OcorrenciasCobranca[i].NossoNumero+#13;  
         texto := texto + 'CodigoOcorrencia: '+CobreBemX.OcorrenciasCobranca[i].CodigoOcorrencia+#13;
         if CobreBemX.OcorrenciasCobranca[i].DataOcorrencia <> '' then
          begin
              texto := texto + 'DataOcorrencia: '+CobreBemX.OcorrenciasCobranca[i].DataOcorrencia+#13;
          end
          else
              texto := texto + 'DataOcorrencia: NULO'+#13;
 
          texto := texto + 'Pagamento: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].Pagamento)+#13;
 
         if CobreBemX.OcorrenciasCobranca[i].DataCredito <> '' then
           begin
              texto := texto + 'DataCredito: '+CobreBemX.OcorrenciasCobranca[i].DataCredito+#13;
           end
           else
               texto := texto + 'DataCredito: NULO'+#13;
 
         texto := texto + 'ValorPago: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorPago)+#13;
 
         texto := texto + 'ValorMultaPaga: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorMultaPaga)+#13;
         texto := texto + 'ValorJurosPago: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorJurosPago)+#13;
         texto := texto + 'ValorTaxaCobranca: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorTaxaCobranca)+#13;
         texto := texto + 'ValorCredito: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorCredito)+#13;
         texto := texto + 'NumeroDocumento: '+CobreBemX.OcorrenciasCobranca[i].NumeroDocumento+#13;
         texto := texto + 'ValorDesconto: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorDesconto)+#13;
         texto := texto + 'Banco: '+CobreBemX.OcorrenciasCobranca[i].Banco+#13;
         texto := texto + 'Carteira: '+CobreBemX.OcorrenciasCobranca[i].Carteira+#13;
         texto := texto + 'Agencia: '+CobreBemX.OcorrenciasCobranca[i].Agencia+#13;
         texto := texto + 'ContaCorrente: '+CobreBemX.OcorrenciasCobranca[i].ContaCorrente+#13;
         texto := texto + 'CodigoCedente: '+CobreBemX.OcorrenciasCobranca[i].CodigoCedente+#13;
         texto := texto + 'NumeroControle: '+CobreBemX.OcorrenciasCobranca[i].NumeroControle+#13;
         texto := texto + 'ValorOutrosAcrescimos: '+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorOutrosAcrescimos)+#13;
 
         for J := 0 to CobreBemX.OcorrenciasCobranca[i].MotivosOcorrencia.Count - 1 do
           begin
             texto := texto + 'MOTIVO CODIGO-DESC: '+CobreBemx.OcorrenciasCobranca[i].MotivosOcorrencia[j].Codigo + '-' +
             CobreBemx.OcorrenciasCobranca[i].MotivosOcorrencia[j].Descricao+#13;
             ;
           end;
             texto := texto + '-----------------'+#13;
      end;

      setMensagem(texto,'INFORMA');
     {
     for i := 0 to CobreBemX.OcorrenciasCobranca.Count-1 do
     begin
          //CALCULAR O VALOR SOMADO TOTAL DOS BOLETOS QUE FORAM JUNTO DA CONTA E TB O VALOR CALCULADO INDIVIDUAL 
          sql := unUtilitario.getSelect('select id_caixa from caixa_entrada ce where ce.id_entrada = '+CobreBemX.OcorrenciasCobranca[i].NumeroControle);
          
          if sql.RecordCount=0 then
          Begin
               setMensagem('Não foi encontrado o boleto de código:'+CobreBemX.OcorrenciasCobranca[i].NumeroDocumento,'informa');
               sql.close;
               Continue;
          end;

          while not sql.Eof do
          Begin


          Result.Add(sql.FieldByName('ID_CAIXA').AsString);

          //sqlDetalhe := getSelect('select *, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL from caixa_entrada ce where id_caixa = ');
          
          sql.Edit;
          sql.FieldByName('ANOTACAO').AsString := sql.FieldByName('ANOTACAO').AsString +'<nossonumero>'+CobreBemX.OcorrenciasCobranca[i].NossoNumero+'</nossonumero>';
          //sql.FieldByName('ANOTACAO').AsString := sql.FieldByName('ANOTACAO').AsString +'<codigoocorrencia>'+CobreBemX.OcorrenciasCobranca[i].CodigoOcorrencia+'</codigoocorrencia>');
          //ListBox1.Items.Add('DataOcorrencia='+cobreBemX.OcorrenciasCobranca[i].DataOcorrencia);
          //ListBox1.Items.Add('Pagamento='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].Pagamento));
          //ListBox1.Items.Add('DataCredito='+CobreBemX.OcorrenciasCobranca[i].DataCredito);

          //SE A SOMA DAS CONTAS FOR MENOR OU MAIOR, ELE SERÁ CREDITADO NA CONTA BASE DO BOLETO RETORNO
          if CobreBemX.OcorrenciasCobranca[i].ValorCredito < sql.FieldByName('VALORREAL').AsFloat  then
             //FAZER A DIFERENÇA QUE NÃO FOI PAGO, SER ADICIONADO EM UMA CONTA NOVA COM BASE NA CONTA MESTRE DO RETORNO

          if CobreBemX.OcorrenciasCobranca[i].ValorCredito > sql.FieldByName('VALORREAL').AsFloat  then
              //SE A CONTA FOR MAIOR, SER ADICOINADA NA PARCELA MESTRE DO RETORNO.

          if CobreBemX.OcorrenciasCobranca[i].ValorCredito = sql.FieldByName('VALORREAL').AsFloat  then
          //SE FOR IGUAL, DAR BAIXA NAS CONTAS NORMALMENTE se.

          //ANOTAR O CODIGO DO NOSSO NUMERO NAS CONTAS

             
          //ListBox1.Items.Add('ValorPago='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorPago));
          //ListBox1.Items.Add('ValorMultaPaga='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorMultaPaga));
          //ListBox1.Items.Add('ValorJurosPago='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorJurosPago));
          //ListBox1.Items.Add('ValorTaxaCobranca='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorTaxaCobranca));
          //ListBox1.Items.Add('ValorCredito='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorCredito));
          //ListBox1.Items.Add('NumeroDocumento='+CobreBemX.OcorrenciasCobranca[i].NumeroDocumento);
          //ListBox1.Items.Add('ValorDesconto='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorDesconto));
          //ListBox1.Items.Add('Banco='+CobreBemX.OcorrenciasCobranca[i].Banco);
          //ListBox1.Items.Add('Carteira='+CobreBemX.OcorrenciasCobranca[i].Carteira);
          //ListBox1.Items.Add('Agencia='+CobreBemX.OcorrenciasCobranca[i].Agencia);
          //ListBox1.Items.Add('ContaCorrente='+CobreBemX.OcorrenciasCobranca[i].ContaCorrente);
          //ListBox1.Items.Add('CodigoCedente='+CobreBemX.OcorrenciasCobranca[i].CodigoCedente);
          //ListBox1.Items.Add('NumeroControle='+CobreBemX.OcorrenciasCobranca[i].NumeroControle);
          //ListBox1.Items.Add('ValorOutrosAcrescimos='+FloatToStr(CobreBemX.OcorrenciasCobranca[i].ValorOutrosAcrescimos));
          //for j := 0 to CobreBemX.OcorrenciasCobranca[i].MotivosOcorrencia.Count ­+ 1 do
          //    ListBox1.Items.Add('Motivo('+IntToStr(i)+')='+CobreBemX.OcorrenciasCobranca[i].MotivosOcorrencia[j].Codigo+'­'+CobreBemX.OcorrenciasCobranca[i].MotivosOcorrencia[j].Descricao);


          //sql.Post;
          //sql.CommitUpdates;
          //sql.Next;
          end;
           }
   
end;

procedure confCobreBem();
Begin
     CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
     CobreBemX.ArquivoLicenca := ExtractFilePath(ParamStr(0))+'CobreBem.conf';
     CobreBemX.CodigoAgencia := getBoleto('CampoAgencia');
     CobreBemX.OutroDadoConfiguracao1 := 'S'; //Para CEF conforme AtendaBem ID: 1186111 

     if verificaStringInt(getBoleto('CampoAgenciaDigito')) then
        CobreBemX.CodigoAgencia := CobreBemX.CodigoAgencia + '-' +getBoleto('CampoAgenciaDigito');
     
     CobreBemX.NumeroContaCorrente := getBoleto('CampoConta');

     if verificaStringInt(getBoleto('CampoContaDigito')) then
        CobreBemX.NumeroContaCorrente := CobreBemX.NumeroContaCorrente + '-' +getBoleto('CampoContaDigito');

     CobreBemX.CodigoCedente := getBoleto('CampoDigitoCodigo');
     CobreBemX.InicioNossoNumero := '000000000';
     CobreBemX.FimNossoNumero := '999999999';

     if getBoleto('CampoNossoNumero') = 'NULO' then
        setBoleto('CampoNossoNumero','0');

     //setBoleto('CampoNossoNumero', IntToStr(StrToInt(getBoleto('CampoNossoNumero')+1))) 

     //CobreBemX.ProximoNossoNumero := getBoleto('CampoNossoNumero');
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := ExtractFilePath(ParamStr(0))+'REL\img\logoboleto.gif';
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := ExtractFilePath(ParamStr(0))+'REL\img\';
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.MargemSuperior := 4;

     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Servidor := smtpServidor; { Trocar para apontar para o seu servidor SMTP }
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Porta := smtpPorta;
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Usuario := smtpUsuario; {utilizar esta propriedade para acesso a servidores SMTP seguros }
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Senha := smtpSenha; {utilizar esta propriedade para acesso a servidores SMTP seguros }

     CobreBemX.PadroesBoleto.PadroesBoletoEmail.URLImagensCodigoBarras := 'http://celuladigital.com.br/imagens/cobrebem/';
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.URLLogotipo := 'http://'+getConf('EMPRESA_HOMEPAGE')+'/fotos_imoveis/LOGOPADRAO.BMP';
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.Assunto := 'BOLETO '+getConf('EMPRESA_FANTASIA');
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.EmailFrom.Endereco := smtpFrom; //tbContasCorrentesEnderecoEmailCedente.AsString;
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.EmailFrom.Nome := 'NÃO RESPONDA O EMAIL'; //tbContasCorrentesNomeCedente.AsString;
     CobreBemX.PadroesBoleto.IdentificacaoCedente := '<b>COBRANÇA '+getConf('EMPRESA_FANTASIA')+'</b>'; //tbContasCorrentesIdentificacaoCedenteBolet.AsString
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.FormaEnvio := feeSMTPBoletoHTML;

     CobreBemX.ArquivoRemessa.Arquivo := 'E'+StringReplace(StringReplace(StringReplace(DateTimeToStr(date+time), ' ','_',[rfReplaceAll]), '/','_',[rfReplaceAll]), ':','_',[rfReplaceAll])+'.REM';
     diretorioRemessa := '\\'+getUser('SERVIDOR')+'\IMOBILIARIA\REMESSA\';
     diretorioRetorno := '\\'+getUser('SERVIDOR')+'\IMOBILIARIA\RETORNO\';
     CobreBemX.ArquivoRemessa.Diretorio := diretorioRemessa;
     //CobreBemX.ArquivoRetorno.Diretorio := diretorioRetorno;

     if NOT DirectoryExists(diretorioRemessa) Then
        ForceDirectories(diretorioRemessa);

     if NOT DirectoryExists(diretorioRetorno) Then
        ForceDirectories(diretorioRetorno);

     LayoutBoleto := 'FEBRABAN240'; //Pegar isso depois das configurações do boleto.
     CobreBemX.ArquivoRemessa.Layout := LayoutBoleto;

     //CobreBemX.ConfiguraContaCorrente; //Usado para configurar

end;

procedure gerarBoletoCobrebem(codigo: String; individual: Boolean; acao: String);
var
   Boleto, EmailSacado: Variant;
   sql, sqlDetalhe,sqlDesconto: TZQuery;
   valorFinal: Currency;
   id_imovel, nossoNumero: String; //Para verificar se a conta possui imovel ou não.
begin
     PRINCIPAL.setMensagem('Boleto '+codigo+' processado...');
     confCobreBem();

     if Individual then
     Begin
          sql := unUtilitario.getSelect('select p.*, ce.*, i.*, l.*, l.nome as logradouro, c.nome as cidade, b.nome as bairro, u.sigla, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL '+
            ' from caixa_ENTRADA ce '+
            ' inner join pessoa p on p.id_pessoa = ce.id_pessoa '+
            ' left join imovel i on i.id_imovel = ce.id_imovel '+
            ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
            ' left join cidade c on c.id_cidade = l.id_cidade '+
            ' left join bairro b on b.id_bairro = l.id_bairro '+
            ' left join uf u on u.id_sigla = l.id_sigla '+
            ' where ce.id_caixa = '+codigo);
     end
     else
     Begin
          sql := unUtilitario.getSelect('select p.*, ce.*, i.*, l.*, l.nome as logradouro, c.nome as cidade, b.nome as bairro, u.sigla, (select sum((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c where c.id_pessoa = ce.id_pessoa and (c.id_imovel = ce.id_imovel or c.id_imovel is null) and c.data_ref = ce.data_ref and '+' c.pendente = ''NAO'' and c.ativo = ''SIM'' and c.data_pgto is null ) as VALORREAL '+
            ' from caixa_ENTRADA ce '+
            ' inner join pessoa p on p.id_pessoa = ce.id_pessoa '+
            ' left join imovel i on i.id_imovel = ce.id_imovel '+
            ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
            ' left join cidade c on c.id_cidade = l.id_cidade '+
            ' left join bairro b on b.id_bairro = l.id_bairro '+
            ' left join uf u on u.id_sigla = l.id_sigla '+
            ' where ce.id_caixa in ('+codigo+')');
     end;

     if sql.RecordCount = 0 then
        exit;

     while not sql.Eof do
     begin
         valorFinal := 0;

         Boleto := CobreBemX.DocumentosCobranca.Add;

         MDados1 := Boleto.MeusDados.Add;
         MDados1.Nome := 'CodigoDesconto1';
         MDados1.Valor := '0';
		     MDados2 := Boleto.MeusDados.Add;
         MDados2.Nome := 'ValorDesconto1';
         MDados2.Valor := '0';
         MDados3 := Boleto.MeusDados.Add;
         MDados3.Nome := 'DataLimiteDesconto1';
         MDados3.Valor := '01/01/2014';
         MDados4 := Boleto.MeusDados.Add;
         MDados4.Nome := 'FormaCadastramento';
         MDados4.Valor := '1';

         Boleto.InstrucaoCobranca3 := '2'; //(Codigo Baixa Devolucao) Orientação dos funcionários do CobreBemX = TicketID=1186111
         Boleto.NumeroDocumento := sql.FieldByName('ID_CAIXA').AsString;
         Boleto.NomeSacado := sql.FieldByName('NOME').AsString;
         Boleto.DataProcessamento := FormatDateTime('dd/mm/yyyy', Date);
         Boleto.EnderecoSacado := sql.FieldByName('TIPO').AsString+' '+sql.FieldByName('LOGRADOURO').AsString+' '+sql.FieldByName('NUMERO').AsString+' '+sql.FieldByName('COMPLEMENTO').AsString;
         Boleto.BairroSacado := sql.FieldByName('BAIRRO').AsString;
         Boleto.CidadeSacado := sql.FieldByName('CIDADE').AsString;
         Boleto.EstadoSacado := sql.FieldByName('SIGLA').AsString;
         Boleto.CepSacado := StringReplace(sql.FieldByName('CEP').AsString,'-','',[rfReplaceAll,rfIgnoreCase]);
         Boleto.DataDocumento := sql.FieldByName('DATA_REF').AsString;
         Boleto.DataVencimento  := sql.FieldByName('DATA_REF').AsString;
         Boleto.PercentualJurosDiaAtraso := sql.FieldByName('VALOR_JUROS').AsCurrency;
         Boleto.PercentualMultaAtraso := sql.FieldByName('VALOR_MULTA').AsCurrency;
         Boleto.PercentualDesconto := sql.FieldByName('VALOR_DESCONTO').AsCurrency;
         Boleto.ValorOutrosAcrescimos := 0.0;
         EmailSacado := Boleto.EnderecosEmailSacado.Add;
         EmailSacado.Nome := sql.FieldByName('NOME').AsString;

         if not sql.FieldByName('email').IsNull then
            if Length(Trim(sql.FieldByName('email').AsString)) > 0 then // yahoo para email empresarial
                 EmailSacado.Endereco := LowerCase(trim(sql.FieldByName('email').AsString))
            else
                EmailSacado.Endereco := LowerCase(trim(getBoleto('CampoEmail')))
         else
             EmailSacado.Endereco := LowerCase(trim(getBoleto('CampoEmail')));

         if Length(sql.FieldByName('CPF_CNPJ').AsString) > 11 then
            Boleto.CNPJSacado := sql.FieldByName('CPF_CNPJ').AsString
         else
             Boleto.CPFSacado := sql.FieldByName('CPF_CNPJ').AsString;

         //nossoNumero := getNossoNumero(sql.FieldByName('ANOTACAO').AsString);
         Boleto.BancoGeraNossoNumero := False;
         //setMensagem(FormatFloat(CobreBemX.MascaraNossoNumero,sql.FieldByName('ID_CAIXA').AsInteger),'ERRO');
         Boleto.NossoNumero := FormatFloat(CobreBemX.MascaraNossoNumero,sql.FieldByName('ID_CAIXA').AsInteger);
         Boleto.CalculaDacNossoNumero := True;
         if Length(Trim(nossoNumero)) > 0 then
         begin
              //Boleto.NossoNumero := nossoNumero;

              //if Length(nossoNumero) < (CobreBemX.MascaraNossoNumero + 1) then
              //         Boleto.CalculaDacNossoNumero := True;
         end
         else
         begin
              //Boleto.NossoNumero := sql.FieldByName('ID_CAIXA').AsString;
              //Boleto.CalculaDacNossoNumero := True;
              // VER https://www.cobrebem.com/IDocumentoCobranca.html
         end;

         if Individual then
         Begin
              Boleto.PadroesBoleto.Demonstrativo := '<b>CÓDIGO DA CONTA DO SISTEMA:</b> '+sql.FieldByName('ID_CAIXA').AsString+'. <b>IMÓVEL:</b> '+sql.FieldByName('ID_IMOVEL').AsString+'. <b>PARCELA:</b> '+sql.FieldByName('PARCELA').AsString+'. <b>CONTRATO:</b> '+sql.FieldByName('ID_CONTRATO').AsString+'<br/><b>DESCRIÇÃO:</b> '+sql.FieldByName('DOCUMENTO').AsString+'. <br /><br />GERAÇÃO INDIVIDUAL DE COBRANÇA. NÃO QUITA DÉBITOS ANTERIORES OU PARA A MESMA DATA DE VENCIMENTO.<br />';
         end
         else
         Begin

              if sql.FieldByName('ID_IMOVEL').IsNull then
                 id_imovel := ' and ce.id_imovel is null '
              else
                  id_imovel := ' and ce.id_imovel = '+sql.FieldByName('ID_IMOVEL').AsString;

              sqlDetalhe := unUtilitario.getSelect('select ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL '+
                ' from caixa_ENTRADA ce '+
                ' where ce.id_pessoa = '+sql.FieldByName('ID_PESSOA').AsString+' '+id_imovel+' and ce.data_ref = '''+formataDataSQL(sql.FieldByName('DATA_REF').AsString)+''' and ce.pendente = ''NAO'' and ce.ativo = ''SIM'' and ce.data_pgto is null ');

              Boleto.PadroesBoleto.Demonstrativo := '<b>-- COBRANÇA --</b><br/>';
              while NOT sqlDetalhe.Eof do
              Begin
                   Boleto.PadroesBoleto.Demonstrativo := Boleto.PadroesBoleto.Demonstrativo + 'CONTA: '+sqlDetalhe.FieldByName('ID_CAIXA').AsString+'-'+sqlDetalhe.FieldByName('DOCUMENTO').AsString+'. PARCELA: '+sqlDetalhe.FieldByName('PARCELA').AsString+'. VALOR R$'+getCurrToStr(sqlDetalhe.FieldByName('VALORREAL').AsCurrency, FALSE)+'<br/>';
                   sqlDetalhe.Next;
              end;

              //DESCONTOS CAIXA_SAIDA
              sqlDesconto := unUtilitario.getSelect('select ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL '+
                ' from caixa_SAIDA ce '+
                ' where ce.id_pessoa = '+sql.FieldByName('ID_PESSOA').AsString+' '+id_imovel+' and ce.data_ref = '''+formataDataSQL(sql.FieldByName('DATA_REF').AsString)+''' and ce.pendente = ''NAO'' and ce.ativo = ''SIM'' and ce.data_pgto is null ');

              if sqlDesconto.RecordCount > 0 then
              Begin
                   Boleto.PadroesBoleto.Demonstrativo := Boleto.PadroesBoleto.Demonstrativo+'<br /><b>-- DESCONTOS --</b><br/>';
                   while NOT sqlDesconto.Eof do
                   Begin
                        Boleto.PadroesBoleto.Demonstrativo := Boleto.PadroesBoleto.Demonstrativo + 'CONTA: '+sqlDesconto.FieldByName('ID_CAIXA').AsString+'-'+sqlDesconto.FieldByName('DOCUMENTO').AsString+'. PARCELA: '+sqlDesconto.FieldByName('PARCELA').AsString+'. VALOR R$'+getCurrToStr(sqlDesconto.FieldByName('VALORREAL').AsCurrency, FALSE)+'<br/>';
                        valorFinal := valorFinal + sqlDesconto.FieldByName('VALORREAL').AsCurrency;
                        sqlDesconto.Next;
                   end;
              end
              else
                  Boleto.PadroesBoleto.Demonstrativo := Boleto.PadroesBoleto.Demonstrativo+'<br />* Se caso houver descontos, eles já estão calculados no valor de cada conta.<br/>';

              //ANOTAR O VÍNCULO ENTRE AS CONTAS
              sqlDetalhe.First;
              while NOT sqlDetalhe.Eof do
              Begin
                   sqlDetalhe.Edit;
                   sqlDetalhe.FieldByName('ID_ENTRADA').AsString := sql.FieldByName('ID_CAIXA').AsString;
                   sqlDetalhe.FieldByName('ID_CATEGORIA').AsInteger := 27;
                   sqlDetalhe.FieldByName('OPERACAO').AsString := sqlDetalhe.FieldByName('OPERACAO').AsString +' [BOLETO_EMITIDO '+DateToStr(Date)+' COM '+sql.FieldByName('ID_CAIXA').AsString+']';
                   //NAO ESTA GRAVANDO CORRETAMENTE, POIS NAO ESTA LISTANDO!!
                   setLog(sqlDetalhe.FieldByName('ID_CAIXA').AsString, 'GERA BOLETO COBREBEM', 'ROTINA INTERNA', sqlDetalhe);

                   sqlDetalhe.Post;
                   sqlDetalhe.CommitUpdates;
                   sqlDetalhe.Next;
              end;
              sqlDetalhe.Close;

              if valorFinal > 0 then
              begin
                   sqlDesconto.First;
                   while NOT sqlDesconto.Eof do
                   Begin
                        sqlDesconto.Edit;
                        sqlDesconto.FieldByName('ID_ENTRADA').AsString := sql.FieldByName('ID_CAIXA').AsString;
                        sqlDesconto.FieldByName('ID_CATEGORIA').AsInteger := 27;
                        sqlDesconto.FieldByName('OPERACAO').AsString := sqlDesconto.FieldByName('OPERACAO').AsString +' [BOLETO_EMITIDO '+DateToStr(Date)+' COM '+sql.FieldByName('ID_CAIXA').AsString+' DO CAIXA ENTRADA]';
                        //NAO ESTA GRAVANDO CORRETAMENTE, POIS NAO ESTA LISTANDO!!
                        setLog(sqlDesconto.FieldByName('ID_CAIXA').AsString, 'GERA BOLETO COBREBEM', 'ROTINA INTERNA', sqlDesconto);

                        sqlDesconto.Post;
                        sqlDesconto.CommitUpdates;
                        sqlDesconto.Next;
                   end;
              end;
              sqlDesconto.Close;

         end;

         if valorFinal = 0 then
         begin
              Boleto.ValorDocumento := sql.FieldByName('VALORREAL').AsCurrency;
              valorFinal := sql.FieldByName('VALORREAL').AsCurrency;
         end
         else
         Begin
              Boleto.ValorDocumento := sql.FieldByName('VALORREAL').AsCurrency - valorFinal;
              valorFinal := sql.FieldByName('VALORREAL').AsCurrency - valorFinal;
         end;

         Boleto.PadroesBoleto.Demonstrativo := Boleto.PadroesBoleto.Demonstrativo + '<br/><b>TOTAL R$ '+getCurrToStr(valorFinal, FALSE)+'</b><br/>';
         Boleto.PadroesBoleto.Demonstrativo := Boleto.PadroesBoleto.Demonstrativo + '<br/><b>PARA MAIORES INFORMAÇÕES:</b> '+getConf('EMPRESA_TELEFONE')+' / '+UpperCase(getBoleto('CampoEmail'));
         Boleto.PadroesBoleto.InstrucoesCaixa := '<br/>'+getBoleto('CampoLinha1')+'<br/>'+getBoleto('CampoLinha2')+'<br/>'+getBoleto('CampoLinha3')+'<br/>'+getBoleto('CampoLinha4');

         Boleto.ControleProcessamentoDocumento.Imprime := scpExecutar;
         Boleto.ControleProcessamentoDocumento.EnviaEmail := scpExecutar;
         Boleto.ControleProcessamentoDocumento.GravaRemessa := scpExecutar;

         sql.Next;
     end; //WHILE SQL

     if acao = 'MOSTRAR' then
        CobreBemX.ImprimeBoletos;
     if acao = 'IMPRIMIR' then
        CobreBemX.ImprimeBoletosSemPreview;
     if acao = 'EMAIL' then
        CobreBemX.EnviaBoletosPorEmail;
     if acao = 'REMESSA' then
     Begin
          //Numeração do Boleto
          if getBoleto('CampoSeqNumRemessa') = 'NULO' then
             setBoleto('CampoSeqNumRemessa', '0');

          setBoleto('CampoSeqNumRemessa', IntToStr(StrToInt(getBoleto('CampoSeqNumRemessa')) + 1));
          CobreBemX.ArquivoRemessa.Sequencia := StrToInt(getBoleto('CampoSeqNumRemessa'));
          //Fim Numeração do Boleto

          CobreBemX.GravaArquivoRemessa;
          setMensagem('Arquivo de remessa gerado!'+#13+'Ele está localizado nesta pasta com a data e hora da geração: '+CobreBemX.ArquivoRemessa.Diretorio,'informa');
          //ShellExecute(0, 'open', 'explorer.exe '+CobreBemX.ArquivoRemessa.Diretorio, nil, nil, SW_SHOWNORMAL);
          ShellExecute(0, 'open', PAnsiChar(diretorioRemessa), nil, nil, SW_SHOW);
          //ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(CobreBemX.ArquivoRemessa.Diretorio)),nil,nil,SW_SHOWNORMAL);
     end;

     //CobreBemX := Unassigned;
     //sqlDetalhe.Close;
     FreeAndNil(sqlDetalhe);
     //sql.Close;
     FreeAndNil(sql);
     //sqlDesconto.Close;
     FreeAndNil(sqlDesconto);
     //FreeAndNil(CobreBemX)
end;

function getNossoNumero(texto: String): String;
Begin
     if Trim(texto) = '' then
        Result := ''
     else
         Result := unValidacao.StringBetween(texto, '<nossonumero>', '</nossonumero>'); //UnUtilitario  Antigo
end;

end.
