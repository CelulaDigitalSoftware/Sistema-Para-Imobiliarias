unit FrmCaixas;

interface                                            

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmMatriz, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, jpeg, Mask, DBCtrls, Menus, DateUtils, math,
  ActnPopup, DBClient, unValidacao, unConfiguracao;

type
  TCAD_Caixas = class(TCAD_MATRIZ)
    BtnCaixaEntrada: TSpeedButton;
    BtnCaixaSaida: TSpeedButton;
    TabSheet1: TTabSheet;
    Tab_Pesquisa_Saida: TTabSheet;
    Panel3: TPanel;
    GrupoInformacao: TGroupBox;
    GrupoPessoa: TGroupBox;
    GrupoImovel: TGroupBox;
    GroupPagamentos: TGroupBox;
    GrupoInfo: TGroupBox;
    AbasPagamento: TPageControl;
    TabInfoPagamento: TTabSheet;
    TabInfoHistorico: TTabSheet;
    GrupoValores: TGroupBox;
    Label1: TLabel;
    LookCategoria: TDBLookupComboBox;
    LookGrupo: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    LookSubgrupo: TDBLookupComboBox;
    TabSheet8: TTabSheet;
    DBEditDocumento: TDBEdit;
    Label5: TLabel;
    EditPessoa: TEdit;
    BtnProcuraPessoa: TBitBtn;
    BtnProcuraImovel: TBitBtn;
    EditImovel: TEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    BtnProcuraContrato: TBitBtn;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    LabelPaga: TLabel;
    LabelVinculoSaida: TLabel;
    Label13: TLabel;
    LabelVinculoEntrada: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    LabelPendente: TLabel;
    Label18: TLabel;
    LabelVencida: TLabel;
    LabelGarantido: TLabel;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    Label22: TLabel;
    labelMulta: TLabel;
    DBEdit8: TDBEdit;
    EditValor_Multa: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    labelJuros: TLabel;
    Label27: TLabel;
    EditValor_Juros: TEdit;
    DBEdit9: TDBEdit;
    Label28: TLabel;
    Label30: TLabel;
    EditValor_Desconto: TEdit;
    DBEdit10: TDBEdit;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    Label32: TLabel;
    DBGrid1: TDBGrid;
    Label38: TLabel;
    DBEdit17: TDBEdit;
    DBMemo1: TDBMemo;
    Label40: TLabel;
    Btn_Pgto_Novo: TBitBtn;
    Btn_Pgto_Cancelar: TBitBtn;
    Btn_Pgto_Gravar: TBitBtn;
    LabelContasAnterioresTEXTO: TLabel;
    LabelContasAnteriores: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    Label_Total: TLabel;
    Label_TotalCalculo: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ComboCategoria: TComboBox;
    ComboGrupo: TComboBox;
    ComboSubgrupo: TComboBox;
    Btn_Relatorio: TSpeedButton;
    EditDiferenca_Dias: TEdit;
    DBGrid2: TDBGrid;
    Label29: TLabel;
    DBEdit2: TDBEdit;
    Label36: TLabel;
    DBEdit14: TDBEdit;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    Label39: TLabel;
    DBEdit16: TDBEdit;
    Label41: TLabel;
    DBEdit18: TDBEdit;
    Label42: TLabel;
    DBEdit19: TDBEdit;
    Label43: TLabel;
    DBMemo3: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    Label44: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Label45: TLabel;
    DBEdit20: TDBEdit;
    Label46: TLabel;
    DBEdit21: TDBEdit;
    Label47: TLabel;
    DBEditOperacao: TDBEdit;
    Label48: TLabel;
    DBEdit23: TDBEdit;
    Label49: TLabel;
    DBEdit24: TDBEdit;
    Label50: TLabel;
    DBEdit25: TDBEdit;
    Label51: TLabel;
    DBEdit26: TDBEdit;
    Label52: TLabel;
    DBEdit27: TDBEdit;
    Label53: TLabel;
    DBEdit28: TDBEdit;
    Label54: TLabel;
    DBEdit29: TDBEdit;
    Label55: TLabel;
    DBEdit30: TDBEdit;
    Label56: TLabel;
    DBMemo4: TDBMemo;
    DBEdit31: TDBEdit;
    Label57: TLabel;
    Panel7: TPanel;
    Label_TotalSaida: TLabel;
    Label_TotalCalculoSaida: TLabel;
    Panel8: TPanel;
    ValorSaida: TEdit;
    Valor_AtivoSaida: TCheckBox;
    ComboCategoriaSaida: TComboBox;
    ComboGrupoSaida: TComboBox;
    ComboSubgrupoSaida: TComboBox;
    TabCaixaDia: TTabSheet;
    Panel13: TPanel;
    diaPanelMenu: TPanel;
    painelRodapeCaixa: TPanel;
    diaBtnContasPagas: TBitBtn;
    diaBtnContasAPagar: TBitBtn;
    diaDate: TDateTimePicker;
    btnRelatorioCaixaDia: TBitBtn;
    BitBtn13: TBitBtn;
    Label66: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    diaLookupCategoria: TDBLookupComboBox;
    diaLookupGrupo: TDBLookupComboBox;
    diaLookupSubgrupo: TDBLookupComboBox;
    Label72: TLabel;
    Label73: TLabel;
    diaLabelPessoa: TLabel;
    diaLabelImovel: TLabel;
    diaBtnNovo: TImage;
    diaBtnGravar: TImage;
    Image5: TImage;
    Image6: TImage;
    diaEditValor: TEdit;
    diaEditDocumento: TEdit;
    diaEditRealDia: TEdit;
    diaEditPrevDia: TEdit;
    diaEditPrevEntrada: TEdit;
    diaEditRealEntrada: TEdit;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    diaEditPrevSaida: TEdit;
    diaEditRealSaida: TEdit;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    diaGridEntrada: TDBGrid;
    diaGridSaida: TDBGrid;
    diaLabelCaixa: TLabel;
    diaEditRealMes: TEdit;
    diaEditPrevMes: TEdit;
    Label68: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    PopupGrid: TPopupActionBar;
    AdicionarRegistros1: TMenuItem;
    VisualizarSeleo1: TMenuItem;
    LimparLista1: TMenuItem;
    ImprimirLista1: TMenuItem;
    N2: TMenuItem;
    LimparListaAssimqueimpresso1: TMenuItem;
    N3: TMenuItem;
    AoemDemanda1: TMenuItem;
    Grid_BuscaSaida: TDBGrid;
    Bevel2: TBevel;
    Label76: TLabel;
    Label77: TLabel;
    diaEditRealAno: TEdit;
    DBEdit32: TDBEdit;
    diaVencimento: TDateTimePicker;
    Label78: TLabel;
    diaCombo: TComboBox;
    Label79: TLabel;
    tabCadastroCheque: TTabSheet;
    Panel24: TPanel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label94: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    chequeNome: TEdit;
    DBGrid6: TDBGrid;
    Btn_Pessoas_Novo: TBitBtn;
    Btn_Pessoas_Cancelar: TBitBtn;
    Btn_Pessoas_Gravar: TBitBtn;
    btnCheque: TBitBtn;
    BitBtn10: TBitBtn;
    Bevel4: TBevel;
    chequeValor: TEdit;
    chequeEmissao: TEdit;
    chequeAnotacao: TEdit;
    chequeBanco: TEdit;
    chequeAgencia: TEdit;
    chequeConta: TEdit;
    chequeNumero: TEdit;
    Image3: TImage;
    Data_MaiorSaida: TDateTimePicker;
    Data_MenorSaida: TDateTimePicker;
    Label11: TLabel;
    LabelCheques: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBMemo2: TDBMemo;
    Label17: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Label33: TLabel;
    Boleto1: TMenuItem;
    Panel4: TPanel;
    ManipularContas1: TMenuItem;
    BaixaParcial1: TMenuItem;
    Tab_Boleto: TTabSheet;
    SpeedInformaBoleto: TSpeedButton;
    SpeedDadosBoleto: TSpeedButton;
    ListHistorico: TListBox;
    Label34: TLabel;
    CheckBoletos: TCheckBox;
    Panel5: TPanel;
    Label35: TLabel;
    diaEditQuantidade: TEdit;
    diaComboFreguencia: TComboBox;
    Label58: TLabel;
    Label59: TLabel;
    diaEditContrato: TEdit;
    CombinarContas1: TMenuItem;
    labelAviso: TLabel;
    NotaPromissria1: TMenuItem;
    contasEntradaDataSet: TClientDataSet;
    contasEntradaDataSetVENCIMENTO: TStringField;
    contasEntradaDataSetVALOR: TStringField;
    contasEntradaDataSetVENCIMENTO_ESCRITO: TStringField;
    contasEntradaDataSetEMPRESA: TStringField;
    contasEntradaDataSetEMPRESA_CNPJ: TStringField;
    contasEntradaDataSetEMPRESA_CRECI: TStringField;
    contasEntradaDataSetVALOR_ESCRITO: TStringField;
    contasEntradaDataSetEMPRESA_CIDADE: TStringField;
    contasEntradaDataSetPESSOA: TStringField;
    contasEntradaDataSetPESSOA_CPF: TStringField;
    contasEntradaDataSetPESSOA_ENDERECO: TStringField;
    contasEntradaDataSetCODIGO: TStringField;
    contasEntradaDataSetCONTRATO: TStringField;
    contasEntradaDataSetCAMPO1: TStringField;
    contasEntradaDataSetCAMPO2: TStringField;
    msgClienteEntrada: TLabel;
    msgClienteSaida: TLabel;
    btnSegundaVia: TSpeedButton;
    N1: TMenuItem;
    EnviarporEmailBoletos1: TMenuItem;
    checkBoletoCE: TCheckBox;
    SpeedGeraBoletoUnico: TSpeedButton;
    Image4: TImage;
    SpeedGeraBoletoAgrupado: TSpeedButton;
    Memo1: TMemo;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    ComboAnotacoes: TComboBox;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    checkGarantida: TCheckBox;
    N4: TMenuItem;
    GerarRemessaeRetorno1: TMenuItem;
    procedure GerarRemessaeRetorno1Click(Sender: TObject);
    procedure DBEditOperacaoDblClick(Sender: TObject);
    procedure SpeedGeraBoletoAgrupadoClick(Sender: TObject);
    procedure SpeedGeraBoletoUnicoClick(Sender: TObject);
    procedure CheckBoletosClick(Sender: TObject);
    procedure EnviarporEmailBoletos1Click(Sender: TObject);
    procedure btnSegundaViaClick(Sender: TObject);
    procedure msgClienteSaidaDblClick(Sender: TObject);
    procedure msgClienteEntradaDblClick(Sender: TObject);
    procedure Grid_BuscaSaidaCellClick(Column: TColumn);
    procedure Grid_BuscaCellClick(Column: TColumn);
    procedure NotaPromissria1Click(Sender: TObject);
    procedure DBEditDocumentoChange(Sender: TObject);
    procedure SpeedGeraBoletoEmailClick(Sender: TObject);
    procedure CombinarContas1Click(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_DireitaClick(Sender: TObject);
    procedure Btn_EsquerdaClick(Sender: TObject);
    procedure SpeedDadosBoletoClick(Sender: TObject);
    procedure SpeedRetiraBoletoClick(Sender: TObject);
    procedure Tab_BoletoShow(Sender: TObject);
    procedure SpeedInformaBoletoClick(Sender: TObject);
    procedure BaixaParcial1Click(Sender: TObject);
    procedure ManipularContas1Click(Sender: TObject);
    procedure Tab_CadastroHide(Sender: TObject);
    procedure Tab_CadastroShow(Sender: TObject);
    procedure Boleto1Click(Sender: TObject);
    procedure Grid_BuscaTitleClick(Column: TColumn);
    procedure DBEdit12DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ChequesShow(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure Btn_Pessoas_GravarClick(Sender: TObject);
    procedure Btn_Pessoas_CancelarClick(Sender: TObject);
    procedure Btn_Pessoas_NovoClick(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure tabCadastroChequeShow(Sender: TObject);
    procedure Btn_ImprimirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Btn_RelatorioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Btn_RelatorioClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure Valor_AtivoSaidaClick(Sender: TObject);
    procedure Grid_BuscaSaidaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure Grid_BuscaDblClick(Sender: TObject);
    procedure LabelPagaDblClick(Sender: TObject);
    procedure TabSheet8Exit(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure DBEdit18DblClick(Sender: TObject);
    procedure DBEdit16DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Hide(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Tab_InformacoesHide(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TabInfoHistoricoShow(Sender: TObject);
    procedure DBEdit17DblClick(Sender: TObject);
    procedure TabInfoPagamentoShow(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_Pgto_GravarClick(Sender: TObject);
    procedure Btn_Pgto_CancelarClick(Sender: TObject);
    procedure Btn_Pgto_NovoClick(Sender: TObject);
    procedure Grid_BuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDiferenca_DiasDblClick(Sender: TObject);
    procedure EditDiferenca_Dias_InfoDblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure EditValor_DescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValor_DescontoChange(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure EditValor_JurosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9Change(Sender: TObject);
    procedure EditValor_JurosChange(Sender: TObject);
    procedure EditValor_MultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValor_MultaChange(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditImovelDblClick(Sender: TObject);
    procedure EditPessoaDblClick(Sender: TObject);
    procedure Aesemdemanda2Click(Sender: TObject);
    procedure LimparSeleo1Click(Sender: TObject);
    //procedure Aesemdemanda1Click(Sender: TObject);
    //procedure A1Click(Sender: TObject);
    procedure LookSubgrupoCloseUp(Sender: TObject);
    procedure LookGrupoCloseUp(Sender: TObject);
    procedure LookCategoriaCloseUp(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure BtnProcuraContratoClick(Sender: TObject);
    procedure BtnProcuraImovelClick(Sender: TObject);
    procedure BtnProcuraPessoaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LabelPendenteDblClick(Sender: TObject);
    procedure BtnCaixaSaidaClick(Sender: TObject);
    procedure BtnCaixaEntradaClick(Sender: TObject);
    procedure Grid_BuscaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Valor_AtivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tab_InformacoesShow(Sender: TObject);
    procedure CamposKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure diaBtnContasPagasClick(Sender: TObject);
    procedure diaBtnContasAPagarClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure diaGridEntradaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure diaGridSaidaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure diaGridEntradaDblClick(Sender: TObject);
    procedure diaGridSaidaDblClick(Sender: TObject);
    procedure diaBtnGravarClick(Sender: TObject);
    procedure diaBtnNovoClick(Sender: TObject);
    procedure TabCaixaDiaShow(Sender: TObject);
    procedure btnRelatorioCaixaDiaClick(Sender: TObject);
    procedure AdicionarRegistros1Click(Sender: TObject);
    procedure PopupGridPopup(Sender: TObject);
    procedure VisualizarSeleo1Click(Sender: TObject);
    procedure LimparLista1Click(Sender: TObject);
    procedure AoemDemanda1Click(Sender: TObject);
    procedure LimparListaAssimqueimpresso1Click(Sender: TObject);
    procedure LabelGarantidoDblClick(Sender: TObject);
    procedure diaLabelCaixaDblClick(Sender: TObject);
    procedure diaDateCloseUp(Sender: TObject);
    procedure diaComboChange(Sender: TObject);
    procedure recuperaMensagens();
  private
    { Private declarations }
  public
    { Public declarations }
    sqlInterno, Caixa, diaSelectSaida, diaSelectEntrada, diaSelecao: String;
    SelecaoEntrada: TStringList;
    Where: String;
    id_pessoa, id_imovel: Integer;
    diaSQLEntrada, diaSQLSaida: TZQuery;
    diaDSEntrada, diaDSSaida: TDataSource;
    procedure setCaixa(Cx: String);
    procedure setLabelPaga();
    procedure setCaixaPago();
    procedure setLabelVinculoSaida();
    procedure setLabelVinculoEntrada();
    procedure setLabelPendente();
    procedure setLabelVencida();
    procedure setLabelGarantido();
//    procedure setEditValor_TotalPago();
//    procedure setEditValor_TotalFaltando();
      procedure verificaPermissaoTela();
    procedure setLabelContasAnteriores();
    procedure setDocumento();
    procedure setValorTotal();
    procedure setCalculoJuros();
    procedure setCalculoMulta();
    procedure setCalculoDesconto();
    procedure setDiferencaDias();
    procedure setRecuperaPagamentos();
    procedure setContaPaga(estado: String);
    procedure setVerificaContaPaga();
    procedure setAbaPesquisaCaixas(componenteZeos: TZQuery; Cx:String);
    function setCalculo(): Double;
    procedure setBuscaRegistros();
    procedure setLimpaComponentes();
    procedure caixaRNovo();
    procedure caixaRGravar();
    procedure caixaRBuscaContasPagas();
    procedure caixaRBuscaContasAPagar();
    procedure caixaRBuscaContasTodas();
    procedure caixaRAtualizar();
    procedure caixaRImprimir();
    procedure caixaRCalculaDia();
    procedure caixaRCalculaEntrada();
    procedure caixaRCalculaSaida();
    procedure caixaRCalculaTudo();
    procedure caixaRCalculaMes();
    procedure caixaFormataDinheiro();
    procedure mostraContaEntrada(conta: integer);
    procedure mostraContaSaida(conta: integer);
    procedure editaCheque(editar: Boolean);
    procedure limpaCheque();
    procedure populaCheque();
    procedure Pesquisar();

  end;

var
  CAD_Caixas: TCAD_Caixas;
  sqlGrid: TZQuery;

implementation

uses FrmDM_FINANCEIRO, unUtilitario, FrmPrincipal, unCamposBusca, unMsg,
  FrmPessoa, FrmImovel, FrmAluguel, FrmContaDemanda,
  unFinanceiro, FrmCaixasSimples, unCaixasSimples, FrmDM_RELATORIOS, unINI,
  FrmCheques, FrmDM_Cadastro, unLog, FormBrowser, FrmDM_REL, FrmMensagem, unCobreBem;
  //FrmCaixasSistema

{$R *.dfm}


procedure TCAD_Caixas.Pesquisar();
begin

  Grid_Busca.PopupMenu := PopupGrid;
  Grid_BuscaSaida.PopupMenu := PopupGrid;
  msgClienteEntrada.Caption := '';
  msgClienteSaida.Caption := '';
  msgClienteEntrada.Tag := 0;
  msgClienteSaida.Tag := 0;

     if Tab_Pesquisa.Showing then
     Begin
          Valor.Color := clMoneyGreen;
          Valor.Repaint;

          setBuscaRegistros();

          Valor.Color := clWhite;
          Valor.Repaint;

          Valor.SetFocus;
     end;

     if Tab_Pesquisa_Saida.Showing then
     Begin
          ValorSaida.Color := clSkyBlue;
          ValorSaida.Repaint;

          setBuscaRegistros();

          ValorSaida.Color := clWhite;
          ValorSaida.Repaint;

          ValorSaida.SetFocus;
     end;
end;



procedure TCAD_Caixas.editaCheque(editar: Boolean);
begin
     if editar then
     Begin
          btnCheque.Enabled := True;
          DM_FINANCEIRO.ZChequeConta.Edit;
     end
     else
          btnCheque.Enabled := False;
end;

procedure TCAD_Caixas.mostraContaEntrada(conta: integer);
begin
     setCaixa('ENTRADA');
     Valor.Text := 'CODIGO '+IntToStr(Conta);
     ValorSaida.Text := '';
     Pesquisar();
     Tab_Cadastro.Show;
     Tab_Informacoes.Show;
     Tab_InformacoesShow(Self);
     DM_FINANCEIRO.ZCaixaBackup.Close;
     Label_TotalSaida.Caption := 'R$ 0,00';
     Label_TotalCalculoSaida.Caption := 'R$ 0,00';
end;

procedure TCAD_Caixas.mostraContaSaida(conta: integer);
begin
     setCaixa('SAIDA');
     ValorSaida.Text := 'CODIGO '+IntToStr(Conta);
     Valor.Text := '';
     Pesquisar();
     Tab_Cadastro.Show;
     Tab_Informacoes.Show;
     Tab_InformacoesShow(Self);
     DM_FINANCEIRO.ZCaixaBackup.Close;
     Label_Total.Caption := 'R$ 0,00';
     Label_TotalCalculo.Caption := 'R$ 0,00';
end;

procedure TCAD_Caixas.msgClienteEntradaDblClick(Sender: TObject);
begin

  if msgClienteEntrada.Tag > 0 Then
  Begin
       with TCAD_Mensagem.Create(Application) do
       try
          mostraMensagemRecebidaCliente(msgClienteEntrada.Tag);
          ShowModal;
       finally
              Free;
       end;
  End;

end;

procedure TCAD_Caixas.msgClienteSaidaDblClick(Sender: TObject);
begin
  if msgClienteSaida.Tag > 0 Then
  Begin
       with TCAD_Mensagem.Create(Application) do
       try
          mostraMensagemRecebidaCliente(msgClienteSaida.Tag);
          ShowModal;
       finally
              Free;
       end;
  End;

end;

procedure TCAD_Caixas.NotaPromissria1Click(Sender: TObject);
var varSQL: TZQuery;
    dia, mes, ano : Word;
    diaFormato, anoFormato: String;
begin

  if SelecaoEntrada.Count = 0 then
  Begin
       unUtilitario.setMensagem('Selecione as contas que deseja gerar Notas Promissórias.','informa');
       Exit;
  end;

  varSQL := unUtilitario.getSelect('select CE.*, I.*, P.*, L.*, L.nome as LOGRADOURO, b.nome as BAIRRO, c.nome as CIDADE, u.sigla as ESTADO, (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref, CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto)) as VR '+
         ' from caixa_entrada ce '+
         ' inner join contrato con on con.id_contrato = ce.id_contrato '+
         ' inner join pessoa p on p.id_pessoa = ce.id_pessoa '+
         ' inner join imovel i on i.id_imovel = con.id_imovel '+
         ' inner join logradouro l on l.id_logradouro = i.id_logradouro '+
         ' inner join bairro b on b.id_bairro = l.id_bairro '+
         ' inner join cidade c on c.id_cidade = l.id_cidade '+
         ' inner join uf u on u.id_sigla = l.id_sigla where ce.id_caixa in ('+unUtilitario.alinhaStringlist(SelecaoEntrada)+')');

  varSQL.SQL.Text;
  contasEntradaDataSet.CreateDataSet;
  contasEntradaDataSet.Open;
  contasEntradaDataSet.EmptyDataSet;

  while NOT varSQL.Eof do
  Begin
       DecodeDate(varSQL.FieldByName('DATA_REF').AsDateTime, ano, mes, dia);
       diaFormato := StringReplace(unValidacao.Extenso(dia),'REAIS', '',[rfReplaceAll]);
       anoFormato := StringReplace(unValidacao.Extenso(ano),'REAIS', '',[rfReplaceAll]);

       contasEntradaDataSet.Append;
       contasEntradaDataSet.FieldByName('VENCIMENTO').AsString := formatdatetime('dd "de" mmmm "de" yyyy',varSQL.FieldByName('DATA_REF').AsDateTime);
       contasEntradaDataSet.FieldByName('VALOR').AsString := unUtilitario.getCurrToStr(varSQL.FieldByName('VR').AsFloat, false);
       contasEntradaDataSet.FieldByName('VENCIMENTO_ESCRITO').AsString := diaFormato+' dia(s) do mês de '+UpperCase(formatdatetime('mmmm',varSQL.FieldByName('DATA_REF').AsDateTime))+' de '+anoFormato;
       contasEntradaDataSet.FieldByName('EMPRESA').AsString := getConf('EMPRESA_RAZAO');
       contasEntradaDataSet.FieldByName('EMPRESA_CNPJ').AsString := getConf('EMPRESA_CNPJ');
       contasEntradaDataSet.FieldByName('EMPRESA_CRECI').AsString := getConf('EMPRESA_CRECI');
       contasEntradaDataSet.FieldByName('VALOR_ESCRITO').AsString := unValidacao.Extenso(varSQL.FieldByName('VR').AsFloat);
       contasEntradaDataSet.FieldByName('EMPRESA_CIDADE').AsString := getConf('EMPRESA_CIDADE');
       contasEntradaDataSet.FieldByName('PESSOA').AsString := varSQL.FieldByName('NOME').AsString;
       contasEntradaDataSet.FieldByName('PESSOA_CPF').AsString := varSQL.FieldByName('CPF_CNPJ').AsString;
       contasEntradaDataSet.FieldByName('PESSOA_ENDERECO').AsString := varSQL.FieldByName('LOGRADOURO').AsString+' '+varSQL.FieldByName('NUMERO').AsString+' '+varSQL.FieldByName('COMPLEMENTO').AsString+'-'+varSQL.FieldByName('BAIRRO').AsString+'-'+varSQL.FieldByName('CIDADE').AsString+'/'+varSQL.FieldByName('ESTADO').AsString;
       contasEntradaDataSet.FieldByName('CODIGO').AsString := varSQL.FieldByName('ID_CAIXA').AsString;
       contasEntradaDataSet.FieldByName('CONTRATO').AsString := varSQL.FieldByName('ID_CONTRATO').AsString;
       contasEntradaDataSet.FieldByName('CAMPO1').AsString := ''; //CAMPO EXTRA PARA PREPARAR COMPONENTE
       contasEntradaDataSet.FieldByName('CAMPO2').AsString := ''; //CAMPOEXTRA PARA PREPARAR COMPONENTE
       contasEntradaDataSet.Post;
       varSQL.Next
  End;

  DM_REL.RV_Query.DataSet := contasEntradaDataSet;

  DM_REL.RV_IMPRESSAO.CLOSE;
  DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_CAIXA_NOTA_PROMISSORIA1.rav';
  DM_REL.RV_IMPRESSAO.Open;

  DM_REL.RV_IMPRESSAO.Execute;

  if (getTela('SELECAO_LIMPA') = 'SIM') OR (getTela('SELECAO_LIMPA') = 'NULO')then
  Begin
       SelecaoEntrada.Clear;
       PRINCIPAL.SELECAO.Clear;
  end;

  contasEntradaDataSet.DisableControls;
  try
     contasEntradaDataSet.EmptyDataSet;
  finally
         contasEntradaDataSet.EnableControls;
         contasEntradaDataSet.close;
         DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;
  end;
end;

procedure TCAD_Caixas.PopupGridPopup(Sender: TObject);
begin
  inherited;

  IF NOT BtnCaixaEntrada.Flat and Tab_Pesquisa_Saida.Showing tHEN
  begin
       unUtilitario.setMensagem('Mude o Caixa para efetuar a operação. (Caixa Saída)','informa');
       Exit;
  end;

  IF BtnCaixaEntrada.Flat and Tab_Pesquisa.Showing tHEN
  begin
       unUtilitario.setMensagem('Mude o Caixa para efetuar a operação. (Caixa Entrada)','informa');
       Exit;
  end;

  if getTela('SELECAO_LIMPA') = 'NAO' Then
     PopupGrid.Items.Find('Limpar Lista depois da Ação').Checked := False
  Else
      PopupGrid.Items.Find('Limpar Lista depois da Ação').Checked := True;


end;

procedure TCAD_Caixas.setVerificaContaPaga();
//VERIFICA SE A CONTA ESTÁ PAGA E DESABILITA COMPONENTES VISUAIS
Var ValorFaltando: Currency;
begin
     if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
        Exit;

     //setEditValor_TotalFaltando();

     //ValorFaltando := getStrToCurr(EditValor_TotalFaltando.Text);

     if ValorFaltando <= 0 then
          setContaPaga('SIM')
     Else
          setContaPaga('NAO');
end;

procedure TCAD_Caixas.setContaPaga(estado: String);
begin

     if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
        Exit;

     if estado = 'SIM' then
     Begin
          //GroupValores.Enabled := False;
          DM_FINANCEIRO.ZCaixaDATA_PGTO.Value := Date();
          DM_FINANCEIRO.ZCaixaHORA_PGTO.Value := Time();
          DM_FINANCEIRO.ZCaixaPAGO.AsString := 'SIM';
          LabelPaga.Caption := 'SIM';
     end;

     if estado = 'NAO' then
     Begin
          //GroupValores.Enabled := True;
          GroupPagamentos.Enabled := True;
          DM_FINANCEIRO.ZCaixaDATA_PGTO.AsVariant := NULL;
          DM_FINANCEIRO.ZCaixaHORA_PGTO.AsVariant := NULL;
          DM_FINANCEIRO.ZCaixaPAGO.AsString := 'NAO';
          LabelPaga.Caption := 'NÃO';
     end;

     setLabelPaga();
end;

procedure TCAD_Caixas.setDiferencaDias();
begin
    if not DM_FINANCEIRO.ZCaixa.Active then
        Exit;

    if DM_FINANCEIRO.ZCaixaDATA_PGTO.IsNull then
    Begin
         EditDiferenca_Dias.Text :=  IntToStr(DaysBetween(Date(), DM_FINANCEIRO.ZCaixaDATA_REF.AsDateTime));
         //EditDiferenca_Dias_Info.Text := EditDiferenca_Dias.Text;
    end
    Else
    Begin
         EditDiferenca_Dias.Text := IntToStr(DaysBetween(DM_FINANCEIRO.ZCaixaDATA_PGTO.Value, DM_FINANCEIRO.ZCaixaDATA_REF.Value));
         //EditDiferenca_Dias_Info.Text := EditDiferenca_Dias.Text;
    end;

end;

procedure TCAD_Caixas.setCalculoMulta();
begin

Try

    if not DM_FINANCEIRO.ZCaixa.Active then
        Exit;

     if DM_FINANCEIRO.ZCaixaVALOR.IsNull OR (DM_FINANCEIRO.ZCaixaVALOR.Value <= 0) Then
     Begin
        EditValor_Multa.Text := '0,00';
        Exit;
     end;

     if NOT (Length(Trim(DBEdit8.Text)) > 0) Then
     Begin
        EditValor_Multa.Text := '0,00';
        DM_FINANCEIRO.ZCaixaVALOR_MULTA.Value := 0;
        Exit;
     end;

     if NOT (Length((EditValor_Multa.Text)) > 0) Then
     Begin
        EditValor_Multa.Text := '0';
        DM_FINANCEIRO.ZCaixaVALOR_MULTA.Value := 0;
        Exit;
     end;

     if DBEdit8.Focused then
          EditValor_Multa.Text := getCurrToStr(SimpleRoundTo((DM_FINANCEIRO.ZCaixaVALOR.AsFloat * getStrToCurr(DBEdit8.Text))/100,-2),FALSE)
     Else
     if EditValor_Multa.Focused then
          DM_FINANCEIRO.ZCaixaVALOR_MULTA.AsFloat := SimpleRoundTo((getStrToCurr(EditValor_Multa.Text) * 100)/DM_FINANCEIRO.ZCaixaVALOR.AsFloat,-2)
     Else
         if DBEdit7.Focused then
            EditValor_Multa.Text := getCurrToStr(SimpleRoundTo((getStrToCurr(DBEdit7.text) * DM_FINANCEIRO.ZCaixaVALOR_MULTA.AsFloat)/100,-2),FALSE)
         Else
             EditValor_Multa.Text := getCurrToStr(SimpleRoundTo((DM_FINANCEIRO.ZCaixaVALOR.AsFloat * DM_FINANCEIRO.ZCaixaVALOR_MULTA.AsFloat)/100,-2),FALSE);

    //EditValor_Multa_Info.Text := getCurrToStr(SimpleRoundTo(getStrToCurr(EditValor_Multa.Text)-2), TRUE);
Except
      EditValor_Multa.Text := '0,00';
      //EditValor_Multa_Info.Text := 'R$0,00';
      Exit;
end;

end;

procedure TCAD_Caixas.setCalculoJuros();
begin

Try

     if not DM_FINANCEIRO.ZCaixa.Active then
        Exit;

     if DM_FINANCEIRO.ZCaixaVALOR.IsNull OR (DM_FINANCEIRO.ZCaixaVALOR.Value = 0) Then
     Begin
        EditValor_Juros.Text := '0,00';
        Exit;
     end;

     if NOT (Length(Trim(DBEdit9.Text)) > 0) Then
     Begin
        EditValor_Juros.Text := '0,00';
        DM_FINANCEIRO.ZCaixaVALOR_JUROS.Value := 0;
        Exit;
     end;

     if NOT (Length(Trim(EditValor_Juros.Text)) > 0) Then
     Begin
        EditValor_Juros.Text := '0';
        DM_FINANCEIRO.ZCaixaVALOR_JUROS.Value := 0;
        Exit;
     end;

     if DBEdit9.Focused then
     Begin
          if StrToInt(EditDiferenca_Dias.Text) > 0 then
             EditValor_Juros.Text := getCurrToStr(SimpleRoundTo(((DM_FINANCEIRO.ZCaixaVALOR.AsFloat * StrToFloat(DBEdit9.Text))/100) * StrToInt(EditDiferenca_Dias.Text),-2), FALSE)
          else
              EditValor_Juros.Text := getCurrToStr(SimpleRoundTo((DM_FINANCEIRO.ZCaixaVALOR.AsFloat * StrToFloat(DBEdit9.Text))/100,-2), FALSE);

     end
     Else
     if EditValor_Juros.Focused then
          DM_FINANCEIRO.ZCaixaVALOR_JUROS.AsFloat := SimpleRoundTo((getStrToCurr(EditValor_Juros.Text) * 100)/DM_FINANCEIRO.ZCaixaVALOR.AsFloat,-3)
     Else
         if DBEdit7.Focused then
            EditValor_Juros.Text := FloatToStr(SimpleRoundTo((getStrToCurr(DBEdit7.Text) * DM_FINANCEIRO.ZCaixaVALOR_JUROS.AsFloat)/100,-3))
         Else
             EditValor_Juros.Text := FloatToStr(SimpleRoundTo((DM_FINANCEIRO.ZCaixaVALOR.AsFloat * DM_FINANCEIRO.ZCaixaVALOR_JUROS.AsFloat)/100,-3));

     //EditValor_Juros_Info.Text := getCurrToStr(SimpleRoundTo(getStrToCurr(EditValor_Juros.Text),-2), FALSE);
Except
      EditValor_Juros.Text := '0,00';
      //EditValor_Juros_Info.Text := 'R$0,00';
      Exit;
end;

end;

procedure TCAD_Caixas.setCalculoDesconto();
begin
     SetRoundMode(rmNearest);
Try

     if not DM_FINANCEIRO.ZCaixa.Active then
        Exit;

     if DM_FINANCEIRO.ZCaixaVALOR.IsNull OR (DM_FINANCEIRO.ZCaixaVALOR.Value = 0) Then
     Begin
        EditValor_Desconto.Text := '0,00';
        DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.Value := 0;
        Exit;
     end;

     if NOT (Length(Trim(DBEdit10.Text)) > 0) Then
     Begin
        EditValor_Desconto.Text := '0';
        DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.Value := 0;
        Exit;
     end;

     if DBEdit10.Focused then
          EditValor_Desconto.Text := FloatToStr(SimpleRoundTo((StrToFloat(DBEdit10.Text) * 100)/DM_FINANCEIRO.ZCaixaVALOR.AsFloat,-3))
     Else
     if EditValor_Desconto.Focused then
          DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.AsFloat := SimpleRoundTo((getStrToCurr(EditValor_Desconto.Text) * DM_FINANCEIRO.ZCaixaVALOR.AsFloat)/100,-3)
     Else
         if NOT (Length(DBEdit10.Text) > 0) OR NOT (DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.Value > 0) Then
         Begin
              EditValor_Desconto.Text := '0,00';
              Exit;
         end
         Else
             if DBEdit7.Focused then
                EditValor_Desconto.Text := FloatToStr(SimpleRoundTo((DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.AsFloat * 100)/getStrToCurr(DBEdit7.Text),-3))
             Else
                 EditValor_Desconto.Text := FloatToStr(SimpleRoundTo((DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.AsFloat * 100)/DM_FINANCEIRO.ZCaixaVALOR.AsFloat,-3));

Except
      EditValor_Desconto.Text := '0,00';
      Exit;
end;

end;

procedure TCAD_Caixas.setValorTotal();
begin
     DM_FINANCEIRO.ZCaixa.Edit;
     DM_FINANCEIRO.ZCaixaVALORREAL.AsFloat := setCalculo();
     //setEditValor_TotalFaltando();
end;

procedure TCAD_Caixas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  //PRINCIPAL.CriarForm(TCAD_CaixasSistema, self, '1');
end;

procedure TCAD_Caixas.SpeedGeraBoletoUnicoClick(Sender: TObject);
begin
  inherited;
  if NOT DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
  begin
     if getBoleto('CobreBem') = 'SIM' then
        gerarBoletoCobrebem(DM_FINANCEIRO.ZCaixaID_CAIXA.AsString, TRUE, 'MOSTRAR')
     else
     Begin
          PRINCIPAL.preparaBoleto(DM_FINANCEIRO.ZCaixaID_CAIXA.AsInteger, TRUE);
          PRINCIPAL.Boleto.Visualizar;
     end;
     Btn_Gravar.Visible := False;
     Tab_BoletoShow(Sender);

  end;
end;

procedure TCAD_Caixas.SpeedGeraBoletoAgrupadoClick(Sender: TObject);
begin

  if NOT DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
  begin
     if getBoleto('CobreBem') = 'SIM' then
        gerarBoletoCobrebem(DM_FINANCEIRO.ZCaixaID_CAIXA.AsString, FALSE, 'MOSTRAR')
     else
     Begin
          PRINCIPAL.preparaBoleto(DM_FINANCEIRO.ZCaixaID_CAIXA.AsInteger, FALSE);
          PRINCIPAL.Boleto.Visualizar;
     end;
     Btn_Gravar.Visible := False;
     Tab_BoletoShow(Sender);

  end;

end;

procedure TCAD_Caixas.SpeedGeraBoletoEmailClick(Sender: TObject);
begin
     //PRINCIPAL.enviaBoletoEmail(DM_FINANCEIRO.ZCaixaID_CAIXA.AsInteger);
end;

procedure TCAD_Caixas.SpeedInformaBoletoClick(Sender: TObject);
var varSQL: TZQuery;
begin

     if (DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull) OR (DM_FINANCEIRO.ZCaixaID_PESSOA.IsNull) then
     begin
        SpeedInformaBoleto.Caption := 'Selecione uma conta para ver e editar estas informações!';
        EXIT;
     end;

     if Pos('[BOLETO_EMITIDO',' '+DM_FINANCEIRO.ZCaixaOPERACAO.AsString) > 0 then
          SpeedInformaBoleto.Caption := 'Boleto JÁ emitido!'
     else
          SpeedInformaBoleto.Caption := 'Boleto ainda NÃO emitido.';

     if DM_FINANCEIRO.ZCaixaDATA_PGTO.IsNull then
     Begin
          SpeedGeraBoletoAgrupado.Visible := TRUE;
          //SpeedGeraBoletoUnico.Visible := TRUE;
     end
     else
     Begin
          SpeedGeraBoletoAgrupado.Visible := FALSE;
          //SpeedGeraBoletoUnico.Visible := FALSE;
     end;
     
end;

procedure TCAD_Caixas.SpeedRetiraBoletoClick(Sender: TObject);
var varSQL: TZQuery;
begin
{   Não remover ainda, pois vamos ver como fica para o usuário final
  if unUtilitario.setMensagem('Deseja retirar a marcação que este registro gerou um boleto?','confirma') = IDYES then
  Begin

     varSQL := unUtilitario.getSelect('select count(id_imovel) from caixa_ENTRADA where operacao like ''%BOLETO_EMITIDO%'' and id_caixa = '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);

     if varSQL.Fields[0].AsInteger > 0 then
     Begin
          DM_FINANCEIRO.ZCaixaOPERACAO.AsString := unUtilitario.desmarcarBoletos(DM_FINANCEIRO.ZCaixaOPERACAO.AsString);
          DM_FINANCEIRO.ZCaixa.ApplyUpdates;
          DM_FINANCEIRO.ZCaixa.Edit;

          setLog(DM_FINANCEIRO.ZCaixaID_CAIXA.AsString, 'RETIRA BOLETO', 'RASTREAMENTO DE COMANDOS', DM_FINANCEIRO.ZCaixa);

          Tab_BoletoShow(Sender);
     end
     else
     Begin
          PRINCIPAL.setMensagem('Não foi encontrado nenhuma marcação de boleto neste registro...');
     end;

     FreeAndNil(varSQL);
  end;
  }
end;

procedure TCAD_Caixas.SpeedButton4Click(Sender: TObject);
begin
  inherited;
Try
  DM_FINANCEIRO.DS_CaixaCategoria.DataSet.Close;
  DM_FINANCEIRO.DS_CaixaCategoria.DataSet.Open;

  DM_FINANCEIRO.DS_CaixaGrupo.DataSet.Close;
  DM_FINANCEIRO.DS_CaixaGrupo.DataSet.Open;

  DM_FINANCEIRO.DS_CaixaSubgrupo.DataSet.Close;
  DM_FINANCEIRO.DS_CaixaSubgrupo.DataSet.Open;
except
      unUtilitario.setMensagem('Erro ao atualizar os registos!','erro');
end;

end;

procedure TCAD_Caixas.SpeedDadosBoletoClick(Sender: TObject);
begin
  inherited;
            if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull or (Length(Trim(DBEdit32.Text)) = 0) Then
            Begin
                 unUtilitario.setMensagem('Selecione a conta!','informa');
                 exit;
            end;

            unUtilitario.setMensagem('==> Informações atuais do Boleto:'+#13+unUtilitario.informacaoBoletos(DM_FINANCEIRO.ZCaixaOPERACAO.AsString),'informa');
end;

function TCAD_Caixas.setCalculo(): Double;
Var varSQL: TZQuery;
    DataPgto: string;

    Multa, Desconto, Juros, Valor: String;
Begin

     if NOT (DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull) or NOT (DM_FINANCEIRO.ZCaixa.Active) then
     begin

          if DM_FINANCEIRO.ZCaixaDATA_PGTO.IsNull then
             DataPgto := StringReplace(DatetoStr(Date()),'/','.',[rfReplaceAll])
          Else
              DataPgto := StringReplace(DateToStr(DM_FINANCEIRO.ZCaixaDATA_PGTO.AsDateTime),'/','.', [rfReplaceAll]);

          //VALOR
          if DM_FINANCEIRO.ZCaixaVALOR.IsNull then
             Valor := '0'
          Else
              Valor := StringReplace(CurrToStr(getStrToCurr(DM_FINANCEIRO.ZCaixaVALOR.AsString)),',','.',[rfReplaceAll]);;

          //JUROS
          if DM_FINANCEIRO.ZCaixaVALOR_JUROS.IsNull then
             Juros := '0'
          Else
              Juros :=  StringReplace(CurrToStr(getStrToCurr(DM_FINANCEIRO.ZCaixaVALOR_JUROS.AsString)),',','.',[rfReplaceAll]);



          //MULTA
          if DM_FINANCEIRO.ZCaixaVALOR_MULTA.IsNull then
             Multa := '0'
          Else
              Multa := StringReplace(CurrToStr(getStrToCurr(DM_FINANCEIRO.ZCaixaVALOR_MULTA.AsString)),',','.',[rfReplaceAll]);

          //DESCONTO
          if DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.IsNull then
             Desconto := '0'
          Else
              Desconto := StringReplace(CurrToStr(getStrToCurr(DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.AsString)),',','.',[rfReplaceAll]);

          varSQL :=  unUtilitario.getSelect('select result as resultado from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', '''+StringReplace(DateToStr(DM_FINANCEIRO.ZCaixaDATA_REF.AsDateTime),'/','.',[rfReplaceAll])+''', '''+DataPgto+''', '+ Valor +', '+ Juros +', '+ Multa +', '+ Desconto +')');

          if varSQL.FieldCount > 0 then
          Begin
               Result := varSQL.Fields[0].AsFloat;
          end
          Else
              Result := 0;

          //DIFERENCA DE VALOR COBRADO E VALOR ORIGINAL
          //EditValor_Valores_Info.Text := getCurrToStr(Result - getStrToCurr(Valor),TRUE);
     end
     Else
     Begin
         Result := 0;
         //EditValor_Valores_Info.Text := 'R$0,00';
     end;
end;



procedure TCAD_Caixas.setDocumento();
Var I, J: Integer;
    Doc, strAntigo: String;
begin

if NOT TabCaixaDia.Visible Then
Begin
     Doc := DM_FINANCEIRO.ZCaixa.FieldByName('DOCUMENTO').AsString;

     if StrPos(Pchar(Doc), ':') <> nil then
        I := unUtilitario.getPosicaoCaracter(':', Doc) + 1
     Else
        I := 0;

     
     StrAntigo := '';

     if (DM_FINANCEIRO.ZCaixa.FieldByName('DOCUMENTO').IsNull) OR (I = Length(Doc)) then
        DM_FINANCEIRO.ZCaixa.FieldByName('DOCUMENTO').AsString := LookGrupo.Text + ' / ' + LookSubgrupo.Text +':'
     Else
     Begin

          if I > 0 then
          Begin
               for J := I+1 to Length(Doc) do
                   strAntigo := strAntigo + Doc[J];

               DM_FINANCEIRO.ZCaixa.FieldByName('DOCUMENTO').AsString := LookGrupo.Text + ' / ' + LookSubgrupo.Text +': '+ strAntigo;
          end
          Else
              DM_FINANCEIRO.ZCaixa.FieldByName('DOCUMENTO').AsString := LookGrupo.Text + ' / ' + LookSubgrupo.Text +': '+ DM_FINANCEIRO.ZCaixa.FieldByName('DOCUMENTO').AsString;

     end;
End
else
Begin
     Doc := diaEditDocumento.Text;

     if StrPos(Pchar(Doc), ':') <> nil then
        I := unUtilitario.getPosicaoCaracter(':', Doc) + 1
     Else
        I := 0;

     
     StrAntigo := '';

     if (Doc = '') OR (I = Length(Doc)) then
        diaEditDocumento.Text := diaLookupGrupo.Text + ' / ' + diaLookupSubgrupo.Text +':'
     Else
     Begin

          if I > 0 then
          Begin
               for J := I+1 to Length(Doc) do
                   strAntigo := strAntigo + Doc[J];

               diaEditDocumento.Text := diaLookupGrupo.Text + ' / ' + diaLookupSubgrupo.Text +': '+ strAntigo;
          end
          Else
              diaEditDocumento.Text := diaLookupGrupo.Text + ' / ' + diaLookupSubgrupo.Text +': '+ diaEditDocumento.Text;

     end;
End;

end;

procedure TCAD_Caixas.BtnProcuraPessoaClick(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Pessoa, self, '1');
end;

procedure TCAD_Caixas.BtnProcuraImovelClick(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Imovel, self, '1');
end;

procedure TCAD_Caixas.BtnProcuraContratoClick(Sender: TObject);
var X: Tform;
i:integer;
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Aluguel, self, '1');

  X := nil;

  for I := 0 to Screen.FormCount - 1 do
  begin
       if Screen.Forms[I] is TCad_Aluguel then
       begin
            X := Screen.Forms[i];
            Break;
       end;
  end;

  if X <> nil then
  begin
       (X as TCAD_Aluguel).Btn_Retorno.Visible := True;
       (X as TCAD_Aluguel).FormCriador := self;
       (X as TCAD_Aluguel).FormCriadorConteudo := '1';
       (X as TCAD_Aluguel).FormCriatura := TCAD_Aluguel;
  End;
end;

procedure TCAD_Caixas.AdicionarRegistros1Click(Sender: TObject);
Var i: integer;
begin

  IF DM_FINANCEIRO.ZCaixa.RecordCount = 0 Then
     Exit;

  //CAIXA ENTRADA
  if NOT BtnCaixaEntrada.Flat and Tab_Pesquisa.Showing Then
     if Grid_Busca.SelectedRows.Count > 0 then
     begin
          with Grid_Busca.DataSource.DataSet do
          begin
               for i := 0 to Grid_Busca.SelectedRows.Count-1 do
               begin
                    GotoBookmark(Pointer(Grid_Busca.SelectedRows.Items[i]));
                    SelecaoEntrada.Add(Grid_Busca.DataSource.DataSet.FieldByName('ID_CAIXA').AsString);
                    PRINCIPAL.SELECAO.Add(Grid_Busca.DataSource.DataSet.FieldByName('ID_CAIXA').AsString); //Para a geração de boletos
               end;
          end;

          //unUtilitario.setMensagem('ENTRADA'+#13+IntToStr(Grid_Busca.SelectedRows.Count) + ' Registro(s) Adicionado(s)!' + #13 + IntToStr(SelecaoEntrada.Count) + ' Registro(s) na lista até o momento.','informa');
          PRINCIPAL.setMensagem('ENTRADA '+IntToStr(Grid_Busca.SelectedRows.Count) + ' Registro(s) Adicionado(s)!  ' + IntToStr(SelecaoEntrada.Count) + ' Registro(s) na lista até o momento.');
     end;

  //CAIXA SAÍDA
  if BtnCaixaEntrada.Flat and Tab_Pesquisa_Saida.Showing Then
     if Grid_BuscaSaida.SelectedRows.Count > 0 then
     begin
          with Grid_BuscaSaida.DataSource.DataSet do
          begin
               for i := 0 to Grid_BuscaSaida.SelectedRows.Count-1 do
               begin
                    GotoBookmark(Pointer(Grid_BuscaSaida.SelectedRows.Items[i]));
                    SelecaoEntrada.Add(Grid_BuscaSaida.DataSource.DataSet.FieldByName('ID_CAIXA').AsString);
                    PRINCIPAL.SELECAO.Add(Grid_BuscaSaida.DataSource.DataSet.FieldByName('ID_CAIXA').AsString); //Para a geração de boletos
               end;
          end;

          //unUtilitario.setMensagem('SAÍDA'+#13+IntToStr(Grid_BuscaSaida.SelectedRows.Count) + ' Registro(s) Adicionado(s)!' + #13 + IntToStr(SelecaoEntrada.Count) + ' Registro(s) na lista até o momento.','informa');
          PRINCIPAL.setMensagem('SAÍDA: '+IntToStr(Grid_BuscaSaida.SelectedRows.Count) + ' Registro(s) Adicionado(s)!' + IntToStr(SelecaoEntrada.Count) + ' Registro(s) na lista até o momento.');
     end;

     Grid_Busca.SelectedRows.Clear;
     Grid_BuscaSaida.SelectedRows.Clear;
end;

{procedure TCAD_Caixas.Aesemdemanda1Click(Sender: TObject);
Var Escolha: String;
    i: integer;
begin
  inherited;

  Escolha := '';
  For i := 0 to SelecaoEntrada.Count - 1 Do
      Escolha := Escolha + #13 + SelecaoEntrada.Strings[i];

  ShowMessage('REGISTROS SELECIONADOS: '+ #13 + Escolha);

end;  }

procedure TCAD_Caixas.Aesemdemanda2Click(Sender: TObject);
begin
  inherited;
//  IF PRINCIPAL.Autenticar = TRUE THEN
//    BEGIN
      //PRINCIPAL.SELECAO := Selecao;
      Application.CreateForm(TContaDemanda, ContaDemanda);
      ContaDemanda.setCaixa(True);
      ContaDemanda.ShowModal;
//    END;
end;

procedure TCAD_Caixas.AoemDemanda1Click(Sender: TObject);
begin
  inherited;

  if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO >> AÇÕES EM DEMANDA = FORMULARIO') then
     Exit;

       if SelecaoEntrada.Count <= 0 then
       Begin
            unUtilitario.setMensagem('Favor selecionar ao menos uma conta.','informa');
            exit;
       end;


       //PRINCIPAL.SELECAO := SelecaoEntrada;
       Application.CreateForm(TContaDemanda, ContaDemanda);
       ContaDemanda.setCaixa(not BtnCaixaEntrada.Flat);
       ContaDemanda.EscolhaCAIXA.TabVisible := True;

       ContaDemanda.ShowModal;

       if (getTela('SELECAO_LIMPA') = 'SIM') OR (getTela('SELECAO_LIMPA') = 'NULO') Then
       Begin
            SelecaoEntrada.Clear;
            PRINCIPAL.SELECAO.Clear;
       end;

end;

procedure TCAD_Caixas.BaixaParcial1Click(Sender: TObject);
Var
   qtde, qtde2: String;
   ar: array of string;
   novoValor: Double;
   varSQL: TZQuery;
   mapeamentoSQL1, mapeamentoSQL2: string;
begin
   if unUtilitario.verificaMesmaPessoa() then begin

//     if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE DIVIDIR VALORES - BAIXA PARCIAL') then
//        EXIT;

     qtde := InputBox('Novo valor para a conta '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+' :','Entre com o NOVO VALOR para esta conta.'+#13+'Obs: O valor NÃO pode ser "0,00" e também MAIOR que:'+#13+'R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString,'0,00');

     if (retiraFormatacaoDinheiro(qtde) < DM_FINANCEIRO.ZCaixaVALORREAL.AsFloat) AND (retiraFormatacaoDinheiro(qtde) > 0) then
     Begin

          novoValor := DM_FINANCEIRO.ZCaixaVALORREAL.AsFloat - retiraFormatacaoDinheiro(qtde);

          if setMensagem('Deseja alterar o valor desta conta de R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+' para R$ '+qtde+' e criar outra conta no valor de R$ '+CurrToStr(novoValor),'confirma') = IDYES Then
          Begin

               qtde2 := InputBox('Escolha uma opção:',
               '1 - SOMENTE DIVIDIR'+#13+
               '   Desejo dividir a conta para o próximo mês e não quitar.'+#13+#13+
               '2 - BAIXA PARCIAL'+#13+
               '   Desejo quitar hoje R$ '+qtde+' e o restante para o próximo mês.','');

               if (qtde2 = '1') Then
               Begin

                    mapeamentoSQL1 := '';
                    mapeamentoSQL2 := '';

                    if NOT DM_FINANCEIRO.ZCaixaID_IMOVEL.IsNull then
                    Begin
                         mapeamentoSQL1 := mapeamentoSQL1 + ' ID_IMOVEL, ';
                         mapeamentoSQL2 := mapeamentoSQL2 + DM_FINANCEIRO.ZCaixaID_IMOVEL.AsString+',';
                    end;

                    if NOT DM_FINANCEIRO.ZCaixaID_CONTRATO.IsNull then
                    begin
                         mapeamentoSQL1 := mapeamentoSQL1 + ' ID_CONTRATO, ';
                         mapeamentoSQL2 := mapeamentoSQL2 + DM_FINANCEIRO.ZCaixaID_CONTRATO.AsString+',';
                    end;


                    varSQL := unUtilitario.getSQL('INSERT INTO CAIXA_'+Self.Caixa+' ('+mapeamentoSQL1+' ID_CATEGORIA, ID_TIPO, ID_SUBTIPO, ID_PESSOA,'+' ID_FUNCIONARIO, ID_ENTRADA, ID_SAIDA, DATA_REF, DATA_ALT, DATA_PGTO, HORA_PGTO, DOCUMENTO, OPERACAO, VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE, ATIVO, GARANTIDO) '+
                    'VALUES ('+mapeamentoSQL2+DM_FINANCEIRO.ZCaixaID_CATEGORIA.AsString+', '+DM_FINANCEIRO.ZCaixaID_TIPO.AsString+', '+DM_FINANCEIRO.ZCaixaID_SUBTIPO.AsString+', '+DM_FINANCEIRO.ZCaixaID_PESSOA.AsString+', '+getUser('CODIGO_USUARIO')+', '+                                                                                                                                                                                                                                                                                                                                                                                                                                                        //'+formataDinheiroSQL(DM_FINANCEIRO.ZCaixaVALOR_MULTA.AsString)+'
                    'NULL, NULL, '''+formataDataSQL(DateToStr(IncMonth(DM_FINANCEIRO.ZCaixaDATA_REF.AsDateTime,1)))+''', current_timestamp, NULL, NULL, ''FIM BAIXA PARCIAL DA CONTA '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+' (ANTIGO R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+' = R$ '+qtde+' + R$ '+CurrToStr(novoValor)+')'', ''CONTA GERADA COMO DIVISÃO PARCIAL DA CONTA '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+': TOTAL R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+' FOI PARA R$ '+qtde+' E CRIOU ESTA CONTA DE R$ '+CurrToStr(novoValor)+' PARA O PRÓXIMO MÊS.'', '+formataDinheiroSQL(CurrToStr(novoValor))+', '+formataDinheiroSQL(DM_FINANCEIRO.ZCaixaVALOR_JUROS.AsString)+', 0, 0, '+DM_FINANCEIRO.ZCaixaPARCELA.AsString+', ''NAO'', ''SIM'', '''+DM_FINANCEIRO.ZCaixaGARANTIDO.AsString+''')');

                    varSQL.ApplyUpdates;

                    varSQL := unUtilitario.getSQL('UPDATE CAIXA_'+Self.Caixa+' SET VALOR = '+formataDinheiroSQL(qtde)+', DOCUMENTO = DOCUMENTO || '' BAIXA PARCIAL'', OPERACAO = OPERACAO || '' BAIXA PARCIAL'', VALOR_JUROS = 0, VALOR_MULTA = 0, VALOR_DESCONTO = 0 WHERE ID_CAIXA = '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);

                    varSQL.ApplyUpdates;

                    FreeAndNil(varSQL);

                    setMensagem('Operação concluída.'+#13+'Revise as contas manipuladas','informa');
                    DM_FINANCEIRO.ZCaixa.Refresh;
               end;

               if (qtde2 = '2') Then
               Begin

                    mapeamentoSQL1 := '';
                    mapeamentoSQL2 := '';

                    if NOT DM_FINANCEIRO.ZCaixaID_IMOVEL.IsNull then
                    Begin
                         mapeamentoSQL1 := mapeamentoSQL1 + ' ID_IMOVEL, ';
                         mapeamentoSQL2 := mapeamentoSQL2 + DM_FINANCEIRO.ZCaixaID_IMOVEL.AsString+',';
                    end;

                    if NOT DM_FINANCEIRO.ZCaixaID_CONTRATO.IsNull then
                    begin
                         mapeamentoSQL1 := mapeamentoSQL1 + ' ID_CONTRATO, ';
                         mapeamentoSQL2 := mapeamentoSQL2 + DM_FINANCEIRO.ZCaixaID_CONTRATO.AsString+',';
                    end;


                    varSQL := unUtilitario.getSQL('INSERT INTO CAIXA_'+Self.Caixa+' ('+mapeamentoSQL1+' ID_CATEGORIA, ID_TIPO, ID_SUBTIPO, ID_PESSOA,'+' ID_FUNCIONARIO, ID_ENTRADA, ID_SAIDA, DATA_REF, DATA_ALT, DATA_PGTO, HORA_PGTO, DOCUMENTO, OPERACAO, VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE, ATIVO, GARANTIDO) '+
                    'VALUES ('+mapeamentoSQL2+DM_FINANCEIRO.ZCaixaID_CATEGORIA.AsString+', '+DM_FINANCEIRO.ZCaixaID_TIPO.AsString+', '+DM_FINANCEIRO.ZCaixaID_SUBTIPO.AsString+', '+DM_FINANCEIRO.ZCaixaID_PESSOA.AsString+', '+getUser('CODIGO_USUARIO')+', '+
                    'NULL, NULL, current_timestamp, current_timestamp, NULL, NULL, ''BAIXA PARCIAL DA CONTA '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+' (VENC. ANTIGO: '+DM_FINANCEIRO.ZCaixaDATA_REF.AsString+' TOTAL ANTIGO R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+' = R$ '+qtde+' + R$ '+CurrToStr(novoValor)+' )'', ''CONTA GERADA COMO BAIXA PARCIAL DA CONTA '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+' - VALORES: VALOR TOTAL R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+' FOI PARA R$ '+qtde+' E CRIOU ESTA CONTA DE R$ '+CurrToStr(novoValor)+'.'', '+formataDinheiroSQL(CurrToStr(novoValor))+', '+formataDinheiroSQL(DM_FINANCEIRO.ZCaixaVALOR_JUROS.AsString)+', 0, 0, '+DM_FINANCEIRO.ZCaixaPARCELA.AsString+', ''NAO'', ''SIM'', '''+DM_FINANCEIRO.ZCaixaGARANTIDO.AsString+''')');

                    //varSQL.ApplyUpdates;

                    varSQL := unUtilitario.getSQL('UPDATE CAIXA_'+Self.Caixa+' SET VALOR = '+formataDinheiroSQL(qtde)+', DOCUMENTO = DOCUMENTO || '' BAIXA PARCIAL'', OPERACAO = OPERACAO || '' BAIXA PARCIAL (TOTAL: '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+')'', VALOR_JUROS = 0, VALOR_MULTA = 0, VALOR_DESCONTO = 0 WHERE ID_CAIXA = '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);

                    //varSQL.ApplyUpdates;

                    FreeAndNil(varSQL);

                    if setMensagem('Deseja quitar a conta de R$ '+qtde+' agora?','confirma') = IDYES Then
                    Begin
                         if Self.Caixa = 'ENTRADA' then
                            mostraContaEntrada(DM_FINANCEIRO.ZCaixaID_CAIXA.AsInteger);

                         if Self.Caixa = 'SAIDA' then
                            mostraContaSaida(DM_FINANCEIRO.ZCaixaID_CAIXA.AsInteger);

                            Btn_ImprimirClick(Sender);
                    end;

                    DM_FINANCEIRO.ZCaixa.Refresh;
               end;
          end;
     end
     else
         setMensagem('O valor NÃO pode ser R$0.00, MAIOR ou IGUAL à R$ '+DM_FINANCEIRO.ZCaixaVALORREAL.AsString+#13+'Operação cancelada.','erro');
end;
end;

procedure TCAD_Caixas.BitBtn10Click(Sender: TObject);
var varSQL: TZQuery;
begin

     if DM_FINANCEIRO.ZChequeContaID_CHEQUE.IsNull then
     Begin
          unUtilitario.setMensagem('Selecione um cheque!','informa');
          exit;
     end;

     if not chequeBanco.Enabled then
     Begin
          unUtilitario.setMensagem('Primeiramente, selecione um cheque clicando 2X na tabela.','informa');
          exit;
     end;


     if unUtilitario.setMensagem('Deseja remover o vínculo desta conta com o cheque?'+#13+'OBS: Para excluir o cheque, vá no cadastro de cheques.','confirma') = IDYES then
     Begin
          varSQL := unUtilitario.getSQL('delete from conta_cheque cc where cc.id_conta_cheque = '+DM_FINANCEIRO.ZChequeContaID_CONTA_CHEQUE.AsString);
          varSQL.ApplyUpdates;
     end;

     PRINCIPAL.setMensagem('CHEQUE DESVINCULADO COM SUCESSO!');
     DM_FINANCEIRO.ZChequeConta.Refresh;
     editaCheque(False);
     limpaCheque(); 
end;

procedure TCAD_Caixas.btnSegundaViaClick(Sender: TObject);
begin
     if NOT DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
     begin
          {dm.Query_bancos.Close;
          dm.Query_bancos.Open;
          RvSystem1.SystemSetups := RvSystem1.SystemSetups - [ssAllowSetup];
          RvSystem1.DefaultDest := rdFile;
          RvSystem1.DoNativeOutput := false;
          RvSystem1.RenderObject := RvRenderPDF1;
          RvSystem1.OutputFileName := 'C:\tmp.pdf';
          RvProject1.Execute;
          ABRINDO O ARQUIVO PDF CRIADO
          GetMem(pDir,256);
          StrPCopy(pDir, 'C:\tmp.pdf'); Aqui vc coloca o caminho + o nome do arquivo
          ShellExecute(0, nil, 'tmp.pdf', nil, Pdir, SW_NORMAL);
          FreeMem(pdir,256);}
     end;

end;

procedure TCAD_Caixas.btnRelatorioCaixaDiaClick(Sender: TObject);
begin
  inherited;
  caixaRImprimir();
end;

procedure TCAD_Caixas.BitBtn13Click(Sender: TObject);
begin
  inherited;
  caixaRAtualizar();
end;

procedure TCAD_Caixas.BitBtn1Click(Sender: TObject);
begin
  inherited;

       If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
       Begin
            unUtilitario.setMensagem('Crie um novo registro para poder incluir um status.','informa');
            exit;
       end;

       If NOT DM_FINANCEIRO.ZCaixaStatus.Active Then
          DM_FINANCEIRO.ZCaixaTipoStatus.Open;

       DM_FINANCEIRO.ZCaixaStatus.Append;

       PRINCIPAL.setID(DM_FINANCEIRO.ZCaixaStatus, 'ID_CAIXA_STATUS', 'CAIXA_STATUS');

       DM_FINANCEIRO.ZCaixaStatus.FieldByName('ID_CAIXA_'+Caixa).AsVariant := DM_FINANCEIRO.ZCaixaID_CAIXA.AsVariant;
       DM_FINANCEIRO.ZCaixaStatusID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
       DM_FINANCEIRO.ZCaixaStatusDATA_CAD.AsDateTime := Date() + Time();
       DM_FINANCEIRO.ZCaixaStatusDATA_ENTRADA.AsDateTime := Date();
       DM_FINANCEIRO.ZCaixaStatusDATA_ALT.AsDateTime := Date() + Time();
       
       BitBtn1.Enabled := False;

       DBLookupComboBox1.SetFocus;
end;

procedure TCAD_Caixas.BitBtn2Click(Sender: TObject);
begin
  inherited;
   If NovoRegistro = 1 Then
  Begin
      If MessageDlg('Será necessário gravar as alterações'+#13+'realizadas até agora no registro principal, OK?'+#13+'Verifique os campos obrigatórios antes de prosseguir.', mtConfirmation, [mbYes, mbNo],0) = mrYes Then
      Begin
           Btn_GravarClick(Sender);
      End
      Else
      Begin
           ShowMessage('O registro completo ainda não foi salvo.');
      End;

  End;

  If NovoRegistro = 0 Then
  Begin
       If DM_FINANCEIRO.ZCaixaStatus.Active Then
          Begin
               Try
                  DM_FINANCEIRO.ZCaixaStatus.ApplyUpdates;
                  unMsg.INFORMA(1);
                  BitBtn1.Enabled := True;
               Except
                     unMsg.ERRO(24);
               End;
          End
          Else
              unMsg.ERRO(13);


          DM_FINANCEIRO.ZCaixaStatus.Refresh;
          DM_FINANCEIRO.ZCaixaStatus.Edit;
  End;
end;

procedure TCAD_Caixas.BitBtn3Click(Sender: TObject);
begin
  inherited;
   If DM_FINANCEIRO.ZCaixaStatus.Active Then
        Begin
             DM_FINANCEIRO.ZCaixaStatus.Cancel;
             DM_FINANCEIRO.ZCaixaStatus.CancelUpdates;
             BitBtn1.Enabled := True;
        End;
end;

procedure TCAD_Caixas.Boleto1Click(Sender: TObject);
Var i: Integer;
begin

  if SelecaoEntrada.Count = 0 then
  Begin
       unUtilitario.setMensagem('Selecione as contas que deseja gerar boletos.','informa');
       Exit;
  end;

  if unUtilitario.setMensagem('Deseja imprimir '+IntToStr(SelecaoEntrada.Count)+' boletos agora?'+#13+'Será enviado diretamente à impressora padrão.','confirma') = IDYES then
  Begin

       PRINCIPAL.setMensagem('IMPRIMINDO BOLETOS! Esta operação pode demorar anguns minutos...');

       for I := 0 to SelecaoEntrada.Count - 1 do
       Begin
            if getBoleto('CobreBem') = 'SIM' then
            Begin
                 gerarBoletoCobrebem(SelecaoEntrada.Strings[I], FALSE, 'IMPRIMIR')
            end
            else
            begin
                 PRINCIPAL.preparaBoleto(StrToInt(SelecaoEntrada.Strings[I]), TRUE);
                 PRINCIPAL.Boleto.Imprimir;
            end;
            espera(4,'Enviando informações para a impressora...');
       end;

       PRINCIPAL.setMensagem('Impressão de boletos concluída!');

       if (getTela('SELECAO_LIMPA') = 'SIM') OR (getTela('SELECAO_LIMPA') = 'NULO')then
       Begin
            SelecaoEntrada.Clear;
            PRINCIPAL.SELECAO.Clear;
       end;

  end;

end;

{
procedure TCAD_Caixas.BitBtn4Click(Sender: TObject);
Var Escolha: String;
    VarSQL: TZQuery;
    ValorConta: String;
begin

     If DM_FINANCEIRO.ZCaixaPgtoVALOR.IsNull Then
        ValorConta := 'NENHUMA CONTA SELECIONADA NO HISTÓRICO!'
     Else
         ValorConta :=  getCurrToStr(DM_FINANCEIRO.ZCaixaPgtoVALOR.AsCurrency,TRUE);


     Escolha := InputBox('Escolha o tipo de estorno.','1 - Apenas a conta selecionada.'+#13+'('+ValorConta+') .'+#13+#13+'2 - Todos os pagamentos (Histórico).'+#13, '2');

     if NOT (Length(Escolha) > 0) then
        Exit;

     Try
        StrToInt(Escolha);
     Except
           Exit;
     end;


     If Escolha = '1' then
     If MessageDlg('Deseja ESTORNAR o registro selecionado na tabela?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_FINANCEIRO.ZCaixaPgto.Active Then
              Begin
                   Try
                      DM_FINANCEIRO.ZCaixaPgto.Delete;
                      DM_FINANCEIRO.ZCaixaPgto.ApplyUpdates;
                      unMsg.INFORMA(2);
                      DM_FINANCEIRO.ZCaixaPgto.Edit;
                      setVerificaContaPaga();
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     If Escolha = '2' then
     If MessageDlg('Deseja ESTORNAR todos os pagamentos desde registro?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
          Try
             VarSQL := TZQuery.Create(self);
             VarSQL.Connection := PRINCIPAL.Conexao;
             VarSQL.SQL.Add('delete from caixa_pgto where id_caixa_'+Caixa+' = '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);
             VarSQL.ExecSQL;
             //VarSQL.Close;
             setVerificaContaPaga();
             DM_FINANCEIRO.ZCaixaPgto.Refresh;
          Except
                on E: Exception do
                Begin
                   unUtilitario.setMensagem(e.Message,'erro');
                   FreeAndNil(VarSQL);
                end;
          end;
           
     End;

     setContaPaga('NAO');
     setEditValor_TotalFaltando();
     FreeAndNil(VarSQL);
     TabInfoHistorico.Show;
end;
}

procedure TCAD_Caixas.btnChequeClick(Sender: TObject);
begin
  inherited;

  if not chequeBanco.Enabled then
  Begin
       UnUtilitario.setMensagem('Primeiramente, selecione um cheque clicando 2X na tabela OU inclua um novo vínculo de cheques.','informa');
       exit;
  end;

  PRINCIPAL.CriarForm(TCAD_Cheques, self, '1');
end;

procedure TCAD_Caixas.Btn_Pessoas_CancelarClick(Sender: TObject);
begin
  inherited;
   If DM_FINANCEIRO.ZChequeConta.Active Then
   Begin
        DM_FINANCEIRO.ZChequeConta.Cancel;
        DM_FINANCEIRO.ZChequeConta.CancelUpdates;
        Btn_Pessoas_Novo.Enabled := True;
        DM_FINANCEIRO.ZChequeConta.Edit;
        editaCheque(False);
        limpaCheque();
   End;
end;

procedure TCAD_Caixas.Btn_Pessoas_GravarClick(Sender: TObject);
begin

     if NOT ds.DataSet.Active then
        Exit;

     if not btnCheque.Enabled then
     Begin
          unUtilitario.setMensagem('Primeiramente, selecione um cheque clicando 2X na tabela.','informa');
          exit;
     end;


     if DM_FINANCEIRO.ZChequeContaID_CHEQUE.IsNull then
     Begin
          unUtilitario.setMensagem('Escolha um cheque para ser vinculado!','informa');
          Exit;
     end;

     try
        Btn_GravarClick(Sender);
     except
           unUtilitario.setMensagem('Erro ao gravar o registro principal da conta.'+#13+'Revise todas as informações da conta.','informa');
     end;
     

     try
        DM_FINANCEIRO.ZChequeContaID_CONTA.AsInteger := DS.DataSet.FieldByName('id_caixa').AsInteger;
        DM_FINANCEIRO.ZChequeContaOPERACAO.AsString := Copy(Caixa, 1, 3);
        DM_FINANCEIRO.ZChequeContaID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
        PRINCIPAL.setID(DM_FINANCEIRO.ZChequeConta, 'ID_CONTA_CHEQUE', 'CONTA_CHEQUE');
        DM_FINANCEIRO.ZChequeConta.Post;
        DM_FINANCEIRO.ZChequeConta.ApplyUpdates;
     except
           unUtilitario.setMensagem('Erro ao gravar o registro do cheque.','informa');
     end;

     {
     if NOT Btn_Pessoas_Novo.Enabled then
     Begin
          try
             varSQL := unUtilitario.getSQL('INSERT INTO CONTA_CHEQUE (ID_CHEQUE, ID_CONTA, OPERACAO, ID_FUNCIONARIO, OBS) VALUES ('+DM_FINANCEIRO.ZChequeContaID_CHEQUE.AsString+', '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+', '''+Copy(Caixa, 1, 3)+''', '+getUser('CODIGO_USUARIO')+', ''CRIADO DIRETAMENTE PELO CAIXA COMPOSTO NO DIA '+DateToStr(Date)+' ÀS '+TimeToStr(Time)+'. '')');
             varSQL.ApplyUpdates;
          except
                unUtilitario.setMensagem('Erro ao gravar o registro de vínculo com a conta e o cheque.','informa');
          end;
     end;
     }

     Btn_Pessoas_Novo.Enabled := True;

     DM_FINANCEIRO.ZChequeConta.Refresh;
     DM_FINANCEIRO.ZChequeConta.Edit;
     editaCheque(False);
     limpaCheque();

     PRINCIPAL.setMensagem('CHEQUE CRIADO/VINCULADO COM SUCESSO!');

end;

procedure TCAD_Caixas.Btn_Pessoas_NovoClick(Sender: TObject);
begin

       If NOT DS.DataSet.Active Then
          Exit;

       editaCheque(True);
       limpaCheque();

       DM_FINANCEIRO.ZChequeConta.Open;

       DM_FINANCEIRO.ZChequeConta.Append;

       Btn_Pessoas_Novo.Enabled := False;

       btnCheque.SetFocus;
end;

procedure TCAD_Caixas.limpaCheque();
begin
     chequeNome.Text := '';
     chequeValor.Text := '';
     chequeEmissao.Text := '';
     chequeAnotacao.Text := '';
     chequeBanco.Text := '';
     chequeAgencia.Text := '';
     chequeConta.Text := '';
     chequeNumero.Text := '';
end;

procedure TCAD_Caixas.BtnCaixaEntradaClick(Sender: TObject);
begin
  inherited;
  SelecaoEntrada.Clear;
  PRINCIPAL.SELECAO.Clear;
  DM_FINANCEIRO.ZCaixaBackup.Close;
  DM_FINANCEIRO.ZCaixa.Close;
  msgClienteEntrada.Caption := '';
  msgClienteSaida.Caption := '';
  msgClienteEntrada.Tag := 0;
  msgClienteSaida.Tag := 0;
  //AQUI EDSON
  //btnSegundaVia.Visible := False;
  setCaixa('ENTRADA');
end;

procedure TCAD_Caixas.BtnCaixaSaidaClick(Sender: TObject);
begin
  inherited;
  SelecaoEntrada.Clear;
  PRINCIPAL.SELECAO.Clear;
  DM_FINANCEIRO.ZCaixaBackup.Close;
  DM_FINANCEIRO.ZCaixa.Close;
  msgClienteEntrada.Caption := '';
  msgClienteSaida.Caption := '';
  msgClienteEntrada.Tag := 0;
  msgClienteSaida.Tag := 0;
  //AQUI EDSON
  //btnSegundaVia.Visible := True;
  setCaixa('SAIDA');
end;

procedure TCAD_Caixas.Btn_Pgto_CancelarClick(Sender: TObject);
begin
   If DM_FINANCEIRO.ZCaixaPgto.Active Then
        Begin
             DM_FINANCEIRO.ZCaixaPgto.Cancel;
             DM_FINANCEIRO.ZCaixaPgto.CancelUpdates;
             Btn_pgto_Novo.Enabled := True;
        End;
end;

procedure TCAD_Caixas.Btn_Pgto_GravarClick(Sender: TObject);
Var Diferenca: Double;
begin
   If NovoRegistro = 1 Then
  Begin
      If MessageDlg('Será necessário gravar as alterações'+#13+'realizadas até agora no registro principal, OK?'+#13+'Verifique os campos obrigatórios antes de prosseguir.', mtConfirmation, [mbYes, mbNo],0) = mrYes Then
      Begin
           Btn_GravarClick(Sender);
      End
      Else
      Begin
           ShowMessage('O registro completo ainda não foi salvo.');
      End;

  End;

  If NovoRegistro = 0 Then
  Begin
       If DM_FINANCEIRO.ZCaixaPgto.Active Then
          Begin
               Try
                  DM_FINANCEIRO.ZCaixaPgto.ApplyUpdates;
                  unMsg.INFORMA(1);
                  Btn_pgto_Novo.Enabled := True;
               Except
                     unMsg.ERRO(24);
               End;
          End
          Else
              unMsg.ERRO(13);

          DM_FINANCEIRO.ZCaixaPgto.Edit;
  End;

  //setEditValor_TotalFaltando();

  //DEPOIS REVISAR TODA ESSA PARTE DE TROCO...
  //Diferenca := getStrToCurr(EditValor_TotalFaltando.Text);

   if Diferenca <= 0 then
      if setMensagem('O sistema pode baixar a conta manipulada?', 'confirma') = Idyes then
         setVerificaContaPaga();

     if Diferenca < 0 then
        if unUtilitario.setMensagem('Voltar troco de '+getCurrToStr(diferenca,TRUE)+'?', 'confirma') = Idyes then
        Begin

             If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
             Begin
                  unUtilitario.setMensagem('Crie um novo registro para poder incluir um pagamento.','informa');
                  exit;
             end;

             If NOT DM_FINANCEIRO.ZCaixaPgto.Active Then
                DM_FINANCEIRO.ZCaixaPgto.Open;

             DM_FINANCEIRO.ZCaixaPgto.Append;

             PRINCIPAL.setID(DM_FINANCEIRO.ZCaixaPgto, 'ID_CAIXA_PGTO', 'CAIXA_PGTO');
             DM_FINANCEIRO.ZCaixaPgto.FieldByName('ID_CAIXA_'+Caixa).Value := DM_FINANCEIRO.ZCaixaID_CAIXA.Value;
             DM_FINANCEIRO.ZCaixaPgtoID_FORMA_PGTO.Value := 17;
             DM_FINANCEIRO.ZCaixaPgtoID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
             DM_FINANCEIRO.ZCaixaPgtoDATA_CAD.Value := Date();
             DM_FINANCEIRO.ZCaixaPgtoDATA_PGTO.Value := Date();
             DM_FINANCEIRO.ZCaixaPgtoDATA_RECEBIMENTO.Value := Date();
             DM_FINANCEIRO.ZCaixaPgtoANOTACAO.Value := 'MAIORES INFORMAÇÕES SOBRE O TROCO AQUI.';
             DM_FINANCEIRO.ZCaixaPgtoVALOR.AsFloat := diferenca;

             DM_FINANCEIRO.ZCaixaPgto.Post;
             DM_FINANCEIRO.ZCaixaPgto.ApplyUpdates;
             DM_FINANCEIRO.ZCaixaPgto.Edit;     
        end
        Else
        Begin
             unUtilitario.setMensagem('O troco não foi gerado.','informa');
        end;

  TabInfoHistorico.Show;

end;

procedure TCAD_Caixas.Btn_Pgto_NovoClick(Sender: TObject);
begin

       If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
       Begin
            unUtilitario.setMensagem('Crie um novo registro para poder incluir um pagamento.','informa');
            exit;
       end;

       If NOT DM_FINANCEIRO.ZCaixaPgto.Active Then
          DM_FINANCEIRO.ZCaixaPgto.Open;

       setDiferencaDias();
       setCalculoMulta();
       setCalculoJuros();
       setCalculoDesconto();

       DM_FINANCEIRO.ZCaixaPgto.Append;

       PRINCIPAL.setID(DM_FINANCEIRO.ZCaixaPgto, 'ID_CAIXA_PGTO', 'CAIXA_PGTO');

       //SELECIONA O DINHEIRO COMO ESCOLHA PADRÃO
       DM_FINANCEIRO.ZCaixaPgtoID_FORMA_PGTO.Value := 13;
       DM_FINANCEIRO.ZCaixaPgtoDATA_PGTO.Value := Date();

       {if NOT (strpos(Pchar(EditValor_TotalFaltando.Text),'-') = nil) then
          DM_FINANCEIRO.ZCaixaPgtoVALOR.Value := 0
       Else
           DM_FINANCEIRO.ZCaixaPgtoVALOR.Value := getStrToCurr(EditValor_TotalFaltando.Text);
       }
       DM_FINANCEIRO.ZCaixaPgtoID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
       DM_FINANCEIRO.ZCaixaPgto.FieldByName('ID_CAIXA_'+Caixa).Value := DM_FINANCEIRO.ZCaixaID_CAIXA.Value;

       Btn_Pgto_Novo.Enabled := False;

       DBLookupComboBox3.SetFocus;
end;

procedure TCAD_Caixas.Btn_RelatorioClick(Sender: TObject);
Var escolha: string;
begin
  inherited;

  escolha := InputBox('Escolha do tipo de relatório (Opções)','1 - Imprimir resultado da busca.'+#13+'2 - Filtrar contas quitadas ainda abertas.', '1');

  if verificaStringInt(Escolha) then
  Begin

       if StrToInt(Escolha) = 1 then
       Begin
            DM_RELATORIOS.SQL1.SQL.Clear;
            DM_RELATORIOS.SQL1.SQL.Text := (DS.DataSet AS TZQuery).SQL.Text;
            DM_RELATORIOS.SQL1.Open;
            DM_RELATORIOS.DS1.DataSet := DM_RELATORIOS.SQL1;

            DM_RELATORIOS.Rave.Close;
            DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_COMPOSTO.rav';
            PRINCIPAL.setRelatorio(DM_RELATORIOS.Rave);
            DM_RELATORIOS.Rave.SetParam('varCaixa', 'CAIXA '+Caixa);

            DM_RELATORIOS.Rave.Open;

            DM_RELATORIOS.Rave.Execute;
            DM_RELATORIOS.SQL1.Close;
       end;

       if StrToInt(Escolha) = 2 then
       Begin
            if Tab_Pesquisa.Showing Then
               if not Grid_Busca.Focused Then
                  Valor.Text := 'NAO_QUITADO';

            if Tab_Pesquisa_Saida.Showing Then
               if not Grid_BuscaSaida.Focused Then
                  ValorSaida.Text := 'NAO_QUITADO';

            Pesquisar();
            
       end;

  end;

end;

procedure TCAD_Caixas.Btn_RelatorioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  PRINCIPAL.setMensagem('SELECIONE O CAIXA E EFETUE UMA BUSCA. O RESULTADO SERÁ IMPRESSO.');
end;

procedure TCAD_Caixas.Btn_DireitaClick(Sender: TObject);
begin
        if Tab_Informacoes.Showing AND Tab_Cadastro.Showing Then
           if DS.DataSet.Active Then
           Begin
                DS.DataSet.Cancel;
                DS.DataSet.Next;

                Tab_InformacoesShow(Self);

                DS.DataSet.Edit;
           end;

end;

procedure TCAD_Caixas.Btn_EsquerdaClick(Sender: TObject);
begin
        if Tab_Informacoes.Showing and Tab_Cadastro.Showing Then
          if DS.DataSet.Active Then
          Begin
            DS.DataSet.Cancel;
            DS.DataSet.Prior;

            Tab_InformacoesShow(Self);

            DS.DataSet.Edit;
          end;
end;

procedure TCAD_Caixas.Btn_ExcluirClick(Sender: TObject);
begin

     if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE CAIXA COMPOSTO E EXCLUIR UMA CONTA') then
        EXIT;

     DM_FINANCEIRO.ZCaixa.Edit;
     DM_FINANCEIRO.ZCaixaDATA_ALT.Value := Date() + Time();
     inherited;

     setLimpaComponentes();

     TabCaixaDia.Show;

end;

procedure TCAD_Caixas.Btn_FecharClick(Sender: TObject);
begin

  unUtilitario.salvaGrid(Self.Name+'_entrada',Grid_Busca);
  unUtilitario.salvaGrid(Self.Name+'_saida',Grid_BuscaSaida);

  inherited;

end;

procedure TCAD_Caixas.Btn_GravarClick(Sender: TObject);
begin
     IF DM_FINANCEIRO.ZCaixaID_PESSOA.IsNull or (DM_FINANCEIRO.ZCaixaID_PESSOA.AsInteger = 0) THEN
     Begin
          unUtilitario.setMensagem('Entre com uma pessoa para esta conta!','erro');
          BtnProcuraPessoa.SetFocus;
          exit;
     End;

     IF DM_FINANCEIRO.ZCaixaVALOR.IsNull or (DM_FINANCEIRO.ZCaixaVALOR.AsFloat = 0) THEN
     Begin
          unUtilitario.setMensagem('Entre com um valor para esta conta!','erro');
          DBEdit7.SetFocus;
          exit;
     End;

     DM_FINANCEIRO.ZCaixaDATA_ALT.AsDateTime := Date() + Time();
     inherited;
     NovoRegistro := 0;
end;

procedure TCAD_Caixas.Btn_ImprimirClick(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         PRINCIPAL.mostraAvisoBloqueio();
         exit;
     end;
     
     IF (NOT Tab_Cadastro.Showing) OR (ds.DataSet.FieldByName('ID_CAIXA').IsNull) Then
     BEGIN
        unUtilitario.setMensagem('Primeiramente, selecione uma conta!','informa');
        EXIT;
     END;


     Btn_GravarClick(Sender);

     Application.CreateForm(TCAD_CaixasSimples, CAD_CaixasSimples);

     unCaixasSimples.setCaixa(Caixa);

     CAD_CaixasSimples.ValorBusca.Text := 'CÓDIGO '+ DM_FINANCEIRO.ZCaixaID_CAIXA.AsString;
     unCaixasSimples.buscaRegistro(CAD_CaixasSimples.ValorBusca.Text);
     CAD_CaixasSimples.selecaoADDConta(DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);

     CAD_CaixasSimples.ShowModal;

     DM_FINANCEIRO.ZCaixa.Refresh;
     DM_FINANCEIRO.ZCaixa.Edit;

     if Caixa = 'ENTRADA' then
     Begin
        PageControl1.TabIndex := 1;
     end
     ELSE
     Begin
         PageControl1.TabIndex := 2;
     end;
end;

procedure TCAD_Caixas.Btn_ImprimirMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  PRINCIPAL.setMensagem('ATALHO PARA O CAIXA SIMPLES. NA TELA EM QUE SE ABRE, VOCÊ PODERÁ IMPRIMIR O RECIBO.');
end;

procedure TCAD_Caixas.Btn_NovoClick(Sender: TObject);
begin
     if PRINCIPAL.bloqueado then
     Begin
         PRINCIPAL.mostraAvisoBloqueio();
         exit;
     end;
     
  inherited;

  DM_FINANCEIRO.ZCaixaVALOR.Value := 0;
  DM_FINANCEIRO.ZCaixaVALOR_JUROS.Value := 0;
  DM_FINANCEIRO.ZCaixaVALOR_MULTA.Value := 0;
  DM_FINANCEIRO.ZCaixaVALOR_DESCONTO.Value := 0;
  DM_FINANCEIRO.ZCaixaOPERACAO.Value := 'CRIADO MANUALMENTE PELO FORMULÁRIO DE CAIXAS. USANDO A MÁQUINA: '+getNomeComputador();
  DM_FINANCEIRO.ZCaixaDATA_REF.Value := Date();
  DM_FINANCEIRO.ZCaixaGARANTIDO.AsString := 'NAO';
  DM_FINANCEIRO.ZCaixaID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
  
  //MARCADOR PARA VER SE O REGISTRO AINDA NÃO FOI SALTO.
  NovoRegistro := 1;

  Tab_Cadastro.Show;
  Tab_Informacoes.Show;

  PRINCIPAL.setID(DM_FINANCEIRO.ZCaixa, 'ID_CAIXA', 'CAIXA_'+Caixa);

  setLimpaComponentes();

  LookCategoria.SetFocus;
end;

procedure TCAD_Caixas.setBuscaRegistros();
begin

  if Caixa = 'ENTRADA' then
  Begin

       Grid_Busca.DataSource := DS;
       Grid_BuscaSaida.DataSource := DM_FINANCEIRO.DS_CaixaBackup;

       if Tab_Pesquisa_Saida.Showing then
       Begin
            setAbaPesquisaCaixas(DM_FINANCEIRO.ZCaixaBackup,'SAIDA');
            Exit;
       end;

        setAbaPesquisaCaixas(DM_FINANCEIRO.ZCaixa,'ENTRADA');

       exit;
  end;

  if Caixa = 'SAIDA' then
  Begin

       Grid_Busca.DataSource := DM_FINANCEIRO.DS_CaixaBackup;
       Grid_BuscaSaida.DataSource := DS;

       if Tab_Pesquisa.Showing then
       Begin
            setAbaPesquisaCaixas(DM_FINANCEIRO.ZCaixaBackup,'ENTRADA');
            Exit;
       end;

        setAbaPesquisaCaixas(DM_FINANCEIRO.ZCaixa,'SAIDA');

        exit;
  end;

  unUtilitario.setMensagem('Selecione um caixa!','erro');
end;

procedure TCAD_Caixas.setAbaPesquisaCaixas(componenteZeos: TZQuery; Cx:String); //Pesquisar
Var Cod, quantidadeFiltros, TamanhoString, i: integer;
    BUSCA_VALOR, troca, Cam, operacao: string;
    varSQL: TZQuery;
    valorTotal, valorCalculo: Currency;
begin

  if Cx = 'ENTRADA' then
  Begin
       BUSCA_VALOR := tratarBusca(Valor.Text);
       if checkBoletoCE.Checked then
          operacao := ' and (C.OPERACAO LIKE ''%BOLETO%'') '
       ELSE
           operacao := '';
  end
  Else
  begin
       BUSCA_VALOR := tratarBusca(ValorSaida.Text);
       operacao := '';
  end;

  if BUSCA_VALOR = 'false' then
     exit;

  //Ver qual é a quantidade de filtros usadas para refinar a busca
  quantidadeFiltros := contarPalavras(BUSCA_VALOR, 'AND') + contarPalavras(BUSCA_VALOR, 'OR');

  TamanhoString := Length(BUSCA_VALOR); //Verifica se foi alterado ou não

  Cam := 'select DISTINCT(c.*), p.nome as PESSOA, (l.nome ||'' - ''|| i.numero) as RUA, i.complemento, '+
      ' cat.nome as CATEGORIA, tip.nome as GRUPO, stip.nome as SUBGRUPO, '+
      ' con.id_referencia as CONTRATO_REF, (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)) as VALORREAL, '+
      ' ''SIM'' as PAGO, '+
      ' (select count(cent.id_caixa) from caixa_'+Cx+' cent where cent.ativo = ''SIM'' and cent.id_subtipo = '+
      ' c.id_subtipo and cent.id_tipo = c.id_tipo and cent.id_pessoa = c.id_pessoa and cent.id_imovel = c.id_imovel and cent.id_contrato = c.id_contrato) as PARCELATOTAL '+
      ' from caixa_'+Cx+' c left join caixa_sis cat on cat.id_caixa_sis = c.id_categoria '+
      ' left join caixa_sis tip on tip.id_caixa_sis = c.id_tipo '+
      ' left join caixa_sis stip on stip.id_caixa_sis = c.id_subtipo '+
      ' left join pessoa p on p.id_pessoa = c.id_pessoa '+
      ' left join imovel i on i.id_imovel = c.id_imovel '+
      ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel '+
      ' left join pessoa PES on PES.id_pessoa = PI.id_pessoa '+
      ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
      ' left join contrato con on con.id_contrato = c.id_contrato';

  If Ordenacao = '' Then
     Ordenacao := 'c.data_ref ASC, p.nome'
  Else
  Begin
       If (POS('.',Ordenacao) = 0) AND
          (UpperCase(Ordenacao) <> 'L.NOME') AND
          (UpperCase(Ordenacao) <> 'CAT.NOME') AND
          (UpperCase(Ordenacao) <> 'STIP.NOME') AND
          (UpperCase(Ordenacao) <> 'P.NOME') AND
          (UpperCase(Ordenacao) <> 'CON.ID_REFERENCIA') AND
          (UpperCase(Ordenacao) <> 'TIP.NOME')
          Then
              Ordenacao := 'C.'+Ordenacao;

       If Ordenacao = 'C.DATA_REF' Then
          Ordenacao := 'C.DATA_REF DESC';

       If Ordenacao = 'C.PESSOA' Then
          Ordenacao := 'L.NOME';

       If Ordenacao = 'C.CATEGORIA' Then
          Ordenacao := 'CAT.NOME';

       If Ordenacao = 'C.SUBGRUPO' Then
          Ordenacao := 'STIP.NOME';

       If Ordenacao = 'C.PESSOA' Then
          Ordenacao := 'P.NOME';

       If Ordenacao = 'C.CONTRATO_REF' Then
          Ordenacao := 'CON.ID_REFERENCIA';

       If Ordenacao = 'C.GRUPO' Then
          Ordenacao := 'TIP.NOME';

       If Ordenacao = 'C.COMPLEMENTO' Then
          Ordenacao := 'I.COMPLEMENTO';

       If Ordenacao = 'C.VALORREAL' Then
          Ordenacao := 'VALORREAL';

       If Ordenacao = 'C.RUA' Then
          Ordenacao := 'l.nome';

       If Ordenacao = 'C.PARCELATOTAL' Then
          Ordenacao := 'PARCELATOTAL';

  End; 

  //Trocar as palavras e elaborar a SQL
    for i := 0 to quantidadeFiltros do
    Begin
         If (Pos('C.ID_CAIXA BETWEEN',BUSCA_VALOR) = 0) AND ((Pos('CODIGO DE ',BUSCA_VALOR) <> 0) OR (Pos('CODIGO ENTRE ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' C.ID_CAIXA BETWEEN ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO DE ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO ENTRE ', troca,[rfReplaceAll]);
         end
         else
         If (Pos('C.VALOR',BUSCA_VALOR) = 0) AND (Pos('VALOR ',BUSCA_VALOR) <> 0) then
         Begin
              if((Pos('DE',BUSCA_VALOR) <> 0) or (Pos('ENTRE',BUSCA_VALOR) <> 0)) then
              Begin
                   troca := ' C.VALOR BETWEEN ';
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VALOR DE ', troca,[rfReplaceAll]);
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VALOR ENTRE ', troca,[rfReplaceAll]);
              end
              else
              Begin
                  troca := ' C.VALOR = ';
                  BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VALOR', troca,[rfReplaceAll]);
              end;
         end
         else
         If (Pos('C.ID_CAIXA',BUSCA_VALOR) = 0) AND ((Pos('CODIGO ',BUSCA_VALOR) <> 0) OR (Pos('CONTA ',BUSCA_VALOR) <> 0)) then
         Begin
              if varAte > 0 then
              Begin
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO', 'CODIGO DE',[rfReplaceAll]);
                   quantidadeFiltros := quantidadeFiltros + 1;
              end
              else
              Begin
                   troca := ' C.ID_CAIXA = ';
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO ', troca,[rfReplaceAll]);
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CONTA ', troca,[rfReplaceAll]);
              end;
         end
         else
         If (Pos('C.ID_FUNCIONARIO',BUSCA_VALOR) = 0) AND ((Pos('USUARIO ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' C.ID_FUNCIONARIO = ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'USUARIO', troca,[rfReplaceAll]);
         end
         else
         If (Pos('C.ID_IMOVEL',BUSCA_VALOR) = 0) AND ((Pos('IMOVEL ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' C.ID_IMOVEL = ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'IMOVEL', troca,[rfReplaceAll]);
         end
         else
         If (Pos('TUDO',BUSCA_VALOR) <> 0) OR (Pos('TODOS',BUSCA_VALOR) <> 0) OR (Pos('TODO',BUSCA_VALOR) <> 0) then
         Begin
              //BUSCA_VALOR := ' (CURRENT_DATE = CURRENT_DATE) '; //Só para passar sem parâmetros mesmo...
              BUSCA_VALOR := ' (1 = 1) ';
         end
         else
         If (Pos('(L.NOME LIKE',BUSCA_VALOR) = 0) AND ((Pos('RUA ',BUSCA_VALOR) <> 0) OR (Pos('AVENIDA ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' (L.NOME LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'RUA ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'AVENIDA ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end
         else
         If (Pos('(P.NOME LIKE',BUSCA_VALOR) = 0) AND ((Pos('NOME ',BUSCA_VALOR) <> 0) OR (Pos('PESSOA ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' (P.NOME LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'NOME ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'PESSOA ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end
         else
         If (Pos('C.DATA_CAD between',BUSCA_VALOR) = 0) AND (Pos('CADASTRO',BUSCA_VALOR) <> 0) then
         Begin
              if Cx = 'ENTRADA' then
                 BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CADASTRO',' cast(C.DATA_CAD as date) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ',[rfReplaceAll])
              ELSE
                  BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CADASTRO',' cast(C.DATA_CAD as date) between '''+formataDataSQL(DateToStr(Data_MenorSaida.Date))+''' AND '''+formataDataSQL(DateToStr(Data_MaiorSaida.Date))+''' ',[rfReplaceAll]);
         end
         else
         If (Pos('C.DATA_REF between',BUSCA_VALOR) = 0) AND (Pos('VENCIMENTO',BUSCA_VALOR) <> 0) then
         Begin
              if Cx = 'ENTRADA' then
                 BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VENCIMENTO',' cast(C.DATA_REF as date) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ',[rfReplaceAll])
              Else
                  BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VENCIMENTO',' cast(C.DATA_REF as date) between '''+formataDataSQL(DateToStr(Data_MenorSaida.Date))+''' AND '''+formataDataSQL(DateToStr(Data_MaiorSaida.Date))+''' ',[rfReplaceAll]);
         end
         else
         If (Pos('cast(C.DATA_ALT as date) between',BUSCA_VALOR) = 0) AND (Pos('ALTERACAO',BUSCA_VALOR) <> 0) then
         Begin
              if Cx = 'ENTRADA' then
                 BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'ALTERACAO',' cast(C.DATA_ALT as date) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ',[rfReplaceAll])
              Else
                  BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'ALTERACAO',' cast(C.DATA_ALT as date) between '''+formataDataSQL(DateToStr(Data_MenorSaida.Date))+''' AND '''+formataDataSQL(DateToStr(Data_MaiorSaida.Date))+''' ',[rfReplaceAll]);
         end
         else
         If (Pos('C.DATA_PGTO between',BUSCA_VALOR) = 0) AND (Pos('PAGAMENTO',BUSCA_VALOR) <> 0) then
         Begin
              if Cx = 'ENTRADA' then
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'PAGAMENTO',' cast(C.DATA_PGTO as date) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ',[rfReplaceAll])
              Else
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'PAGAMENTO',' cast(C.DATA_PGTO as date) between '''+formataDataSQL(DateToStr(Data_MenorSaida.Date))+''' AND '''+formataDataSQL(DateToStr(Data_MaiorSaida.Date))+''' ',[rfReplaceAll]);
         end
         else
         If (Pos('C.PENDENTE = ',BUSCA_VALOR) = 0) AND ((Pos('PENDENTE',BUSCA_VALOR) <> 0) or (Pos('PENDENTES',BUSCA_VALOR) <> 0)) then
         Begin
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'PENDENTE',' C.PENDENTE = ''SIM'' ',[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'PENDENTES',' C.PENDENTE = ''SIM'' ',[rfReplaceAll]);
         end
         else
         If (Pos('C.ID_CONTRATO = ',BUSCA_VALOR) = 0) AND ((Pos('CONTRATO ',BUSCA_VALOR) <> 0)) then
         Begin
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CONTRATO ',' C.ID_CONTRATO = ',[rfReplaceAll]);
         end
         else
         If (Pos('C.PARCELA = ',BUSCA_VALOR) = 0) AND ((Pos('PARCELA ',BUSCA_VALOR) <> 0)) then
         Begin
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'PARCELA ',' C.PARCELA = ',[rfReplaceAll]);
         end
         else
         If (Pos('NAO_QUITADO',BUSCA_VALOR) <> 0) then
         Begin
              BUSCA_VALOR := ' (c.data_pgto is null and c.hora_pgto is not null and c.pendente = ''NAO'') OR (0 < (select count(1) from caixa_pgto cp where cp.id_caixa_entrada = c.id_caixa) and c.data_pgto is null and c.pendente = ''NAO'') ';
         end;
    end;

  if (Length(BUSCA_VALOR) = TamanhoString) and verificaStringInt(BUSCA_VALOR) then
       if checkBoletoCE.State = cbChecked then //BUSCAR BOLETOS GERADOS NO MESMO DIA - REMESSA
          BUSCA_VALOR := 'C.data_ref = ( select data_ref from caixa_entrada where id_caixa = '+BUSCA_VALOR+' )  '+
                      ' and C.id_pessoa = ( select id_pessoa from caixa_entrada where id_caixa = '+BUSCA_VALOR+' ) '+
                      ' and (C.id_imovel = ( select id_imovel from caixa_entrada where id_caixa = '+BUSCA_VALOR+' ) or (C.id_imovel is null)) '+
                      ' and  C.pendente = ''NAO'' ' 
       else
           BUSCA_VALOR := ' ( C.ID_CAIXA like ''%'+BUSCA_VALOR+''' ) ';


  if (Length(BUSCA_VALOR) = TamanhoString) then
  Begin
       BUSCA_VALOR := ' ( '+
       ' C.DOCUMENTO LIKE ''%'+BUSCA_VALOR+'%'' or'+
       ' C.OPERACAO LIKE ''%'+BUSCA_VALOR+'%'' or' +
       ' P.NOME LIKE ''%'+BUSCA_VALOR+'%'' or'+
       ' L.NOME LIKE ''%'+BUSCA_VALOR+'%'' or'+
       ' PES.NOME LIKE ''%'+BUSCA_VALOR+'%'' or'+
       ' I.COMPLEMENTO LIKE ''%'+BUSCA_VALOR+'%'' ) ';
  end;

  //STATUS
  if Cx = 'ENTRADA' then
  Begin
       If Length(Trim(ComboAnotacoes.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND 0 < (select count(1) from caixa_status cst where cst.id_status = '+IntToStr(IDCampo(ComboAnotacoes.Text))+' and cst.id_caixa_entrada = c.ID_CAIXA )';
  End;


  //CATEGORIA
  if Cx = 'ENTRADA' then
  Begin
       If Length(Trim(ComboCategoria.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ID_CATEGORIA = '+IntToStr(IDCampo(ComboCategoria.Text))+') ';
  End
  Else
  begin
       If Length(Trim(ComboCategoriaSaida.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ID_CATEGORIA = '+IntToStr(IDCampo(ComboCategoriaSaida.Text))+') ';
  end;

  //GRUPO
  if Cx = 'ENTRADA' then
  Begin
       If Length(Trim(ComboGrupo.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ID_TIPO = '+IntToStr(IDCampo(ComboGrupo.Text))+') ';
  End
  Else
  begin
       If Length(Trim(ComboGrupoSaida.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ID_TIPO = '+IntToStr(IDCampo(ComboGrupoSaida.Text))+') ';
  end;

  //SUBGRUPO
  if Cx = 'ENTRADA' then
  Begin
       If Length(Trim(ComboSubgrupo.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ID_SUBTIPO = '+IntToStr(IDCampo(ComboSubgrupo.Text))+') ';
  End
  Else
  begin
       If Length(Trim(ComboSubgrupoSaida.Text)) > 0 Then
          BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ID_SUBTIPO = '+IntToStr(IDCampo(ComboSubgrupoSaida.Text))+') ';
  end;

    //BUSCA DOS COMPONENTES VISUAIS
    If (Cx = 'ENTRADA') and (Valor_Ativo.State <> cbGrayed) then
         If Valor_Ativo.Checked  Then
            BUSCA_VALOR := BUSCA_VALOR +  ' AND (C.DATA_PGTO is not null) '
         else
             BUSCA_VALOR := BUSCA_VALOR + ' AND (C.DATA_PGTO is null) ';

    If (Cx = 'SAIDA') and (Valor_AtivoSaida.State <> cbGrayed) then
         If Valor_AtivoSaida.Checked  Then
            BUSCA_VALOR := BUSCA_VALOR +  ' AND (C.DATA_PGTO is not null) '
         else
             BUSCA_VALOR := BUSCA_VALOR + ' AND (C.DATA_PGTO is null) ';

    BUSCA_VALOR := BUSCA_VALOR + ' AND (C.ATIVO = ''SIM'') '+ operacao;

  Try
     componenteZeos.Close;
     componenteZeos.SQL.Clear;
     componenteZeos.SQL.Add(Cam +' WHERE '+ BUSCA_VALOR + ' Order by '+ Ordenacao);
     componenteZeos.SQL.Text;
     componenteZeos.Open;
  Except
        on e: Exception do
        Begin
             PRINCIPAL.setMensagem('Verifique o manual ou entre em contato com o suporte técnico para realizar esta consulta.'+#13+'Contato: '+celulaTelefone);
             Exit;
        end;
  end;

  {
  //GERAR VALORES DA TAB INFERIOR
  //CAMPOS JOIN NESSA PARTE PARA LINCAR OS ALIAS QUE O CAMPO WHERE POSSUI GERADO NA PARTE SUPERIOR (COMANDO CASE SUPERIOR)
  varSQL :=  unUtilitario.getSelect('SELECT SUM(C.VALOR) as TOTAL, SUM((select result from spvalorcobranca1(1, c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) AS VALORCALC'+
  ' FROM caixa_'+Cx+' C '+
  ' left join caixa_sis tip on tip.id_caixa_sis = c.id_tipo '+
  ' left join caixa_sis stip on stip.id_caixa_sis = c.id_subtipo '+
  ' left join pessoa p on p.id_pessoa = c.id_pessoa '+
  ' left join imovel i on i.id_imovel = c.id_imovel '+
  ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel '+
  ' left join pessoa PES on PES.id_pessoa = PI.id_pessoa '+
  ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
  ' left join contrato con on con.id_contrato = c.id_contrato WHERE '+ BUSCA_VALOR);
  }

  valorTotal := 0;
  valorCalculo := 0;
  for I := 0 to componenteZeos.RecordCount -1 do
  begin
       valorTotal := valorTotal + componenteZeos.FieldByName('VALORREAL').AsCurrency;
       valorCalculo := valorCalculo + componenteZeos.FieldByName('VALOR').AsCurrency;

       componenteZeos.Next;
  end;
  componenteZeos.First;

  if Tab_Pesquisa.Showing then
  Begin
       Label_Total.Caption := FloatToSTrf(valorTotal,ffCurrency,18,2);
       Label_TotalCalculo.Caption := FloatToSTrf(valorCalculo,ffCurrency,18,2);
  end;

  if Tab_Pesquisa_Saida.Showing then
  Begin
       Label_TotalSaida.Caption := FloatToSTrf(valorTotal,ffCurrency,18,2);
       Label_TotalCalculoSaida.Caption := FloatToSTrf(valorCalculo,ffCurrency,18,2);
  end;

  PRINCIPAL.setMensagem(IntToStr(componenteZeos.RecordCount)+' Registro(s) Encontrado(s)!');

  FreeAndNil(varSQL);
end;

procedure TCAD_Caixas.CheckBoletosClick(Sender: TObject);
begin
  inherited;
  caixaRBuscaContasTodas();
end;

procedure TCAD_Caixas.ChequesShow(Sender: TObject);
begin
  inherited;
  if (DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull) OR (DM_FINANCEIRO.ZCaixaID_PESSOA.IsNull) then
     EXIT;

  DM_FINANCEIRO.ZChequeConta.Close;
  DM_FINANCEIRO.ZChequeConta.SQL.Clear;
  DM_FINANCEIRO.ZChequeConta.SQL.Add(' select c.*, cc.* from cheque c left join conta_cheque cc on cc.id_cheque = c.id_cheque where c.ativo <> ''XXX'' and cc.ID_CONTA = '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);
  DM_FINANCEIRO.ZChequeConta.Open;
end;

procedure TCAD_Caixas.CombinarContas1Click(Sender: TObject);
var varSQL: TZQuery;
    DATA_PGTO: string;
begin
     if NOT verificaPermissaoAdministrador('ENTRAR NA TELA DE COMBINAR CONTAS E UNIR') then
        EXIT;

     if SelecaoEntrada.Count <= 1 then
     Begin
          unUtilitario.setMensagem('Selecione ao menos duas contas para que sejam combinadas.','informa');
          Exit;
     end;

     if Grid_Busca.DataSource.DataSet.FieldByName('DATA_PGTO').IsNull then
        DATA_PGTO := 'NULL'
     else
        DATA_PGTO := ''''+formataDataSQL(Grid_Busca.DataSource.DataSet.FieldByName('DATA_PGTO').AsString)+'''';

     varSQL := unUtilitario.getSelect(' SELECT SUM((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) as SOMA from CAIXA_'+CAIXA+' C WHERE ID_CAIXA IN ('+alinhaStringlist(SelecaoEntrada)+')');

     if unUtilitario.setMensagem('Deseja unir todas as contas somando os valores em R$ '+varSQL.Fields[0].AsString+'?'+#13+'Deixe selecionado a conta conta tida como base.','confirma') = idyes then
     if varSQL.FieldByName('SOMA').AsCurrency > 0 then
     Begin
     Try
          varSQL := unUtilitario.getSQL('INSERT INTO CAIXA_'+CAIXA+' '+
          '(ID_CAIXA, ID_CATEGORIA, ID_TIPO, ID_SUBTIPO, ID_PESSOA, ID_IMOVEL, ID_CONTRATO, '+
          'ID_FUNCIONARIO, ID_ENTRADA, ID_SAIDA, DATA_REF, DATA_CAD, DATA_ALT, DATA_PGTO, HORA_PGTO, '+
          ' DOCUMENTO, OPERACAO, VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE, ATIVO, GARANTIDO) '+
          'VALUES ('+
          'NULL, '+
          Grid_Busca.DataSource.DataSet.FieldByName('ID_CATEGORIA').AsString+', '+
          Grid_Busca.DataSource.DataSet.FieldByName('ID_TIPO').AsString+', '+
          Grid_Busca.DataSource.DataSet.FieldByName('ID_SUBTIPO').AsString+', '+
          Grid_Busca.DataSource.DataSet.FieldByName('ID_PESSOA').AsString+', '+
          Grid_Busca.DataSource.DataSet.FieldByName('ID_IMOVEL').AsString+', '+
          Grid_Busca.DataSource.DataSet.FieldByName('ID_CONTRATO').AsString+', '+
          getUser('CODIGO_USUARIO')+', '+
          'NULL, '+
          'NULL, '+
          ' '''+formataDataSQL(Grid_Busca.DataSource.DataSet.FieldByName('DATA_REF').AsString)+''', '+
          ' CURRENT_TIMESTAMP, '+
          ' CURRENT_TIMESTAMP, '+
          ' '+DATA_PGTO+', '+
          ' CURRENT_TIME, '+
          ' ''VALOR REFERENTE À JUNÇÃO DE CONTAS COM CÓDIGO = '+alinhaStringlist(SelecaoEntrada)+' '', '+
          ' ''CONTA RESULTANTE DE UMA JUNÇÃO DE CONTAS '+alinhaStringlist(SelecaoEntrada)+' E QUE FORAM EXCLUÍDAS.'', '+
          formataDinheiroSQL(varSQL.Fields[0].AsString)+' , '+
          formataDinheiroSQL(Grid_Busca.DataSource.DataSet.FieldByName('VALOR_JUROS').AsString)+' , '+
          formataDinheiroSQL(Grid_Busca.DataSource.DataSet.FieldByName('VALOR_MULTA').AsString)+' , '+
          formataDinheiroSQL(Grid_Busca.DataSource.DataSet.FieldByName('VALOR_DESCONTO').AsString)+' , '+
          Grid_Busca.DataSource.DataSet.FieldByName('PARCELA').AsString+' , '+
          ' '''+Grid_Busca.DataSource.DataSet.FieldByName('PENDENTE').AsString+''', '+
          ' '''+Grid_Busca.DataSource.DataSet.FieldByName('ATIVO').AsString+''', '+
          ' '''+Grid_Busca.DataSource.DataSet.FieldByName('GARANTIDO').AsString+''');');

          varSQL := unUtilitario.getSQL('UPDATE CAIXA_'+CAIXA+' SET ATIVO = ''XXX'', DATA_ALT = CURRENT_TIMESTAMP, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+' WHERE ID_CAIXA in ('+alinhaStringlist(SelecaoEntrada)+')');

          unUtilitario.setMensagem('Alteração realizada!'+#13+'Atualize a sua consulta e confirme a conta criada.','recado');

          Grid_Busca.DataSource.DataSet.Refresh;
     except
           ON E: Exception DO
              setMensagem('Houve um erro ao juntar as contas! Favor verifique os registros selecionados com cautela, revisando as informações.'+#13+'ERRO:'+E.Message,'erro');
     end;
     end
     else
         unUtilitario.setMensagem('Com a soma dos valores, não é possível criar mais uma conta.','informa');
     

end;

procedure TCAD_Caixas.CamposKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_RETURN then
       if Valor.Visible then
          Valor.SetFocus;
end;

procedure TCAD_Caixas.DBEdit10Change(Sender: TObject);
begin
  inherited;
  setCalculoDesconto();
end;

procedure TCAD_Caixas.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_RETURN then
    begin
         setCalculoDesconto();
         setValorTotal();
         EditValor_Desconto.SetFocus;
    end;
end;

procedure TCAD_Caixas.DBEdit11DblClick(Sender: TObject);
begin
  inherited;
  setDiferencaDias();
  setCalculoMulta();
  setCalculoJuros();
  setCalculoDesconto();
  setValorTotal();
end;

procedure TCAD_Caixas.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_RETURN then
       DBEdit11DblClick(Sender);
end;

procedure TCAD_Caixas.DBEdit12DblClick(Sender: TObject);
begin
  inherited;
  if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
     Exit;

  DM_FINANCEIRO.ZCaixaDATA_PGTO.Value := Date();
  DM_FINANCEIRO.ZCaixaHORA_PGTO.Value := Time();
  setDiferencaDias();
end;

procedure TCAD_Caixas.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_RETURN then
    Begin
         setValorTotal();
         Exit;
    end;

    If (Key = VK_DELETE) OR (Key = VK_ESCAPE) then
    Begin
         DM_FINANCEIRO.ZCaixaDATA_PGTO.AsVariant := NULL;
         DM_FINANCEIRO.ZCaixaHORA_PGTO.AsVariant := NULL;
         //EditValor_TotalPago.SetFocus;
         Exit;
    end;

end;

procedure TCAD_Caixas.DBEdit16DblClick(Sender: TObject);
begin
  inherited;
  DM_FINANCEIRO.ZCaixaStatus.Edit;
  DM_FINANCEIRO.ZCaixaStatusDATA_ENTRADA.Value := Date();
end;

procedure TCAD_Caixas.DBEdit17DblClick(Sender: TObject);
begin
  inherited;
  DM_FINANCEIRO.ZCaixaPgtoDATA_PGTO.Value := Date();
end;

procedure TCAD_Caixas.DBEdit18DblClick(Sender: TObject);
begin
  inherited;
  DM_FINANCEIRO.ZCaixaStatus.Edit;
  DM_FINANCEIRO.ZCaixaStatusDATA_SAIDA.Value := Date();
end;

procedure TCAD_Caixas.DBEditOperacaoDblClick(Sender: TObject);
begin
     if verificaPermissaoAdministrador('EDITAR OPERAÇÃO DE CRIAÇÃO CAIXA') then
     Begin
          DBEditOperacao.ReadOnly := False;
     end;

end;

procedure TCAD_Caixas.DBEdit6DblClick(Sender: TObject);
begin
  inherited;

  if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
     Exit;

  DM_FINANCEIRO.ZCaixaDATA_REF.Value := Date();
  setDiferencaDias();
end;

procedure TCAD_Caixas.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  setDiferencaDias();
end;

procedure TCAD_Caixas.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = VK_RETURN then
  Begin
       DBEdit11DblClick(Sender);
       DBEdit7.SetFocus;
       setDiferencaDias();
  end;
end;

procedure TCAD_Caixas.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_RETURN then
    begin
         DBEdit11DblClick(Sender);
         EditValor_Multa.SetFocus;
    end;
end;

procedure TCAD_Caixas.DBEdit8Change(Sender: TObject);
begin
  inherited;
  setCalculoMulta();
end;

procedure TCAD_Caixas.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If Key = VK_RETURN then
    begin
         setCalculoMulta();
         setValorTotal();
         EditValor_Juros.SetFocus;
    end;
end;

procedure TCAD_Caixas.DBEdit9Change(Sender: TObject);
begin
  inherited;
  setCalculoJuros();
end;

procedure TCAD_Caixas.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    If Key = VK_RETURN then
    begin
         setCalculoJuros();
         setValorTotal();
         DBEdit10.SetFocus;
    end;
end;

procedure TCAD_Caixas.DBEditDocumentoChange(Sender: TObject);
begin
  //MOSTRA O ALERTA PARA A IMPRESSÃO SAIR CORRETA.
  if Length(Trim(DBEditDocumento.Text)) > 80 then
     labelAviso.Visible := true
  else
      labelAviso.Visible := false;
end;

procedure TCAD_Caixas.DBGrid1DblClick(Sender: TObject);
begin
  inherited;

  if(Pos('CHEQUE', ' '+DM_FINANCEIRO.DS_CaixaPgto.DataSet.FieldByName('NOME').AsString) > 0) Then
    tabCadastroCheque.Show
  else
    TabInfoPagamento.Show;
end;

procedure TCAD_Caixas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key = VK_DELETE then
  Begin
     unUtilitario.setMensagem('Para excluir uma conta, vá na aba Sis.','informa');
     Exit;
  end;
end;

procedure TCAD_Caixas.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_DELETE then
       If unUtilitario.setMensagem('Deseja excluir este status?','confirma') = Idyes Then
       Begin
            Try
               DM_FINANCEIRO.ZCaixaStatus.Delete;
               DM_FINANCEIRO.ZCaixaStatus.ApplyUpdates;
            Except
                  ON E: Exception DO
                     unUtilitario.setMensagem(e.Message,'erro');
            End;
       end;
end;

procedure TCAD_Caixas.DBGrid6DblClick(Sender: TObject);
begin

     if DM_FINANCEIRO.ZChequeContaID_CHEQUE.IsNull then
        Exit;

     DM_FINANCEIRO.ZChequeConta.Edit;
     editaCheque(True);

     populaCheque();

     chequeBanco.SetFocus;
end;

procedure TCAD_Caixas.populaCheque();
var varSQL: TZQuery;
begin
     //CONTA
     if DM_FINANCEIRO.ZChequeContaID_CHEQUE.IsNull then
     Begin
          chequeValor.Text := '0,00';
          chequeEmissao.Text := '00/00/0000';
          chequeAnotacao.Text := '';
          chequeBanco.Text := '';
          chequeAgencia.Text := '';
          chequeConta.Text := '';
          chequeNumero.Text := '';
          chequeNome.Text := '';
     end
     else
     begin
          varSQL := unUtilitario.getSelect('select * from cheque c where c.id_cheque = '+ DM_FINANCEIRO.ZChequeContaID_CHEQUE.AsString);
          chequeValor.Text := varSQL.FieldByName('VALOR').AsString;
          chequeEmissao.Text := varSQL.FieldByName('DATA_REF').AsString;
          chequeAnotacao.Text := varSQL.FieldByName('OBS').AsString;
          chequeBanco.Text := varSQL.FieldByName('BANCO').AsString;
          chequeAgencia.Text := varSQL.FieldByName('AGENCIA').AsString;
          chequeConta.Text := varSQL.FieldByName('CC').AsString;
          chequeNumero.Text := varSQL.FieldByName('NUM_CHEQUE').AsString;
          chequeNome.Text := varSQL.FieldByName('NOME').AsString;
          //varSQL.Close;
     end;    

end;

procedure TCAD_Caixas.diaBtnContasAPagarClick(Sender: TObject);
begin
  inherited;
  diaBtnContasPagas.Default := False;
  diaBtnContasAPagar.Default := True;

  caixaRBuscaContasAPagar();
end;

procedure TCAD_Caixas.diaBtnContasPagasClick(Sender: TObject);
begin
  inherited;
  diaBtnContasPagas.Default := True;
  diaBtnContasAPagar.Default := False;

  caixaRBuscaContasPagas();
end;

procedure TCAD_Caixas.diaBtnGravarClick(Sender: TObject);
begin
  inherited;

  caixaRGravar();

end;

procedure TCAD_Caixas.diaBtnNovoClick(Sender: TObject);
begin
  inherited;
  caixaRNovo();

  diaLookupCategoria.Enabled := True;
  diaLookupGrupo.Enabled := True;
  diaLookupSubgrupo.Enabled := True;

  diaLookupCategoria.KeyValue := null;
  diaLookupGrupo.KeyValue := null;
  diaLookupSubgrupo.KeyValue := null;

  diaVencimento.Date := Date();

  diaLookupCategoria.SetFocus;
end;

procedure TCAD_Caixas.diaComboChange(Sender: TObject);
begin
  inherited;
  caixaRBuscaContasTodas();
end;

procedure TCAD_Caixas.diaDateCloseUp(Sender: TObject);
begin
  inherited;
  caixaRBuscaContasTodas();
end;

procedure TCAD_Caixas.diaGridEntradaDblClick(Sender: TObject);
begin
  inherited;
  if NOT diaSQLEntrada.FieldByName('ID_CAIXA').IsNull Then
     mostraContaEntrada(diaSQLEntrada.FieldByName('ID_CAIXA').AsInteger);
end;

procedure TCAD_Caixas.diaGridEntradaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  IF (COLUMN.FieldName = 'ID_CAIXA') THEN
    if  diaSQLEntrada.FieldByName('DATA_PGTO').IsNull THEN
      begin
           diaGridEntrada.Canvas.Brush.Color:= clBlack;
           diaGridEntrada.Canvas.Font.Color:= clSilver;
           diaGridEntrada.Canvas.FillRect(Rect);
           diaGridEntrada.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
    ELSE
      begin
           diaGridEntrada.Canvas.Brush.Color:= clWhite;
           diaGridEntrada.Canvas.Font.Color:= clBlack;
           diaGridEntrada.Canvas.FillRect(Rect);
           diaGridEntrada.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
end;

procedure TCAD_Caixas.diaGridSaidaDblClick(Sender: TObject);
begin
  inherited;
  if NOT diaSQLSaida.FieldByName('ID_CAIXA').IsNull Then
     mostraContaSaida(diaSQLSaida.FieldByName('ID_CAIXA').AsInteger);
end;

procedure TCAD_Caixas.diaGridSaidaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  IF (COLUMN.FieldName = 'ID_CAIXA') THEN
    if  diaSQLSaida.FieldByName('DATA_PGTO').IsNull THEN
      begin
           diaGridSaida.Canvas.Brush.Color:= clBlack;
           diaGridSaida.Canvas.Font.Color:= clSilver;
           diaGridSaida.Canvas.FillRect(Rect);
           diaGridSaida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
    ELSE
      begin
           diaGridSaida.Canvas.Brush.Color:= clWhite;
           diaGridSaida.Canvas.Font.Color:= clBlack;
           diaGridSaida.Canvas.FillRect(Rect);
           diaGridSaida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
end;

procedure TCAD_Caixas.diaLabelCaixaDblClick(Sender: TObject);
begin
  inherited;
  IF diaLabelCaixa.Caption = 'ENTRADA' THEN
  BEGIN
     diaLabelCaixa.Caption := 'SAIDA';
     diaLabelCaixa.Font.Color := clNavy;
  END
  ELSE
  BEGIN
      diaLabelCaixa.Caption := 'ENTRADA';
      diaLabelCaixa.Font.Color := clGreen;
  END;
end;

procedure TCAD_Caixas.EditDiferenca_DiasDblClick(Sender: TObject);
begin
  inherited;
  setDiferencaDias();
end;

procedure TCAD_Caixas.EditDiferenca_Dias_InfoDblClick(Sender: TObject);
begin
  inherited;
  setDiferencaDias();
end;

procedure TCAD_Caixas.EditImovelDblClick(Sender: TObject);
begin
  inherited;
  Try
     if not DM_FINANCEIRO.ZCaixaID_IMOVEL.IsNull then
        unCamposBusca.buscaIndividual(1,DM_FINANCEIRO.ZCaixaID_IMOVEL.Value,TCAD_Imovel,self);
  except
        unUtilitario.setMensagem('Erro ao buscar o imóvel.'+#13+'Verifique se o imóvel está cadastrado.','erro');
  end;
end;

procedure TCAD_Caixas.EditPessoaDblClick(Sender: TObject);
begin
  inherited;
  Try
     if not DM_FINANCEIRO.ZCaixaID_PESSOA.IsNull then
        unCamposBusca.buscaIndividual(2,DM_FINANCEIRO.ZCaixaID_PESSOA.Value,TCAD_Pessoa,self);
  except
        unUtilitario.setMensagem('Erro ao buscar a pessoa.'+#13+'Verifique se a pessoa está cadastrada.','erro');
  end;

end;

procedure TCAD_Caixas.EditValor_DescontoChange(Sender: TObject);
begin
  inherited;
  setCalculoDesconto();
end;

procedure TCAD_Caixas.EditValor_DescontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key = VK_RETURN then
    begin
         setCalculoDesconto();
         setValorTotal();
         DBEdit11.SetFocus;
    end;
end;

procedure TCAD_Caixas.EditValor_JurosChange(Sender: TObject);
begin
  inherited;
  setCalculoJuros();
end;

procedure TCAD_Caixas.EditValor_JurosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    If Key = VK_RETURN then
    begin
         setCalculoJuros();
         setValorTotal();
         DBEdit9.SetFocus;
    end;
end;

procedure TCAD_Caixas.EditValor_MultaChange(Sender: TObject);
begin
  inherited;
  setCalculoMulta();
end;

procedure TCAD_Caixas.EditValor_MultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If Key = VK_RETURN then
    begin
         setCalculoMulta();
         setValorTotal();
         DBEdit8.SetFocus;
    end;

end;

procedure TCAD_Caixas.EnviarporEmailBoletos1Click(Sender: TObject);
Var i: Integer;

begin  

       if SelecaoEntrada.Count = 0 then
       Begin
            unUtilitario.setMensagem('Selecione as contas que deseja enviar boletos.','informa');
       end;

       if unUtilitario.setMensagem('Deseja enviar '+IntToStr(SelecaoEntrada.Count)+' boletos por e-mail agora?'+#13+'- Será enviado somente para as pessoas com e-mails cadastrados no sistema.'+#13+'- Contas com a mesma Data de Vencimento, Pessoa e Imóvel serão anexadas também.','confirma') = IDYES then
       Begin

            PRINCIPAL.setMensagem('ENVIANDO BOLETOS! Esta operação pode demorar anguns minutos...');

            for I := 0 to SelecaoEntrada.Count - 1 do
            Begin
                 espera(4,'Enviando boleto '+SelecaoEntrada.Strings[I]+'...');

                 if getBoleto('CobreBem') = 'SIM' then
                    gerarBoletoCobrebem(SelecaoEntrada.Strings[I], FALSE, 'EMAIL')
                 else
                     PRINCIPAL.enviaBoletoEmail(StrToInt(SelecaoEntrada.Strings[I]));
            end;

       PRINCIPAL.setMensagem('Envio de boletos por e-mail concluído!');

       if (getTela('SELECAO_LIMPA') = 'SIM') OR (getTela('SELECAO_LIMPA') = 'NULO')then
       Begin
            SelecaoEntrada.Clear;
            PRINCIPAL.SELECAO.Clear;
       end;
  end;
end;

procedure TCAD_Caixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  PRINCIPAL.SELECAO.Clear;
  inherited;
  {
  DM_FINANCEIRO.ZCaixa.Close;
  DM_FINANCEIRO.ZCaixaCategoria.Close;
  DM_FINANCEIRO.ZCaixaGrupo.Close;
  DM_FINANCEIRO.ZCaixaSubgrupo.Close;
  DM_FINANCEIRO.ZCaixaPgto.Close;
  DM_FINANCEIRO.ZCaixaFormaPgto.Close;
  }
end;

procedure TCAD_Caixas.verificaPermissaoTela();
begin

{
ADMINISTRAR >> CAIXA COMPOSTO = FORMULARIO
ADMINISTRAR >> CAIXA COMPOSTO = INCLUIR
ADMINISTRAR >> CAIXA COMPOSTO = GRAVAR
ADMINISTRAR >> CAIXA COMPOSTO = EXCLUIR
ADMINISTRAR >> CAIXA COMPOSTO = CADASTRO RAPIDO
ADMINISTRAR >> CAIXA COMPOSTO = TOTAIS NAS ABAS
ADMINISTRAR >> CAIXA COMPOSTO = RELATÓRIOS
}

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = FORMULARIO') then
    Close;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = INCLUIR') then
 Begin
      Btn_Novo.Enabled := False;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = GRAVAR') then
 Begin
      Btn_Gravar.Enabled := False;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = EXCLUIR') then
 Begin
      Btn_Excluir.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = CADASTRO RAPIDO') then
 Begin
      diaBtnNovo.Enabled := false;
      diaBtnGravar.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = TOTAIS NAS ABAS') then
 Begin
      painelRodapeCaixa.Visible := false;
      Panel3.Visible := false;
      Panel7.Visible := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = RELATÓRIOS') then
 Begin
      btnRelatorioCaixaDia.Enabled := false;
      Btn_Retorno.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = PAGAMENTO') then
 Begin
      btnRelatorioCaixaDia.Enabled := false;
      Btn_Retorno.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR CATEGORIA/GRUPO/SUBGRUPO') then
 Begin
      LookCategoria.Enabled := false;
      LookGrupo.Enabled := false;
      LookSubgrupo.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR DESCONTO') then
 Begin
      DBEdit10.Enabled := false;
      EditValor_Desconto.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR JUROS') then
 Begin
      EditValor_Juros.Enabled := false;
      DBEdit9.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR MULTA') then
 Begin
      EditValor_Multa.Enabled := false;
      DBEdit8.Enabled := false;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR VALOR') then
 Begin
      DBEdit7.Enabled := false;
      DBEdit11.Enabled := false;
 end;

end;


procedure TCAD_Caixas.FormCreate(Sender: TObject);
Var  varSql: TZQuery;
begin
  inherited;

  if NOT usuarioLogadoVerifica() then
     usuarioLogadoColoca();

  Btn_Novo.Visible := False;
  Btn_Gravar.Visible := False;
  Btn_Excluir.Visible := False;
  Grid_Busca.PopupMenu := PopupGrid;
  Grid_BuscaSaida.PopupMenu := PopupGrid;

  //CRIA O OBJETO PARA A SELEÇÃO EM DEMANDA
  SelecaoEntrada := TStringList.Create;

  //Select para o Caixa Rápido
  diaSelectEntrada := 'select c.data_pgto, c.documento, c.id_caixa, c.valor, p.nome as PESSOA, (l.nome ||'' - ''|| i.numero) as RUA,'+
       ' (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros,'+
       ' c.valor_multa, c.valor_desconto)) as VALORCALCULADO from caixa_ENTRADA c'+
       ' left join pessoa p on p.id_pessoa = c.id_pessoa '+
       ' left join imovel i on i.id_imovel = c.id_imovel '+
       ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
       ' where c.ativo = ''SIM'' and c.pendente = ''NAO'' ';

  diaSelectSaida := 'select c.data_pgto, c.documento, c.id_caixa, c.valor, p.nome as PESSOA, (l.nome ||'' - ''|| i.numero) as RUA,'+
       ' (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros,'+
       ' c.valor_multa, c.valor_desconto)) as VALORCALCULADO from caixa_SAIDA c'+
       ' left join pessoa p on p.id_pessoa = c.id_pessoa '+
       ' left join imovel i on i.id_imovel = c.id_imovel '+
       ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
       ' where c.ativo = ''SIM'' and c.pendente = ''NAO'' ';


  //Campos Select Anotacoes / Status
  varSql := unUtilitario.getSelect('select nome ||''-''|| ID_CAIXA_SIS from caixa_sis where ATIVO = ''SIM'' and tipo = ''STATUS'' order by nome');

  // Alimentando o dropdown
  ComboAnotacoes.Items.Clear;
  ComboAnotacoes.Items.Add('');

  while not varSQL.eof do
  Begin
       ComboAnotacoes.Items.Add(varSql.Fields[0].AsString);
       varSql.Next;
  end;

  //Campos Select
  varSql := unUtilitario.getSelect('select nome ||''-''|| ID_CAIXA_SIS from caixa_sis where ATIVO = ''SIM'' and tipo = ''CATEGORIA'' order by nome');

  // Alimentando o dropdown
  ComboCategoria.Items.Clear;
  ComboCategoria.Items.Add('');
  ComboCategoriaSaida.Items.Clear;
  ComboCategoriaSaida.Items.Add('');

  while not varSQL.eof do
  Begin
       ComboCategoria.Items.Add(varSql.Fields[0].AsString);
       ComboCategoriaSaida.Items.Add(varSql.Fields[0].AsString);
       varSql.Next;
  end;

  //varSql.Close;

  varSql := unUtilitario.getSelect('select nome ||''-''|| ID_CAIXA_SIS from caixa_sis where ATIVO = ''SIM'' and tipo = ''GRUPO'' order by nome');

  // Alimentando o dropdown
  ComboGrupo.Items.Clear;
  ComboGrupo.Items.Add('');
  ComboGrupoSaida.Items.Clear;
  ComboGrupoSaida.Items.Add('');

  while not varSQL.eof do
  Begin
       ComboGrupo.Items.Add(varSql.Fields[0].AsString);
       ComboGrupoSaida.Items.Add(varSql.Fields[0].AsString);
       varSql.Next;
  end;

  //varSql.Close;

  varSql := unUtilitario.getSelect('select nome ||''-''|| ID_CAIXA_SIS from caixa_sis where ATIVO = ''SIM'' and tipo = ''SUBGRUPO'' order by nome');

  // Alimentando o dropdown
  ComboSubgrupo.Items.Clear;
  ComboSubgrupo.Items.Add('');
  ComboSubgrupoSaida.Items.Clear;
  ComboSubgrupoSaida.Items.Add('');

  while not varSQL.eof do
  Begin
       ComboSubgrupo.Items.Add(varSql.Fields[0].AsString);
       ComboSubgrupoSaida.Items.Add(varSql.Fields[0].AsString);
       varSql.Next;
  end;

  //ESCOLHE O CAIXA ENTRADA COMO PADRÃO
  setCaixa('ENTRADA');
  Grid_Busca.DataSource := DS;
  Grid_BuscaSaida.DataSource := DM_FINANCEIRO.DS_CaixaBackup;
  DS.DataSet := DM_FINANCEIRO.ZCaixa;
  DM_FINANCEIRO.DS_CaixaBackup.DataSet := DM_FINANCEIRO.ZCaixaBackup;

  Data_MenorSaida.Date := Date;
  Data_MaiorSaida.Date := Date;
  Data_Maior.Date := Date;
  Data_Menor.Date := Date;
  diaDate.Date := Date;

  //MENUS DROP DOWN DE SELEÇÃO
  DM_FINANCEIRO.ZCaixaCategoria.Close;
  DM_FINANCEIRO.ZCaixaCategoria.Open;

  DM_FINANCEIRO.ZCaixaGrupo.Close;
  DM_FINANCEIRO.ZCaixaGrupo.Open;

  DM_FINANCEIRO.ZCaixaSubgrupo.Close;
  DM_FINANCEIRO.ZCaixaSubgrupo.Open;

  //rowEntrada := TStringList.Create();
  //rowSaida := TStringList.Create();

  PageControl1.TabIndex := 0;

  //Controles do Caixa Rápido
  diaDSEntrada := TDataSource.Create(Self);
  diaDSSaida := TDataSource.Create(Self);
  diaDSEntrada.DataSet := diaSQLEntrada;
  diaDSSaida.DataSet := diaSQLSaida;

  diaGridEntrada.DataSource := diaDSEntrada;
  diaGridSaida.DataSource := diaDSSaida;

  FreeAndNil(varSql);
  TabCaixaDiaShow(Sender);
  Grid_Busca := unUtilitario.pegaGrid(Self.Name+'_entrada', Grid_Busca);
  Grid_BuscaSaida := unUtilitario.pegaGrid(Self.Name+'_saida', Grid_BuscaSaida);

  //DS.DataSet.FieldByName('DATA_REF').EditMask := '!99/99/9999;1;_';
  //DS.DataSet.FieldByName('DATA_PGTO').EditMask := '!99/99/9999;1;_';

  verificaPermissaoTela();
end;

procedure TCAD_Caixas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  Case Key of
       VK_RETURN:
       BEGIN
            if Tab_Pesquisa.Showing Then
               if not Grid_Busca.Focused Then
                  Pesquisar();

            if Tab_Pesquisa_Saida.Showing Then
               if not Grid_BuscaSaida.Focused Then
                  Pesquisar();
       END;
       VK_PRIOR:
       BEGIN
        if Tab_Informacoes.Showing Then
          if DS.DataSet.Active Then
          Begin
            DS.DataSet.Cancel;
            DS.DataSet.Prior;
            DS.DataSet.Edit;
          end;
       END;
       VK_NEXT:
       BEGIN
        if Tab_Informacoes.Showing Then
          if DS.DataSet.Active Then
          Begin
            DS.DataSet.Cancel;
            DS.DataSet.Next;
            DS.DataSet.Edit;
          end;
       END;

  end;

    inherited;
end;

procedure TCAD_Caixas.GerarRemessaeRetorno1Click(Sender: TObject);
begin
  inherited;
   PRINCIPAL.Boletos1Click(Sender);
end;

procedure TCAD_Caixas.Grid_BuscaCellClick(Column: TColumn);
begin
  recuperaMensagens();
end;

procedure TCAD_Caixas.recuperaMensagens();
Var ZRecados: TZQuery;
    texto: string;
Begin
     if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull Then
        Exit;

     ZRecados := unUtilitario.getSelect('select l.*, r.nome as remetente, case l.componente when ''FUNCIONARIO'' then (select nome from usuario '+'where id_usuario = l.id_conta) when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) else ''NÃO INFORMADO'' end as destinatario from log l inner'+' join usuario r on r.id_usuario = l.id_func where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_conta = '+DM_FINANCEIRO.ZCaixaID_PESSOA.AsString);

     msgClienteEntrada.Caption := '';
     msgClienteSaida.Caption := '';
     while NOT ZRecados.Eof do
     Begin
             texto := texto + ZRecados.FieldByName('CAMPOS').AsString +'.  ';
             ZRecados.Next;
     end;

     if Caixa = 'ENTRADA' then
     begin
        msgClienteEntrada.Caption := texto;
        msgClienteEntrada.Tag := DM_FINANCEIRO.ZCaixaID_PESSOA.AsInteger;
     end
     else
     begin
         msgClienteSaida.Caption := texto;
         msgClienteSaida.Tag := DM_FINANCEIRO.ZCaixaID_PESSOA.AsInteger;
     end;
end;

procedure TCAD_Caixas.Grid_BuscaDblClick(Sender: TObject);
begin

     if Caixa = 'ENTRADA' then
     Begin
          if Tab_Pesquisa_Saida.Showing then
          Begin
               ComboCategoriaSaida.Text := '';
               ComboGrupoSaida.Text := '';
               ComboSubgrupoSaida.Text := '';

               setCaixa('SAIDA');
               ValorSaida.Text := DM_FINANCEIRO.ZCaixaBackup.FieldByName('ID_CAIXA').AsString;
               Pesquisar(); 
               Tab_Cadastro.Show;
               Tab_Informacoes.Show;
               Tab_InformacoesShow(Sender);
               DM_FINANCEIRO.ZCaixaBackup.Close;
               Label_Total.Caption := 'R$ 0,00';
               Label_TotalCalculo.Caption := 'R$ 0,00';
          end
          else
          Begin
               DS.DataSet.Edit;
               Tab_Cadastro.Show;

               Tab_Informacoes.Show;
               Tab_InformacoesShow(Sender);
          end;
     end;

     if Caixa = 'SAIDA' then
     Begin
          if Tab_Pesquisa.Showing then
          Begin
               ComboCategoria.Text := '';
               ComboGrupo.Text := '';
               ComboSubgrupo.Text := '';
               
               setCaixa('ENTRADA');
               Valor.Text := DM_FINANCEIRO.ZCaixaBackup.FieldByName('ID_CAIXA').AsString;
               Pesquisar();
               Tab_Cadastro.Show;
               Tab_Informacoes.Show;
               Tab_InformacoesShow(Sender);
               DM_FINANCEIRO.ZCaixaBackup.Close;
               Label_TotalSaida.Caption := 'R$ 0,00';
               Label_TotalCalculoSaida.Caption := 'R$ 0,00';
          end
          else
          Begin
               DS.DataSet.Edit;
               Tab_Cadastro.Show;

               Tab_Informacoes.Show;
               Tab_InformacoesShow(Sender);
          end;
     end;

end;

procedure TCAD_Caixas.Grid_BuscaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  IF (COLUMN.FieldName = 'ID_CAIXA') THEN
  Begin
    if  Grid_Busca.DataSource.DataSet.FieldByName('DATA_PGTO').IsNull THEN
      begin
           Grid_Busca.Canvas.Brush.Color:= clBlack;
           Grid_Busca.Canvas.Font.Color:= clSilver;
           Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
      end
    ELSE
      begin
           Grid_Busca.Canvas.Brush.Color:= clWhite;
           Grid_Busca.Canvas.Font.Color:= clBlack;
           Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
      end;

    if  Grid_Busca.DataSource.DataSet.FieldByName('PENDENTE').AsString = 'SIM' THEN
           Grid_Busca.Canvas.Font.Color:= clYellow;

    Grid_Busca.Canvas.FillRect(Rect);
    Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  End;

  IF (COLUMN.FieldName = 'DATA_PGTO') THEN
  Begin

       if  Grid_Busca.DataSource.DataSet.FieldByName('GARANTIDO').AsString = 'SIM' THEN
       begin
           Grid_Busca.Canvas.Font.Color := clFuchsia;
       end
       ELSE
       begin
           Grid_Busca.Canvas.Font.Color := clBlack;
       end;

       if  POS('BAIXA PARCIAL',Grid_Busca.DataSource.DataSet.FieldByName('OPERACAO').AsString) > 0 THEN
       begin
           Grid_Busca.Canvas.Font.Color := clMaroon;
       end;

       Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
       Grid_Busca.Canvas.FillRect(Rect);
       Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  End;

  IF (COLUMN.FieldName = 'PARCELA') THEN
  Begin
       if Grid_Busca.DataSource.DataSet.RecordCount > 0 then
          if Grid_Busca.DataSource.DataSet.FieldByName('ID_CAIXA').AsInteger > 0 then
          Begin
               sqlGrid := unUtilitario.getSelect('select count(1) from caixa_status cst where cst.id_status = 24 and cst.id_caixa_entrada ='+Grid_Busca.DataSource.DataSet.FieldByName('ID_CAIXA').AsString);
               if  sqlGrid.Fields[0].AsInteger > 0 THEN
               begin
                    Grid_Busca.Canvas.Brush.Color := clRed;
                    Grid_Busca.Canvas.Font.Color := clWhite;
               end
               ELSE
               Begin
                    Grid_Busca.Canvas.Brush.Color:= clWhite;
                    Grid_Busca.Canvas.Font.Color := clBlack;
               end;
               sqlGrid.Close;

               Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
               Grid_Busca.Canvas.FillRect(Rect);
               Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;

  End;

  //select cst.*, cs.nome, c.documento, cast(cst.anotacao as varchar(255)) as texto, u.nome as operador from caixa_status cst inner join usuario u on u.id_usuario = cst.id_funcionario inner join caixa_sis cs on cst.id_status = cs.id_caixa_sis '+' inner join caixa_entrada c on c.id_caixa = cst.id_caixa_entrada and c.ativo = ''SIM'' and c.pendente = ''NAO'' where cst.id_caixa_entrada =  '+DM_CADASTRO.Z_Curinga_02X.FieldByName('id_caixa').AsString+' order by cst.data_alt desc, cs.nome


  if (COLUMN.FieldName = 'DATA_REF') then
  Begin
       if  (POS('BOLETO_EMITIDO',Grid_Busca.DataSource.DataSet.FieldByName('OPERACAO').AsString) > 0) THEN
       begin
           Grid_Busca.Canvas.Brush.Color := clGradientActiveCaption;
       end
       ELSE
           Grid_Busca.Canvas.Brush.Color:= clWhite;

       Grid_Busca.Canvas.Font.Color := clBlack;
       Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
       Grid_Busca.Canvas.FillRect(Rect);
       Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  


  IF (COLUMN.FieldName = 'SUBGRUPO') THEN
  Begin

       if  (POS('[BOLETO]',Grid_Busca.DataSource.DataSet.FieldByName('OPERACAO').AsString) > 0) THEN
       begin
           Grid_Busca.Canvas.Brush.Color := clGradientActiveCaption;
       end
       ELSE
           Grid_Busca.Canvas.Brush.Color:= clWhite;

       if  Grid_Busca.DataSource.DataSet.FieldByName('GARANTIDO').AsString = 'SIM' THEN
       begin
           Grid_Busca.Canvas.Font.Color := clFuchsia;
       end
       ELSE
       begin
           Grid_Busca.Canvas.Font.Color := clBlack;
       end;

       if  POS('BAIXA PARCIAL',Grid_Busca.DataSource.DataSet.FieldByName('OPERACAO').AsString) > 0 THEN
       begin
           Grid_Busca.Canvas.Font.Color := clMaroon;
       end;

       Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
       Grid_Busca.Canvas.FillRect(Rect);
       Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  End;

end;

procedure TCAD_Caixas.Grid_BuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  Grid_Busca.PopupMenu := PopupGrid;
  Grid_BuscaSaida.PopupMenu := PopupGrid;

  If Key = VK_RETURN then
  Begin
       if (CAIXA = 'SAIDA') AND (PageControl1.TabIndex = 1) then
       Begin
            unUtilitario.setMensagem('Você está no caixa SAÍDA! CLIQUE 2X no registro para selecioná-lo individualmente no caixa Entrada.','informa');
            Exit;
       end;

       if (CAIXA = 'ENTRADA') AND (PageControl1.TabIndex = 2) then
       Begin
            unUtilitario.setMensagem('Você está no caixa ENTRADA! CLIQUE 2X no registro para selecioná-lo individualmente no caixa Saída.','informa');
            Exit;
       end;

         inherited;
       
       Tab_InformacoesShow(Sender);
  end;

   //If Key = VK_MENU Then
   //   PopupGrid.Popup(400,500);

end;

procedure TCAD_Caixas.Grid_BuscaSaidaCellClick(Column: TColumn);
begin
  recuperaMensagens();
end;

procedure TCAD_Caixas.Grid_BuscaSaidaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  IF (COLUMN.FieldName = 'ID_CAIXA') THEN
  Begin
    if  Grid_BuscaSaida.DataSource.DataSet.FieldByName('DATA_PGTO').IsNull THEN
      begin
           Grid_BuscaSaida.Canvas.Brush.Color:= clBlack;
           Grid_BuscaSaida.Canvas.Font.Color:= clSilver;
           Grid_BuscaSaida.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
           Grid_BuscaSaida.Canvas.FillRect(Rect);
           Grid_BuscaSaida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
    ELSE
      begin
           Grid_BuscaSaida.Canvas.Brush.Color:= clWhite;
           Grid_BuscaSaida.Canvas.Font.Color:= clBlack;
           Grid_BuscaSaida.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
           Grid_BuscaSaida.Canvas.FillRect(Rect);
           Grid_BuscaSaida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
  End;

  IF (COLUMN.FieldName = 'PESSOA') THEN
  Begin
       if (POS('[DEPOSITO]',Grid_BuscaSaida.DataSource.DataSet.FieldByName('OPERACAO').AsString) > 0) THEN
      begin
           Grid_BuscaSaida.Canvas.Brush.Color:= clOlive;
           Grid_BuscaSaida.Canvas.Font.Color:= clWhite;
           Grid_BuscaSaida.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
      end
    ELSE
      begin
           Grid_BuscaSaida.Canvas.Brush.Color:= clWhite;
           Grid_BuscaSaida.Canvas.Font.Color:= clBlack;
           Grid_BuscaSaida.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style;
      end;

      Grid_BuscaSaida.Canvas.FillRect(Rect);
      Grid_BuscaSaida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  End;


  IF (COLUMN.FieldName = 'SUBGRUPO') THEN
  Begin
       if  Grid_BuscaSaida.DataSource.DataSet.FieldByName('PENDENTE').AsString = 'SIM' THEN
       begin
           Grid_BuscaSaida.Canvas.Brush.Color := clYellow;
       end
       ELSE
       begin
           Grid_BuscaSaida.Canvas.Brush.Color:= clWhite;
       end;

       if  Grid_BuscaSaida.DataSource.DataSet.FieldByName('GARANTIDO').AsString = 'SIM' THEN
       begin
           Grid_BuscaSaida.Canvas.Font.Color := clFuchsia;
       end
       ELSE
       begin
           Grid_BuscaSaida.Canvas.Font.Color := clBlack;
       end;

       if  POS('BAIXA PARCIAL',Grid_BuscaSaida.DataSource.DataSet.FieldByName('OPERACAO').AsString) > 0 THEN
       begin
           Grid_BuscaSaida.Canvas.Font.Color := clMaroon;
       end;

       Grid_BuscaSaida.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
       Grid_BuscaSaida.Canvas.FillRect(Rect);
       Grid_BuscaSaida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  End;
end;

procedure TCAD_Caixas.Grid_BuscaTitleClick(Column: TColumn);
begin
  inherited;
  Pesquisar();
end;

procedure TCAD_Caixas.Image5Click(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Pessoa, self, '2');
end;

procedure TCAD_Caixas.Image6Click(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Imovel, self, '2');
end;

procedure TCAD_Caixas.LabelGarantidoDblClick(Sender: TObject);
begin
  inherited;

   if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR GARANTIDOS') then
      Exit;

  If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
  Begin
       unUtilitario.setMensagem('Crie um novo registro para poder alterar essa informação.','informa');
       exit;
  end;

     if DM_FINANCEIRO.ZCaixaGARANTIDO.AsString = 'NAO' then
     Begin
          LabelGarantido.Caption := 'SIM';
          LabelGarantido.Font.Color := clYellow;
          DM_FINANCEIRO.ZCaixaGARANTIDO.AsString := 'SIM';
     end
     Else
     Begin
          LabelGarantido.Caption := 'NÃO';
          LabelGarantido.Font.Color := clNavy;
          DM_FINANCEIRO.ZCaixaGARANTIDO.AsString := 'NAO';
     end;
end;

procedure TCAD_Caixas.LabelPagaDblClick(Sender: TObject);
begin
  inherited;

  If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
  Begin
       unUtilitario.setMensagem('Crie um novo registro para poder incluir um pagamento.','informa');
       exit;
  end;

  if LabelPaga.Caption = 'SIM' then
     if unUtilitario.setMensagem('Deseja ESTORNAR a conta?','confirma') = idYes then
     begin
          TabInfoHistorico.Show;

          DM_FINANCEIRO.ZCaixaPgto.First;
          while not DM_FINANCEIRO.ZCaixaPgto.Eof do
          begin
                DM_FINANCEIRO.ZCaixaPgto.Delete;
                DM_FINANCEIRO.ZCaixaPgto.ApplyUpdates;
                DM_FINANCEIRO.ZCaixaPgto.Next;
          end;

          DM_FINANCEIRO.ZCaixaDATA_PGTO.AsVariant := NULL;
          DM_FINANCEIRO.ZCaixaHORA_PGTO.AsVariant := NULL;

          setContaPaga('NAO');

          //DM_FINANCEIRO.ZCaixaPAGO.AsString := 'NAO';
          Exit;
     end;

  if LabelPaga.Caption = 'NÃO' then
  Begin
       if unUtilitario.setMensagem('Deseja BAIXAR a conta?','confirma') = idYes then
       begin
       Try
          If NOT DM_FINANCEIRO.ZCaixaPgto.Active Then
             DM_FINANCEIRO.ZCaixaPgto.Open;

          setDiferencaDias();
          setCalculoMulta();
          setCalculoJuros();
          setCalculoDesconto();

          DM_FINANCEIRO.ZCaixaPgto.Append;

          PRINCIPAL.setID(DM_FINANCEIRO.ZCaixaPgto, 'ID_CAIXA_PGTO', 'CAIXA_PGTO');

          //SELECIONA O DINHEIRO COMO ESCOLHA PADRÃO
          DM_FINANCEIRO.ZCaixaPgtoID_FORMA_PGTO.Value := 13;
          DM_FINANCEIRO.ZCaixaPgtoDATA_PGTO.Value := Date();
          DM_FINANCEIRO.ZCaixaPgtoID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
          DM_FINANCEIRO.ZCaixaPgto.FieldByName('ID_CAIXA_'+Caixa).Value := DM_FINANCEIRO.ZCaixaID_CAIXA.Value;
          DM_FINANCEIRO.ZCaixaPgtoVALOR.AsFloat := DM_FINANCEIRO.ZCaixaVALORREAL.AsFloat;

          DM_FINANCEIRO.ZCaixaPgto.Post;
          DM_FINANCEIRO.ZCaixaPgto.ApplyUpdates;
          DM_FINANCEIRO.ZCaixaPgto.Refresh;
          DM_FINANCEIRO.ZCaixaPgto.Edit;

          setContaPaga('SIM');
          DM_FINANCEIRO.ZCaixaPAGO.AsString := 'SIM';

          DM_FINANCEIRO.ZCaixaDATA_PGTO.AsDateTime := Date();
          DM_FINANCEIRO.ZCaixaHORA_PGTO.AsDateTime := Time();

       Except
             on E: Exception do
             Begin
                  unUtilitario.setMensagem(e.Message,'erro');
                  DM_FINANCEIRO.ZCaixaPgto.Close;
                  Exit;
             end;
       end;
  end

  end;

  setCaixaPago();
  
end;

procedure TCAD_Caixas.LabelPendenteDblClick(Sender: TObject);
begin
  inherited;

  If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
  Begin
       unUtilitario.setMensagem('Crie um novo registro para poder alterar essa informação.','informa');
       exit;
  end;
               
     if DM_FINANCEIRO.ZCaixa.FieldByName('pendente').AsString = 'NAO' then
     Begin
          LabelPendente.Caption := 'SIM';
          LabelPendente.Font.Color := clYellow;
          DM_FINANCEIRO.ZCaixa.FieldByName('pendente').AsString := 'SIM';
          //MANDA PARA AS ANOTAÇÕES PARA COLOCAR O PORQUE ESTÁ PENDENTE.
          PageControl2.TabIndex := 5;
     end
     Else
     Begin
          LabelPendente.Caption := 'NÃO';
          LabelPendente.Font.Color := clNavy;
          DM_FINANCEIRO.ZCaixa.FieldByName('pendente').AsString := 'NAO';
     end;
end;

procedure TCAD_Caixas.LimparLista1Click(Sender: TObject);
begin

     If unUtilitario.setMensagem('Deseja limpar TODA a sua lista feita até agora?' + #13 + IntToStr(SelecaoEntrada.Count) + ' Registro(s) na lista até o momento.', 'confirma') = IDYES Then
     Begin
          SelecaoEntrada.Clear;
          PRINCIPAL.SELECAO.Clear;
          unUtilitario.setMensagem('Seleção excluída com sucesso!', 'informa');
     End;

end;

procedure TCAD_Caixas.LimparListaAssimqueimpresso1Click(Sender: TObject);
begin
  inherited;
     if PopupGrid.Items.Find('Limpar Lista depois da Ação').Checked Then
     begin
          PopupGrid.Items.Find('Limpar Lista depois da Ação').Checked := False;
          setTela('SELECAO_LIMPA','NAO');
     end
     Else
     Begin
          PopupGrid.Items.Find('Limpar Lista depois da Ação').Checked := True;
          setTela('SELECAO_LIMPA','SIM');
     End;
end;

procedure TCAD_Caixas.LimparSeleo1Click(Sender: TObject);
begin
  inherited;
          If MessageDlg('Deseja limpar TODA a sua lista feita até agora?' + #13 + IntToStr(SelecaoEntrada.Count) + ' Registro(s) na lista até o momento.', mtConfirmation, [mbYes,MbNo],0) = mrYes Then
          Begin
               SelecaoEntrada.Clear;
               PRINCIPAL.SELECAO.Clear;
               ShowMessage('Registros excluídos com sucesso!');              
          End
          else
              ShowMessage('A lista NÃO foi apagada.');
end;

procedure TCAD_Caixas.LookCategoriaCloseUp(Sender: TObject);
begin
  inherited;
  setDocumento();
end;

procedure TCAD_Caixas.LookGrupoCloseUp(Sender: TObject);
begin
  inherited;
  setDocumento();
end;

procedure TCAD_Caixas.LookSubgrupoCloseUp(Sender: TObject);
begin
  inherited;
  setDocumento();
end;

procedure TCAD_Caixas.ManipularContas1Click(Sender: TObject);
begin
  inherited;
       PRINCIPAL.SELECAO := SelecaoEntrada;
       Application.CreateForm(TContaDemanda, ContaDemanda);
       //ContaDemanda.setCaixa(not BtnCaixaEntrada.Flat);
       ContaDemanda.EscolhaManipula.TabVisible := True;

       if Self.Caixa = 'ENTRADA' then
       BEGIN
            ContaDemanda.labelCaixa.Caption := 'ENTRADA';
            ContaDemanda.labelCaixa.Font.Color := clGreen;
       end
       ELSE
       BEGIN
            ContaDemanda.labelCaixa.Caption := 'SAÍDA';
            ContaDemanda.labelCaixa.Font.Color := clNavy;
       end;

       ContaDemanda.ShowModal;

       if (getTela('SELECAO_LIMPA') = 'SIM') OR (getTela('SELECAO_LIMPA') = 'NULO') Then
       Begin
            SelecaoEntrada.Clear;
            PRINCIPAL.SELECAO.Clear;
       end;
end;

procedure TCAD_Caixas.setCaixa(Cx: String);
Begin

  Grid_Busca.PopupMenu := PopupGrid;
  Grid_BuscaSaida.PopupMenu := PopupGrid;

     if (DM_FINANCEIRO.ZCaixa.State = dsInsert) then
        if setMensagem('Foi detectado que existe um registro que não foi salvo.'+'#13'+'Deseja CANCELAR o registro?', 'confirma') = Idyes then
        Begin
             Btn_CancelarClick(TObject(Caixa));
             ds.DataSet.Close;
        end
        Else
        Begin
             Tab_Cadastro.Show;
             Exit;
        end;

        Label_TotalSaida.Caption := 'R$ 0,00';
        Label_TotalCalculoSaida.Caption := 'R$ 0,00';
        Label_Total.Caption := 'R$ 0,00';
        Label_TotalCalculo.Caption := 'R$ 0,00';

        SelecaoEntrada.Clear;
        
     if Cx = 'ENTRADA' then
     begin
          Caixa := 'ENTRADA';
          Tab_Boleto.TabVisible := TRUE;
          BtnCaixaEntrada.Flat := FALSE;
          BtnCaixaSaida.Flat := TRUE;
          BtnCaixaEntrada.Font.Color := clGreen;
          BtnCaixaSaida.Font.Color := clBlack;
          BtnCaixaEntrada.Transparent := FALSE;
          BtnCaixaSaida.Transparent := TRUE;
          Self.Caption := 'CAIXA ENTRADA';
          diaLabelCaixa.Caption := 'ENTRADA';
          Tab_Pesquisa_Saida.TabVisible := False;
          Tab_Pesquisa.TabVisible := True;
          Tab_Pesquisa.Show;
     end
     Else
     begin
          Caixa := 'SAIDA';
          Tab_Boleto.TabVisible := FALSE;
          BtnCaixaEntrada.Flat := TRUE;
          BtnCaixaSaida.Flat := FALSE;
          BtnCaixaEntrada.Font.Color := clBlack;
          BtnCaixaSaida.Font.Color := clBlue;
          BtnCaixaEntrada.Transparent := TRUE;
          BtnCaixaSaida.Transparent := FALSE;
          Self.Caption := 'CAIXA SAÍDA';
          diaLabelCaixa.Caption := 'SAIDA';
          Tab_Pesquisa_Saida.TabVisible := True;
          Tab_Pesquisa.TabVisible := False;
          Tab_Pesquisa_Saida.Show;
          //PageControl1.TabIndex := 1;
     end;

     DM_FINANCEIRO.ZCaixaBackup.Close;
     DM_FINANCEIRO.ZCaixa.Close;

     DM_FINANCEIRO.ZUpdateCaixa.DeleteSQL.Clear;
     DM_FINANCEIRO.ZUpdateCaixa.DeleteSQL.Add('DELETE FROM caixa_'+Caixa+' WHERE ID_CAIXA = :OLD_ID_CAIXA');

     DM_FINANCEIRO.ZUpdateCaixa.InsertSQL.Clear;
     DM_FINANCEIRO.ZUpdateCaixa.InsertSQL.Add('INSERT INTO caixa_'+Caixa+
     ' (ID_CAIXA, ID_CATEGORIA, ID_SUBTIPO, ID_TIPO, ID_PESSOA, ID_IMOVEL,'+
     ' ID_CONTRATO, ID_FUNCIONARIO, ID_ENTRADA, ID_SAIDA, DATA_REF,'+
     ' DATA_CAD, DATA_ALT, DATA_PGTO, HORA_PGTO, DOCUMENTO, OPERACAO,'+
     ' VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE,'+
     ' ANOTACAO, ATIVO, GARANTIDO)'+
     ' VALUES'+
     ' (:ID_CAIXA, :ID_CATEGORIA, :ID_SUBTIPO, :ID_TIPO, :ID_PESSOA, :ID_IMOVEL,'+
     ' :ID_CONTRATO, :ID_FUNCIONARIO, :ID_ENTRADA, :ID_SAIDA, :DATA_REF, :DATA_CAD,'+
     ' :DATA_ALT, :DATA_PGTO, :HORA_PGTO, :DOCUMENTO, :OPERACAO, :VALOR, :VALOR_JUROS,'+
     ' :VALOR_MULTA, :VALOR_DESCONTO, :PARCELA, :PENDENTE, :ANOTACAO, :ATIVO, :GARANTIDO)');

     DM_FINANCEIRO.ZUpdateCaixa.ModifySQL.Clear;
     DM_FINANCEIRO.ZUpdateCaixa.ModifySQL.Add('UPDATE caixa_'+Caixa+' SET '+
     ' ID_CAIXA = :ID_CAIXA,'+
     ' ID_CATEGORIA = :ID_CATEGORIA,'+
     ' ID_SUBTIPO = :ID_SUBTIPO,'+
     ' ID_TIPO = :ID_TIPO,'+
     ' ID_PESSOA = :ID_PESSOA,'+
     ' ID_IMOVEL = :ID_IMOVEL,'+
     ' ID_CONTRATO = :ID_CONTRATO,'+
     ' ID_FUNCIONARIO = :ID_FUNCIONARIO,'+
     ' ID_ENTRADA = :ID_ENTRADA,'+
     ' ID_SAIDA = :ID_SAIDA,'+
     ' DATA_REF = :DATA_REF,'+
     ' DATA_CAD = :DATA_CAD,'+
     ' DATA_ALT = :DATA_ALT,'+
     ' DATA_PGTO = :DATA_PGTO,'+
     ' HORA_PGTO = :HORA_PGTO,'+
     ' DOCUMENTO = :DOCUMENTO,'+
     ' OPERACAO = :OPERACAO,'+
     ' VALOR = :VALOR,'+
     ' VALOR_JUROS = :VALOR_JUROS,'+
     ' VALOR_MULTA = :VALOR_MULTA,'+
     ' VALOR_DESCONTO = :VALOR_DESCONTO,'+
     ' PARCELA = :PARCELA,'+
     ' PENDENTE = :PENDENTE,'+
     ' ANOTACAO = :ANOTACAO,'+
     ' ATIVO = :ATIVO,'+
     ' GARANTIDO = :GARANTIDO'+
     ' WHERE ID_CAIXA = :OLD_ID_CAIXA');

End;

procedure TCAD_Caixas.TabCaixaDiaShow(Sender: TObject);
var varSQL: TZQuery;
begin
  inherited;

  varSQL := unUtilitario.getSelect('select nome ||''-''||ID_CAIXA_SIS from caixa_sis where ativo = ''SIM'' and tipo = ''CATEGORIA'' order by nome');
  diaCombo.Items.Clear;

  diaCombo.Items.Add('');
  while not varSQL.Eof do
  Begin
       diaCombo.Items.Add(varSQL.Fields[0].AsString);
       varSQL.Next;
  End;

  if getUser('ADMINISTRADOR') = 'SIM' then
     painelRodapeCaixa.Visible := true
  else
      painelRodapeCaixa.Visible := False;
  
  caixaRBuscaContasTodas();
end;

procedure TCAD_Caixas.TabInfoHistoricoShow(Sender: TObject);
begin
  inherited;
  setRecuperaPagamentos();
end;

procedure TCAD_Caixas.TabInfoPagamentoShow(Sender: TObject);
begin
  inherited;
  DM_FINANCEIRO.ZCaixaFormaPgto.Close;
  DM_FINANCEIRO.ZCaixaFormaPgto.Open;
  Btn_pgto_Novo.SetFocus;
end;

procedure TCAD_Caixas.TabSheet1Hide(Sender: TObject);
begin
  inherited;
  DM_FINANCEIRO.ZCaixaTipoStatus.Close;
  DM_FINANCEIRO.ZCaixaStatus.Close;
end;

procedure TCAD_Caixas.TabSheet1Show(Sender: TObject);
begin
  inherited;
  if NOT DM_FINANCEIRO.ZCaixa.Active then
     Exit;

  if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
     Exit;

  try
     DM_FINANCEIRO.ZCaixaStatus.SQL.Clear;
     DM_FINANCEIRO.ZCaixaStatus.SQL.Add('select cst.*, cs.nome from caixa_status cst inner join caixa_sis cs on cst.id_status = cs.id_caixa_sis inner join caixa_entrada c on c.id_caixa = cst.id_caixa_entrada where c.id_pessoa = '+DM_FINANCEIRO.ZCaixaID_PESSOA.AsString+' order by cst.id_caixa_status');
     DM_FINANCEIRO.ZCaixaStatus.Open;
     DM_FINANCEIRO.ZCaixaTipoStatus.Open;
  except
        unUtilitario.setMensagem('Erro ao retornar o Status desta conta.','erro');
        DM_FINANCEIRO.ZCaixaStatus.Close;
        DM_FINANCEIRO.ZCaixaTipoStatus.Close;
  End;

end;

procedure TCAD_Caixas.Tab_BoletoShow(Sender: TObject);
Var varSQL: TZQuery;
contador: Integer;
begin
  inherited;

  ListHistorico.Items.Clear;
  SpeedInformaBoletoClick(Sender);

  if (DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull) OR (DM_FINANCEIRO.ZCaixaID_PESSOA.IsNull) then
     EXIT;

     //MUDAR AQUI PARA IR MAIS RAPIDO!
  varSQL := TZQuery.Create(self);
  varSQL.Connection := PRINCIPAL.Conexao_log;
  varSQL.SQL.Add('select CAMPOS, ID_LOGS from logs where acao = ''SQL'' and CAMPOS like ''%[BOLETO_EMITIDO%'' and CAMPOS like ''%'+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+' ,%'' order by DATA DESC');
  varSQL.Open;

  varSQL.SQL.Text;

  contador := varSQL.RecordCount;

  while not varSQL.Eof do
  Begin
       ListHistorico.Items.Add(IntToStr(contador)+'º) '+informacaoBoletos(varSQL.FieldByName('CAMPOS').AsString)+' - '+varSQL.FieldByName('ID_LOGS').AsString);
       varSQL.Next;
       contador := contador - 1;
  end;

  varSQL.Close;

  FreeAndNil(varSQL);

end;

procedure TCAD_Caixas.tabCadastroChequeShow(Sender: TObject);
begin

     if (DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull) OR (DM_FINANCEIRO.ZCaixaID_PESSOA.IsNull) then
        EXIT;

     DM_FINANCEIRO.ZChequeConta.Close;
     DM_FINANCEIRO.ZChequeConta.SQL.Clear;
     DM_FINANCEIRO.ZChequeConta.SQL.Add(' select c.*, cc.* from cheque c left join conta_cheque cc on cc.id_cheque = c.id_cheque where c.ativo <> ''XXX'' and cc.ID_CONTA = '+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString);
     DM_FINANCEIRO.ZChequeConta.Open;

     editaCheque(False);
     limpaCheque();
end;

procedure TCAD_Caixas.TabSheet8Exit(Sender: TObject);
begin
     DM_FINANCEIRO.ZLogs_banco.Close;
end;

procedure TCAD_Caixas.TabSheet8Show(Sender: TObject);
begin
  inherited;

  If DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull Then
     Exit;

  Try
     PRINCIPAL.Conexao_log.Disconnect;
     DM_FINANCEIRO.ZLogs_banco.Close;
     DM_FINANCEIRO.ZLogs_banco.SQL.Clear;
     DM_FINANCEIRO.ZLogs_banco.SQL.Add('select FIRST 20 l.* from logs l where L.Campos containing '''+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+''' ORDER BY L.DATA DESC');
     PRINCIPAL.Conexao_log.Connect;
     DM_FINANCEIRO.ZLogs_banco.Open;
  except
        on e: Exception do
        Begin
             unUtilitario.setMensagem(e.Message,'erro');
             DM_FINANCEIRO.ZLogs_banco.Close;
        end;
  end;
end;

procedure TCAD_Caixas.Tab_CadastroHide(Sender: TObject);
begin
  inherited;
    Btn_Novo.Visible := False;
    Btn_Gravar.Visible := False;
    Btn_Excluir.Visible := False;
    Btn_Esquerda.Visible := False;
    BTN_direita.Visible := False;
end;

procedure TCAD_Caixas.Tab_CadastroShow(Sender: TObject);
begin
  inherited;
    Btn_Novo.Visible := True;
    Btn_Gravar.Visible := True;
    Btn_Excluir.Visible := True;
    PageControl2.TabIndex := 0;
    Tab_InformacoesShow(Sender);
end;

procedure TCAD_Caixas.Tab_InformacoesHide(Sender: TObject);
begin
  inherited;
  DM_FINANCEIRO.ZCaixaCategoria.Close;
  DM_FINANCEIRO.ZCaixaGrupo.Close;
  DM_FINANCEIRO.ZCaixaSubgrupo.Close;
  DM_FINANCEIRO.ZCaixaFormaPgto.Close;

  //HABILITA BOTÃO DIREITA E ESQUERDA
  Btn_Esquerda.Visible := false;
  Btn_Direita.Visible := false;
end;

procedure TCAD_Caixas.Tab_InformacoesShow(Sender: TObject);
Var varSQL: TZQuery;
begin
  inherited;

  IF DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull Then
     Exit
  else
      DM_FINANCEIRO.ZCaixa.Edit;

  Try
     DM_FINANCEIRO.ZCaixaCategoria.Open;
     DM_FINANCEIRO.ZCaixaGrupo.Open;
     DM_FINANCEIRO.ZCaixaSubgrupo.Open;
     DM_FINANCEIRO.ZCaixaPgto.Open;
     DM_FINANCEIRO.ZCaixaFormaPgto.Open;
  Except
        on E: Exception do
        Begin
             unUtilitario.setMensagem(e.Message,'erro');
             Exit;
        end;
  end;

  // BUSCAR PESSOA
  if DM_FINANCEIRO.ZCaixa.FieldByName('id_pessoa').AsInteger > 0 then
  Begin
       varSQL := unUtilitario.getSelect('select (id_pessoa ||'' - ''|| nome || ''.'') as resultado from pessoa where id_pessoa = '+DM_FINANCEIRO.ZCaixa.FieldByName('id_pessoa').AsString);

       if varSQL.RecordCount > 0 then
          EditPessoa.Text := varSQL.FieldByName('resultado').AsString
       else
           EditPessoa.Text := 'Pessoa de código "'+DM_FINANCEIRO.ZCaixaID_PESSOA.AsString+ '" não encontrada!';

       //varSQL.Close;
  end
  Else
       EditPessoa.Text := 'SELECIONE UMA PESSOA.';

  // BUSCAR IMÓVEL
  if DM_FINANCEIRO.ZCaixa.FieldByName('id_imovel').AsInteger > 0 then
  Begin
       //varSQL := unUtilitario.getSelect('select (i.id_imovel ||'' - ''|| l.tipo ||'' ''|| l.nome ||'', nº ''|| i.numero ||'' ''|| i.complemento) as resultado  from imovel i left join logradouro l on l.id_logradouro = i.id_logradouro where i.id_imovel = '+DM_FINANCEIRO.ZCaixa.FieldByName('id_imovel').AsString);
       varSQL := unUtilitario.getSelect('select i.id_imovel, l.tipo, l.nome, i.numero, i.complemento from imovel i left join logradouro l on l.id_logradouro = i.id_logradouro where i.id_imovel = '+DM_FINANCEIRO.ZCaixa.FieldByName('id_imovel').AsString);

       if varSQL.RecordCount > 0 then
          EditImovel.Text := varSQL.FieldByName('id_imovel').AsString +' - '+ varSQL.FieldByName('tipo').AsString +' '+ varSQL.FieldByName('nome').AsString +' n°'+varSQL.FieldByName('numero').AsString +' '+ varSQL.FieldByName('complemento').AsString
       else
           EditImovel.Text := 'Imóvel de código "'+DM_FINANCEIRO.ZCaixaID_IMOVEL.AsString+ '" não encontrado!';

       //varSQL.Close;
  end
  Else
       EditImovel.Text := 'SELECIONE UM IMÓVEL.';

  //VERIFICAR SE A CONTA JÁ FOI PAGA
  setCaixaPago();
  setLabelPaga();

  //VERIFICAR SE A CONTA TEM ALGUM VINCULO COM O CAIXA SAÍDA
  setLabelVinculoSaida();

  //VERIFICAR SE A CONTA TEM ALGUM VINCULO COM O CAIXA SAÍDA
  setLabelVinculoEntrada();

  //VERIFICAR SE A CONTA TEM ALGUM VINCULO COM O CAIXA SAÍDA
  setLabelPendente();

  //VERIFICAR SE A CONTA ESTÁ VENCIDA
  setLabelVencida();

  //VERIFICAR SE A CONTA ESTÁ MARCADA COMO CONTA GARANTIDA
  setLabelGarantido();

  //VERIFICA O QUANTO JÁ FOI PAGO DA CONTA
  //setEditValor_TotalPago();

  //VERIFICA O QUANTO AINDA FALTA PARA PAGAR A CONTA
  //setEditValor_TotalFaltando();

  //VERIFICA SE A PESSOA POSSUI CONTAS ANTERIORES
  setLabelContasAnteriores();

  //PERMITIR EDITAR ASSIM QUE ENTRAR NA JANELA
  DM_FINANCEIRO.ZCaixa.Edit;

  //CALCULA OS VALORES DO REGISTRO (EVENTO CLIQUE DO VALOR TOTAL)
  DBEdit11DblClick(Sender);

  //BUSCANDO OS REGISTROS DE FORMAS DE PAGAMENTO
  setRecuperaPagamentos();

  //TRAVA OS COMPONENTES DE TELA SE CASO A CONTA FOI PAGA
  //setVerificaContaPaga();

  AbasPagamento.TabIndex := 0;

  FreeAndNil(varSQL);

  //1 = CONTAS INTERNAS
  //(DM_FINANCEIRO.ZCaixaID_CATEGORIA.AsInteger <> 1 )
  //if (DM_FINANCEIRO.ZCaixaDATA_PGTO.IsNull) OR (DM_FINANCEIRO.ZCaixaDATA_PGTO.AsDateTime = Date()) Then
  if (DM_FINANCEIRO.ZCaixaDATA_PGTO.IsNull) Then
  Begin
       GrupoPessoa.Enabled := TRUE;
       GrupoImovel.Enabled := TRUE;
       GrupoInfo.Enabled := TRUE;
       GrupoValores.Enabled := TRUE;
       Btn_Excluir.Enabled := TRUE;
       LookCategoria.Enabled := TRUE;
       btnSegundaVia.Visible := TRUE;
  End
  else
  Begin
       GrupoPessoa.Enabled := FALSE;
       GrupoImovel.Enabled := FALSE;
       GrupoInfo.Enabled := FALSE;
       GrupoValores.Enabled := FALSE;
       Btn_Excluir.Enabled := FALSE;
       LookCategoria.Enabled := FALSE;
       btnSegundaVia.Visible := FALSE;
  End;


  if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = ALTERAR CATEGORIA/GRUPO/SUBGRUPO') then
  Begin
      LookCategoria.Enabled := false;
      LookGrupo.Enabled := false;
      LookSubgrupo.Enabled := false;
  end;


  //HABILITA BOTÃO DIREITA E ESQUERDA
  Btn_Esquerda.Visible := True;
  Btn_Direita.Visible := True;
end;

procedure TCAD_Caixas.setRecuperaPagamentos();
begin

     if DM_FINANCEIRO.ZCaixaID_CAIXA.IsNull then
     Begin
          DM_FINANCEIRO.ZCaixaPgto.Close;
          Exit;
     end;

     Try
        unCamposBusca.BUSCA(DM_FINANCEIRO.ZCaixaPgto,'select cp.*, cs.nome from caixa_pgto cp left join caixa_sis cs on cs.id_caixa_sis = cp.id_forma_pgto where cp.anotacao like ''%#'+DM_FINANCEIRO.ZCaixaID_CAIXA.AsString+' %'' order by cp.ID_FORMA_PGTO');
     Except
           On E: Exception Do
           Begin
              unUtilitario.setMensagem('O sistema encontrou um erro ao buscar as formas de pagamentos.'+#13+e.Message,'erro');
              DM_FINANCEIRO.ZCaixaPgto.Close;
              Exit;
           End;
     end;
end;

procedure TCAD_Caixas.Valor_AtivoClick(Sender: TObject);
begin
  inherited;
  if Valor_Ativo.state = cbChecked Then
     Valor_Ativo.Caption := 'Pago.'
  else
  if Valor_Ativo.State = cbUnchecked Then
      Valor_Ativo.Caption := 'Não Pago.'
  else
  if Valor_Ativo.State = cbGrayed Then
     Valor_Ativo.Caption := 'Todos.';

  Label_Total.Caption := 'R$ 0,00';
  Label_TotalCalculo.Caption := 'R$ 0,00';
end;

procedure TCAD_Caixas.Valor_AtivoSaidaClick(Sender: TObject);
begin
  inherited;
  if Valor_AtivoSaida.state = cbChecked Then
     Valor_AtivoSaida.Caption := 'Pago.'
  else
  if Valor_AtivoSaida.State = cbUnchecked Then
      Valor_AtivoSaida.Caption := 'Não Pago.'
  else
  if Valor_AtivoSaida.State = cbGrayed Then
     Valor_AtivoSaida.Caption := 'Todos.';

  Label_TotalSaida.Caption := 'R$ 0,00';
  Label_TotalCalculoSaida.Caption := 'R$ 0,00';
end;

procedure TCAD_Caixas.VisualizarSeleo1Click(Sender: TObject);
Var Escolha: String;
    i: Integer;
begin

     Escolha := '';

     For i := 0 to PRINCIPAL.SELECAO.Count - 1 Do
         Escolha := Escolha + #13 + PRINCIPAL.SELECAO.Strings[i];

     unUtilitario.setMensagem('REGISTROS SELECIONADOS: '+ #13 + Escolha,'informa');
end;

//FIM - STATUS DE ACOMPANHAMENTO DA CONTA

//CONTROLE DO SIM E DO NÃO DA PARTE DE "OUTRAS INFORMAÇÕES"
procedure TCAD_Caixas.setLabelPaga();
Begin
     if NOT DM_FINANCEIRO.ZCaixaDATA_PGTO.IsNull then
     Begin
          LabelPaga.Caption := 'SIM';
          LabelPaga.Font.Color := clYellow;
     end
     Else
     Begin
          LabelPaga.Caption := 'NÃO';
          LabelPaga.Font.Color := clNavy;
     end;
End;

procedure TCAD_Caixas.setLabelVinculoSaida();
Begin
     if DM_FINANCEIRO.ZCaixa.FieldByName('id_saida').AsInteger > 0 then
     Begin
          LabelVinculoSaida.Caption := 'SIM';
          LabelVinculoSaida.Font.Color := clYellow;
     end
     Else
     Begin
          LabelVinculoSaida.Caption := 'NÃO';
          LabelVinculoSaida.Font.Color := clNavy;
     end;
End;

procedure TCAD_Caixas.setLabelVinculoEntrada();
Begin
     if DM_FINANCEIRO.ZCaixa.FieldByName('id_entrada').AsInteger > 0 then
     Begin
          LabelVinculoEntrada.Caption := 'SIM';
          LabelVinculoSaida.Font.Color := clYellow;
     end
     Else
     Begin
          LabelVinculoSaida.Caption := 'NÃO';
          LabelVinculoSaida.Font.Color := clNavy;
     end;
End;

procedure TCAD_Caixas.setLabelPendente();
Begin
     if DM_FINANCEIRO.ZCaixa.FieldByName('pendente').AsString = 'NAO' then
     Begin
          LabelPendente.Caption := 'NÃO';
          LabelPendente.Font.Color := clNavy;
     end
     Else
     Begin
          LabelPendente.Caption := 'SIM';
          LabelPendente.Font.Color := clYellow;
     end;
End;


procedure TCAD_Caixas.setLabelVencida();
Begin
     if NOT DM_FINANCEIRO.ZCaixa.FieldByName('data_pgto').IsNull then
     Begin

          if DM_FINANCEIRO.ZCaixa.FieldByName('data_ref').AsDateTime < DM_FINANCEIRO.ZCaixa.FieldByName('data_pgto').AsDateTime then
          Begin
               LabelVencida.Caption := 'SIM';
               LabelVencida.Font.Color := clYellow;
          end
          Else
          Begin
               LabelVencida.Caption := 'NÃO';
               LabelVencida.Font.Color := clNavy;
          end;
     end
     else
     Begin

          if DM_FINANCEIRO.ZCaixa.FieldByName('data_ref').AsDateTime < date() then
          Begin
               LabelVencida.Caption := 'SIM';
               LabelVencida.Font.Color := clYellow;
          end
          Else
          Begin
               LabelVencida.Caption := 'NÃO';
               LabelVencida.Font.Color := clNavy;
          end;

     end;
End;

procedure TCAD_Caixas.setLabelGarantido();
Begin

     if NOT DM_FINANCEIRO.ZCaixa.FieldByName('ID_CAIXA').IsNull then
     Begin
          if DM_FINANCEIRO.ZCaixaGARANTIDO.AsString = 'SIM' then
          Begin
               LabelGarantido.Caption := 'SIM';
               LabelGarantido.Font.Color := clYellow;
          end
          Else
          Begin
               LabelGarantido.Caption := 'NÃO';
               LabelGarantido.Font.Color := clNavy;
          end;
     end
     Else
     Begin
          LabelGarantido.Caption := 'NÃO';
          LabelGarantido.Font.Color := clNavy;
     end;
End;

procedure TCAD_Caixas.setLabelContasAnteriores();
Var varSQL: TZQuery;
Begin
     //TENTA BUSCAR PRIMEIRO A PESSOA PARA VER AS CONTAS ANTERIORES
     if NOT DM_FINANCEIRO.ZCaixa.FieldByName('id_pessoa').IsNull then
        varSQL := unUtilitario.getSelect('select count(c.id_caixa) as resultado from caixa_'+Caixa+' c where c.data_pgto is null and c.data_ref <= '''+StringReplace(DM_FINANCEIRO.ZCaixa.FieldByName('data_ref').AsString,'/','.',[rfReplaceAll])+''' and c.id_pessoa = '+DM_FINANCEIRO.ZCaixa.FieldByName('id_pessoa').AsString+' and c.id_caixa <> '+DM_FINANCEIRO.ZCaixa.FieldByName('id_caixa').AsString)
     Else
     //DEPOIS OS IMÓVEIS, CASO NÃO TENHA PESSOA NA CONTA, APENAS IMÓVEIS
     if NOT DM_FINANCEIRO.ZCaixa.FieldByName('id_imovel').IsNull Then
        varSQL := unUtilitario.getSelect('select count(c.id_caixa) as resultado from caixa_'+Caixa+' c where c.data_pgto is null and c.data_ref <= '''+StringReplace(DM_FINANCEIRO.ZCaixa.FieldByName('data_ref').AsString,'/','.',[rfReplaceAll])+''' and c.id_pessoa = '+DM_FINANCEIRO.ZCaixa.FieldByName('id_pessoa').AsString+' and c.id_caixa <> '+DM_FINANCEIRO.ZCaixa.FieldByName('id_caixa').AsString)
     Else
     //SE NÃO ENCONTRAR PESSOA OU IMÓVEL, ELE NÃO BUSCA CONTAS PENDENTE.
     Begin
          LabelContasAnteriores.Caption := 'NÃO';
          LabelContasAnteriores.Font.Color := clNavy;
          Exit;
     end;

     if varSQL.FieldByName('resultado').AsInteger > 0 then
     Begin
          LabelContasAnteriores.Caption := 'SIM';
          LabelContasAnteriores.Font.Color := clYellow;
     end
     Else
     Begin
          LabelContasAnteriores.Caption := 'NÃO';
          LabelContasAnteriores.Font.Color := clNavy;
     end;

     //varSQL.Close;
     FreeAndNil(varSQL);
End;
//FIM - CONTROLE DO SIM E DO NÃO DA PARTE DE "OUTRAS INFORMAÇÕES"



procedure TCAD_Caixas.setCaixaPago();
begin
     {VALOR CALCULANDO O CERTO! VALOR COLOCADO E VALOR COBRADO REAIS
     varSQL := unUtilitario.getSelect('select result as resultado from spcontapaga('+IntToStr(CodCalculo)+','+DM_FINANCEIRO.ZCaixa.FieldByName('ID_CAIXA').AsString+',''CAIXA_'+Caixa+''')');

     if varSQL.FieldByName('resultado').AsString = 'NAO' then
     Begin
        DM_FINANCEIRO.ZCaixa.FieldByName('PAGO').Value := 'NAO';
     end
     Else
     Begin
          DM_FINANCEIRO.ZCaixa.FieldByName('PAGO').Value := 'SIM';
     end;

     //varSQL.Close;
     FreeAndNil(varSQL);
     }

     {
     if DM_FINANCEIRO.ZCaixaDATA_REF.IsNull then
        DM_FINANCEIRO.ZCaixa.FieldByName('PAGO').Value := 'NAO'
     Else
         DM_FINANCEIRO.ZCaixa.FieldByName('PAGO').Value := 'SIM';
     }
end;

procedure TCAD_Caixas.setLimpaComponentes();
begin
     LabelPaga.Caption := 'NÃO';
     LabelPaga.Font.Color := clNavy;

     LabelVinculoSaida.Caption := 'NÃO';
     LabelVinculoSaida.Font.Color := clNavy;

     LabelVinculoEntrada.Caption := 'NÃO';
     LabelVinculoEntrada.Font.Color := clNavy;

     LabelPendente.Caption := 'NÃO';
     LabelPendente.Font.Color := clNavy;

     LabelVencida.Caption := 'NÃO';
     LabelVencida.Font.Color := clNavy;

     LabelGarantido.Caption := 'NÃO';
     LabelGarantido.Font.Color := clNavy;

     LabelContasAnteriores.Caption := 'NÃO';
     LabelContasAnteriores.Font.Color := clNavy;

     EditPessoa.Text := 'SELECIONE UMA PESSOA.';
     EditImovel.Text := 'SELECIONE UM IMÓVEL.';

     If (DM_FINANCEIRO.ZCaixa.Active) and (DM_FINANCEIRO.ZCaixa.State <> dsInsert) Then
     Begin
          DM_FINANCEIRO.ZCaixa.edit;
          DM_FINANCEIRO.ZCaixa.Refresh;
     end;

     TabInfoHistorico.Show;
end;

//--------------------------------------------------- FUNÇÕES DO CADASTRO RÁPIDO
procedure TCAD_Caixas.caixaRNovo();
begin
     diaLabelPessoa.Caption := 'Selecione uma Pessoa.';
     diaLabelImovel.Caption := 'Selecione um Imóvel.';
     diaEditValor.Text := '0,00';
     diaEditDocumento.Text := '';
     diaEditQuantidade.Text := '1';
     diaEditContrato.Text := '0';
     diaCombo.Text := '';
     id_pessoa := 0;
     id_imovel := 0;
     checkGarantida.State := cbUnchecked;
end;

procedure TCAD_Caixas.caixaRGravar(); //RETORNAR O ID GERADO, TRANSFORMANDO ISSO EM UMA FUNÇÃO! ESSE É O MAIS CORRETO!
Var varSQL: TZQuery;
    imovel, pgto, pgtoHora, contrato, garantido: String;
    dataVencimento: TDateTime;
    i: Smallint;
begin
     if (VarToStr(diaLookupCategoria.KeyValue) = '') OR (Length(diaLookupCategoria.Text) = 0) Then
     Begin
          unUtilitario.setMensagem('Favor escolher uma categoria.','erro');
          exit;
     End;

     if (VarToStr(diaLookupGrupo.KeyValue) = '') OR (Length(diaLookupGrupo.Text) = 0) Then
     Begin
          unUtilitario.setMensagem('Favor escolher um grupo.','erro');
          exit;
     End;

     if (VarToStr(diaLookupSubgrupo.KeyValue) = '') OR (Length(diaLookupSubgrupo.Text) = 0) Then
     Begin
          unUtilitario.setMensagem('Favor escolher um subgrupo.','erro');
          exit;
     End;

     if (id_pessoa <= 0) Then
     Begin
          unUtilitario.setMensagem('Favor escolher uma Pessoa!','erro');
          exit;
     End;

     if (Length(diaEditValor.Text) = 0) OR (StrToFloat(diaEditValor.Text) <= 0) Then
     Begin
          unUtilitario.setMensagem('Favor entrar com algum valor.','erro');
          exit;
     End;

     diaEditQuantidade.Text := Trim(diaEditQuantidade.Text);
     if (Length(diaEditQuantidade.Text) = 0) OR (diaEditQuantidade.Text = '0') Then
     Begin
          unUtilitario.setMensagem('Entre com uma quantidade correta!','erro');
          diaEditQuantidade.SetFocus;
          exit;
     End;

     if (StrToInt(diaEditQuantidade.Text) > 1) AND (Length(diaComboFreguencia.Text) = 0) Then
     Begin
          unUtilitario.setMensagem('Favor, entre com o período em que esta conta irá se repetir!','erro');
          diaComboFreguencia.SetFocus;
          exit;
     End;

     if (diaEditQuantidade.Text = '1') AND (Length(diaComboFreguencia.Text) > 0) Then
     Begin
          unUtilitario.setMensagem('Mude a opção '+diaComboFreguencia.Text+', pois a quantidade escolhida foi 1, ou seja, não se pode efetuar esta operação '+diaComboFreguencia.Text,'erro');
          diaComboFreguencia.SetFocus;
          exit;
     End;

     if checkGarantida.State = cbChecked then
        garantido := 'SIM'
     else
         garantido := 'NAO';
     

     diaEditDocumento.Text := StringReplace(diaEditDocumento.Text, '''','"', [rfReplaceAll,rfIgnoreCase]);

     diaEditContrato.Text := Trim(diaEditContrato.Text);
     if (Length(diaEditContrato.Text) = 0) OR (diaEditContrato.Text = '0') Then
          contrato := 'NULL'
     else
         contrato := diaEditContrato.Text;

     if id_imovel > 0 Then
        imovel := IntToStr(id_imovel)
     else
         imovel := ' NULL ';


     pgto := ' NULL ';
     pgtoHora := ' NULL ';

     try
        if StrToCurr(diaEditValor.Text) = 0 Then
        Begin
             unUtilitario.setMensagem('Entre com um valor!','erro');
             diaEditValor.SetFocus;
             Exit;
        End;

        if StrToInt(diaEditQuantidade.Text) <= 0 Then
        Begin
             unUtilitario.setMensagem('Entre com um valor correto no campo quantidade!','erro');
             diaEditQuantidade.SetFocus;
             Exit;
        End;

        if StrToInt(diaEditContrato.Text) < 0 Then
        Begin
             unUtilitario.setMensagem('Entre com um valor correto no campo contrato!','erro');
             diaEditContrato.SetFocus;
             Exit;
        End;

     except
           unUtilitario.setMensagem('Entre com um valor válido nos campos numéricos!','erro');
           diaEditValor.SetFocus;
           exit;
     end;

try

     dataVencimento := diaVencimento.Date;
     
     for i:=1 to StrToInt(diaEditQuantidade.Text) do
     Begin
         VarSQL := unUtilitario.getSQL('INSERT INTO CAIXA_'+diaLabelCaixa.Caption+' (ID_CATEGORIA,'+
         ' ID_SUBTIPO, ID_TIPO, ID_PESSOA, ID_IMOVEL, ID_CONTRATO, ID_FUNCIONARIO, ID_ENTRADA,'+
         ' ID_SAIDA, DATA_PGTO, HORA_PGTO, DOCUMENTO, OPERACAO,'+
         ' VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE, ATIVO, GARANTIDO, DATA_REF)'+
         ' VALUES ('+VarToStr(diaLookupCategoria.KeyValue)+', '+VarToStr(diaLookupSubgrupo.KeyValue)+', '+
         ' '+VarToStr(diaLookupGrupo.KeyValue)+', '+IntToStr(id_pessoa)+', '+imovel+', '+contrato+', '+getUser('CODIGO_USUARIO')+
         ' , NULL, NULL, '+pgto+', '+pgtoHora+', '''+diaEditDocumento.Text+''','+
         ' ''CONTA CRIADA PELO CADASTRO RÁPIDO.'', '+formataDinheiroSQL(diaEditValor.Text)+', 0, 0, 0, '+IntToStr(i)+', ''NAO'', ''SIM'', '''+garantido+''', '''+formataDataSQL(DateToStr(dataVencimento))+''')');
         
         if diaComboFreguencia.Text = 'Diariamente' Then
             dataVencimento := IncDay(dataVencimento, 1)
          else
          if diaComboFreguencia.Text = 'Semanalmente' Then
             dataVencimento := IncWeek(dataVencimento, 1)
          else
          if diaComboFreguencia.Text = 'Mensalmente' Then
             dataVencimento := IncMonth(dataVencimento, 1)
          else
          if diaComboFreguencia.Text = 'Anualmente' Then
             dataVencimento := IncYear(dataVencimento, 1);
     end;
Except
     if varSQL <> NIL then
        FreeAndNil(varSQL);

     unUtilitario.setMensagem('Problemas ao incluir esta conta!'+#13+'Revise os valores ou entre em contato com o Suporte Técnico.','erro');
     caixaRNovo();
     exit;
end;

     unUtilitario.setMensagem('Conta(s) cadastrada(s) com sucesso!','informa');
     caixaRAtualizar();

  //PAGAMENTO DA CONTA
  if diaEditQuantidade.Text = '1' Then
  if setMensagem('Deseja imprimir o recibo agora?','confirma') = IDYES Then
  Begin
       if diaLabelCaixa.Caption = 'ENTRADA' Then
       Begin
            diaSQLEntrada.Last;
            mostraContaEntrada(diaSQLEntrada.FieldByName('ID_CAIXA').AsInteger);
       End
       else
       Begin
            diaSQLSaida.Last;
            mostraContaSaida(diaSQLSaida.FieldByName('ID_CAIXA').AsInteger)
       End;

       Btn_ImprimirClick(nil);
  End;

  diaLookupCategoria.Enabled := False;
  diaLookupGrupo.Enabled := False;
  diaLookupSubgrupo.Enabled := False;
  caixaRNovo();
end;

procedure TCAD_Caixas.caixaRBuscaContasPagas();
begin
     IF Length(diaCombo.Text) = 0 Then
        diaSelecao := 'and ( CAST(c.data_pgto as DATE) = CAST('''+formataDataSQL(DateToStr(diaDate.Date))+''' as DATE) ) ORDER BY C.ID_CAIXA'
     else
         diaSelecao := ' and c.id_categoria = '+IntToStr(unCamposBusca.IDCampo(diaCombo.Text))+' and ( CAST(c.data_pgto as DATE) = CAST('''+formataDataSQL(DateToStr(diaDate.Date))+''' as DATE) ) ORDER BY C.ID_CAIXA';

     diaSQLEntrada := unUtilitario.getSelect(diaSelectEntrada + diaSelecao);
     diaSQLSaida := unUtilitario.getSelect(diaSelectSaida + diaSelecao);
     caixaFormataDinheiro();
     caixaRCalculaTudo();
end;

procedure TCAD_Caixas.caixaRBuscaContasAPagar();
begin
     IF Length(diaCombo.Text) = 0 Then
        diaSelecao := 'and ( c.data_ref = '''+formataDataSQL(DateToStr(diaDate.Date))+''' AND c.data_pgto IS NULL ) ORDER BY C.ID_CAIXA'
     else
         diaSelecao := ' and c.id_categoria = '+IntToStr(unCamposBusca.IDCampo(diaCombo.Text))+' and ( c.data_ref = '''+formataDataSQL(DateToStr(diaDate.Date))+''' AND c.data_pgto IS NULL ) ORDER BY C.ID_CAIXA';

     diaSQLEntrada := unUtilitario.getSelect(diaSelectEntrada + diaSelecao);
     diaSQLSaida := unUtilitario.getSelect(diaSelectSaida + diaSelecao);
     caixaFormataDinheiro();
     caixaRCalculaTudo();
end;

procedure TCAD_Caixas.caixaRBuscaContasTodas();
begin

     IF Length(diaCombo.Text) = 0 Then
        diaSelecao := 'and ( CAST(c.data_ref as DATE) = CAST('''+formataDataSQL(DateToStr(diaDate.Date))+''' as DATE) OR CAST(c.data_pgto as DATE) = CAST('''+formataDataSQL(DateToStr(diaDate.Date))+''' as DATE) ) '
     else
         diaSelecao := ' and c.id_categoria = '+IntToStr(unCamposBusca.IDCampo(diaCombo.Text))+' and ( CAST(c.data_ref as DATE) = CAST('''+formataDataSQL(DateToStr(diaDate.Date))+''' as DATE) OR CAST(c.data_pgto as DATE) = CAST('''+formataDataSQL(DateToStr(diaDate.Date))+''' as DATE) ) ';

     if CheckBoletos.Checked then
        diaSelecao := diaSelecao + ' and c.operacao like ''%BOLETO%'' ';


     diaSQLEntrada := unUtilitario.getSelect(diaSelectEntrada + diaSelecao + ' ORDER BY C.ID_CAIXA ');
     diaSQLSaida := unUtilitario.getSelect(diaSelectSaida + diaSelecao+ ' ORDER BY C.ID_CAIXA ');
     caixaFormataDinheiro();
     caixaRCalculaTudo();
end;

procedure TCAD_Caixas.caixaRAtualizar();
begin
     if diaSQLEntrada.Active Then
        diaSQLEntrada.Refresh;

     if diaSQLSaida.Active then
        diaSQLSaida.Refresh;

     caixaFormataDinheiro();
     caixaRCalculaTudo();
end;

procedure TCAD_Caixas.caixaFormataDinheiro();
begin
     //Formata os campos para mostrar direitinho na grid
     TNumericField(diaSQLEntrada.FieldByName('VALOR')).DisplayFormat := '###,###,###,##0.00';
     TNumericField(diaSQLEntrada.FieldByName('VALORCALCULADO')).DisplayFormat := '###,###,###,##0.00';
     TNumericField(diaSQLSaida.FieldByName('VALOR')).DisplayFormat := '###,###,###,##0.00';
     TNumericField(diaSQLSaida.FieldByName('VALORCALCULADO')).DisplayFormat := '###,###,###,##0.00';

end;

procedure TCAD_Caixas.caixaRImprimir();
Var varSQLPessoaEntrada, varSQLPessoaSaida, varSQLContaEntrada, varSQLContaSaida:  TZQuery;
EntradaPrevista, EntradaEfetivada, SaidaPrevista, SaidaEfetivada: Double;
begin
     varSQLPessoaEntrada := unUtilitario.getSelect('select distinct(p.id_pessoa), p.nome, p.nome_fantasia'+
                         ' from caixa_ENTRADA c left join pessoa p on p.id_pessoa = c.id_pessoa'+
                         ' where c.ativo = ''SIM'' and c.pendente = ''NAO'' '+diaSelecao);

     varSQLPessoaSaida := unUtilitario.getSelect('select distinct(p.id_pessoa), p.nome, p.nome_fantasia'+
                         ' from caixa_SAIDA c left join pessoa p on p.id_pessoa = c.id_pessoa'+
                         ' where c.ativo = ''SIM'' and c.pendente = ''NAO'' '+diaSelecao);

     varSQLContaEntrada := unUtilitario.getSelect('select c.data_pgto, c.documento, c.id_pessoa, i.id_imovel,'+
                        ' i.complemento, c.id_caixa, l.nome, i.numero, (select result from '+
                        ' spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros,'+
                        ' c.valor_multa, c.valor_desconto)) as VALORCALCULADO from caixa_ENTRADA c'+
                        ' left join pessoa p on p.id_pessoa = c.id_pessoa left join imovel i on '+
                        ' i.id_imovel = c.id_imovel left join logradouro l on l.id_logradouro ='+
                        ' i.id_logradouro where c.ativo = ''SIM'' and c.pendente = ''NAO'' '+diaSelecao);

     varSQLContaSaida := unUtilitario.getSelect('select c.data_pgto, c.documento, c.id_pessoa, i.id_imovel,'+
                        ' i.complemento, c.id_caixa, l.nome, i.numero, (select result from '+
                        ' spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros,'+
                        ' c.valor_multa, c.valor_desconto)) as VALORCALCULADO from caixa_SAIDA c'+
                        ' left join pessoa p on p.id_pessoa = c.id_pessoa left join imovel i on '+
                        ' i.id_imovel = c.id_imovel left join logradouro l on l.id_logradouro ='+
                        ' i.id_logradouro where c.ativo = ''SIM'' and c.pendente = ''NAO'' '+diaSelecao);

     DM_RELATORIOS.DSC_1.DataSet := varSQLPessoaEntrada;
     DM_RELATORIOS.DSC_2.DataSet := varSQLPessoaSaida;
     DM_RELATORIOS.DSC_3.DataSet := varSQLContaEntrada;
     DM_RELATORIOS.DSC_4.DataSet := varSQLContaSaida;

     while not varSQLContaEntrada.Eof do
     Begin
          if varSQLContaEntrada.FieldByName('DATA_PGTO').IsNull Then
             EntradaPrevista := EntradaPrevista + varSQLContaEntrada.FieldByName('VALORCALCULADO').AsFloat
          else
              EntradaEfetivada := EntradaEfetivada + varSQLContaEntrada.FieldByName('VALORCALCULADO').AsFloat;

          varSQLContaEntrada.Next;
     End;

     while not varSQLContaSaida.Eof do
     Begin
          if varSQLContaSaida.FieldByName('DATA_PGTO').IsNull Then
             SaidaPrevista := SaidaPrevista + varSQLContaSaida.FieldByName('VALORCALCULADO').AsFloat
          else
              SaidaEfetivada := SaidaEfetivada + varSQLContaSaida.FieldByName('VALORCALCULADO').AsFloat;

          varSQLContaSaida.Next;
     End;

     DM_RELATORIOS.Rave.SetParam('EntradaPrevista', getCurrToStr(EntradaPrevista,FALSE));
     DM_RELATORIOS.Rave.SetParam('EntradaEfetivada', getCurrToStr(EntradaEfetivada,FALSE));
     DM_RELATORIOS.Rave.SetParam('SaidaPrevista', getCurrToStr(SaidaPrevista,FALSE));
     DM_RELATORIOS.Rave.SetParam('SaidaEfetivada',getCurrToStr(SaidaEfetivada,FALSE));
     DM_RELATORIOS.Rave.SetParam('DiadoCaixa', DateToStr(diaDate.Date));
     DM_RELATORIOS.Rave.SetParam('Prevista', getCurrToStr(EntradaPrevista - SaidaPrevista,FALSE));
     DM_RELATORIOS.Rave.SetParam('Efetivada', getCurrToStr(EntradaEfetivada - SaidaEfetivada,FALSE));

     DM_RELATORIOS.Rave.Close;
     DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_CAIXA_DIARIO.rav';
     principal.setRelatorio(DM_RELATORIOS.Rave);
     DM_RELATORIOS.Rave.Execute;

     if varSQLPessoaEntrada <> nil then
        FreeAndNil(varSQLPessoaEntrada);

     if varSQLPessoaSaida <> nil then
        FreeAndNil(varSQLPessoaSaida);

     if varSQLContaEntrada <> nil then
        FreeAndNil(varSQLContaEntrada);

     if varSQLContaSaida <> nil then
        FreeAndNil(varSQLContaSaida);
end;

procedure TCAD_Caixas.caixaRCalculaDia();
begin
     diaEditPrevDia.Text := getCurrToStr(getStrToCurr(diaEditPrevEntrada.Text)-getStrToCurr(diaEditPrevSaida.Text),true);
     diaEditRealDia.Text := getCurrToStr(getStrToCurr(diaEditRealEntrada.Text)-getStrToCurr(diaEditRealSaida.Text),true);
end;

procedure TCAD_Caixas.caixaRCalculaEntrada();
var valorPrevisto, valorRealizado: Double;
begin
     if diaSQLEntrada.RecordCount = 0 Then
     Begin
          diaEditPrevEntrada.Text := '0,00';
          diaEditRealEntrada.Text := '0,00';
          exit;
     End;

     valorPrevisto := 0;
     valorRealizado := 0;
     diaSQLEntrada.First;

     while not diaSQLEntrada.Eof do
     Begin
           valorPrevisto := valorPrevisto + diaSQLEntrada.FieldByName('VALORCALCULADO').AsFloat;

           if NOT diaSQLEntrada.FieldByName('DATA_PGTO').IsNull Then
              valorRealizado := valorRealizado + diaSQLEntrada.FieldByName('VALORCALCULADO').AsFloat;

           diaSQLEntrada.Next;
     End;

     diaEditPrevEntrada.Text := getCurrToStr(valorPrevisto,true);
     diaEditRealEntrada.Text := getCurrToStr(valorRealizado, true);
end;

procedure TCAD_Caixas.caixaRCalculaSaida();
var valorPrevisto, valorRealizado: Double;
begin
     if diaSQLSaida.RecordCount = 0 Then
     Begin
          diaEditPrevSaida.Text := '0,00';
          diaEditRealSaida.Text := '0,00';
          exit;
     End;

     valorPrevisto := 0;
     valorRealizado := 0;
     diaSQLSaida.First;
     
     while not diaSQLSaida.Eof do
     Begin
           valorPrevisto := valorPrevisto + diaSQLSaida.FieldByName('VALORCALCULADO').AsFloat;

           if NOT diaSQLSaida.FieldByName('DATA_PGTO').IsNull Then
              valorRealizado := valorRealizado + diaSQLSaida.FieldByName('VALORCALCULADO').AsFloat;

           diaSQLSaida.Next;
     End;

     diaEditPrevSaida.Text := getCurrToStr(valorPrevisto,true);
     diaEditRealSaida.Text := getCurrToStr(valorRealizado, true);

end;

procedure TCAD_Caixas.caixaRCalculaMes();
var
    varSQL: TZQuery;
    DATA: String;
begin

     data := '01.'+IntToStr(MonthOf(diaDate.Date))+'.'+IntToStr(YearOf(diaDate.Date));

     varSQL := unUtilitario.getSelect('select'+
     ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)))'+
     ' from caixa_entrada c '+
     ' where c.data_pgto >= '''+data+''' and c.data_pgto <= CURRENT_DATE and ativo = ''SIM'') - '+
     ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)))'+
     ' from caixa_saida c '+
     ' where c.data_pgto >= '''+data+''' and c.data_pgto <= CURRENT_DATE and ativo = ''SIM'') as REALIZADAS, '+
     ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)))'+
     ' from caixa_entrada c '+
     ' where c.data_ref >= '''+data+''' and c.data_ref <= CURRENT_DATE and ativo = ''SIM'') - '+
     ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)))'+
     ' from caixa_saida c '+
     ' where (c.data_ref >= '''+data+''' and c.data_ref <= CURRENT_DATE and ativo = ''SIM'')) AS PREVISTAS'+
     ' from '+
     ' RDB$DATABASE');

     diaEditRealMes.Text := getCurrToStr(varSQL.FieldByName('REALIZADAS').AsCurrency,true);
     diaEditPrevMes.Text := getCurrToStr(varSQL.FieldByName('PREVISTAS').AsCurrency,true);

     if varSQL <> nil Then
        FreeAndNil(varSQL);
end;

procedure TCAD_Caixas.caixaRCalculaTudo();
var varSQL: TZQuery;
begin
     caixaRCalculaEntrada();
     caixaRCalculaSaida();
     caixaRCalculaMes();
     caixaRCalculaDia();

     varSQL := unUtilitario.getSelect('select '+
    ' (select sum((SELECT RESULT FROM spvalorcobranca1(1, c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) '+
    ' from caixa_entrada c '+
    ' where c.data_pgto >= ''01.01.'+IntToStr(YearOf(diaDate.Date))+''' and c.data_pgto <= '''+formataDataSQL(DateToStr(diaDate.Date))+''' and ativo = ''SIM'') '+
    ' - '+
    ' (select sum((SELECT RESULT FROM spvalorcobranca1(1, c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) '+
    ' from caixa_saida c '+
    ' where c.data_pgto >= ''01.01.'+IntToStr(YearOf(diaDate.Date))+''' and c.data_pgto <= '''+formataDataSQL(DateToStr(diaDate.Date))+''' and ativo = ''SIM'') '+
    ' from RDB$DATABASE');

     diaEditRealAno.Text := getCurrToStr(varSQL.Fields[0].AsCurrency , true);

     diaDSEntrada.DataSet := diaSQLEntrada;
     diaDSSaida.DataSet := diaSQLSaida;
     diaGridEntrada.DataSource := diaDSEntrada;
     diaGridSaida.DataSource := diaDSSaida;

     if varSQL <> nil Then
        FreeAndNil(varSQL);
end;
//FIM ----------------------------------------------- FUNÇÕES DO CADASTRO RÁPIDO

end.
