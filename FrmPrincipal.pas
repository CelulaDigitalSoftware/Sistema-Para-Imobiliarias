unit FrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Menus, StdCtrls, ComCtrls, jpeg, ImgList,
  ZConnection, ExtDlgs, ShellAPI, MidasLib, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RpDefine, RpRave, ActnPopup, OleCtrls, SHDocVw,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, DBClient, frmThread, IdMessageClient,
  IdSMTPBase, IdSMTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdMessage, gbCobranca, IdHTTP, DateUtils, IdText, IdAttachmentFile;

  {
  Para não carregao o Midas.dll, use o MidasLib!

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Menus, StdCtrls, ComCtrls, jpeg, ImgList,
  ZConnection, ExtDlgs, ShellAPI, MidasLib, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RpDefine, RpRave, ActnPopup, OleCtrls, SHDocVw,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, DBClient, frmThread, IdMessageClient,
  IdSMTPBase, IdSMTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdMessage, gbCobranca;
  }

type
  TPRINCIPAL = class(TForm)
    Menu: TMainMenu;
    Arquivo1: TMenuItem;
    Ferramentas1: TMenuItem;
    Ajuda1: TMenuItem;
    Pastas1: TMenuItem;
    Imvel1: TMenuItem;
    Pessoas1: TMenuItem;
    ipodePessoas1: TMenuItem;
    PanelTopo: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;           
    btnLogoff: TSpeedButton;
    Fundo: TImage;
    Fundo_Menu: TImage;
    ImagensAzul: TImageList;
    ImagensRosa: TImageList;
    Sistema1: TMenuItem;
    Usurio1: TMenuItem;
    N1: TMenuItem;
    Cadastro1: TMenuItem;
    ipo1: TMenuItem;
    N4: TMenuItem;
    Caracterstica1: TMenuItem;
    Cadastro2: TMenuItem;
    N5: TMenuItem;
    ipo2: TMenuItem;
    Ocupao2: TMenuItem;
    Bairro1: TMenuItem;
    Cidade1: TMenuItem;
    Estado1: TMenuItem;
    N2: TMenuItem;
    ipo3: TMenuItem;
    Empresa1: TMenuItem;
    N6: TMenuItem;
    Cadastro3: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Sair1: TMenuItem;
    VenderImvel1: TMenuItem;
    Financeiro2: TMenuItem;
    N10: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    N11: TMenuItem;
    btnCentralAcompanhamento: TMenuItem;
    Sobre1: TMenuItem;
    N13: TMenuItem;
    Imagem: TOpenPictureDialog;
    Cheques1: TMenuItem;
    Conexao: TZConnection;
    zperm: TZQuery;
    pegaID: TZQuery;
    Configuraes2: TMenuItem;
    pegaDocumento: TOpenDialog;
    N12: TMenuItem;
    SpeedButton12: TSpeedButton;
    N14: TMenuItem;
    Caixas1: TMenuItem;
    CaixasSimples1: TMenuItem;
    N3: TMenuItem;
    PanelRodape: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    LabelInformacao: TLabel;
    ImageInfo: TImage;
    Image3: TImage;
    ImageWebbroser: TImage;
    imgFerramentas: TImage;
    Image7: TImage;
    LabelUsuario: TLabel;
    LabelData: TLabel;
    PopupBrowser: TPopupActionBar;
    elaInteira1: TMenuItem;
    N20: TMenuItem;
    MapaVirtual1: TMenuItem;
    Franca1: TMenuItem;
    N21: TMenuItem;
    PopupManutencao: TPopupActionBar;
    VerificarAtualizaes1: TMenuItem;
    ExportarDadosparaWeb1: TMenuItem;
    N22: TMenuItem;
    FecharTelaInteira1: TMenuItem;
    BtnFechaNavegador: TSpeedButton;
    N24: TMenuItem;
    Brasil1: TMenuItem;
    SobreoWindows1: TMenuItem;
    CentralSQL1: TMenuItem;
    Configuraes1: TMenuItem;
    ObjFTP: TIdFTP;
    MySQL: TZConnection;
    ExportarWeb: TTimer;
    btnSuporteRemoto: TMenuItem;
    N18: TMenuItem;
    EtiquetasEmpresariais1: TMenuItem;
    Etiqueta: TClientDataSet;
    EtiquetaNOME: TStringField;
    EtiquetaRUA: TStringField;
    EtiquetaBAIRRO: TStringField;
    EtiquetaCIDADE: TStringField;
    EtiquetaCEP: TStringField;
    ManutenodeImagens1: TMenuItem;
    SpeedAtualizacao: TSpeedButton;
    Exportartudo1: TMenuItem;
    Somenterelevantes1: TMenuItem;
    N23: TMenuItem;
    Estouconectado1: TMenuItem;
    N27: TMenuItem;
    N9: TMenuItem;
    Conexao_log: TZConnection;
    BackupdoSistema1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    RecuperarBackup1: TMenuItem;
    Auditoria1: TMenuItem;
    RelatriodeAlteraes1: TMenuItem;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    Boletos1: TMenuItem;
    Boleto: TgbTitulo;
    SuporteVIP1: TMenuItem;
    N19: TMenuItem;
    SpeedBackup: TSpeedButton;
    LimparBackup1: TMenuItem;
    Fundo_MenuOriginal: TImage;
    SuporteTcnico1: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    SuporteTcnicoAcompanhamento1: TMenuItem;
    abaAlertas: TScrollBox;
    painel: TPanel;
    painelFoto: TImage;
    painelTexto: TMemo;
    AdministraoGeral1: TMenuItem;
    AutenticarnoTwitter1: TMenuItem;
    objHTTP: TIdHTTP;
    PopupMensagem: TPopupActionBar;
    EnviarMensagem1: TMenuItem;
    AgendaEmpresarial1: TMenuItem;
    N17: TMenuItem;
    RemessaRetorno: TgbCobranca;
    deixaDocumento: TSaveDialog;
    N29: TMenuItem;
    ExportarparaInternet1: TMenuItem;
    RecuperaodeImagens1: TMenuItem;
    IntegrarcomFacebook1: TMenuItem;
    IntegrarcomAbifran1: TMenuItem;
    IntegraoOLX1: TMenuItem;
    labelQtdeMensagem: TLabel;
    leitorMensagem: TTimer;
    Mensagens1: TMenuItem;
    N31: TMenuItem;
    IntegraoACIFRA1: TMenuItem;
    ManualdoSistema1: TMenuItem;
    N32: TMenuItem;
    EtiquetaNUMERO: TStringField;
    VoltarImveisdaInternet1: TMenuItem;
    MelhorarPerformance1: TMenuItem;
    checaConexao: TTimer;
    PainelFinanceirodoCliente1: TMenuItem;
    Minharedeinternaestok1: TMenuItem;
    N25: TMenuItem;
    procedure Minharedeinternaestok1Click(Sender: TObject);
    procedure PainelFinanceirodoCliente1Click(Sender: TObject);
    procedure checaConexaoTimer(Sender: TObject);
    procedure MelhorarPerformance1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure VoltarImveisdaInternet1Click(Sender: TObject);
    //procedure Button1Click(Sender: TObject);
    procedure VerificarAtualizaes1Click(Sender: TObject);
    procedure ManualdoSistema1Click(Sender: TObject);
    procedure IntegraoACIFRA1Click(Sender: TObject);
    procedure Mensagens1Click(Sender: TObject);
    procedure AgendaEmpresarial1Click(Sender: TObject);
    procedure labelQtdeMensagemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure leitorMensagemTimer(Sender: TObject);
    procedure IntegrarcomAbifran1Click(Sender: TObject);
    procedure IntegraoOLX1Click(Sender: TObject);
    procedure IntegrarcomFacebook1Click(Sender: TObject);
    procedure RecuperaodeImagens1Click(Sender: TObject);
    procedure ExportarparaInternet1Click(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EnviarMensagem1Click(Sender: TObject);
    procedure AutenticarnoTwitter1Click(Sender: TObject);
    procedure AdministraoGeral1Click(Sender: TObject);
    procedure painelFotoDblClick(Sender: TObject);
    procedure SuporteTcnicoAcompanhamento1Click(Sender: TObject);
    procedure SuporteTcnico1Click(Sender: TObject);
    procedure Ferramentas1Click(Sender: TObject);
    procedure LimparBackup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedBackupClick(Sender: TObject);
    procedure SuporteVIP1Click(Sender: TObject);
    procedure Boletos1Click(Sender: TObject);
    procedure IdSSLIOHandlerSocketOpenSSL1StatusInfo(Msg: string);
    procedure IdSSLIOHandlerSocketOpenSSL1Status(ASender: TObject;
      const AStatus: TIdStatus; const AStatusText: string);
    procedure IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure RelatriodeAlteraes1Click(Sender: TObject);
    procedure Auditoria1Click(Sender: TObject);
    procedure RecuperarBackup1Click(Sender: TObject);
    procedure BackupdoSistema1Click(Sender: TObject);
    procedure Estouconectado1Click(Sender: TObject);
    procedure ExportarWebTimer(Sender: TObject);
    procedure Somenterelevantes1Click(Sender: TObject);
    procedure Exportartudo1Click(Sender: TObject);
    procedure SpeedAtualizacaoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedAtualizacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ManutenodeImagens1Click(Sender: TObject);
    procedure EtiquetasEmpresariais1Click(Sender: TObject);
    procedure CaixasSimples1Click(Sender: TObject);
    procedure Caixas1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure VenderImvel1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Caracterstica1Click(Sender: TObject);
    procedure ipo1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Ocupao2Click(Sender: TObject);
    procedure ipo2Click(Sender: TObject);
    procedure ipo3Click(Sender: TObject);
    procedure Cadastro3Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure btnLogoffClick(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Configuraes2Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure setErro(Sender: TObject; E: Exception);
    procedure Fundo_MenuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageWebbroserMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgFerramentasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Cssia1Click(Sender: TObject);
    procedure FecharTelaInteira1Click(Sender: TObject);
    procedure Franca1Click(Sender: TObject);
    procedure BtnFechaNavegadorClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure elaInteira1Click(Sender: TObject);
    procedure PopupBrowserPopup(Sender: TObject);
    procedure Brasil1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure SobreoWindows1Click(Sender: TObject);
    procedure CentralSQL1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure btnCentralAcompanhamentoClick(Sender: TObject);
    procedure btnSuporteRemotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dataBasePGTO: String; //USADO PARA PEGAR A DATA BASE ALTERADA DO FORM CAIXA SIMPLES
    SERIAL: String; //Para alterar o serial se caso a empresa não tiver internet.
    bloqueado: Boolean; //Verifica se o sistema está bloqueado o seu uso. (Principalmente de forma financeira)
    SELECAO: TStringList;
    logOld: TStringList;
    logNew: TStringlist;
    camposCripto: TStringlist;
    WebBrowser1: TWebBrowser;
    tread: TThread;
    procedure mostraAvisoBloqueio();
    procedure SITE(const aAdress: String);
    function CriarForm(FormCriatura: TFormClass; FormCriador: TForm; Conteudo: string): TForm;
    procedure DestroiForm(FormCriatura: TFormClass; FormCriador: TForm; Conteudo: string; Fechar: Smallint);
    procedure setID(Query: Tzquery; campoID, tabela: String);
    function GetVersaoArq: string;
    procedure setLogo(rave: TRvProject);
    procedure VerificarJanela(formcriador: TFORM);
    function TratarData(data: String): String;
    function VerificarDuplicidade(Tabela: String; Valor: String): boolean;
    procedure duplicar(opcao: String; Matriz: Tzquery);
    procedure setRelatorio(rave: TRvProject);
    function validarProprietario(codigo: Integer): boolean;
    procedure setFuncao(nomeFuncao: String);
    function getFuncao(): String;
    procedure setMensagem(recado: String);
    procedure criaBrowser();
    function preparaBoleto(Id_Caixa: Integer; Individual: Boolean; bGeracaoRemessa : Boolean = False): TgbTitulo;
    procedure verificarBanco();
    procedure criaAlerta(tipo, mensagem, destino: String);
    procedure fechaPrograma();
    procedure enviaEmail(modeloEmail: Integer; assunto: String; destinatarioEmail: String; destinatarioNome: String; anexo: String; texto: String);
    procedure enviaBoletoEmail(id_conta: integer);
    procedure ConvertJPG_BMP(xFile: string);
    function Ping(): boolean;

  end;

var
  PRINCIPAL: TPRINCIPAL;
  DSLog: TDataSource; //COMPONENTE USADO NAS TABS DE LOG DURANTE O SISTEMA
  varSQLLog: TZQuery; //COMPONENTE USADO NAS TABS DE LOG DURANTE O SISTEMA
  varAte, varA: Smallint; //Variaveis de busca
  funcao: string; //RECUPERA A FUNÇÃO QUE ESTÁ SENDO EXECUTADA PARA GRAVAR NO RELATÓRIO DE ERROS.
  Ordenacao: String; //VERIFICA A ORDENAÇÃO DA GRID ASSIM QUE O USUÁRIO ESCOLHE A COLUNA.
  maximizado: boolean; //VERIFICA SE O FORMULÁRIO ESTÁ MAXIMIZADO PARA DEPOIS VOLTAR A SUA POSIÇÃO NORMAL
  AluguelContrato: Integer; //APAGAR FUTURAMENTE!
  AluguelImovel: Integer; //APAGAR FUTURAMENTE!
  tamanho_arquivo: Integer; //CALCULA O MONTANTE QUE JÁ FOI FEITO DOWNLOAD DA ATUALIZAÇÃO
  FOTO, THREAD: String; //USADOS NA THREAD PARA EXPORTAÇÃO (VER SE DÁ PARA RETIRAR ESSAS VARIÁVEIS FUTURAMENTE)
  ThreadExporta: ThreadBanco; //USADO PARA EXPORTAR OS DADOS PARA A INTERNET
  Administrador: Boolean;//Usado para mostrar se é um administrador ou não do sistema. (Efetua ações específicas)
  Titulo: String; //Titulo do sistema, para casos de mostrar texto no campo de título, e não perder o conteúdo original



implementation

uses FrmUsuario, FrmEmpresa, FrmLOGIN, FrmCidades,
  FrmEstados, FrmPessoa, FrmBairros, FrmLogradouro, FrmEnderecoTipo,
  FrmTipoPessoa, FrmOcupacao, FrmImovel, FrmTipoImovel, FrmCaracteristicaImovel,
  FrmAluguel, FrmEmitirAnuncio, FrmDM_Cadastro,
  FrmMatriz, unMsg, FrmDM_ADMIN, unCamposBusca, unImagem,
  FrmDM_FINANCEIRO, FrmCheques,
  FrmFluxoCaixa, FrmSobre, FrmSPLASH, FrmChaves,
  FrmConjuge, FrmNoMatriz, FrmDM_REL, StrUtils, unUtilitario,
  FrmCaixas, FrmCaixasSimples, unINI, unErros, FormBrowser, FrmCentralSQL,
  FrmCaixasConfig, FrmSistema, FrmLog, FrmPainel, FrmConfBoleto, unLog, unWord,
  thrContratos, untfrmproutupdate, FrmMensagem, unSeguranca, unConfiguracao;
  //FrmAnuncio, FrmPermUser, FrmRelFinanceiro

{$R *.dfm}

function TPRINCIPAL.Ping(): boolean;
var sql1, sql2: TZQuery;
Begin

     try
        sql1 := TZQuery.Create(self);
        sql1.Connection := PRINCIPAL.Conexao;
        sql1.SQL.Add('select 1 from rdb$database');
        sql1.Open;

        sql2 := TZQuery.Create(self);
        sql2.Connection := PRINCIPAL.Conexao_log;
        sql2.SQL.Add('select 1 from rdb$database');
        sql2.Open;

        if (sql1.RecordCount = 1) AND (sql2.RecordCount = 1) then
           result := TRUE
        else
            result := FALSE;

         sql1.Close;
         sql2.Close;

         FreeAndNil(sql1);
         FreeAndNil(sql2);
     except
           //FreeAndNil(sql1);
           //FreeAndNil(sql2);
           result := FALSE;
     end;

end;

procedure TPRINCIPAL.enviaBoletoEmail(id_conta: integer);
Var varSQL: TZQuery;
    arquivo: String;
    //id_pessoa: integer;
Begin

     //if id_pessoa = 0 then
     //   exit;

     if id_conta = 0 then
        exit;

     varSQL := unUtilitario.getSelect('select p.YAHOO, p.EMAIL, p.NOME from caixa_entrada ce inner join pessoa p on p.id_pessoa = ce.id_pessoa where ce.id_caixa = '+IntToStr(id_conta));

     if varSQL.RecordCount = 0 then
     begin
          varSQL.Close;
          FreeAndNil(varSQL);
          exit;
     end;

     Randomize;
     arquivo := IntToStr(1 + Random(100));
     arquivo := 'CONTA_'+IntToStr(id_conta)+'_BOLETO_'+arquivo+'.bmp';
     arquivo := ExtractFilePath(ParamStr(0))+'REL\img\'+arquivo;

     //PRINCIPAL.preparaBoleto(id_conta, TRUE).ImagemBoleto.Picture.SaveToFile(arquivo);
     PRINCIPAL.preparaBoleto(id_conta, FALSE).ImagemBoleto.Picture.SaveToFile(arquivo);
     //PRINCIPAL.Boleto.Visualizar;
     //PRINCIPAL.Boleto.;

     if not varSQL.FieldByName('email').IsNull then
        if Length(Trim(varSQL.FieldByName('email').AsString)) > 0 then
        begin
             PRINCIPAL.enviaEmail(0, 'BOLETO '+getConf('EMPRESA_FANTASIA'), varSQL.FieldByName('email').AsString, varSQL.FieldByName('nome').AsString, arquivo, 'VIMOS POR MEIO DESTE E-MAIL INFORMAR QUE O BOLETO DE PAGAMENTO ENCONTRA-SE ANEXO.');
        end;

     if not varSQL.FieldByName('yahoo').IsNull then
        if Length(Trim(varSQL.FieldByName('yahoo').AsString)) > 0 then
        begin
             PRINCIPAL.enviaEmail(0, 'BOLETO '+getConf('EMPRESA_FANTASIA'), varSQL.FieldByName('yahoo').AsString, varSQL.FieldByName('nome').AsString, arquivo, 'VIMOS POR MEIO DESTE E-MAIL INFORMAR QUE O BOLETO DE PAGAMENTO ENCONTRA-SE ANEXO.');
        end;

     varSQL.Close;
     FreeAndNil(varSQL);
end;


procedure TPRINCIPAL.enviaEmail(modeloEmail: Integer; assunto: String; destinatarioEmail: String; destinatarioNome: String; anexo: String; texto: String);
VAR SQL: TZQuery;
    //Email: TIdMessage;
    TextoMail: TIdText;
    Html: TIdText;
    AnexoMail: TIdAttachmentFile;

    idSMTP1X: TIdSMTP;
    idmessage1X: TIdMessage;
    //textomsg: TidText;
    IdSSL: TIdSSLIOHandlerSocketOpenSSL;
Begin

     if Length(Trim(destinatarioEmail)) = 0 then
        exit;

     sql := unUtilitario.getSelect('select 1 as resultado from pessoa where lower(email) = lower('''+destinatarioEmail+''') and maladireta = ''NAO'' ');

     if not sql.FieldByName('resultado').IsNull then
     Begin
          sql.Close;
          exit;
     end;

     sql := unUtilitario.getSelect('select 1 as resultado from pessoa where lower(yahoo) = lower('''+destinatarioEmail+''') and maladireta = ''NAO'' ');

     if not sql.FieldByName('resultado').IsNull then
     Begin
          sql.Close;
          exit;
     end;

   try 
      idSMTP1X := TIdSMTP.create(nil); 
      idmessage1X := TIdMessage.create(nil);

      // configura servidor SMTP 
      idSMTP1X.Host := smtpServidor;
      idSMTP1X.Username := smtpUsuario;
      idSMTP1X.Password := smtpSenha;
      idSMTP1X.ConnectTimeout := 10000; //20000 

      // configurações adicionais servidor SMTP com autenticação 
      with idSMTP1X do 
      begin 
         IdSSL := nil; 
         try 
            port := smtpPorta; 
            IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
            //idSMTP1X.IOHandler := IdSSL; 
            //UseTLS := utUseImplicitTLS; 
         except 
            on E: Exception do 
            begin
               IOHandler := TIdIOHandler.MakeDefaultIOHandler( nil ); 
               UseTLS := utNoTLSSupport;
            end; 
         end; 
         if Assigned(IdSSL) then 
         begin 
            IdSSL.SSLOptions.Method := sslvTLSv1; 
            IdSSL.SSLOptions.Mode := sslmUnassigned; 
         end; 
      end; 
      idSMTP1X.AuthType := IdSMTP.atDefault;

      // configurando mensagem 
      idmessage1X.Clear;
      idmessage1X.CharSet:='iso-8859-1';
      idmessage1X.Encoding := MeMIME;
      idmessage1X.ContentType:='multipart/mixed';
      idmessage1X.Subject := UpperCase(assunto)+' ('+LowerCase(getConf('EMPRESA_EMAIL'))+')';
      idmessage1X.From.Name := getConf('EMPRESA_FANTASIA');
      idmessage1X.From.Address := LowerCase(smtpFrom); // email de origem
      idmessage1X.ReplyTo.EMailAddresses := LowerCase(getConf('EMPRESA_EMAIL'));
      idmessage1X.Recipients.EmailAddresses := LowerCase(destinatarioEmail); // email de destino

      // Corpo da Mensagem (use aqui um HTML ou texto que deseja enviar
      // juntamente com a mensagem.
      //TextoMail := TIdText.Create(idmessage1X.MessageParts);
      //TextoMail.Body.Text := UpperCase(texto);
      //TextoMail.ContentType := 'text/html'; //text/plain

      if modeloEmail = 0 then
      begin
        Html := TIdText.Create(idmessage1X.MessageParts);
        Html.Body.Text := '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">'+
        '<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="Content-Language" content="pt-br" /></head>'+
        '<table align="center" border="0" cellpadding="0" cellspacing="1" style="width:100%">'+
        '<tbody><tr><td>'+
        '<h1>'+getConf('EMPRESA_FANTASIA')+'</h1>'+
			  '<p>Olá <strong>'+UpperCase(destinatarioNome)+'</strong>, este e-mail está sendo enviado de forma automática através do nosso sistema interno. Se caso desejar responder, favor entrar em contato diretamente com a nossa imobiliária através do e-mail ( '+LowerCase(getConf('EMPRESA_EMAIL'))+' ) ou pelo(s) telefone(s) '+getConf('EMPRESA_TELEFONE')+'. Voc&ecirc; ainda pode entrar em contato conosco usando o formulário de contato em nosso <a href="http://'+LowerCase(getConf('EMPRESA_HOMEPAGE'))+'">site clicando aqui</a>.</p>'+
			  '</td><td><h1><img src="http://i.imgur.com/vAQgJHi.jpg" style="height:200px; width:160px" /></h1>'+
			  '</td></tr><tr><td><strong>Mensagem:</strong><br >'+UpperCase(texto)+'<br ></td><td>&nbsp;</td></tr><tr><td><br ><br ><strong>Informativo:</strong><br >'+
			  '<small>Caso não deseje receber nossos informativos, entre em contato com a nossa imobiliária ou clique no link abaixo:</small></td>'+
			  '<td>&nbsp;</td></tr></tbody></table></html>';
        Html.ContentType := 'text/html';
      end;

        if Length(Trim(Anexo)) > 0 then
        Begin
             AnexoMail := TIdAttachmentFile.Create(idmessage1X.MessageParts, Anexo);
             AnexoMail.ContentType := 'application/pdf;';
             AnexoMail.Headers.Add('Content-ID: <1234567890>');
        end;


      idSMTP1X.Connect;
      idSMTP1X.Authenticate;
      idSMTP1X.send(idmessage1X);
      idSMTP1X.Disconnect; 

      PRINCIPAL.setMensagem('Processo concluído!');
   finally
      idmessage1X.Free; 
      idSSL.Free; 
      idSMTP1X.Free;
   end;


end;


function TPRINCIPAL.preparaBoleto(Id_Caixa: Integer; Individual: Boolean; bGeracaoRemessa : Boolean = False): TgbTitulo;
Var varCaixa, varPessoa, varImovel, varSQL, varRelacionados: TZQuery;
    OPERACAO, TEXTO, VALOR, DESCRICAO: STRING; //SQL
    VALORCALCULADO: Currency; //DESCONTO
begin
     If NOT Id_Caixa > 0 then
     begin
          unUtilitario.setMensagem('ERRO NO BOLETO: '+IntToStr(Id_Caixa)+'! SEM CÓDIGO!','erro');
          result := Boleto;
          Exit;
     end;

       // PRINCIPAL.IdMessage1.Body.Clear;

try
       VALORCALCULADO := 0.0;
       //DESCONTO := 0.0;
       DESCRICAO := '';
     //FORMATAÇÃO DO BOLETO
     //Boleto.Logo := getBoleto('CampoLogo');
     if getBoleto('CampoEmissao') = 'ebClienteEmite' then
        Boleto.EmissaoBoleto := ebClienteEmite
     else
         if getBoleto('CampoEmissao') = 'ebBancoEmite' then
            Boleto.EmissaoBoleto := ebBancoEmite
       else
           if getBoleto('CampoEmissao') = 'ebBancoReemite' then
              Boleto.EmissaoBoleto := ebBancoReemite
           else
               if getBoleto('CampoEmissao') = 'ebBancoNaoReemite' then
                  Boleto.EmissaoBoleto := ebBancoNaoReemite;

     if bGeracaoRemessa then
          Boleto.TipoOcorrencia := toRemessaRegistrar;

     Boleto.Carteira := getBoleto('CampoCarteira');
     Boleto.AceiteDocumento := adNao;
     Boleto.Cedente.ContaBancaria.CodigoAgencia := getBoleto('CampoAgencia');
     Boleto.Cedente.ContaBancaria.DigitoAgencia := getBoleto('CampoAgenciaDigito');
     Boleto.NumeroConvenio := getBoleto('CampoConvenio');
     Boleto.ConvenioLider := getBoleto('CampoConvenio');
     Boleto.Cedente.AgenciaCedente := getBoleto('CampoAgencia');

     Boleto.Cedente.CodigoCedente := getBoleto('CampoCodigoCedente');
     Boleto.Cedente.DigitoCodigoCedente := getBoleto('CampoDigitoCodigo');

     Boleto.Cedente.ContaBancaria.DigitoConta := getBoleto('CampoContaDigito');
     Boleto.Cedente.ContaBancaria.NomeCliente := getBoleto('CampoNome');
     Boleto.Cedente.ContaBancaria.NumeroConta := getBoleto('CampoConta');
     Boleto.Cedente.ContaBancaria.Banco.Codigo := unUtilitario.IDCampoSTR(getBoleto('CampoBanco'));
     Boleto.Cedente.Endereco.Bairro := getBoleto('CampoBairro');
     Boleto.Cedente.Endereco.CEP := getBoleto('CampoCEP');
     Boleto.Cedente.Endereco.Cidade := getBoleto('CampoCidade');
     Boleto.Cedente.Endereco.Complemento := getBoleto('CampoComplemento');
     Boleto.Cedente.Endereco.EMail := getBoleto('CampoEmail');
     Boleto.Cedente.Endereco.Estado := getBoleto('CampoUF');
     Boleto.Cedente.Endereco.Numero := getBoleto('CampoNumero');
     Boleto.Cedente.Endereco.Rua := getBoleto('CampoRua');
     Boleto.Cedente.Nome := getBoleto('CampoRemetente');
     Boleto.Cedente.NumeroCPFCGC := getBoleto('CampoCPF');
     if getBoleto('CampoInscricao') = 'tiPessoaFisica' then
        Boleto.Cedente.TipoInscricao := tiPessoaFisica
     else
         Boleto.Cedente.TipoInscricao := tiPessoaJuridica;
     Boleto.DataProcessamento := Date();
     Boleto.DataDocumento := Date();
     Boleto.LocalPagamento := getBoleto('CampoLocal');
     //Boleto.NossoNumero := getBoleto('CampoNossoNumero') + preparaNumeroBoleto(IntToStr(Id_Caixa));
     Boleto.NossoNumero := Formatar(IntToStr(Id_Caixa),7,false,'0');
     Boleto.SeuNumero := IntToStr(Id_Caixa);

     varCaixa := unUtilitario.getSelect('select ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORCALCULADO from caixa_entrada ce where ce.id_caixa = '+IntToStr(Id_Caixa));

     varRelacionados := unUtilitario.getSelect('select ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORCALCULADO from caixa_ENTRADA ce where ce.id_pessoa = '+varCaixa.FieldByName('id_pessoa').AsString+' and (ce.id_imovel = '+varCaixa.FieldByName('id_imovel').AsString+' or ce.id_imovel is null) and ce.data_ref = '''+formataDataSQL(varCaixa.FieldByName('data_ref').AsString)+''' and ce.pendente = ''NAO'' and ce.ativo = ''SIM'' and ce.data_pgto is null ');

     Boleto.Instrucoes.Clear;
     while not varRelacionados.Eof do
     Begin
          VALORCALCULADO := VALORCALCULADO + varRelacionados.FieldByName('VALORCALCULADO').AsCurrency;
          Boleto.Instrucoes.Add(varRelacionados.FieldByName('ID_CAIXA').AsString +'-'+ varRelacionados.FieldByName('DOCUMENTO').AsString + ' PARCELA '+varRelacionados.FieldByName('PARCELA').AsString+'. IMÓVEL '+varRelacionados.FieldByName('ID_IMOVEL').AsString+'. '+getCurrToStr(varRelacionados.FieldByName('VALORCALCULADO').AsCurrency, true));
          varRelacionados.Next;
     end;

     //CHECA CAIXA SAIDA
     varRelacionados := unUtilitario.getSelect('select ce.*, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORCALCULADO from caixa_SAIDA ce where ce.id_pessoa = '+varCaixa.FieldByName('id_pessoa').AsString+' and (ce.id_imovel = '+varCaixa.FieldByName('id_imovel').AsString+' or ce.id_imovel is null) and ce.data_ref = '''+formataDataSQL(varCaixa.FieldByName('data_ref').AsString)+''' and ce.pendente = ''NAO'' and ce.ativo = ''SIM'' and ce.data_pgto is null ');

     while not varRelacionados.Eof do
     Begin
          VALORCALCULADO := VALORCALCULADO - varRelacionados.FieldByName('VALORCALCULADO').AsCurrency;
          Boleto.Instrucoes.Add(varRelacionados.FieldByName('ID_CAIXA').AsString +'-'+ varRelacionados.FieldByName('DOCUMENTO').AsString + ' PARCELA '+varRelacionados.FieldByName('PARCELA').AsString+'. IMÓVEL '+varRelacionados.FieldByName('ID_IMOVEL').AsString+'. -'+getCurrToStr(varRelacionados.FieldByName('VALORCALCULADO').AsCurrency, true));

          OPERACAO := desmarcarBoletos(varRelacionados.FieldByName('OPERACAO').AsString);
          TEXTO := varRelacionados.FieldByName('ANOTACAO').AsString + ' CÓDIGO DA CONTA ENTRADA RELACIONADA NO BOLETO = '+IntToStr(Id_Caixa)+'.';

          varSQL := unUtilitario.getSQL('UPDATE caixa_SAIDA set id_categoria = 27, documento = documento || '', anotacao = '''+TEXTO+''' , operacao = '''+OPERACAO+''' || '' [BOLETO_EMITIDO '+DateToStr(Date)+' '+TimeToStr(Time)+' U:'+getUser('USUARIO')+' N:'+getBoleto('CampoNossoNumero') + preparaNumeroBoleto(IntToStr(Id_Caixa))+' B:'+getBoleto('CampoBanco')+' ]'', data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+' where id_caixa = '+varRelacionados.FieldByName('ID_CAIXA').AsString);
          varSQL.ApplyUpdates;

          varRelacionados.Next;
     end;

     varRelacionados.Close;

     Boleto.Instrucoes.Add('APOS O VENCIMENTO, MULTA DE '+formataDinheiroSQL(varCaixa.FieldByName('VALOR_MULTA').AsString)+'% MAIS JUROS DE MORA DE '+formataDinheiroSQL(varCaixa.FieldByName('VALOR_JUROS').AsString)+'% AO DIA.');

     Boleto.Instrucoes.Add(getBoleto('CampoLinha1'));
     Boleto.Instrucoes.Add(getBoleto('CampoLinha2'));
     Boleto.Instrucoes.Add(getBoleto('CampoLinha3'));
     Boleto.Instrucoes.Add(getBoleto('CampoLinha4'));


     if VALORCALCULADO <= 0 then
     begin
          varCaixa.Close;
          unUtilitario.setMensagem('ERRO NO BOLETO: '+IntToStr(Id_Caixa)+'! SEM VALOR!','erro');
          result := Boleto;
          Exit;
     end;



     Boleto.DataMoraJuros := varCaixa.FieldByName('DATA_REF').AsDateTime;
     Boleto.DataVencimento := varCaixa.FieldByName('DATA_REF').AsDateTime;
     Boleto.ValorDocumento := VALORCALCULADO;
     Boleto.ValorMoraJuros := varCaixa.FieldByName('VALOR_JUROS').AsCurrency;
     //Boleto.ValorDesconto := varCaixa.FieldByName('VALOR_DESCONTO').AsCurrency;
     
     VALOR := CurrToStr(VALORCALCULADO);
     Boleto.NumeroDocumento := IntToStr(Id_Caixa);

     //PESSOA
     varPessoa := unUtilitario.getSelect('select p.nome, p.cpf_cnpj from pessoa p where p.id_pessoa = '+varCaixa.FieldByName('ID_PESSOA').AsString);
     Boleto.Sacado.Nome := varPessoa.FieldByName('NOME').AsString;
     Boleto.Sacado.NumeroCPFCGC := StringReplace(StringReplace(varPessoa.FieldByName('CPF_CNPJ').AsString,'-','',[rfReplaceAll]),'.','',[rfReplaceAll]);
     Boleto.Sacado.TipoInscricao := tiPessoaFisica;

     //IMOVEL
     if NOT varCaixa.FieldByName('ID_IMOVEL').IsNull then
     Begin
          varImovel := unUtilitario.getSelect('select l.tipo, l.nome as rua, i.numero, i.complemento, b.nome as bairro, c.nome as cidade, u.sigla as uf,'+' l.cep from imovel i inner join logradouro l on l.id_logradouro = i.id_logradouro inner join bairro b on b.id_bairro = l.id_bairro inner join cidade c on c.id_cidade = l.id_cidade inner join uf u on u.id_sigla = l.id_sigla where i.id_imovel = '+varCaixa.FieldByName('ID_IMOVEL').AsString);
          Boleto.Sacado.Endereco.Bairro := varImovel.FieldByName('BAIRRO').AsString;
          Boleto.Sacado.Endereco.CEP := StringReplace(varImovel.FieldByName('CEP').AsString,'-','',[rfReplaceAll]);
          Boleto.Sacado.Endereco.Cidade := varImovel.FieldByName('CIDADE').AsString;
          Boleto.Sacado.Endereco.Complemento := varImovel.FieldByName('COMPLEMENTO').AsString;
          Boleto.Sacado.Endereco.Estado := varImovel.FieldByName('UF').AsString;
          Boleto.Sacado.Endereco.Numero := varImovel.FieldByName('NUMERO').AsString;
          Boleto.Sacado.Endereco.Rua := varImovel.FieldByName('RUA').AsString;

          varImovel.Close;
          FreeAndNil(varImovel);
     end;

     setLog(IntToStr(Id_Caixa)+' ', 'GERA BOLETO', 'ROTINA INTERNA', varCaixa);

     //MARCANDO OS BOLETOS = LEMBRAR DE CRIAR UMA CATEGORIA COM O CÓDIGO 27 - CONTA EXTERNA!
     varSQL := unUtilitario.getSelect('select * from caixa_entrada where id_caixa = '+IntToStr(Id_Caixa));
     
     varCaixa.Close;
     varCaixa := unUtilitario.getSelect('select ce.operacao, ce.id_caixa, ce.anotacao from caixa_entrada ce where ce.id_pessoa = '+varSQL.FieldByName('id_pessoa').AsString+
     ' and ce.data_ref = '''+formataDataSQL(varSQL.FieldByName('data_ref').AsString)+''' and ce.pendente = ''NAO'' and ce.ativo = ''SIM'' and ce.data_pgto is null ');
     varSQL.close;

     if varCaixa.RecordCount > 0 then
     Begin
          OPERACAO := desmarcarBoletos(varCaixa.FieldByName('OPERACAO').AsString);
          TEXTO := varCaixa.FieldByName('ANOTACAO').AsString + ' NUMERO DE CONTAS EMITIDAS JUNTAS EM UM BOLETO = '+IntToStr(varCaixa.RecordCount)+'. SOMA TOTAL DOS BOLETOS = $'+CurrToStr(Boleto.ValorDocumento)+ '. CÓDIGO DAS CONTAS AGREGADAS = '+descobreIDSelect(varCaixa, 'ID_CAIXA')+'.';

          varSQL := unUtilitario.getSQL('UPDATE caixa_entrada set id_categoria = 27, documento = documento || '' | '+IntToStr(varCaixa.RecordCount)+' CONTA(S)'', anotacao = '''+TEXTO+''' , operacao = '''+OPERACAO+''' || '' [BOLETO_EMITIDO '+DateToStr(Date)+' '+TimeToStr(Time)+' U:'+getUser('USUARIO')+' N:'+getBoleto('CampoNossoNumero') + preparaNumeroBoleto(IntToStr(Id_Caixa))+' B:'+getBoleto('CampoBanco')+' ]'', data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+' where id_caixa '+descobreIDSelect(varCaixa, 'ID_CAIXA'));
          //TESTE varSQL := unUtilitario.getSQL('UPDATE caixa_entrada set id_categoria = 27, documento = documento || '' | BOLETO GERADO COM 2 CONTA(S)'', anotacao = '' SOMA DAS '+'CONTAS EMITIDAS COMO BOLETO = 2. SOMA TOTAL DOS BOLETOS = $460. CÓDIGO DAS CONTAS AGREGADAS =  in (15490 , 15491 , 0) .'' , operacao = '' [BOLETO_EMITIDO '+' 26/1/2011 09:46:31 U:ADMINISTRADOR N:0491 B:Caixa Econômica Federal - 104 ]'', data_alt = current_timestamp, id_funcionario = 1 where id_caixa  in (15490 , 15491 , 0)');

          varSQL.ApplyUpdates;
     end;

     //FECHA COMPONENTES
     varCaixa.Close;
     varPessoa.Close;
     varSQL.Close;
     FreeAndNil(varCaixa);
     FreeAndNil(varPessoa);
     FreeAndNil(varSQL);

     PRINCIPAL.setMensagem('Boleto '+IntToStr(Id_Caixa)+' processado...');
     //result := OPERACAO+' [BOLETO_EMITIDO '+DateToStr(Date)+' '+TimeToStr(Time)+' U:'+getUser('USUARIO')+' N:'+getBoleto('CampoNossoNumero') + preparaNumeroBoleto(IntToStr(Id_Caixa))+' B:'+getBoleto('CampoBanco')+' ]';
     result := Boleto;
Except
      on e: Exception do
      begin
           unUtilitario.setMensagem('ERRO NO BOLETO: '+IntToStr(Id_Caixa)+'!'+#13+e.Message,'erro');
           result := Boleto;
      end;
end;

end;

procedure TPRINCIPAL.setMensagem(recado: String);
begin
     LabelInformacao.Caption := recado;
     LabelInformacao.Repaint;
end;

procedure TPRINCIPAL.setFuncao(nomeFuncao: String);
begin
     funcao := nomeFuncao;
end;

function TPRINCIPAL.getFuncao(): String;
begin
     if funcao = '' then
        result := 'FUNCAO NAO CATALOGADA'
     else
         result := funcao;
end;

function TPRINCIPAL.GetVersaoArq: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;

begin
  VerInfoSize := GetFileVersionInfoSize(PChar(
    ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,
    VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue),
    VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(
      dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(
      dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(
      dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TPRINCIPAL.Usurio1Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     
     if not verificaPermissao('ARQUIVOS >> SISTEMA >> USUÁRIO = FORMULARIO') then
        Exit;
        
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE USUÁRIOS') then
        CriarForm(TCAD_Usuario, PRINCIPAL, '0');
end;

function TPRINCIPAL.validarProprietario(codigo: Integer): boolean;
begin
  dm_cadastro.zqaux.Close;
  dm_cadastro.zqaux.SQL.Clear;
  dm_cadastro.zqaux.SQL.Add('select * from pessoa where id_pessoa = ' + inttostr(codigo) +' ');

  try
    dm_cadastro.zqaux.Open;
    if dm_cadastro.zqaux.recordcount = 1 then
      result := true
    else
      result := false;
  except
    result := false;
  end;

  dm_cadastro.zqaux.close;
end;

procedure TPRINCIPAL.setErro(Sender: TObject; E: Exception);
begin
     try
        If
          (StrPos(pchar(E.Message), 'Unable to complete network request to host') <> nil) OR
          (StrPos(pchar(E.Message), 'unavailable database') <> nil)
        then
        Begin
              unUtilitario.setMensagem('Caro usuário, favor logar no sistema novamente...','informa');
              setUser('LOGIN_SERVIDOR', StringReplace(getUser('LOGIN_SERVIDOR'),'_','',[rfReplaceAll]));
              btnLogoffClick(Sender);
        end
        ELSE
        If
          (StrPos(pchar(E.Message), 'System Error.  Code: 1400.') <> nil) OR //PROBLEMA AO FECHAR O SISTEMA - POSSÍVEL CAUSAS = THREADS!
          (StrPos(pchar(E.Message), 'External exception C0000008') <> nil)
        then
        Begin
             PRINCIPAL.Close;
        end
        ELSE
            unUtilitario.setMensagem('O SISTEMA IDENTIFICOU UM ERRO:'+#13+#13+E.Message,'erro');

     except
           unUtilitario.setMensagem('O sistema detectou instabilidades no servidor e não identificamos a causa.'+#13+'Verifique os passos ou tente efetuar o login novamente.'+#13+'1º) Verifique as configurações do seu servidor.'+#13+'2º) Inicie o serviço do Firebird em "Painel de controle".'+#13+'3º) Libere a porta 3050 do firewall.'+#13+'4º) TENTE SE CONECTAR NOVAMENTE SEM O "_".','informa');
           setUser('LOGIN_SERVIDOR', StringReplace(getUser('LOGIN_SERVIDOR'),'_','',[rfReplaceAll]));
           btnLogoffClick(Sender);
     end;
end;

procedure TPRINCIPAL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     try

        usuarioLogadoRetira(); //CONTROLE DE USUARIO.

        leitorMensagem.Enabled := False;
        ExportarWeb.Enabled := False;
        checaConexao.Enabled := False;
        Conexao_log.Disconnect;
        MySQL.Disconnect;
        Conexao.Disconnect;

        Action := caFree;
        Halt;
     except
           Application.Terminate;           
     end;
end;

procedure TPRINCIPAL.fechaPrograma();
begin
     PRINCIPAL.Close;
end;

procedure TPRINCIPAL.FormCreate(Sender: TObject);
begin
     PRINCIPAL.Conexao.Disconnect;
     
     LabelData.Caption := FormatDateTime('"Hoje é "dddd", "d" de "mmmm" de "yyyy', Date);

     MAXIMIZADO := FALSE;

     //ATUALIZAÇÃO AUTOMÁTICA
     //AtualizarSistema.Enabled := True;
     ExportarWeb.Enabled := True;

     //Controle de erros do sistema
     Application.OnException := setErro;
     SELECAO := TStringList.Create();
     PanelRodape.DoubleBuffered := True;

     varSQLLog := TZQuery.Create(self);
     varSQLLog.Connection := Conexao_log;

     Titulo := Application.Title;
     painel.Visible := False;
     painel.free;
     FreeAndNil(painel);
     abaAlertas.Visible := False;
end;



procedure TPRINCIPAL.FormShow(Sender: TObject);
//var varSQL: TZQuery;
begin
     verificarBanco();

     leitorMensagemTimer(Sender); //Verifica msg no sistema para esta pessoa;
end;

procedure TPRINCIPAL.verificarBanco();
Var varSQL: TZQuery;
//data: TDate;
begin

     varSQL := unUtilitario.getSelect('SELECT ID_LOG FROM LOG WHERE ACAO = ''BKP'' AND ATIVO = ''SIM'' AND cast(DATA as DATE) <= current_date');

     if NOT (varSQL.Fields[0].IsNull) then
     Begin
          PRINCIPAL.LimparBackup1.Caption := 'Limpar Backup [OK]';
          SpeedBackup.Visible := False;
     end
     else
     Begin
          PRINCIPAL.LimparBackup1.Caption := 'Limpar Backup';
          SpeedBackup.Visible := True
     end;

     if NOT (varSQL.Fields[0].IsNull) AND (PRINCIPAL.Conexao.Database = firebirdAlias+'2') then
     Begin
          PRINCIPAL.Conexao.Disconnect;
          setUser('LOGIN_SERVIDOR', StringReplace(getUser('LOGIN_SERVIDOR'),'_','',[rfReplaceAll]));
          Login.conectaBanco(firebirdAlias, getUser('LOGIN_SERVIDOR'), firebirdUsuario, firebirdSenha);
          PRINCIPAL.setMensagem('ATENÇÃO! PROCURE SEMPRE VERIFICAR OS DADOS ANTES DE EFETUAR QUALQUER AÇÃO.');
          PRINCIPAL.SpeedBackup.Visible := False;
     End;

     
     principal.Caption := getConf('EMPRESA_FANTASIA')+ ' - '+LowerCase(Conexao.Database)+' v(' + getVersaoArq()  + ') -  '+celulaNome+' '+celulaTelefone;
     varSQL.Close;
     FreeAndNil(varSQL);

end;

procedure TPRINCIPAL.Franca1Click(Sender: TObject);
begin
     //FRANCA
     FecharTelaInteira1Click(Sender);

     if PopupBrowser.Items.Find('Tela Inteira').Checked Then
     begin
          criaBrowser();
          WebBrowser1.Navigate('http://maps.google.com/maps?f=q&hl=pt-BR&geocode=&q=franca,+sp&ie=UTF8&ll=-20.535318,-47.402787&spn=0.021822,0.037594&z=15');
     end
     Else
     Begin
          Application.CreateForm(TFrmBrowser,FrmBrowser);
          FrmBrowser.setSite('http://maps.google.com/maps?f=q&hl=pt-BR&geocode=&q=franca,+sp&ie=UTF8&ll=-20.535318,-47.402787&spn=0.021822,0.037594&z=15');
     End;
end;

procedure TPRINCIPAL.Fundo_MenuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     setMensagem(' ');
     
     if NOT checaConexao.Enabled then
        checaConexao.Enabled := True;
end;

procedure TPRINCIPAL.PopupBrowserPopup(Sender: TObject);
begin
     if getTela('BROWSER_TELA_INTEIRA') = 'NULO' Then
     Begin
          PopupBrowser.Items.Find('Tela Inteira').Checked := True;
          setTela('BROWSER_TELA_INTEIRA','SIM');
     End
     else
     Begin
          if getTela('BROWSER_TELA_INTEIRA') = 'SIM' then
             PopupBrowser.Items.Find('Tela Inteira').Checked := True
          else
              PopupBrowser.Items.Find('Tela Inteira').Checked := False;
     End;
end;

procedure TPRINCIPAL.RecuperaodeImagens1Click(Sender: TObject);
begin
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE RECUPERAÇÃO DE IMAGENS') then
     if unUtilitario.setMensagem('Deseja recuperar fotos apagadas de todos os imóveis?'+#13+'Recomendamos estar conectado via rede local com o servidor do sistema, e que tudo já esteja funcionando corretamente com o sistema.'+#13+'Este procedimento irá verificar se alguma imagem foi apagada do sistema, e que ainda tenha o arquivo físico no computador.'+#13+'Deseja continuar?','confirma') = IDYES then
        recuperaImagem();

end;

procedure TPRINCIPAL.RecuperarBackup1Click(Sender: TObject);
Var nomeDocumento, modelo: string;
begin

     if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE RECUPERAR BACKUP') then
        exit;

     If unUtilitario.setMensagem('O arquivo RECUPERADO será criado em outro local "'+ExtractFilePath(ParamStr(0))+'recuperado_IMOBILIARIA.CDS".'+#13+'Ou seja, você NÃO irá perder nenhuma informação atual seguindo esse processo.'+#13+'DESEJA CONTINUAR?'+#13+
     '(Os arquivos de RECUPERAÇÃO DO SISTEMA se encontram nos diretórios "'+getConf('BKP_DESTINO1')+'" ou "'+getConf('BKP_DESTINO2')+'") '+#13+
     '(Caso não encontre os arquivos ".BKP", entre em contato imediatamente com o nosso suporte técnico!)','confirma') = IDYES Then
     Begin
           pegaDocumento.Execute;

           IF pegaDocumento.FileName <> '' THEN
           Begin
                modelo := pegaDocumento.FileName;
                nomeDocumento := ExtractFileName(pegaDocumento.FileName);
           End
           else
           Begin
                unUtilitario.setMensagem('Arquivo não encontrato. Procure por um arquivo .BKP em '+getConf('BKP_DESTINO1')+' ou '+getConf('BKP_DESTINO2')+' na máquina SERVIDORA.'+#13+' Ou caso não tenha esses arquivos em sua empresa. Entre em contato com o nosso suporte imediatamente.','informa');
                exit;
           end;

           WinExec(pchar(ExtractFilePath(ParamStr(0))+'gbak -create -rep -o -v -p 4096 -user '+firebirdUsuario+' -password '+firebirdSenha+' "'+nomeDocumento+'" "'+ExtractFilePath(ParamStr(0))+'recuperado_IMOBILIARIA.CDS"'), SW_SHOWMAXIMIZED);

           espera(10,'Recuperando backup do banco...');

           unUtilitario.setMensagem(
           '==> ESPERE FECHAR A JANELA DE PROCESSOS (TELA PRETA) QUE SE ABRIU E SIGA OS PASSOS:'+#13+
           '1º) Feche todos os sistemas que estão acessando o sistema Célula Imobiliária.'+#13+
           '2º) O arquivo RECUPERADO neste momento estará localizado em "'+ExtractFilePath(ParamStr(0))+'recuperado_IMOBILIARIA.CDS"'+#13+
           '3º) Copie o arquivo "recuperado_IMOBILIARIA.CDS" para a pasta "DB" da instalação'+#13+
           'deste sistema no SERVIDOR, geralmente "'+ExtractFilePath(ParamStr(0))+'DB\".'+#13+
           '4º) Renomeie o arquivo encontrado em "'+ExtractFilePath(ParamStr(0))+'DB\IMOBILIARIA.CDS" para "atual_IMOBILIARIA.CDS"'+#13+
           '5º) Renomeie o arquivo "'+ExtractFilePath(ParamStr(0))+'DB\recuperado_IMOBILIARIA.CDS" para "IMOBILIARIA.CDS"'+#13+
           'PRONTO. Agora ligue o sistema e verifique os dados. Caso queira voltar ao estado original,'+#13+
           ' retire o texto "atual_" do arquivo (mas NUNCA delete qualquer arquivo, apenas renomeie os).'
           ,'informa');
     end;
     
end;

procedure TPRINCIPAL.RelatriodeAlteraes1Click(Sender: TObject);
begin
     //Relatório de mudanças do sistema
     FecharTelaInteira1Click(Sender);

     criaBrowser();
     WebBrowser1.Navigate('http://www.celuladigital.com.br/sistemas/imobiliaria/rss/');
end;

procedure TPRINCIPAL.Empresa1Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     

     if not verificaPermissao('ARQUIVOS >> SISTEMA >> EMPRESA = FORMULARIO') then
        Exit;

     if verificaPermissaoAdministrador('ENTRAR NA TELA DE EMPRESA') then
        CriarForm(TCAD_Empresa, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.EnviarMensagem1Click(Sender: TObject);
begin

     with TCAD_Mensagem.Create(Application) do
     try
        ShowModal;
     finally
            Free;
     end;

     //Application.CreateForm(TCAD_Mensagem,CAD_Mensagem);
     //CAD_Mensagem.ShowModal;
end;

procedure TPRINCIPAL.btnLogoffClick(Sender: TObject);
begin
     usuarioLogadoRetira();

     leitorMensagem.Enabled := False;
     ExportarWeb.Enabled := False;
     checaConexao.Enabled := False;

     Conexao.Disconnect;
     Conexao_log.Disconnect;
     Application.CreateForm(TLogin, Login);
     Login.ShowModal;
end;

procedure TPRINCIPAL.SpeedButton12Click(Sender: TObject);
begin
     CaixasSimples1Click(Sender);
end;

procedure TPRINCIPAL.Estado1Click(Sender: TObject);
begin
     CriarForm(TCAD_Estados, PRINCIPAL,'0');

end;

procedure TPRINCIPAL.Estouconectado1Click(Sender: TObject);
begin
     try
        conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);
        unUtilitario.setMensagem('Se caso não mostrou nenhuma msg de erro, Banco remoto conectado!','informa');
        conectaFTP(ftpImoveisServidor,ftpImoveisUsuario,ftpImoveisSenha);
        unUtilitario.setMensagem('Se caso não mostrou nenhuma msg de erro, FTP está conectado!','informa');

     finally
            PRINCIPAL.MySQL.Disconnect;
            PRINCIPAL.ObjFTP.Disconnect;
            FreeAndNil(ThreadExporta);
            unUtilitario.setMensagem('Fim da verificação!','informa');
     end;
end;

procedure TPRINCIPAL.EtiquetasEmpresariais1Click(Sender: TObject);
var
   folhas: string;
   varSQL: TZQuery;
   I: INTEGER;
begin
     try
        //Etiqueta da empresa 
        etiqueta.CreateDataSet;
        etiqueta.Open;
        etiqueta.EmptyDataSet;

        folhas := InputBox('IMPRESSÃO DE ETIQUETAS','Informe quantas folhas deseja imprimir.', '1');

        if NOT verificaStringInt(folhas) Then
        Begin
             unUtilitario.setMensagem('Entre somente com números!','erro');
             Exit;
        End;

        varSQL := unUtilitario.getSelect('select FIRST 1 E.nome_fantasia AS NOME, E.rua, E.numero, E.bairro, E.cidade, E.cep from empresa E WHERE E.ativo = ''SIM''');

        for I := 1 to StrToInt(FOLHAS) * 30 do
        begin
             etiqueta.Append;
             etiqueta.FieldByName('NOME').AsString := varSQL.FieldByName('NOME').AsString;
             etiqueta.FieldByName('RUA').AsString := varSQL.FieldByName('RUA').AsString;
             etiqueta.FieldByName('NUMERO').AsString := varSQL.FieldByName('NUMERO').AsString;
             etiqueta.FieldByName('BAIRRO').AsString := varSQL.FieldByName('BAIRRO').AsString;
             etiqueta.FieldByName('CIDADE').AsString := varSQL.FieldByName('CIDADE').AsString;
             etiqueta.FieldByName('CEP').AsString := varSQL.FieldByName('CEP').AsString;
             etiqueta.Post;
        end;

        DM_REL.RV_Query.DataSet := etiqueta;

        DM_REL.RV_IMPRESSAO.CLOSE;
        DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_ETIQUETA_POLIFIX_25X66.rav';
        principal.setLogo(dm_rel.RV_IMPRESSAO);
        DM_REL.RV_IMPRESSAO.Open;

        DM_REL.RV_IMPRESSAO.Execute;

     finally
            etiqueta.Close;
            if varSQL <> nil then
            Begin
                 varSQL.Close;
                 FreeAndNil(varSQL);
            end;
     end;
     
end;

procedure TPRINCIPAL.ExportarparaInternet1Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     
     Somenterelevantes1Click(Sender);
end;

procedure TPRINCIPAL.Exportartudo1Click(Sender: TObject);
var varMySQL, varSQL: TZQuery;
begin

     if verificaAdministrador() then
     if unUtilitario.setMensagem('Deseja efetuar a manutenção de exportação no banco de dados?'+#13+'Recomendamos esse processo somente quando ORIENTADO POR UM DE NOSSOS FUNCIONÁRIOS.','confirma') = IDYES then
     Begin

              conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);
              varMySQL := TZQuery.Create(PRINCIPAL);
              varMySQL.Connection := PRINCIPAL.MySQL;

              //LIMPA DADOS ANTIGOS
              varMySQL.SQL.Add('delete from imovel where id_empresa = '+getConf('EMPRESA_CODIGO'));
              varMySQL.ExecSQL;
              varMySQL.SQL.Clear;
              varMySQL.SQL.Add('delete from fotos where id_empresa = '+getConf('EMPRESA_CODIGO'));
              varMySQL.ExecSQL;
              varMySQL.SQL.Clear;

              varSQL := unUtilitario.getSQL('update imovel set ANUNCIAR = ''NAO'' ');
              varSQL := unUtilitario.getSQL('update imovel set ANUNCIAR = ''SIM'' where ativo = ''SIM'' and internet = ''SIM'' ');

              varSQL.Close;
              varMySQL.Close;
              FreeAndNil(varSQL);
              FreeAndNil(varMySQL);

              unUtilitario.setMensagem('Pronto! O seu website está totalmente sem registros neste momento. Faça agora a exportação normalmente, e se caso o processo falhar por algum motivo, basta clicar em EXPORTAR novamente, NÃO sendo necessário mais efetuar esta manutenção.','informa');
     end;
end;

procedure TPRINCIPAL.ExportarWebTimer(Sender: TObject);
begin
     Somenterelevantes1Click(Sender);
end;

procedure TPRINCIPAL.Cidade1Click(Sender: TObject);
begin
     CriarForm(TCAD_Cidade, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.SITE(const aAdress: String);
begin
     Application.CreateForm(TFrmBrowser,FrmBrowser);
     FrmBrowser.setSite(aAdress);
end;

procedure TPRINCIPAL.Sobre1Click(Sender: TObject);
begin
    Fsobre := TFsobre.create(self);
    try
      fsobre.showmodal;
    finally
      fsobre.free;
      fsobre := nil;
    end;
end;

procedure TPRINCIPAL.SobreoWindows1Click(Sender: TObject);
begin
     WinExec('winver', SW_SHOW);
end;

procedure TPRINCIPAL.Somenterelevantes1Click(Sender: TObject);
begin

     if getConf('EXPORTACAO_ATIVO') = 'NAO' Then
     Begin
          //PRINCIPAL.setMensagem('AS EXPORTAÇÕES NÃO ESTÃO ATIVAS PARA A SUA EMPRESA NO MOMENTO. ENTRE EM CONTATO COM A CÉLULA DIGITAL E VERIFIQUE O MOTIVO: '+celulaTelefone);
          Exit;
     End;

     if (UpperCase(getUser('SERVIDOR')) = UpperCase(getUser('MAQUINA'))) OR (getUser('SERVIDOR') = getUser('IP')) then
     Begin
          imgFerramentas.Visible := False;
          ExportarWeb.Enabled := False;
          PRINCIPAL.setMensagem('ENVIANDO INFORMAÇÕES PARA INTERNET... ACOMPANHE NA BARRA DE TÍTULO SUPERIOR TODO O PROCESSO.');

          Thread := 'RELEVANTE';
          ThreadExporta := ThreadBanco.Create(False);
     end
     else
        ExportarWeb.Enabled := False;
     
end;

procedure TPRINCIPAL.AdministraoGeral1Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     
     if not verificaPermissao('ARQUIVOS >> SISTEMA >> ADMINISTRAÇÃO GERAL = FORMULARIO') then
        Exit;
        
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE ADMINISTRAÇÃO GERAL') then
        Application.CreateForm(TPainel,Painel);
end;

procedure TPRINCIPAL.AgendaEmpresarial1Click(Sender: TObject);
begin
     unUtilitario.setMensagem('Será integrado com as datas das mensagens.'+#13+'Estamos dando os retoques finais nesse recurso, pois será integrado com o Google Calendar.','informa');
end;

procedure TPRINCIPAL.Auditoria1Click(Sender: TObject);
begin
     
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE AUDITORIA') then
     Begin
        Application.CreateForm(TFrmAuditoria, FrmAuditoria);
        FrmAuditoria.ShowModal;
     end;
end;

procedure TPRINCIPAL.AutenticarnoTwitter1Click(Sender: TObject);
Var varSQL: TZQuery;
    loginTwitter: String;
begin
         
     if verificaAdministrador then
     Begin

          varSQL := unUtilitario.getSelect('select valor from sistema where tipo = ''EMPRESA_TWITTER'' ');

          if varSQL.RecordCount <= 0 then
          Begin
               loginTwitter := StringReplace(Trim(InputBox('Configurando o Twitter','Entre com o login da empresa junto ao Twitter.com'+#13+'Depois você pode alterar essas configurações.'+#13+'Digite o LOGIN SEM O @!','')),'','',[rfReplaceAll]);

               if Length(loginTwitter) <= 0 then
               Begin
                    unUtilitario.setMensagem('O cadastro não foi feito por falta de informações de login/nome de usuário.','informa');
                    exit;
               end;

               varSQL := unUtilitario.getSQL('insert into sistema values (''EMPRESA_TWITTER'','''+loginTwitter+''')');
          end
          else
          Begin
               if Length(trim(varSQL.FieldByName('valor').AsString)) <= 0 then
               Begin
                    unUtilitario.setMensagem('Nenhum login encontrado!'+#13+'Registre um login do Twitter no formulário'+#13+'ERQUIVOS > SITEMA > CONFIGURAÇÕES > EMPRESA_TWITTER','erro');
                    exit;
               end;
               
               loginTwitter := StringReplace(Trim(varSQL.FieldByName('valor').AsString),'@','',[rfReplaceAll]);
          end;

          //AUTENTICAR A EMPRESA NO TWITTER
          FecharTelaInteira1Click(Sender);

          Application.CreateForm(TFrmBrowser,FrmBrowser);
          FrmBrowser.setSite('http://www.celuladigital.com.br/sistemas/twitter/api/?cliente='+loginTwitter);
          setConf('EMPRESA_TWITTER',loginTwitter);
          FreeAndNil(varSQL);
     end;

end;

procedure TPRINCIPAL.BackupdoSistema1Click(Sender: TObject);
begin
     if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE BACKUP DOS DADOS') then
        exit;

     IF unUtilitario.setMensagem(
     '== Backup Manual =='+#13+
     'Lembramos que o sistema efetua backup da base de dados diariamente. (Com o sistema ligado no servidor)'+#13+
     'E é também efetuado backups semanalmente, online, via FTP. (Dependendo-se da sua conexão com a internet).'+#13+
     'Os arquivos locais estão sendo enviados para:'+#13+
     getConf('BKP_DESTINO1') +#13+ getConf('BKP_DESTINO2') + #13 +
     'Último backup efetuado em: '+ getConf('BKP_DATA')+#13+
     'DESEJA EFETUAR O BACKUP DA BASE DE DADOS AGORA?'
     ,'confirma') = IDYES
     Then
     setBackup();
end;

procedure TPRINCIPAL.Bairro1Click(Sender: TObject);
begin
     CriarForm(TCAD_Bairro, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.Cadastro3Click(Sender: TObject);
begin
  If DM_Cadastro.Z_Curinga_02.Active Then
     DM_Cadastro.Z_Curinga_02.Close;

  DM_Cadastro.Z_Curinga_02.SQL.Clear;
  DM_Cadastro.Z_Curinga_02.SQL.Add('select distinct(tipo) from logradouro order by tipo');

     CriarForm(TCAD_Logradouro, PRINCIPAL,'0');

end;

procedure TPRINCIPAL.Caixas1Click(Sender: TObject);
begin
     CriarForm(TCAD_Caixas, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.CaixasSimples1Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     
    if verificaPermissao('ADMINISTRAR >> CAIXA SIMPLES = FORMULARIO') then
      if verificaPermissao('CAD_CaixasSimples') then begin
         if unUtilitario.verificaMesmaPessoa() then begin
            Application.CreateForm(TCAD_CaixasSimples, CAD_CaixasSimples);
           CAD_CaixasSimples.ShowModal;
      end;
   end;
end;

procedure TPRINCIPAL.setLogo(rave: TRvProject);
//var logo: String;
begin
  rave.SetParam('logo', '\\'+getUser('SERVIDOR')+ '\imobiliaria\IMG\DIVERSO\'+getConf('EMPRESA_LOGO'));
end;

procedure TPRINCIPAL.ConvertJPG_BMP(xFile: string);
var
   BMP: TBitmap;
   JPG: TJPegImage;
begin

     if Length(Trim(xFile)) <= 0 then
          exit;

     JPG := TJPegImage.Create;

     try
        JPG.LoadFromFile('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\IMG\IMOVEL\'+xFile);
        BMP := TBitmap.Create;
        try
           BMP.Assign(JPG);
           BMP.SaveToFile(ExtractFilePath(ParamStr(0))+'\REL\img\'+ChangeFileExt(xFile, '.bmp'));
        finally
               FreeAndNil(BMP);
        end;
     finally
            FreeAndNil(JPG);
     end;
end;

procedure TPRINCIPAL.setRelatorio(rave: TRvProject);
Var varSQL: TZQuery;
begin
     varSQL := unUtilitario.getSelect('select '+
     ' (select valor from sistema where tipo = ''EMPRESA_LOGO'') as EMPRESA_LOGO, '+
     ' (select valor from sistema where tipo = ''EMPRESA_CRECI'') as EMPRESA_CRECI, '+
     ' (select valor from sistema where tipo = ''EMPRESA_FANTASIA'') as EMPRESA_FANTASIA, '+
     ' (select valor from sistema where tipo = ''EMPRESA_SLOGAN'') as EMPRESA_SLOGAN, '+
     ' (select valor from sistema where tipo = ''EMPRESA_MENSAGEM'') as EMPRESA_MENSAGEM, '+
     ' (select valor from sistema where tipo = ''EMPRESA_TELEFONE'') as EMPRESA_TELEFONE, '+
     ' (select valor from sistema where tipo = ''EMPRESA_HOMEPAGE'') as EMPRESA_HOMEPAGE, '+
     ' (select valor from sistema where tipo = ''EMPRESA_EMAIL'') as EMPRESA_EMAIL, '+
     ' (select valor from sistema where tipo = ''EMPRESA_ENDERECO'') as EMPRESA_ENDERECO '+
     ' from RDB$DATABASE');

     //rave.SetParam('varImobiliaria', varSQL.FieldByName('EMPRESA_FANTASIA').AsString +' (Creci '+varSQL.FieldByName('EMPRESA_CRECI').AsString+')');
     rave.SetParam('varImobiliaria', varSQL.FieldByName('EMPRESA_FANTASIA').AsString);
     //rave.SetParam('varMesagem', varSQL.FieldByName('EMPRESA_MENSAGEM').AsString);
     rave.SetParam('varLogo', '\\'+getUser('SERVIDOR') + '\imobiliaria\IMG\DIVERSO\'+ varSQL.FieldByName('EMPRESA_LOGO').AsString);
     rave.SetParam('varFunc', getUser('USUARIO')+' ('+getUser('CODIGO_USUARIO')+')');
     rave.SetParam('varSlogan', varSQL.FieldByName('EMPRESA_SLOGAN').AsString);
     rave.SetParam('varImobiliariaTelefone', varSQL.FieldByName('EMPRESA_TELEFONE').AsString);
     rave.SetParam('varImobiliariaWww', varSQL.FieldByName('EMPRESA_HOMEPAGE').AsString);
     rave.SetParam('varImobiliariaEmail', varSQL.FieldByName('EMPRESA_EMAIL').AsString);
     rave.SetParam('varImobiliariaEndereco', varSQL.FieldByName('EMPRESA_ENDERECO').AsString);

     //varSQL.Close;
     FreeAndNil(VarSQL);
end;

procedure TPRINCIPAL.ipo3Click(Sender: TObject);
begin
     CriarForm(TCAD_Endereco_Tipo, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.labelQtdeMensagemMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     setMensagem('Mensagens do sistema para você!');
end;

procedure TPRINCIPAL.leitorMensagemTimer(Sender: TObject);
var consulta: TZQuery;
begin
           
try
     consulta := unUtilitario.getSelect('select 1 from log l '+
     ' where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_conta = '+getUser('CODIGO_USUARIO'));

     if (consulta.RecordCount > 0) then
     begin
          labelQtdeMensagem.Visible := true;
          labelQtdeMensagem.Caption := IntToStr(consulta.RecordCount);
          setMensagem('Mensagens para você!');
     end
     else
         labelQtdeMensagem.Visible := false;

     consulta.Close;
     FreeAndNil(consulta);
except
      unUtilitario.setMensagem('ERRO NO LEITOR DE MENSAGEM','erro');
      exit;
end;
end;

procedure TPRINCIPAL.LimparBackup1Click(Sender: TObject);
var varSQL: TZQuery;
begin

     if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE LIMPAR BACKUP') then
        Exit;

try
     PRINCIPAL.Conexao.Disconnect;
     PRINCIPAL.Conexao.Database := firebirdAlias+'2';
     PRINCIPAL.Conexao.Connect;

     varSQL := unUtilitario.getSQL('update log set ativo = ''NAO'' where ACAO = ''BKP''');
     varSQL.ExecSQL;


     PRINCIPAL.Conexao.Disconnect;
     PRINCIPAL.Conexao.Database := firebirdAlias;
     PRINCIPAL.Conexao.Connect;

     varSQL := unUtilitario.getSQL('update log set ativo = ''NAO'' where ACAO = ''BKP''');
     varSQL.ExecSQL;

finally
       setUser('LOGIN_SERVIDOR', StringReplace(getUser('LOGIN_SERVIDOR'),'_','',[rfReplaceAll]));
       FreeAndNil(varSQL);
       btnLogoffClick(Sender);
end;
end;

procedure TPRINCIPAL.ManualdoSistema1Click(Sender: TObject);
begin
     ShellExecute(0, 'open', 'http://celuladigital.com.br/sistemas/suporte/kb/index.php', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.ManutenodeImagens1Click(Sender: TObject);
begin

if verificaPermissaoAdministrador('ENTRAR NA TELA DE MANUTENÇÃO DE IMAGENS') then
     if unUtilitario.setMensagem('Deseja efetuar uma manutenção nas imagens dos imóveis no banco?'+#13+'Recomendamos estar conectado via rede local com o servidor do sistema, e que tudo já esteja funcionando corretamente com o sistema.'+#13+'Este procedimento irá verificar se alguma imagem foi apagada manualmente do servidor, e que ainda não foi retirada do sistema.'+#13+'Deseja continuar?','confirma') = IDYES then
        alinhaImagens();
end;

procedure TPRINCIPAL.MelhorarPerformance1Click(Sender: TObject);
var varSQL: TZQuery;
begin

     if NOT verificaPermissaoAdministrador('MELHORAR PERFORMANCE BANCO') then
        exit;

     //BANCO DE DADOS DE LOG - LIMPAR DADOS MAIS ANTIGOS QUE 2 ANOS
     varSQL := TZQuery.Create(self);
     varSQL.Connection := PRINCIPAL.Conexao_log;
     varSQL.SQL.Add('delete from logs where Extract(year from data) < (Extract(year from current_date) - 2 )');
     varSQL.ExecSQL;
     varSQL.ApplyUpdates;

     //LIMPAR CONTAS EXCLUÍDAS DO BANCO
     varSQL := unUtilitario.getSQL('delete from LOG where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from ANUNCIO where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from CAIXA_ENTRADA where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from CAIXA_SAIDA where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from CAIXA_SIS where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from CARACTERISTICAS where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from CHEQUE where ativo = ''XXX'' ');
     varSQL.ApplyUpdates;
     varSQL := unUtilitario.getSQL('delete from ERROS where Extract(year from data) <= (Extract(year from current_date) - 2 ) ');
     varSQL.ApplyUpdates;
     
     FreeAndNil(varSQL);
     unUtilitario.setMensagem('Processo Concluído!','informa');
end;

procedure TPRINCIPAL.Mensagens1Click(Sender: TObject);
begin
     EnviarMensagem1Click(Sender);
end;

procedure TPRINCIPAL.Minharedeinternaestok1Click(Sender: TObject);
begin
     unUtilitario.setMensagem('O sistema irá enviar um comando para o seu servidor, e você terá que visualizar respostas próximas a esses valores: '+#13+
     'Ex: "Resposta de '+getConf('EMPRESA_IP_LOCAL')+': bytes=32 tempo<1ms TTL=128"'+#13+#13+'Este comando vai ser executado até você fechar a janela.', 'informa');

     ShellExecute(0, 'open', 'cmd.exe', pchar('/C ping -t '+getConf('EMPRESA_IP_LOCAL')), nil, SW_SHOWMAXIMIZED);
end;

procedure TPRINCIPAL.ipo2Click(Sender: TObject);
begin
     CriarForm(TCAD_TipoPessoa, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.Ocupao2Click(Sender: TObject);
begin
     CriarForm(TCAD_Ocupacao, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.PainelFinanceirodoCliente1Click(Sender: TObject);
begin
     ShellExecute(0, 'open', 'https://celuladigital.superlogica.net/clients/areadocliente', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.painelFotoDblClick(Sender: TObject);
Var formulario: tform;
begin
     if unUtilitario.verificaStringInt(TImage(Sender).Hint) then
        if(TImage(Sender).Tag = 1) then //CONFIGURAR
           setMensagem('CONFIGURAR')
        else
        if(TImage(Sender).Tag = 2) then Begin //AGENDA
           setMensagem('AGENDA');
        end
        else
        if(TImage(Sender).Tag = 3) then Begin  //CONTRATOS
           formulario := CriarForm(TCAD_Aluguel, PRINCIPAL,'0');
           if(TCAD_Aluguel(formulario).ds.DataSet.Active)then Begin
             TCAD_Aluguel(formulario).ds.DataSet.Cancel;
             TCAD_Aluguel(formulario).ds.DataSet.Edit;
           end;
           TCAD_Aluguel(formulario).Tab_Pesquisa.Show;
           TCAD_Aluguel(formulario).Valor.Text := TImage(Sender).Hint;
           TCAD_Aluguel(formulario).Pesquisar();
        end
        else
        if(TImage(Sender).Tag = 4) then begin //MENSAGEM
          //Application.CreateForm(TCAD_Mensagem,CAD_Mensagem);
          //CAD_Mensagem.verMensagem(StrToInt(TImage(Sender).Hint));
          //CAD_Mensagem.ShowModal;

          with TCAD_Mensagem.Create(Application) do
          try
             mostraMensagemRecebida(StrToInt(TImage(Sender).Hint));
             ShowModal;
          finally
              Free;
          end;
         End;
end;

procedure TPRINCIPAL.Sair1Click(Sender: TObject);
begin
     PRINCIPAL.Close;
end;

procedure TPRINCIPAL.Cadastro2Click(Sender: TObject);
begin
     CriarForm(TCAD_Pessoa, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.SpeedButton1Click(Sender: TObject);
begin
     Cadastro2Click(Sender);
end;

procedure TPRINCIPAL.ipo1Click(Sender: TObject);
begin
     CriarForm(TCAD_TipoImovel, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.Caracterstica1Click(Sender: TObject);
begin
     CriarForm(TCAD_CaracteristicaImovel, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.CentralSQL1Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE CENTRAL SQL') then
     Begin
          Application.CreateForm(TFrmSQL, FrmSQL);
          FrmSQL.ShowModal;
     end;
end;

procedure TPRINCIPAL.checaConexaoTimer(Sender: TObject);
begin
try
     if NOT PRINCIPAL.Ping() then
     Begin
        Conexao.Reconnect;
        Conexao_log.Reconnect;
     end;
except
      unUtilitario.setMensagem('O sistema perdeu a conexão com o servidor devido a uma falha na rede da empresa.'
      +#13+'Verifique os cabos e equipamento de rede. O sistema será fechado.','erro');
      PRINCIPAL.Close;
end;
end;

procedure TPRINCIPAL.Cadastro1Click(Sender: TObject);
begin
     CriarForm(TCAD_Imovel, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.SpeedButton2Click(Sender: TObject);
begin
     Cadastro1Click(Sender);
end;

procedure TPRINCIPAL.btnSuporteRemotoClick(Sender: TObject);
begin
     ShellExecute(0, 'open', 'http://www.teamviewer.com/pt/index.aspx', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.Button1Click(Sender: TObject);
begin
     //enviaEmail(0, 'Teste de Email', 'edsonlb@gmail.com', 'Edson Lopes Barbosa', 'C:\Celula Digital Software\CELULA_IMOBILIARIA\EXE\REL\pdf\Conta_Pagamento_15585.pdf', 'Esse é o texto do conteúdo.');
end;

procedure TPRINCIPAL.VenderImvel1Click(Sender: TObject);
begin
     CriarForm(TCAD_Aluguel, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.VerificarAtualizaes1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmproutupdate, frmproutupdate);
  frmproutupdate.ShowModal;
  frmproutupdate.free;
end;

function TPRINCIPAL.VerificarDuplicidade(Tabela, Valor: String): boolean;
var
  qtde_reg: integer;
begin
// true para registro não cadastrado
// false para registro cadastrado
  result := true;

  dm_cadastro.ZqAux.close;
  dm_cadastro.zqaux.sql.Clear;
  dm_cadastro.zqaux.SQL.Add('select * from ' + tabela + ' where ' + valor);
  dm_cadastro.zqaux.open;

  qtde_reg := dm_cadastro.zqaux.RecordCount;
  dm_cadastro.zqaux.Close;

  if qtde_reg > 0 then
    begin
      result := false;
      application.messagebox('Esse dado já está cadastrado!', 'Aviso '+celulaNome, mb_ok);
      if application.messagebox('Deseja cadastrá-lo novamente?', 'Aviso '+celulaNome, mb_yesno) = mryes then
        result := true;
    end;      
end;

procedure TPRINCIPAL.VerificarJanela(FormCriador: TFORM);
begin
  if maximizado = true then
    begin
      FormCriador.WindowState := wsMaximized;
      maximizado := false;
    end;
end;

procedure TPRINCIPAL.VoltarImveisdaInternet1Click(Sender: TObject);
var varMySQL, varFirebird, varSQL: TZQuery;
    sql: String;
begin

     if verificaPermissaoAdministrador('ENTRAR NA TELA DE MANUTENÇÃO DE IMAGENS') then
     Begin

          varFirebird := TZQuery.Create(self);

          unUtilitario.setMensagem('CUIDADO! ESSA AÇÃO SÓ DEVE SER REALIZADA SOB ORIENTAÇÃO DA CÉLULA DIGITAL!'+#13+'Se este processo for usado sem cautela, poderá duplicar os registros de Ímóveis do Bando de Dados da empresa.','informa');
          if unUtilitario.setMensagem('TEM CERTEZA QUE DESEJA CONTINUAR?', 'confirma') = IDYES then
          Begin // SIM
                conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);

                varMySQL := TZQuery.Create(PRINCIPAL);
                varMySQL.Connection := PRINCIPAL.MySQL;

                sql := 'select `COD_IMOVEL`, `ID_USUARIO`, `ID_EMPRESA`, `FINALIDADE`, `TIPO`, `ENDERECO`, `NUMERO`, `BAIRRO`,'+' `CIDADE`, `ESTADO`, `VALOR_REAL`, `VALOR`, `FORMA_PGTO`, `DORMITORIOS`, `SUITE`, `BANHEIROS`, `GARAGEM`, `IDADE`, `DESCRICAO`, `CONDICAO`, `DATA`, `CHAVES`, `PROPRIETARIO`,'+' `PROPRIETARIO_TEL`, `PROPRIETARIO_END`, `DOCUMENTOS`, `AREA_TERRENO`, `AREA_CONSTRUIDA`, `ANUNCIO` from imovel where anuncio = ''SIM'' and id_empresa = '+getConf('EMPRESA_CODIGO');
                varMySQL.SQL.Add(sql);

                varMySQL.Open;

                while not varMySQL.Eof do
                begin
                     varSQL := unUtilitario.getSelect('select id_imovel from imovel where id_imovel = '+varMySQL.FieldByName('COD_IMOVEL').AsString);

                     if varSQL.RecordCount = 0 then
                     begin
                          if varMySQL.FieldByName('FINALIDADE').AsString = 'VENDA' then
                          begin
                               varFirebird := unUtilitario.getSQL('INSERT INTO IMOVEL (ID_IMOVEL, ID_LOGRADOURO, ID_IMOVEL_SUBTIPO, ID_IMOVEL_TIPO, ID_PESSOA, NUMERO, COMPLEMENTO, STATUS, DEPOSITO, SEGURO_FIANCA, FIADOR, VISITACORRETOR,'+' OCUPADO, PLACA, VENDA, ALUGUEL, OUTROS, OUTROS_NOME, VALOR_REAL, VALOR_VENDA, VALOR_ALUQUEL, VALOR_CONDOMINIO, VALOR_OUTROS, VALOR_OUTROS_NOME, AREA_L, AREA_C,'+' AREA_FATOR, AREA_OUTROS, AREA_OUTROS_FATOR, AREA_CONSTRUIDA, AREA_CONSTRUIDA_FATOR, AREA_DEPRECIACAO, NUM_LUZ, NUM_MATRICULA, NUM_AGUA, ENTRADA_CHAVES,'+' HORARIO_VISITA, CHAVE_QUADRO, OBS, DATA, ATIVO, ALTERACAO_FUNC, ALTERACAO_DATA, ANUNCIAR, EXCLUSIVO, LOCAL_PGTO, FINALIDADE, NOTA, PLACA_DATA, IMPRIMIR, DORMITORIOS, INTERNET, CHAVE) '+
                               ' VALUES ('+varMySQL.FieldByName('COD_IMOVEL').AsString+', 482291, 0, 0, 1, '+varMySQL.FieldByName('NUMERO').AsString+', '''+varMySQL.FieldByName('TIPO').AsString+', '+varMySQL.FieldByName('ENDERECO').AsString+', '+varMySQL.FieldByName('BAIRRO').AsString+''', ''IMPORTAÇÃO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''SIM'', ''NAO'', ''NAO'', NULL, '+formataDinheiroSQL(varMySQL.FieldByName('VALOR_REAL').AsString)+', '+formataDinheiroSQL(varMySQL.FieldByName('VALOR').AsString)+', 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, ''0'', NULL, NULL, NULL, NULL, NULL, NULL, ''ESTE IMÓVEL FOI IMPORTADO DO SITE DA IMOBILIÁRIA. #IMPORTADOSITE . ANÚNCIO = '+varMySQL.FieldByName('ANUNCIO').AsString+''', current_date, ''SIM'', '+getUser('CODIGO_USUARIO')+', current_date, ''SIM'', ''NAO'', NULL, ''VENDA'', 0, NULL, ''NAO'', '+varMySQL.FieldByName('DORMITORIOS').AsString+', ''SIM'', ''NAO''); ');
                          end
                          else
                          Begin
                               varFirebird := unUtilitario.getSQL('INSERT INTO IMOVEL (ID_IMOVEL, ID_LOGRADOURO, ID_IMOVEL_SUBTIPO, ID_IMOVEL_TIPO, ID_PESSOA, NUMERO, COMPLEMENTO, STATUS, DEPOSITO, SEGURO_FIANCA, FIADOR, VISITACORRETOR,'+' OCUPADO, PLACA, VENDA, ALUGUEL, OUTROS, OUTROS_NOME, VALOR_REAL, VALOR_VENDA, VALOR_ALUQUEL, VALOR_CONDOMINIO, VALOR_OUTROS, VALOR_OUTROS_NOME, AREA_L, AREA_C,'+' AREA_FATOR, AREA_OUTROS, AREA_OUTROS_FATOR, AREA_CONSTRUIDA, AREA_CONSTRUIDA_FATOR, AREA_DEPRECIACAO, NUM_LUZ, NUM_MATRICULA, NUM_AGUA, ENTRADA_CHAVES,'+' HORARIO_VISITA, CHAVE_QUADRO, OBS, DATA, ATIVO, ALTERACAO_FUNC, ALTERACAO_DATA, ANUNCIAR, EXCLUSIVO, LOCAL_PGTO, FINALIDADE, NOTA, PLACA_DATA, IMPRIMIR, DORMITORIOS, INTERNET, CHAVE)'+
                               ' VALUES ('+varMySQL.FieldByName('COD_IMOVEL').AsString+', 482291, 0, 0, 1, '+varMySQL.FieldByName('NUMERO').AsString+', '''+varMySQL.FieldByName('TIPO').AsString+', '+varMySQL.FieldByName('ENDERECO').AsString+', '+varMySQL.FieldByName('BAIRRO').AsString+''', ''IMPORTAÇÃO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''NAO'', ''SIM'', ''NAO'', NULL, 0, 0, '+formataDinheiroSQL(varMySQL.FieldByName('VALOR').AsString)+', 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, ''0'', NULL, NULL, NULL, NULL, NULL, NULL, ''ESTE IMÓVEL FOI IMPORTADO DO SITE DA IMOBILIÁRIA. #IMPORTADOSITE . ANÚNCIO = '+varMySQL.FieldByName('ANUNCIO').AsString+''', current_date, ''SIM'', '+getUser('CODIGO_USUARIO')+', current_date, ''SIM'', ''NAO'', NULL, ''LOCAÇÃO'', 0, NULL, ''NAO'', '+varMySQL.FieldByName('DORMITORIOS').AsString+', ''SIM'', ''NAO''); ');
                          end;
                     end;

                     varSQL.Close;
                     varMySQL.Next;
                end;

                ShowMessage(IntToStr(varMySQL.RecordCount));
                
          end
          else // NAO
              ShowMessage('NAO FOI REALIZADA NENHUMA AÇÃO!');

          unUtilitario.setMensagem('Processo concluído.','informa');
          FreeAndNil(varFirebird);
     end;
end;

procedure TPRINCIPAL.SpeedButton4Click(Sender: TObject);
begin
     VenderImvel1Click(Sender);
end;

function TPRINCIPAL.CriarForm(FormCriatura: TFormClass; FormCriador: TForm; Conteudo: string): TForm;
var
  I: Integer;
begin
  Result := nil;

  if (FormCriatura = TCAD_Empresa) and (NOT verificaAdministrador()) then
     exit;

  if (FormCriatura = TCAD_Usuario) and (NOT verificaAdministrador()) then
     exit;

  if (FormCriatura = TCAD_Sistema) and (NOT verificaAdministrador()) then
     exit;

  if (FormCriatura = TCAD_CaixasConfig) and (NOT verificaAdministrador()) then
     exit;
               
  for I := 0 to Screen.FormCount - 1 do
  begin
       if Screen.Forms[I] is FormCriatura then
       begin
            Result := Screen.Forms[i];
       end;

      if (formcriador.WindowState = wsMaximized) AND (FORMCRIADOR.Name <> 'PRINCIPAL') then
        maximizado := true;

       if (Screen.Forms[i].WindowState <> wsNormal) AND (Screen.Forms[i] <> PRINCIPAL) Then
          Screen.Forms[i].WindowState := wsNormal;
  end;

  if result = nil then
  begin
  {LockWindowUpdate(Handle) e LockWindowUpdate(0); => servem para evitar a maximização indesejada do form}
    //LockWindowUpdate(Handle);
    Application.CreateForm(FormCriatura,Result);

   // if CONTEUDO <> 'NOMATRIZ' then
   //   TCAD_MATRIZ(Result).Campos.SetFocus;

    //LockWindowUpdate(0);

  end
  else
  begin
   {se acaso for necessário que o form o seja maximizado na hora em que for  chamado para a frente dos outros, basta apenas alterar a linha abaixo pondo wsMaximized ao invés de wsNormal.}
    Result.WindowState := wsNormal;
    Result.BringToFront;
    //Result.SetFocus;
  End;

    IF CONTEUDO = 'NOMATRIZ' THEN
      begin
        TCAD_NOMATRIZ(Result).FormCriatura := FormCriatura;
        TCAD_NOMATRIZ(Result).FormCriador := FormCriador;
        TCAD_NOMATRIZ(Result).FormCriadorConteudo := Conteudo;
      end
    else
      begin
        TCAD_MATRIZ(Result).FormCriatura := FormCriatura;
        TCAD_MATRIZ(Result).FormCriador := FormCriador;
        TCAD_MATRIZ(Result).FormCriadorConteudo := Conteudo;
      end;

 If FormCriador = PRINCIPAL Then
    TCAD_MATRIZ(Result).Btn_Retorno.Visible := False
    Else
    begin
         if conteudo <> 'NOMATRIZ' then
            TCAD_MATRIZ(Result).Btn_Retorno.Visible := True;
    End;

  Result.Show;    
end;

procedure TPRINCIPAL.criaBrowser();
begin
     setMensagem('Caso queira FECHAR o navegador, clique no botão vermelho no canto superior direito. Caso queira RETORNAR a página, use o Backspace do teclado.');
     WebBrowser1 := TWebBrowser.Create(Self);
     TWinControl(WebBrowser1).Name := 'MeuWebBrowser1';
     TWinControl(WebBrowser1).Parent := Self;
     WebBrowser1.Offline := False;
     WebBrowser1.Silent := true;
     WebBrowser1.Align := alClient;
     WebBrowser1.Visible := True;
     BtnFechaNavegador.Visible := True;
end;

procedure TPRINCIPAL.Cssia1Click(Sender: TObject);
begin
     //CÁSSIA
     FecharTelaInteira1Click(Sender);

     if PopupBrowser.Items.Find('Tela Inteira').Checked Then
     begin
          criaBrowser();
          WebBrowser1.Navigate('http://maps.google.com/maps?f=q&hl=pt-BR&geocode=&q=c%C3%A1ssia,+sp&sll=37.0625,-95.677068&sspn=35.768112,76.992187&ie=UTF8&t=k&ll=-20.583929,-46.921846&spn=0.005163,0.009398&z=17');
     end
     Else
     Begin
          Application.CreateForm(TFrmBrowser,FrmBrowser);
          FrmBrowser.setSite('http://maps.google.com/maps?f=q&hl=pt-BR&geocode=&q=c%C3%A1ssia,+sp&sll=37.0625,-95.677068&sspn=35.768112,76.992187&ie=UTF8&t=k&ll=-20.583929,-46.921846&spn=0.005163,0.009398&z=17');
     End;
     
end;

procedure TPRINCIPAL.DestroiForm(FormCriatura: TFormClass; FormCriador: TForm; Conteudo: string; Fechar: Smallint);
var varSQL: TZQuery;
   ar: array of string;
begin
If Fechar = 1 Then
Begin
     //verifica se a janela estava maximizada
     verificarJanela(FormCriador);     

     //Para onde ele tem que retornar os dados.
     {if formcriador.Name = 'JanelaContratoFinanceiro' then
       begin
         if not (TJanelaContratoFinanceiro = nil) then
           begin
             if formCriatura = TCAD_PESSOA then
               try
                 TJanelaContratoFinanceiro(FORMCRIADOR).VISIBLE := TRUE;
                 TJanelaContratoFinanceiro(FORMCRIADOR).edNomeSeguro.text := DM_CADASTRO.Z_Pessoa.FieldByName('NOME').AsString;
                 TJanelaContratoFinanceiro(FORMCRIADOR).CodigoFiadora := DM_CADASTRO.Z_Pessoa.FieldByName('id_pessoa').AsInteger;
                 EXIT;
               except
                 application.messagebox('Não foi possível buscar o fiador!', 'Aviso '+celulaNome, mb_ok);
                 TJanelaContratoFinanceiro(FORMCRIADOR).CodigoFiadora := 0;
                 TJanelaContratoFinanceiro(FORMCRIADOR).Show;
               end;
           end
       end
     else  }
     If FormCriador.Name = 'CAD_Pessoa' then
     Begin
          //Verifica se o form está ativo ainda.
          If NOT (TCAD_Pessoa = nil) Then
          Begin
               //Executa a ação referente a chamada e retorno dos dados.
               If (FormCriatura = TCAD_Ocupacao) and (Conteudo = '1') Then
                  Begin
                       Try
                          DM_CADASTRO.Z_PessoaID_OCUPACAO.Value := DM_CADASTRO.Z_OcupacaoID_OCUPACAO.Value;
                          DM_CADASTRO.Z_PessoaOCUPACAO.Value := DM_CADASTRO.Z_OcupacaoNOME.AsString;
                          DM_CADASTRO.Z_PessoaEMPRESA_CARGO.Value := DM_CADASTRO.Z_OcupacaoNOME.AsString;
                          DM_CADASTRO.Z_Ocupacao.Close;

                        Except
                          DM_CADASTRO.Z_Ocupacao.Close;
                          unMsg.ERRO(21);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_TipoPessoa) and (Conteudo = '1') Then
                   Begin
                        Try
                          DM_CADASTRO.Z_PessoaID_PESSOA_TIPO.Value := DM_CADASTRO.Z_Pessoa_TipoID_PESSOA_TIPO.Value;
                          DM_CADASTRO.Z_PessoaTIPO.Value := DM_CADASTRO.Z_Pessoa_TipoNOME.Value;
                          DM_CADASTRO.Z_Pessoa_Tipo.Close;

                        Except
                          DM_CADASTRO.Z_Pessoa_Tipo.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Logradouro) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Endereco.FieldByName('CEP').Value := DM_Cadastro.Z_Logradouro.FieldByName('CEP').Value;
                           DM_Cadastro.Z_Endereco.FieldByName('TIPORUA').Value := DM_Cadastro.Z_Logradouro.FieldByName('TIPO').Value;
                           DM_Cadastro.Z_Endereco.FieldByName('RUA').Value := DM_Cadastro.Z_Logradouro.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Endereco.FieldByName('BAIRRO').Value := DM_Cadastro.Z_Logradouro.FieldByName('XBAIRRO').Value;
                           DM_Cadastro.Z_Endereco.FieldByName('CIDADE').Value := DM_Cadastro.Z_Logradouro.FieldByName('XCIDADE').Value;
                           DM_Cadastro.Z_Endereco.FieldByName('ESTADO').Value := DM_Cadastro.Z_Logradouro.FieldByName('XSIGLA').Value;
                           DM_Cadastro.Z_Endereco.FieldByName('ID_LOGRADOURO').Value := DM_Cadastro.Z_Logradouro.FieldByName('ID_LOGRADOURO').Value;
                           DM_Cadastro.Z_Logradouro.Close;
                           //FOCUS
                           TCAD_Pessoa(FormCriador).DBEdit31.SetFocus;

                        Except
                          DM_Cadastro.Z_Logradouro.Close;
                          unMsg.ERRO(19);
                        End;
                   End;

               IF FORMCRIATURA = TCAD_CONJUGE THEN
                 TCAD_PESSOA(FORMCRIADOR).lbConjuge.CAPTION := CONTEUDO;

          End
          Else
              unMsg.ERRO(20);
     End

     Else

     If FormCriador.Name = 'CAD_Aluguel' then
     Begin

          If NOT (TCAD_Aluguel = nil) Then
          Begin

               If (FormCriatura = TCAD_Imovel) and (Conteudo = '1') Then
                  Begin
                       varSQL := TZQuery.Create(self);
                       varSQL := unUtilitario.getSelect('select first 1 id_contrato from contrato where id_imovel = '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString+' and ativo = ''SIM'' ');

                       if varSQL.RecordCount > 0 then
                       begin
                            unUtilitario.setMensagem('Foi encontrado um contrato ATIVO com este imóvel! Favor verificar antes de prosseguir!'+#13+'Contrato: '+varSQL.FieldByName('id_contrato').asString,'erro');
                            DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').Clear;
                            TCAD_Aluguel(FormCriador).Edit_Logradouro.Text := '';
                            exit;
                       end;

                       Try
                          DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_ImovelID_IMOVEL.Value;

                          //ENCONTRAR DADOS DE ENDEREÇO DO IMÓVEL
                          unCamposBusca.BUSCA(DM_Cadastro.Z_Logradouro, 'select L.*, B.nome AS XBAIRRO, C.nome AS XCIDADE, U.nome AS XESTADO, U.sigla AS XSIGLA from logradouro L'+' left join bairro B on B.id_bairro = L.id_bairro left join cidade C on C.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE L.ID_LOGRADOURO = '+ DM_Cadastro.Z_ImovelID_LOGRADOURO.AsString);

                          If DM_CADASTRO.Z_Logradouro.RecordCount > 0 Then
                          Begin
                               TCAD_Aluguel(FormCriador).Edit_Logradouro.Text := DM_Cadastro.Z_Logradouro.FieldByName('ID_LOGRADOURO').Value;
                               TCAD_Aluguel(FormCriador).Edit_Cep.Text := DM_Cadastro.Z_Logradouro.FieldByName('CEP').Value;
                               TCAD_Aluguel(FormCriador).Edit_Tipo.Text := DM_Cadastro.Z_Logradouro.FieldByName('TIPO').Value;
                               TCAD_Aluguel(FormCriador).Edit_Rua.Text := DM_Cadastro.Z_Logradouro.FieldByName('NOME').Value;
                               TCAD_Aluguel(FormCriador).Edit_Cidade.Text := DM_Cadastro.Z_Logradouro.FieldByName('XCIDADE').Value;
                               TCAD_Aluguel(FormCriador).Edit_Bairro.Text := DM_Cadastro.Z_Logradouro.FieldByName('XBAIRRO').Value;
                               TCAD_Aluguel(FormCriador).Edit_UF.Text := DM_Cadastro.Z_Logradouro.FieldByName('XSIGLA').Value;
                               TCAD_Aluguel(FormCriador).Edit_Numero.Text := DM_Cadastro.Z_Imovel.FieldByName('NUMERO').Value;
                               TCAD_Aluguel(FormCriador).Edit_Complemento.Text := DM_Cadastro.Z_Imovel.FieldByName('COMPLEMENTO').AsString;

                               if NOT DM_Cadastro.Z_Imovel.FieldByName('NUM_MATRICULA').IsNull then
                                  TCAD_Aluguel(FormCriador).EditPrimeiroAluguelPorcentagem.Text := DM_Cadastro.Z_Imovel.FieldByName('NUM_MATRICULA').Value;
                               
                               If TCAD_Aluguel(FormCriador).Combo_Contrato.Text = 'LOCAÇÃO' Then
                               Begin
                                    DM_ADMIN.Z_ALUGUELVALOR.Value := DM_Cadastro.Z_Imovel.FieldByName('VALOR_ALUQUEL').Value;
                               End;

                               If TCAD_Aluguel(FormCriador).Combo_Contrato.Text = 'VENDA' Then
                               Begin
                                    DM_ADMIN.Z_ALUGUELVALOR.Value := DM_Cadastro.Z_Imovel.FieldByName('VALOR_VENDA').Value;
                               End;

                               If TCAD_Aluguel(FormCriador).Combo_Contrato.Text = 'SEM INFORMAÇÃO' Then
                               Begin
                                    DM_ADMIN.Z_ALUGUELVALOR.Value := 0;
                               End;

                               DM_Cadastro.Z_Logradouro.Close;
                               DM_CADASTRO.Z_Imovel.Close;

                               //BUSCAR O PROPRIETARIO
                               DM_Cadastro.Z_Curinga_02.Close;
                               DM_Cadastro.Z_Curinga_02.SQL.Clear;
                               unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_02, 'select P.id_pessoa, P.nome, P.nome_fantasia, P.cpf_cnpj, p.foto, p.ativo from pessoa P left join pessoa_imovel PI on PI.id_pessoa = P.id_pessoa left join imovel I on I.id_imovel = PI.id_imovel where I.id_imovel = ' + DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString + ' and (PI.status = ''PROPRIETARIO'' or PI.status = ''PROPRIETÁRIO'')');

                               IF DM_Cadastro.Z_Curinga_02.RecordCount = 0 Then
                               Begin
                                    unUtilitario.setMensagem('NÃO é possível elaborar um contrato SEM O PROPRIETÁRIO DO IMÓVEL!'+#13+'CADASTRE UM PROPRIETÁRIO PARA ESTE IMÓVEL ANTES DE CONTINUAR!','informa');
                                    TCAD_Aluguel(FormCriador).Btn_Endereco_Endereco.SetFocus;
                               End
                               else
                                   //FOCUS
                                   TCAD_Aluguel(FormCriador).Btn_Pessoas_Novo.SetFocus;
                          End;
                       Except
                             DM_Cadastro.Z_Logradouro.Close;
                             DM_CADASTRO.Z_Imovel.Close;
                             unMsg.ERRO(21);
                       End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_ADMIN.Z_PESSOA_CONTRATO.Edit;
                           DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('ID_PESSOA').AsString := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').AsString;
                           DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XNOME').Value := DM_Cadastro.Z_Pessoa.FieldByName('NOME').Value;
                           DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XCPF').Value := DM_Cadastro.Z_Pessoa.FieldByName('CPF_CNPJ').Value;
                           DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').Value := DM_Cadastro.Z_Pessoa.FieldByName('FOTO').Value;

                           //FOCUS
                           TCAD_Aluguel(FormCriador).Tipo_Pessoa_Contrato.SetFocus;

                           Try
                              PRINCIPAL.setMensagem('Procurando Imagens...');
                              If NOT DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').IsNull Then
                                 unImagem.getImagem(TCAD_Aluguel(FormCriador).IMG_Pessoas,DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').Value);
                           Except
                                 unMsg.ERRO(19);
                           End;

                           DM_Cadastro.Z_Pessoa.Close;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End;

          End
          Else
              unMsg.ERRO(20);
     End

     ELSE

     If FormCriador.Name = 'CAD_Imovel' then    
     Begin

          If NOT (TCAD_Imovel = nil) Then
          Begin

               If (FormCriatura = TCAD_Logradouro) and (Conteudo = '1') Then
                  Begin
                       Try
                          TCAD_Imovel(FormCriador).Edit_Cep.Text := DM_Cadastro.Z_Logradouro.FieldByName('CEP').Value;
                          TCAD_Imovel(FormCriador).Edit_Tipo.Text := DM_Cadastro.Z_Logradouro.FieldByName('TIPO').Value;
                          TCAD_Imovel(FormCriador).Edit_Rua.Text := DM_Cadastro.Z_Logradouro.FieldByName('NOME').Value;
                          TCAD_Imovel(FormCriador).Edit_Cidade.Text := DM_Cadastro.Z_Logradouro.FieldByName('XCIDADE').Value;
                          TCAD_Imovel(FormCriador).Edit_Bairro.Text := DM_Cadastro.Z_Logradouro.FieldByName('XBAIRRO').Value;
                          //TCAD_Imovel(FormCriador).Edit_UF.Text := DM_Cadastro.Z_Logradouro.FieldByName('XSIGLA').Value;
                          TCAD_Imovel(FormCriador).Edit_UF.Text := '';

                          DM_Cadastro.Z_Imovel.FieldByName('ID_LOGRADOURO').Value := DM_Cadastro.Z_Logradouro.FieldByName('ID_LOGRADOURO').Value;
                          DM_Cadastro.Z_Logradouro.Close;

                           //FOCUS
                           TCAD_Imovel(FormCriador).Edit_Numero.SetFocus;

                       Except
                             DM_Cadastro.Z_Logradouro.Close;
                             unMsg.ERRO(21);
                       End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Curinga_04.FieldByName('RESPONSAVEL').Value := DM_Cadastro.Z_Pessoa.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA').Value := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').Value;
                           DM_Cadastro.Z_Pessoa.Close;

                           //FOCUS
                           TCAD_Imovel(FormCriador).DBEdit64.SetFocus;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '2') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Curinga_04.FieldByName('PESSOA2_NOME').Value := DM_Cadastro.Z_Pessoa.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA2').Value := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').Value;
                           DM_Cadastro.Z_Pessoa.Close;

                           //FOCUS
                           TCAD_Imovel(FormCriador).DBEdit1.SetFocus;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '3') Then
                   Begin
                        Try
                           DM_Cadastro.Z_IPTU.Edit;
                           DM_Cadastro.Z_IPTU.FieldByName('CONTRIBUINTE').AsString := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').AsString + '-' + DM_Cadastro.Z_Pessoa.FieldByName('NOME').AsString ;

                           DM_Cadastro.Z_Pessoa.Close;

                           //FOCUS
                           TCAD_Imovel(FormCriador).DBEdit17.SetFocus;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '4') Then
                   Begin
                        Try
                           DM_Cadastro.Z_IPTU.Edit;
                           DM_Cadastro.Z_IPTU.FieldByName('RESPONSAVEL').AsString := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').AsString + '-' + DM_Cadastro.Z_Pessoa.FieldByName('NOME').AsString ;

                           DM_Cadastro.Z_Pessoa.Close;

                           //FOCUS
                           TCAD_Imovel(FormCriador).DBEdit59.SetFocus;
                           
                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '5') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Curinga_04.Edit;
                           DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA').AsString := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').AsString;
                           DM_Cadastro.Z_Curinga_04.FieldByName('XPESSOA').Value := DM_Cadastro.Z_Pessoa.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Curinga_04.FieldByName('XCPF').Value := DM_Cadastro.Z_Pessoa.FieldByName('CPF_CNPJ').Value;
                           DM_Cadastro.Z_Curinga_04.FieldByName('XFOTO').Value := DM_Cadastro.Z_Pessoa.FieldByName('FOTO').Value;
                           Try
                              setMensagem('Procurando Imagens...');
                              If DM_Cadastro.Z_PessoaFOTO.Value <> '' Then
                                 unImagem.getImagem(TCAD_Imovel(FormCriador).IMG_Proprietario,DM_Cadastro.Z_Curinga_04.FieldByName('XFOTO').Value);

                           //FOCUS
                           TCAD_Imovel(FormCriador).DBEdit14.SetFocus;

                           Except
                                 unMsg.ERRO(19);
                           End;

                           DM_Cadastro.Z_Pessoa.Close;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '7') Then
                   Begin
                        Try
                           TCAD_Imovel(FormCriador).chaveEmprestimoSaidaPessoa.Text := DM_Cadastro.Z_Pessoa.FieldByName('NOME').AsString+' ('+DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').AsString+')';

                           if Length(trim(DM_Cadastro.Z_Pessoa.FieldByName('RG_IE').AsString)) > 0 Then
                              TCAD_Imovel(FormCriador).chaveEmprestimoSaidaDocumento.Text := DM_Cadastro.Z_Pessoa.FieldByName('RG_IE').AsString
                           else
                               TCAD_Imovel(FormCriador).chaveEmprestimoSaidaDocumento.Text := DM_Cadastro.Z_Pessoa.FieldByName('CPF_CNPJ').AsString;

                           if DM_CADASTRO.DS_Telefone.DataSet.RecordCount > 0 then
                           Begin
                                if DM_CADASTRO.DS_Telefone.DataSet.RecordCount = 1 then
                                   TCAD_Imovel(FormCriador).chaveEmprestimoSaidaTelefone.Text := '('+DM_CADASTRO.DS_Telefone.DataSet.FieldByName('DDD').AsString+') '+DM_CADASTRO.DS_Telefone.DataSet.FieldByName('NUMERO').AsString
                                else
                                Begin
                                     TCAD_Imovel(FormCriador).chaveEmprestimoSaidaTelefone.Text := '('+DM_CADASTRO.DS_Telefone.DataSet.FieldByName('DDD').AsString+') '+DM_CADASTRO.DS_Telefone.DataSet.FieldByName('NUMERO').AsString;
                                     DM_CADASTRO.DS_Telefone.DataSet.next;
                                     TCAD_Imovel(FormCriador).chaveEmprestimoSaidaTelefone2.Text := '('+DM_CADASTRO.DS_Telefone.DataSet.FieldByName('DDD').AsString+') '+DM_CADASTRO.DS_Telefone.DataSet.FieldByName('NUMERO').AsString;
                                end;

                           end;

                           if DM_CADASTRO.DS_Endereco.DataSet.RecordCount > 0 then
                           Begin
                                TCAD_Imovel(FormCriador).chaveEmprestimoSaidaEndereco.Text := DM_CADASTRO.DS_Endereco.DataSet.FieldByName('RUA').AsString+
                                ' '+DM_CADASTRO.DS_Endereco.DataSet.FieldByName('NUMERO').AsString+
                                ' '+DM_CADASTRO.DS_Endereco.DataSet.FieldByName('COMPLEMENTO').AsString;
                           end;

                           //;
                           //TCAD_Imovel(FormCriador).chaveEmprestimoSaidaTelefone2.Text := DM_Cadastro.Z_Pessoa.FieldByName('FOTO').AsString;
                           //TCAD_Imovel(FormCriador).chaveEmprestimoSaidaEndereco.Text := DM_Cadastro.Z_Pessoa.FieldByName('FOTO').AsString;

                           DM_Cadastro.Z_Pessoa.Close;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Pessoa) and (Conteudo = '6') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Curinga_05.Edit;
                           DM_Cadastro.Z_Curinga_05.FieldByName('ID_PESSOA').AsString := DM_Cadastro.Z_Pessoa.FieldByName('ID_PESSOA').AsString;
                           DM_Cadastro.Z_Curinga_05.FieldByName('XPESSOA').Value := DM_Cadastro.Z_Pessoa.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Curinga_05.FieldByName('XCPF').Value := DM_Cadastro.Z_Pessoa.FieldByName('CPF_CNPJ').Value;
                           DM_Cadastro.Z_Curinga_05.FieldByName('XFOTO').Value := DM_Cadastro.Z_Pessoa.FieldByName('FOTO').Value;
                           Try
                              setMensagem('Procurando Imagens...');
                              If DM_Cadastro.Z_PessoaFOTO.Value <> '' Then
                                 unImagem.getImagem(TCAD_Imovel(FormCriador).IMG_Pessoas,DM_Cadastro.Z_Curinga_05.FieldByName('XFOTO').Value);

                           //FOCUS
                           TCAD_Imovel(FormCriador).DBLookupComboBox3.SetFocus;

                           Except
                                 unMsg.ERRO(19);
                           End;

                           DM_Cadastro.Z_Pessoa.Close;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End;

          End
          Else
              unMsg.ERRO(20);
     End

     ELSE

     If FormCriador.Name = 'CAD_Logradouro' then  
     Begin

          If NOT (TCAD_Logradouro = nil) Then
          Begin

               If (FormCriatura = TCAD_Estados) and (Conteudo = '1') Then
                  Begin
                       Try
                          DM_Cadastro.Z_Logradouro.Edit;
                          DM_Cadastro.Z_Logradouro.FieldByName('ID_SIGLA').Value := DM_Cadastro.Z_Estado.FieldByName('ID_SIGLA').Value;
                          DM_Cadastro.Z_Logradouro.FieldByName('XESTADO').Value := DM_Cadastro.Z_Estado.FieldByName('NOME').Value;
                          DM_Cadastro.Z_Estado.Close;

                           //FOCUS
                           TCAD_Logradouro(FormCriador).BitBtn2.SetFocus;

                       Except
                             DM_Cadastro.Z_Estado.Close;
                             unMsg.ERRO(21);
                       End;
                   End
                   else
                   If (FormCriatura = TCAD_Cidade) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Logradouro.Edit;
                           DM_Cadastro.Z_Logradouro.FieldByName('ID_CIDADE').Value := DM_Cadastro.Z_Cidade.FieldByName('ID_CIDADE').Value;
                           DM_Cadastro.Z_Logradouro.FieldByName('XCIDADE').Value := DM_Cadastro.Z_Cidade.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Cidade.Close;

                           //FOCUS
                           TCAD_Logradouro(FormCriador).BitBtn3.SetFocus;

                        Except
                          DM_CADASTRO.Z_Cidade.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
                   If (FormCriatura = TCAD_Bairro) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_Cadastro.Z_Logradouro.Edit;
                           DM_Cadastro.Z_Logradouro.FieldByName('ID_BAIRRO').Value := DM_Cadastro.Z_Bairro.FieldByName('ID_BAIRRO').Value;
                           DM_Cadastro.Z_Logradouro.FieldByName('XBAIRRO').Value := DM_Cadastro.Z_Bairro.FieldByName('NOME').Value;
                           DM_Cadastro.Z_Bairro.Close;

                           //FOCUS
                           TCAD_Logradouro(FormCriador).DBLookupComboBox1.SetFocus;

                        Except
                          DM_Cadastro.Z_Bairro.Close;
                          unMsg.ERRO(19);
                        End;
                   End;

          End
          Else
              unMsg.ERRO(20);
     End

     ELSE

     If FormCriador.Name = 'CAD_Cheques' then
     Begin

          If NOT (TCAD_Cheques = nil) Then
          Begin
                If (FormCriatura = TCAD_Pessoa) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_FINANCEIRO.ZCheque.Edit;
                           DM_FINANCEIRO.ZChequeID_PESSOA.AsInteger := DM_Cadastro.Z_PessoaID_PESSOA.AsInteger;

                           DM_Cadastro.Z_Pessoa.Close;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End

                   ELSE

          End
          Else
              unMsg.ERRO(20);
     End

     ELSE

  If FormCriador.Name = 'CAD_CHAVES' then
  Begin
    If NOT (TCAD_Chaves = nil) Then
      begin
        DM_cadastro.ZqAux.Close;
        DM_cadastro.ZqAux.SQL.Clear;
        DM_cadastro.ZqAux.SQL.Add('select * from pessoa_imovel where id_pessoa_imovel = 0');
        DM_cadastro.ZqAux.Open;

        DM_cadastro.ZqAux.Append;

        setID(dm_cadastro.ZqAux, 'ID_PESSOA_IMOVEL', 'PESSOA_IMOVEL');
        DM_cadastro.ZqAux.FieldByName('id_imovel').AsString := tcad_chaves(formcriador).ZqImoveis.fieldbyname('codigo').asstring;
        DM_cadastro.ZqAux.fieldbyname('id_pessoa').AsString := dm_cadastro.Z_Pessoa.FieldByName('id_pessoa').AsString;

        tcad_chaves(formcriador).lbPessoa.Caption := dm_cadastro.Z_Pessoa.FieldByName('NOME').AsString;
        DM_cadastro.ZqAux.FieldByName('ATIVO').AsString := 'EMP';
        DM_cadastro.ZqAux.FieldByName('ID_PESSOA_TIPO').Value := 15;
        DM_cadastro.ZqAux.FieldByName('DATA_INICIAL').AsDateTime := DATE;
        DM_cadastro.ZqAux.FIELDBYNAME('HORA_INICIAL').AsDateTime := TIME;
        DM_cadastro.ZqAux.FIELDBYNAME('DATA').ASDATETIME := DATE;

        DM_cadastro.ZqAux.FIELDBYNAME('GARANTIA').AsString := InputBox('Documentos Retidos da Pessoa', 'Entre com os DOCUMENTOS da pessoa interessada que ficarão RETIDOS:','CPF');

        DM_cadastro.zqaux.fieldbyname('ID_USUARIO').AsString := getUser('CODIGO_USUARIO');

        if unUtilitario.setMensagem('Deseja EMPRESTAR as CHAVES do Imóvel Selecionado a esta Pessoa?','confirma') = idyes then
        Begin
             IF DM_cadastro.ZqAux.FieldByName('ID_PESSOA').IsNull or DM_cadastro.ZqAux.FieldByName('ID_IMOVEL').IsNull  then
                unUtilitario.setMensagem('Você NÃO selecionou a PESSOA ou o IMÓVEL para este evento!','erro')
             else
             begin
                 try
                    DM_cadastro.ZqAux.ApplyUpdates;
                    varSQL := unUtilitario.getSQL('update imovel set chave = ''EMP'' where id_imovel = ' + tcad_chaves(formcriador).ZqImoveis.FieldByName('codigo').asstring);
                    varSQL.ExecSQL;

                    setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', DM_cadastro.ZqAux.SQL.Text);

                    setDocumento('RECIBO_CHAVE', '', '',3, DM_cadastro.ZqAux.FieldByName('ID_PESSOA').AsInteger, tcad_chaves(formcriador).ZqImoveis.FieldByName('codigo').AsInteger,  0, ar);

                    FreeAndNil(varSQL);
                 except
                 on e: Exception do
                    if strPos(pchar(e.message),pchar('violation of FOREIGN KEY')) <> nil then
                       unUtilitario.setMensagem('Erro! Verifique se existe o tipo de pessoa "VISITAÇÃO" com código "15"!'+#13+'Isso é muito importante para catalogar este evento.'+#13+'(Chame o suporte técnico '+celulaNome+') Arquivos >> Pasta >> Pessoas >> Tipo'+#13+e.Message,'erro')
                    else
                        unUtilitario.setMensagem('Erro! Não foi possível realizar o evento!'+#13+e.Message,'erro');
                 end;

                    tcad_chaves(formcriador).ZqImoveis.Close;
                    tcad_chaves(formcriador).ZqImoveis.Open;
                    //dm_cadastro.ZqAux.Close;
                    dm_cadastro.Z_Pessoa.Close;
             end;
      end;
      end;
    End

    ELSE

If FormCriador.Name = 'CAD_Caixas' then
     Begin

          If NOT (TCAD_Caixas = nil) Then
          Begin

               If (FormCriatura = TCAD_Pessoa) and (Conteudo = '1') Then
                  Begin
                       Try
                          DM_FINANCEIRO.ZCaixa.Edit;

                          DM_FINANCEIRO.ZCaixa.FieldByName('ID_PESSOA').Value := DM_CADASTRO.Z_Pessoa.FieldByName('ID_PESSOA').Value;
                          TCAD_Caixas(FormCriador).EditPessoa.Text := DM_CADASTRO.Z_Pessoa.FieldByName('ID_PESSOA').AsString + ' - '+ DM_CADASTRO.Z_Pessoa.FieldByName('NOME').AsString+'.';

                          DM_Cadastro.Z_Pessoa.Close;

                           //FOCUS
                           TCAD_Caixas(FormCriador).BtnProcuraImovel.SetFocus;
                       Except
                             DM_Cadastro.Z_Pessoa.Close;
                             unMsg.ERRO(21);
                       End;
                   End
                   else
               If (FormCriatura = TCAD_Pessoa) and (Conteudo = '2') Then
                  Begin
                       Try
                          TCAD_Caixas(FormCriador).id_pessoa := DM_CADASTRO.Z_Pessoa.FieldByName('ID_PESSOA').AsInteger;
                          TCAD_Caixas(FormCriador).diaLabelPessoa.Caption := DM_CADASTRO.Z_Pessoa.FieldByName('ID_PESSOA').AsString + ' - '+ DM_CADASTRO.Z_Pessoa.FieldByName('NOME').AsString+'.';

                          DM_Cadastro.Z_Pessoa.Close;
                       Except
                             DM_Cadastro.Z_Pessoa.Close;
                             unMsg.ERRO(21);
                       End;
                   End
                   else
               If (FormCriatura = TCAD_Imovel) and (Conteudo = '1') Then
                   Begin
                        Try
                          DM_FINANCEIRO.ZCaixa.Edit;

                          DM_FINANCEIRO.ZCaixaID_IMOVEL.Value := DM_CADASTRO.Z_ImovelID_IMOVEL.Value;
                          TCAD_Caixas(FormCriador).EditImovel.Text := DM_CADASTRO.Z_ImovelID_IMOVEL.AsString + ' - '+ DM_CADASTRO.Z_ImovelXTIPORUA.AsString +' '+ DM_CADASTRO.Z_ImovelXNOMERUA.AsString +', nº '+ DM_CADASTRO.Z_ImovelNUMERO.AsString +' '+ DM_CADASTRO.Z_ImovelCOMPLEMENTO.AsString +'.';

                          DM_Cadastro.Z_Imovel.Close;

                           //FOCUS
                           TCAD_Caixas(FormCriador).BtnProcuraContrato.SetFocus;
                        Except
                          DM_CADASTRO.Z_Imovel.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
               If (FormCriatura = TCAD_Imovel) and (Conteudo = '2') Then
                   Begin
                        Try
                          TCAD_Caixas(FormCriador).id_imovel := DM_CADASTRO.Z_ImovelID_IMOVEL.AsInteger;
                          TCAD_Caixas(FormCriador).diaLabelImovel.Caption := DM_CADASTRO.Z_ImovelID_IMOVEL.AsString + ' - '+ DM_CADASTRO.Z_ImovelXTIPORUA.AsString +' '+ DM_CADASTRO.Z_ImovelXNOMERUA.AsString +', nº '+ DM_CADASTRO.Z_ImovelNUMERO.AsString +' '+ DM_CADASTRO.Z_ImovelCOMPLEMENTO.AsString +'.';

                          DM_Cadastro.Z_Imovel.Close;
                        Except
                          DM_CADASTRO.Z_Imovel.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
               If (FormCriatura = TCAD_Aluguel) and (Conteudo = '1') Then
                   Begin
                        Try
                          DM_FINANCEIRO.ZCaixa.Edit;

                          DM_FINANCEIRO.ZCaixaID_CONTRATO.Value := DM_ADMIN.Z_ALUGUELID_CONTRATO.Value;
                          DM_FINANCEIRO.ZCaixaCONTRATO_REF.Value := DM_ADMIN.Z_ALUGUELID_REFERENCIA.Value;

                          DM_ADMIN.Z_ALUGUEL.Close;

                           //FOCUS
                           TCAD_Caixas(FormCriador).DBEdit4.SetFocus;

                        Except
                          DM_ADMIN.Z_ALUGUEL.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
               If (FormCriatura = TCAD_Pessoa) and (Conteudo = '3') Then
                   Begin
                        Try
                           DM_FINANCEIRO.ZChequeConta.Edit;
                           DM_FINANCEIRO.ZChequeContaID_PESSOA.AsInteger := DM_Cadastro.Z_PessoaID_PESSOA.AsInteger;
                           TCAD_Caixas(FormCriador).chequeNome.Text := DM_Cadastro.Z_Pessoa.FieldByName('NOME').Value;

                           DM_Cadastro.Z_Pessoa.Close;

                        Except
                          DM_Cadastro.Z_Pessoa.Close;
                          unMsg.ERRO(19);
                        End;
                   End
                   else
               If (FormCriatura = TCAD_Cheques) and (Conteudo = '1') Then
                   Begin
                        Try
                           DM_FINANCEIRO.ZChequeConta.Edit;
                           DM_FINANCEIRO.ZChequeContaID_CHEQUE.AsInteger := DM_FINANCEIRO.ZChequeID_CHEQUE.AsInteger;
                           DM_FINANCEIRO.ZChequeContaID_PESSOA.AsInteger := DM_FINANCEIRO.ZChequeID_PESSOA.AsInteger;

                           TCAD_Caixas(FormCriador).populaCheque();

                           DM_FINANCEIRO.ZCheque.Close;
                        Except
                          DM_FINANCEIRO.ZCheque.Close;
                          unMsg.ERRO(19);
                        End;
                   End;
          End
          Else
              unMsg.ERRO(20);
     End;

end;
     Ordenacao := '';

End;

procedure TPRINCIPAL.duplicar(opcao: String; Matriz: Tzquery);
var
  x: integer;
begin

  if opcao = 'OLD' then
    begin
      logOld := TStringList.Create;
      logold.Clear;

      logold.Add(matriz.Name);
      for x := 0 to matriz.Fields.Count -1 do
        logold.Add(matriz.Fields[x].FieldName + '=' + matriz.Fields[x].AsString);
                       
//      Y := logold.Count;
    end;



  if opcao = 'NEW' then
    begin
      LogNew := TStringList.Create;
      LogNew.Clear;

      LogNew.Add(matriz.Name);
      for x := 0 to matriz.Fields.Count -1 do
        LogNew.Add(matriz.Fields[x].FieldName + '=' + matriz.Fields[x].AsString);

//      Y := LogNew.Count;
    end;


end;

procedure TPRINCIPAL.btnCentralAcompanhamentoClick(Sender: TObject);
begin
     //MANUAL DO SISTEMA
     ShellExecute(0, 'open', 'http://suporte.celuladigital.com.br', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.SuporteTcnico1Click(Sender: TObject);
Var email: String;
begin

  email := InputBox('INFORME O SEU E-MAIL DE CONTATO','O seu e-mail é importante para podermos dar uma resposta ao seu chamado.'+#13+'Confira a digitação antes de continuar.', getUser('EMAIL'));

  if Length(trim(email)) > 0 then
  begin
    //Controle de Suporte Técnico
    FecharTelaInteira1Click(Sender);

    criaBrowser();
    WebBrowser1.Navigate('http://www.celuladigital.com.br/site/erros/cadastrar.php?email='+UpperCase(email));
  end
  else
    unUtilitario.setMensagem('Informe o seu e-mail corretamente!','erro');
end;

procedure TPRINCIPAL.SuporteTcnicoAcompanhamento1Click(Sender: TObject);
begin
    //Controle de Suporte Técnico ACOMPANHAMENTO
    FecharTelaInteira1Click(Sender);

    criaBrowser();
    WebBrowser1.Navigate('http://suporte.celuladigital.com.br');
end;

procedure TPRINCIPAL.SuporteVIP1Click(Sender: TObject);
begin
     //Atendimento VIP - Suporte
     FecharTelaInteira1Click(Sender);

     criaBrowser();
     WebBrowser1.Navigate('http://www.celuladigital.com.br/sistemas/imobiliaria/vip/');
end;

function TPRINCIPAL.TratarData(data: String): String;
begin
  IF LENGTH(TRIM(DATA)) = 4 THEN
    result := ''

  ELSE
    TRY
      STRTODATE(DATA);

      IF (STRTODATE(data) < strtodate('01/01/1900')) or (STRTODATE(data) > strtodate('01/01/2100')) then
        begin
          result := '';
          application.MessageBox('Data Inválida!','Aviso '+celulaNome, mb_ok);
        end
      else
        begin
          result := data;
        end;

    EXCEPT
      on EConvertError do
        begin
          application.MessageBox('Data Inválida!','Aviso '+celulaNome, mb_ok);
          result :='';
        end;
    END;
end;

procedure TPRINCIPAL.IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
     PRINCIPAL.setMensagem(AStatusText);
end;

procedure TPRINCIPAL.IdSSLIOHandlerSocketOpenSSL1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
     PRINCIPAL.setMensagem(AStatusText);
end;

procedure TPRINCIPAL.IdSSLIOHandlerSocketOpenSSL1StatusInfo(Msg: string);
begin
     PRINCIPAL.setMensagem(Msg);
end;

procedure TPRINCIPAL.Image3Click(Sender: TObject);
Var
   Instance : Tcontrol;
   i: integer;
begin
     if abaAlertas.Visible then
     Begin
          abaAlertas.Visible := False;

          //APAGAR COMPONENTES ANTIGOS
          i := PRINCIPAL.abaAlertas.ControlCount - 1;

          while i > 0 do
          begin
            Instance := PRINCIPAL.abaAlertas.Controls[i];
            
            if 41 = PRINCIPAL.abaAlertas.Controls[i].Height then
            Begin
                 PRINCIPAL.abaAlertas.RemoveControl(Instance);
                 Instance.Destroy;
            end;
            i := i-1;
          end;
     end
     else
     Begin
          abaAlertas.Visible := True;
          tread := threadContratos.Create(false);
     end;
     
end;

procedure TPRINCIPAL.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     if(Button = mbRight) Then
               PopupMensagem.Popup(PRINCIPAL.Width, PRINCIPAL.Height);
end;

procedure TPRINCIPAL.criaAlerta(tipo, mensagem, destino: String);
var P : TPanel;
    F: TImage;
    T: TMemo;
    i: Smallint;
begin

     if(Pos('configurar',LowerCase(tipo)) > 0) then
        i := 1
     else
     if(Pos('agenda', LowerCase(tipo)) > 0) then
        i := 2
     else
     if(Pos('contrato', LowerCase(tipo)) > 0) then
        i := 3
     else
     if(Pos('mensagem', LowerCase(tipo)) > 0) then
        i := 4
     else
         i := 0;

     //PAINEL
     P := TPanel.Create(Self);
     P.Color := clBlack;
     P.BorderStyle := bsNone;
     P.Height := 41;
     P.Align := alTop;
     P.Parent := abaAlertas;
     P.Tag := i;
     P.Visible := True;
     P.Name := 'PAINEL_'+ IntToStr(1+random(99999));

     //IMAGEM
     F := TImage.Create(Self);
     F.Center := True;
     F.Width := 32;
     F.Height := 39;
     F.Align := alLeft;
     F.Parent := P;
     F.Cursor := crHandPoint;
     F.Transparent := true;
     F.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'REL\img\opcao'+ReplaceStr(tipo,'opcao','')+'.jpg');
     F.Tag := i;
     F.Hint := destino;
     F.Visible := True;
     F.OnDblClick := painelFotoDblClick;

     //MENSAGEM
     T := TMemo.Create(Self);
     T.Align := alClient;
     T.BorderStyle := bsNone;
     T.Color := clBlack;
     T.Font.Color := clWhite;
     T.Cursor := crArrow;
     T.Font.Style := [fsBold];
     T.ScrollBars := ssVertical;
     T.Parent := P;
     T.Lines.Text := Trim(mensagem);
     T.Tag := i;
     T.Visible := True;

end;

procedure TPRINCIPAL.imgFerramentasMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     PopupManutencao.Popup(PRINCIPAL.Width, PRINCIPAL.Height);
end;

procedure TPRINCIPAL.IntegraoACIFRA1Click(Sender: TObject);
begin
     ShellExecute(0, 'open', 'http://celuladigital.com.br/www/wiki/doku.php?id=acifra', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.IntegraoOLX1Click(Sender: TObject);
begin
     unUtilitario.setMensagem('O sistema vai abrir um link de internet que deverá ser passado para o sistema ZAP Imóveis para a integração.','informa');
     ShellExecute(0, 'open', Pchar('http://imoveisemfranca.com.br/listagem/'+LowerCase(getConf('EMPRESA_HOMEPAGE'))+'/saida-zap/arquivo.xml'), nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.IntegrarcomAbifran1Click(Sender: TObject);
begin
     ShellExecute(0, 'open', 'http://celuladigital.com.br/www/wiki/doku.php?id=abifran', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.IntegrarcomFacebook1Click(Sender: TObject);
begin
     unUtilitario.setMensagem('Em desenvolvimento.','informa');
end;

procedure TPRINCIPAL.Image7Click(Sender: TObject);
begin
     //MAPA EMPRESARIAL
     FecharTelaInteira1Click(Sender);

     if PopupBrowser.Items.Find('Tela Inteira').Checked Then
     begin
          criaBrowser();
          WebBrowser1.Navigate('http://'+StringReplace(getConf('EMPRESA_HOMEPAGE'),'http://','',[rfReplaceAll,rfIgnoreCase]));
     end
     Else
     Begin
          Application.CreateForm(TFrmBrowser,FrmBrowser);
          FrmBrowser.setSite('http://'+StringReplace(getConf('EMPRESA_HOMEPAGE'),'http://','',[rfReplaceAll,rfIgnoreCase]));
     End;
end;

procedure TPRINCIPAL.ImageWebbroserMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     PopupBrowser.Popup(PRINCIPAL.Width,PRINCIPAL.Height);
end;

procedure TPRINCIPAL.Configuraes1Click(Sender: TObject);
begin
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE ADMINISTRAR CONFIGURAÇÕES FINANCEIRAS') then
        CriarForm(TCAD_CaixasConfig, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.Configuraes2Click(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         mostraAvisoBloqueio();
         exit;
     end;
     
     if not verificaPermissao('ARQUIVOS >> SISTEMA >> CONFIGURAÇÕES = FORMULARIO') then
        Exit;
        
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE CONFIGURAÇÕES DE SISTEMA') then
        CriarForm(TCAD_Sistema, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.Cheques1Click(Sender: TObject);
begin
     CriarForm(TCAD_Cheques, PRINCIPAL,'0');
end;

procedure TPRINCIPAL.SpeedAtualizacaoClick(Sender: TObject);
begin
  Application.CreateForm(Tfrmproutupdate, frmproutupdate);
  frmproutupdate.ShowModal;
  frmproutupdate.free;
end;

procedure TPRINCIPAL.SpeedAtualizacaoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('EXISTEM ATUALIZAÇÕES PARA ESTE SISTEMA. CLIQUE PARA ATUALIZAR.');
end;

procedure TPRINCIPAL.SpeedBackupClick(Sender: TObject);
Var varSQL: TZQuery;
begin
     if unUtilitario.setMensagem('Deseja realizar o backup em todas as estações?'+#13+'Todos os usuários do sistema vão efetuar o backup de suas máquinas automaticamente.'+#13+'USE ESTE RECURSO COM CAUTELA, JÁ QUE HÁ RISCO DE PERDA DE DADOS CASO ALGUMA OPERAÇÃO ESTEJA SENDO EXECUTADA NO MOMENTO DO BACKUP.'+#13+'=> EXECUTE SOMENTE NA MÁQUINA SERVIDORA: '+getUser('SERVIDOR'),'confirma') = idYes then
     begin

          if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE FAZER BACKUP3 PANIC') then
             exit;

          If not fileexists(getConf('BKP_ORIGEM')) then
          Begin
              unUtilitario.setMensagem('O arquivo de origem [CONF] BKP_ORIGEM não foi encontrado, verifique as configurações do sistema antes de continuar.','erro');
              exit;
          end;

          checaConexao.Enabled := FALSE;
          ExportarWeb.Enabled := FALSE;
          leitorMensagem.Enabled := FALSE;

          varSQL := unUtilitario.getSQL('INSERT INTO LOG VALUES (NULL, ''BKP'', ''ROTINA DO SISTEMA'',NULL, CURRENT_TIMESTAMP, '+getUser('CODIGO_USUARIO')+', 0, ''ROTINA DE BACKUP DO SISTEMA'', ''SIM'')');

          varSQL := unUtilitario.getSQL('delete from tabela where NOMETEC = ''LOGIN'' and OBS = ''LOGIN >> BLOQUEADO'' ');

          PRINCIPAL.Conexao.Disconnect;

          WinExec(PChar(ExtractFilePath(ParamStr(0))+'instsvc.exe stop'), SW_NORMAL);

          espera(10,'Parando o serviço Célula...');

          if FileExists(Trim(getBackupBanco('BKP_DESTINO3'))) then
             DeleteFile(Trim(getBackupBanco('BKP_DESTINO3')));

          if NOT CopyFile(Pchar(Trim(getConf('BKP_ORIGEM'))),Pchar(Trim(getBackupBanco('BKP_DESTINO3'))),True) then
          Begin
               unUtilitario.setMensagem('Problemas ao duplicar a base de dados...'+#13+'O arquivo de destino pode estar em uso, e não pode ser sobreposto.','erro');
               WinExec(PChar(ExtractFilePath(ParamStr(0))+'instsvc.exe start'), SW_HIDE);
               espera(10,'Iniciando o serviço Célula novamente...');
               PRINCIPAL.Conexao.Connect;
               exit;
          end;

          WinExec(PChar(ExtractFilePath(ParamStr(0))+'instsvc.exe start'), SW_NORMAL);

          espera(10,'Iniciando o serviço Célula...');
          
          verificarBanco();

          //Limpando informações
          varSQL := unUtilitario.getSQL('delete from caixa_pgto');
          varSQL := unUtilitario.getSQL('delete from caixa_status');
          varSQL := unUtilitario.getSQL('delete from cheque');
          varSQL := unUtilitario.getSQL('delete from conta');
          varSQL := unUtilitario.getSQL('delete from conta_grupo');
          varSQL := unUtilitario.getSQL('delete from conta_subgrupo');
          varSQL := unUtilitario.getSQL('delete from conta_cheque');
          varSQL := unUtilitario.getSQL('delete from conta_saida');
          varSQL := unUtilitario.getSQL('delete from conta_entrada');
          varSQL := unUtilitario.getSQL('delete from contrato_garantia');
          varSQL := unUtilitario.getSQL('delete from erros');
          varSQL := unUtilitario.getSQL('delete from exportacao');
          varSQL := unUtilitario.getSQL('delete from exportacao');
          varSQL := unUtilitario.getSQL('delete from pessoa_interesse');
          varSQL := unUtilitario.getSQL('delete from pessoa_contrato where id_contrato in (select id_contrato from contrato where HONORARIO_APOS <> 1)');
          varSQL := unUtilitario.getSQL('delete from caixa_entrada where id_contrato in (select id_contrato from contrato where HONORARIO_APOS <> 1)');
          varSQL := unUtilitario.getSQL('delete from caixa_saida where id_contrato in (select id_contrato from contrato where HONORARIO_APOS <> 1)');
          varSQL := unUtilitario.getSQL('update imovel set ativo = ''XXX'' where id_imovel in (select id_imovel from contrato where HONORARIO_APOS <> 1)');
          varSQL := unUtilitario.getSQL('delete from contrato where id_contrato in (select id_contrato from contrato where HONORARIO_APOS <> 1)');
          
          PRINCIPAL.setMensagem('Backup feito com sucesso!');
          varSQL.Close;
          FreeAndNil(varSQL);
     end;
end;

procedure TPRINCIPAL.FecharTelaInteira1Click(Sender: TObject);
begin
     if not (WebBrowser1 = nil) then
     Begin
          WebBrowser1.Stop;
          WebBrowser1.Offline := True;
          WebBrowser1.Visible := False;
          FreeAndNil(WebBrowser1);
          BtnFechaNavegador.Visible := False;
     End;
end;

procedure TPRINCIPAL.Ferramentas1Click(Sender: TObject);
begin
     verificarBanco();
end;

procedure TPRINCIPAL.FluxodeCaixa1Click(Sender: TObject);
begin
     if verificaAdministrador() then
     begin
          Application.CreateForm(TCAD_FluxoCaixa, CAD_FluxoCaixa);
          CAD_FluxoCaixa.Show;
     end;
end;

procedure TPRINCIPAL.elaInteira1Click(Sender: TObject);
begin
     if PopupBrowser.Items.Find('Tela Inteira').Checked Then
     begin
          PopupBrowser.Items.Find('Tela Inteira').Checked := False;
          setTela('BROWSER_TELA_INTEIRA','NAO');
     end
     Else
     Begin
          PopupBrowser.Items.Find('Tela Inteira').Checked := True;
          setTela('BROWSER_TELA_INTEIRA','SIM');
     End;
end;

procedure TPRINCIPAL.Boletos1Click(Sender: TObject);
begin

     if not verificaPermissao('ARQUIVOS >> SISTEMA >> BOLETOS = FORMULARIO') then
        Exit;
        
     if verificaPermissaoAdministrador('ENTRAR NA TELA DE BOLETOS') then
     Begin
          Application.CreateForm(TFormConfBoleto,FormConfBoleto);
          FormConfBoleto.ShowModal;
     end;
end;

procedure TPRINCIPAL.Brasil1Click(Sender: TObject);
begin
     //Mapa Mundi
     FecharTelaInteira1Click(Sender);

     if PopupBrowser.Items.Find('Tela Inteira').Checked Then
     begin
          criaBrowser();
          WebBrowser1.Navigate('http://www.celuladigital.com.br/sistemas/imobiliaria/mapaMundi.html');
     end
     Else
     Begin
          Application.CreateForm(TFrmBrowser,FrmBrowser);
          FrmBrowser.setSite('http://www.celuladigital.com.br/sistemas/imobiliaria/mapaMundi.html');
     End;
end;

procedure TPRINCIPAL.mostraAvisoBloqueio();
begin
     PRINCIPAL.setMensagem('As funções do sistema foram limitadas. Favor verificar a sua janela do Navegador de Internet (Browser) para maiores informações.');
     ShellExecute(0, 'open', 'http://celuladigital.com.br/sistemas/suporte/kb/faq.php?id=2&lang=pt_br', nil, nil, SW_SHOWNORMAL);
end;

procedure TPRINCIPAL.BtnFechaNavegadorClick(Sender: TObject);
begin
     FecharTelaInteira1Click(Sender);
end;

procedure TPRINCIPAL.setID(Query: TZquery; campoID, tabela: String);
begin
  pegaID.Close;
  pegaID.SQL.Clear;
  pegaID.SQL.Add('SELECT ID FROM sp_gen_'+tabela+'_id');
  pegaID.Open;

  Query.FieldByName(campoID).Value := pegaID.Fields[0].Value;

  pegaID.Close;
end;


end.   
