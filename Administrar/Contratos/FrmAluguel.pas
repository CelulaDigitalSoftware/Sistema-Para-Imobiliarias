unit FrmAluguel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons, Grids, DBGrids, ComCtrls,
  jpeg, DB, ZDataset, ZDbcIntfs, strutils, ZAbstractRODataset, ZAbstractDataset, ComObj, Dateutils,
  Menus, ActnPopup, OleCtrls, SHDocVw, Shellapi, RpDefine, unConfiguracao;


type
  TCAD_Aluguel = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    Btn_Esquerda: TBitBtn;
    Btn_Direita: TBitBtn;
    Btn_Novo: TBitBtn;
    Btn_Excluir: TBitBtn;
    Btn_Gravar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_Fechar: TBitBtn;
    Btn_Retorno: TBitBtn;
    Page_Central: TPageControl;
    Tab_Pesquisa: TTabSheet;
    Panel2: TPanel;
    Valor: TEdit;
    Valor_Ativo: TCheckBox;
    Btn_Imprimir: TBitBtn;
    Grid_Busca: TDBGrid;
    Tab_Cadastro: TTabSheet;
    DS: TDataSource;
    PageControl2: TPageControl;
    Tab_Informacoes: TTabSheet;
    Tab_Condicoes: TTabSheet;
    Tab_Garantia: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Edit_Cep: TEdit;
    Edit_Tipo: TEdit;
    Edit_Rua: TEdit;
    Edit_Cidade: TEdit;
    Edit_Bairro: TEdit;
    Edit_UF: TEdit;
    Edit_Codigo: TDBEdit;
    Btn_Endereco_Endereco: TBitBtn;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label33: TLabel;
    Label47: TLabel;
    Label69: TLabel;
    IMG_Proprietario: TImage;
    Label70: TLabel;
    DBGrid2: TDBGrid;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBCheckBox11: TDBCheckBox;
    GroupBox6: TGroupBox;
    IMG_Pessoas: TImage;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    DBGrid3: TDBGrid;
    Btn_Pessoas_Novo: TBitBtn;
    Btn_Pessoas_Cancelar: TBitBtn;
    Btn_Pessoas_Gravar: TBitBtn;
    Btn_Pessoas_Excluir: TBitBtn;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox14: TGroupBox;
    DBGrid4: TDBGrid;
    Edit_TaxaPorc: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label8: TLabel;
    Edit_Valor: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Bevel2: TBevel;
    Label21: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    DBEdit25: TDBEdit;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    Label39: TLabel;
    DBEdit31: TDBEdit;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit33: TDBEdit;
    Label42: TLabel;
    DBMemo1: TDBMemo;
    Edit_Complemento: TEdit;
    Edit_Numero: TEdit;
    Edit_Logradouro: TEdit;
    DBEDIT_ID_CONTRATO: TDBEdit;
    Label64: TLabel;
    Tipo_Pessoa_Contrato: TDBComboBox;
    Combo_Contrato: TDBComboBox;
    Label65: TLabel;
    DBEdit7: TDBEdit;
    Label38: TLabel;
    Label67: TLabel;
    Abrir_Arquivo: TOpenDialog;
    Salvar_Arquivo: TSaveDialog;
    DBEdit23: TDBEdit;
    Label66: TLabel;
    Data_Termino: TLabel;
    Bevel4: TBevel;
    Label11: TLabel;
    Edit_ValorRepasse: TEdit;
    Label54: TLabel;
    Edit_TaxaDinhe: TEdit;
    Label61: TLabel;
    DBEdit3: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit8: TDBEdit;
    Label72: TLabel;
    Ativo: TDBCheckBox;
    GroupBox13: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBMemo2: TDBMemo;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label45: TLabel;
    tabFinanceiro: TTabSheet;
    GroupBox11: TGroupBox;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    QtAluguelEnt: TLabel;
    qtCondEnt: TLabel;
    qtIptuEnt: TLabel;
    qtOutrosEnt: TLabel;
    valAluguelEnt: TLabel;
    valCondEnt: TLabel;
    valIptuEnt: TLabel;
    valOutrosEnt: TLabel;
    Label85: TLabel;
    Label53: TLabel;
    Label68: TLabel;
    pagAluguelEnt: TLabel;
    pagCondEnt: TLabel;
    pagIptuEnt: TLabel;
    pagOutrosEnt: TLabel;
    npagAluguelEnt: TLabel;
    npagCondEnt: TLabel;
    npagIptuEnt: TLabel;
    npagOutrosEnt: TLabel;
    GroupBox12: TGroupBox;
    Label71: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    QtAluguelSai: TLabel;
    QtCondSai: TLabel;
    QtIptuSai: TLabel;
    QtOutrosSai: TLabel;
    valAluguelSai: TLabel;
    valCondSai: TLabel;
    valIptuSai: TLabel;
    valOutrosSai: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label97: TLabel;
    pagAluguelSai: TLabel;
    pagCondSai: TLabel;
    pagIptuSai: TLabel;
    pagOutrosSai: TLabel;
    npagAluguelSai: TLabel;
    npagCondSai: TLabel;
    npagIptuSai: TLabel;
    npagOutrosSai: TLabel;
    Label78: TLabel;
    qtTotalEnt: TLabel;
    pagTotalEnt: TLabel;
    npagTotalEnt: TLabel;
    valTotalEnt: TLabel;
    Label106: TLabel;
    QtTotalSai: TLabel;
    pagTotalSai: TLabel;
    npagTotalSai: TLabel;
    valTotalSai: TLabel;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    Label81: TLabel;
    Label82: TLabel;
    Label84: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    tabReajustes: TTabSheet;
    GroupBox21: TGroupBox;
    Label103: TLabel;
    Label104: TLabel;
    EditValorDiaAtual: TEdit;
    EditValorDiaNovo: TEdit;
    ZEntrada: TZQuery;
    ZSaida: TZQuery;
    TabSheet1: TTabSheet;
    GroupBox24: TGroupBox;
    GroupCriaContaLocacao: TGroupBox;
    GroupCriaContaIPTU: TGroupBox;
    Image2: TImage;
    Image4: TImage;
    Image6: TImage;
    CaixaBotao: TBitBtn;
    IPTUBotao: TBitBtn;
    ContasBotao: TBitBtn;
    LabelObsParaColocar: TLabel;
    CaixaObs: TEdit;
    IPTUQtde: TEdit;
    IPTUDatePrimeiraParcela: TDateTimePicker;
    IPTUParcela: TEdit;
    Label114: TLabel;
    IPTUTotal: TLabel;
    ContasdiaLookupCategoria: TDBLookupComboBox;
    ContasdiaLookupGrupo: TDBLookupComboBox;
    ContasdiaLookupSubgrupo: TDBLookupComboBox;
    Label117: TLabel;
    Label118: TLabel;
    ContasDateInicio: TDateTimePicker;
    ContasRepetindo: TComboBox;
    ContasValor: TEdit;
    Label120: TLabel;
    ContasCaixa: TComboBox;
    ContasDocumento: TEdit;
    Label121: TLabel;
    ContasObs: TEdit;
    ComboEscolhaMes: TComboBox;
    Label116: TLabel;
    IPTUMulta: TEdit;
    IPTUJuros: TEdit;
    IPTUObs: TEdit;
    contaMulta: TEdit;
    contaJuros: TEdit;
    Label122: TLabel;
    contaDesconto: TEdit;
    ContasVezes: TEdit;
    GroupBox20: TGroupBox;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    EditValorValorAtual: TEdit;
    EditValorValorNovo: TEdit;
    TabSheet2: TTabSheet;
    Label123: TLabel;
    Label124: TLabel;
    DBGrid5: TDBGrid;
    EditValorValorData: TMonthCalendar;
    EditValorValorForma: TComboBox;
    BitBtn13: TBitBtn;
    DBEdit10: TDBEdit;
    EditInfo1: TEdit;
    EditInfo2: TEdit;
    DBEdit22: TDBEdit;
    EditInfo3: TEdit;
    DBEdit24: TDBEdit;
    EditInfo4: TEdit;
    DBEdit29: TDBEdit;
    BitBtn7: TBitBtn;
    EditValorDiaData: TMonthCalendar;
    EditValorDiaForma: TComboBox;
    Label3: TLabel;
    GroupBox8: TGroupBox;
    TabSheet3: TTabSheet;
    GroupBox22: TGroupBox;
    EditSimuladorPorcentagem: TEdit;
    Image3: TImage;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EditSimuladorTotalLocatario: TEdit;
    EditSimuladorTotalProprietario: TEdit;
    Label27: TLabel;
    EditSimuladorAntigoAluguel: TEdit;
    EditSimuladorAntigoRepasse: TEdit;
    Label28: TLabel;
    Label105: TLabel;
    EditSimuladorNovoRepasse: TEdit;
    EditSimuladorNovoAluguel: TEdit;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    CaixaRenovacao: TBitBtn;
    ZEntradaVALORREAL: TFloatField;
    ZEntradaID_CAIXA: TIntegerField;
    ZEntradaID_CATEGORIA: TIntegerField;
    ZEntradaID_SUBTIPO: TIntegerField;
    ZEntradaID_TIPO: TIntegerField;
    ZEntradaID_PESSOA: TIntegerField;
    ZEntradaID_IMOVEL: TIntegerField;
    ZEntradaID_CONTRATO: TIntegerField;
    ZEntradaID_FUNCIONARIO: TIntegerField;
    ZEntradaID_ENTRADA: TIntegerField;
    ZEntradaID_SAIDA: TIntegerField;
    ZEntradaDATA_REF: TDateField;
    ZEntradaDATA_CAD: TDateTimeField;
    ZEntradaDATA_ALT: TDateTimeField;
    ZEntradaDATA_PGTO: TDateField;
    ZEntradaHORA_PGTO: TTimeField;
    ZEntradaDOCUMENTO: TStringField;
    ZEntradaOPERACAO: TStringField;
    ZEntradaVALOR: TFloatField;
    ZEntradaVALOR_JUROS: TFloatField;
    ZEntradaVALOR_MULTA: TFloatField;
    ZEntradaVALOR_DESCONTO: TFloatField;
    ZEntradaPARCELA: TIntegerField;
    ZEntradaPENDENTE: TStringField;
    ZEntradaANOTACAO: TMemoField;
    ZEntradaATIVO: TStringField;
    ZEntradaGARANTIDO: TStringField;
    ZEntradaCONCATENATION: TStringField;
    ZEntradaNOME: TStringField;
    DS_Saida: TDataSource;
    DS_Entrada: TDataSource;
    DBGrid1: TDBGrid;
    ZSaidaVALORREAL: TFloatField;
    ZSaidaID_CAIXA: TIntegerField;
    ZSaidaID_TIPO: TIntegerField;
    ZSaidaID_SUBTIPO: TIntegerField;
    ZSaidaID_CATEGORIA: TIntegerField;
    ZSaidaID_PESSOA: TIntegerField;
    ZSaidaID_IMOVEL: TIntegerField;
    ZSaidaID_CONTRATO: TIntegerField;
    ZSaidaID_FUNCIONARIO: TIntegerField;
    ZSaidaID_ENTRADA: TIntegerField;
    ZSaidaID_SAIDA: TIntegerField;
    ZSaidaDATA_REF: TDateField;
    ZSaidaDATA_CAD: TDateTimeField;
    ZSaidaDATA_ALT: TDateTimeField;
    ZSaidaDATA_PGTO: TDateField;
    ZSaidaHORA_PGTO: TTimeField;
    ZSaidaDOCUMENTO: TStringField;
    ZSaidaOPERACAO: TStringField;
    ZSaidaVALOR: TFloatField;
    ZSaidaVALOR_JUROS: TFloatField;
    ZSaidaVALOR_MULTA: TFloatField;
    ZSaidaVALOR_DESCONTO: TFloatField;
    ZSaidaPARCELA: TIntegerField;
    ZSaidaPENDENTE: TStringField;
    ZSaidaANOTACAO: TMemoField;
    ZSaidaATIVO: TStringField;
    ZSaidaGARANTIDO: TStringField;
    ZSaidaCONCATENATION: TStringField;
    ZSaidaNOME: TStringField;
    Panel3: TPanel;
    ResumoSaida: TLabel;
    ResumoEntrada: TLabel;
    PopupGridAluguel: TPopupActionBar;
    VisualizarSeleo1: TMenuItem;
    LimparLista1: TMenuItem;
    N2: TMenuItem;
    Label110: TLabel;
    IPTULocatario: TCheckBox;
    IPTULocador: TCheckBox;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid6: TDBGrid;
    Image5: TImage;
    Data_Maior: TDateTimePicker;
    Data_Menor: TDateTimePicker;
    Label119: TLabel;
    ListView3: TListView;
    ListView1: TListView;
    Label125: TLabel;
    ListView5: TListView;
    Label111: TLabel;
    ListView4: TListView;
    Label127: TLabel;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    LabelData: TLabel;
    Valor_Tipo: TComboBox;
    AdicionarRegistros1: TMenuItem;
    GerarDIMOB1: TMenuItem;
    Label112: TLabel;
    Label115: TLabel;
    ContaPessoaEntrada: TComboBox;
    ContaPessoaSaida: TComboBox;
    CheckMarcado: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    checkPessoasContratos: TCheckBox;
    DBText3: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    DBText4: TDBText;
    Label126: TLabel;
    Label113: TLabel;
    Label128: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    IPTUDatePrimeiraLocadorParcela: TDateTimePicker;
    Label43: TLabel;
    Btn_Garantia_Excluir: TBitBtn;
    Btn_Garantia_Gravar: TBitBtn;
    Btn_Garantia_Cancelar: TBitBtn;
    Btn_Garantia_Novo: TBitBtn;
    Label83: TLabel;
    Label129: TLabel;
    GroupBox1: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    Label34: TLabel;
    Check_Parcelado: TDBCheckBox;
    Label31: TLabel;
    ComboGarantiaPessoa: TComboBox;
    ComboGarantiaSeguradora: TComboBox;
    ComboGarantiaTipo: TComboBox;
    CheckGarantiaSelecionado: TCheckBox;
    DBEdit1: TDBEdit;
    CheckBoleto: TDBCheckBox;
    Label32: TLabel;
    DBEdit19: TDBEdit;
    ContasParcela: TEdit;
    contaContinuar: TCheckBox;
    outrasContasListagem: TListBox;
    btnLimparCampos: TBitBtn;
    GroupBox15: TGroupBox;
    editSimuladorValorBase: TEdit;
    Label44: TLabel;
    editSimuladorValorBaseProcessado: TEdit;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    PainelRodape: TPanel;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    BitBtn6: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Panel8: TPanel;
    btnCriarImposto: TBitBtn;
    Memo1: TMemo;
    grid_irrf_taxas: TDBGrid;
    DS_IRRF: TDataSource;
    ZIRRF: TZQuery;
    grid_irff_contas: TDBGrid;
    Label135: TLabel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Valor_Marca: TCheckBox;
    btn_buscaPaginada: TCheckBox;
    IRRFDATAINICIAL: TDateTimePicker;
    IRRFDATAFINAL: TDateTimePicker;
    ZIRRFid: TIntegerField;
    ZIRRFvalor_inicio: TFloatField;
    ZIRRFvalor_fim: TFloatField;
    ZIRRFaliquota: TFloatField;
    ZIRRFdeducao: TFloatField;
    ZIRRFvigencia_inicio: TDateField;
    ZIRRFvigencia_fim: TDateField;
    ZIRRFtags: TStringField;
    ZIRRFativo: TStringField;
    ZIRRF_CONTAS: TZQuery;
    ZIRRF_CONTASID_CAIXA: TIntegerField;
    ZIRRF_CONTASID_CATEGORIA: TIntegerField;
    ZIRRF_CONTASID_TIPO: TIntegerField;
    ZIRRF_CONTASID_SUBTIPO: TIntegerField;
    ZIRRF_CONTASID_PESSOA: TIntegerField;
    ZIRRF_CONTASID_IMOVEL: TIntegerField;
    ZIRRF_CONTASID_CONTRATO: TIntegerField;
    ZIRRF_CONTASID_FUNCIONARIO: TIntegerField;
    ZIRRF_CONTASID_ENTRADA: TIntegerField;
    ZIRRF_CONTASID_SAIDA: TIntegerField;
    ZIRRF_CONTASDATA_REF: TDateField;
    ZIRRF_CONTASDATA_CAD: TDateTimeField;
    ZIRRF_CONTASDATA_ALT: TDateTimeField;
    ZIRRF_CONTASDATA_PGTO: TDateField;
    ZIRRF_CONTASHORA_PGTO: TTimeField;
    ZIRRF_CONTASDOCUMENTO: TStringField;
    ZIRRF_CONTASOPERACAO: TStringField;
    ZIRRF_CONTASVALOR: TFloatField;
    ZIRRF_CONTASVALOR_JUROS: TFloatField;
    ZIRRF_CONTASVALOR_MULTA: TFloatField;
    ZIRRF_CONTASVALOR_DESCONTO: TFloatField;
    ZIRRF_CONTASPARCELA: TIntegerField;
    ZIRRF_CONTASPENDENTE: TStringField;
    ZIRRF_CONTASANOTACAO: TMemoField;
    ZIRRF_CONTASATIVO: TStringField;
    ZIRRF_CONTASGARANTIDO: TStringField;
    ZIRRF_CONTASVALORREAL: TFloatField;
    DS_IRRF_CONTAS: TDataSource;
    ZIRRF_CONTASNOME: TStringField;
    ZIRRF_CONTASVALORSAIDA: TStringField;
    CaixaDescontoValor: TEdit;
    CaixaDescontoParcelaInicial: TEdit;
    Label136: TLabel;
    CaixaDescontoParcelaFinal: TEdit;
    GroupBox23: TGroupBox;
    Label137: TLabel;
    EditPrimeiroAluguelPorcentagem: TEdit;
    btn_CriarContaPrimeiroAluguel: TBitBtn;
    ComboPrimeiroAluguel: TComboBox;
    EditPrimeiroAluguelDinheiro: TEdit;
    btnIRRF: TBitBtn;
    ListView2: TListView;
    Label16: TLabel;
    ListView6: TListView;
    Label18: TLabel;
    CheckDeposito: TDBCheckBox;
    ListView7: TListView;
    Label138: TLabel;
    checkGarantidoIPTU: TCheckBox;
    checkgarantidoOutros: TCheckBox;
    ListView8: TListView;
    Label139: TLabel;
    procedure BitBtn15Click(Sender: TObject);
    procedure btnIRRFClick(Sender: TObject);
    procedure EditPrimeiroAluguelDinheiroExit(Sender: TObject);
    procedure EditPrimeiroAluguelPorcentagemExit(Sender: TObject);
    procedure EditPrimeiroAluguelDinheiroChange(Sender: TObject);
    procedure EditPrimeiroAluguelPorcentagemChange(Sender: TObject);
    procedure btn_CriarContaPrimeiroAluguelClick(Sender: TObject);
    procedure CaixaDescontoParcelaFinalExit(Sender: TObject);
    procedure CaixaDescontoParcelaInicialExit(Sender: TObject);
    procedure CaixaDescontoValorExit(Sender: TObject);
    procedure btnCriarImpostoClick(Sender: TObject);
    procedure btn_buscaPaginadaClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure grid_irrf_taxasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSheet5Hide(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnAvancarGridClick(Sender: TObject);
    procedure btnVoltarGridClick(Sender: TObject);
    procedure IPTUJurosChange(Sender: TObject);
    procedure IPTUMultaChange(Sender: TObject);
    procedure ContaPessoaSaidaSelect(Sender: TObject);
    procedure ContasCaixaChange(Sender: TObject);
    procedure ContaPessoaEntradaSelect(Sender: TObject);
    procedure editSimuladorValorBaseExit(Sender: TObject);
    procedure editSimuladorValorBaseChange(Sender: TObject);
    procedure checkPessoasContratosClick(Sender: TObject);
    procedure contaContinuarMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure ContasParcelaChange(Sender: TObject);
    procedure ContasParcelaExit(Sender: TObject);
    procedure ContasVezesChange(Sender: TObject);
    procedure ContasVezesExit(Sender: TObject);
    procedure ContasValorExit(Sender: TObject);
    procedure btnLimparCamposClick(Sender: TObject);
    procedure DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure IPTUDatePrimeiraLocadorParcelaCloseUp(Sender: TObject);
    procedure IPTUDatePrimeiraLocadorParcelaExit(Sender: TObject);
    procedure checkPessoasContratosMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DBEDIT_ID_CONTRATOChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckMarcadoClick(Sender: TObject);
    procedure Tab_PesquisaShow(Sender: TObject);
    procedure ContaPessoaSaidaDropDown(Sender: TObject);
    procedure ContaPessoaEntradaDropDown(Sender: TObject);
    procedure GerarDIMOB1Click(Sender: TObject);
    procedure LimparLista1Click(Sender: TObject);
    procedure VisualizarSeleo1Click(Sender: TObject);
    procedure AdicionarRegistros1Click(Sender: TObject);
    procedure LabelDataClick(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure ListView3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListView1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListView4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListView5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBEdit77DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure Tab_CondicoesShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Tipo_Pessoa_ContratoDropDown(Sender: TObject);
    procedure Edit_ValorChange(Sender: TObject);
    procedure Edit_TaxaDinheChange(Sender: TObject);
    procedure Edit_TaxaPorcChange(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_Garantia_ExcluirClick(Sender: TObject);
    procedure Btn_Garantia_GravarClick(Sender: TObject);
    procedure Btn_Garantia_CancelarClick(Sender: TObject);
    procedure Btn_Garantia_NovoClick(Sender: TObject);
    procedure Check_ParceladoClick(Sender: TObject);
    procedure Tab_GarantiaShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Btn_Endereco_EnderecoClick(Sender: TObject);
    procedure Tab_FinancasHide(Sender: TObject);
    procedure Tab_GarantiaHide(Sender: TObject);
    procedure Tab_CondicoesHide(Sender: TObject);
    procedure Tab_InformacoesHide(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure Btn_Pessoas_ExcluirClick(Sender: TObject);
    procedure Btn_Pessoas_GravarClick(Sender: TObject);
    procedure Btn_Pessoas_CancelarClick(Sender: TObject);
    procedure Btn_Pessoas_NovoClick(Sender: TObject);
    procedure Tab_InformacoesShow(Sender: TObject);
    procedure Grid_BuscaTitleClick(Column: TColumn);
    procedure Grid_BuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_BuscaDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn_DireitaClick(Sender: TObject);
    procedure Btn_EsquerdaClick(Sender: TObject);
    procedure Btn_RetornoClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Edit_TaxaPorcExit(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure Edit_TaxaDinheExit(Sender: TObject);
    procedure tabFinanceiroShow(Sender: TObject);
    procedure Grid_BuscaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Tipo_Pessoa_ContratoExit(Sender: TObject);
    procedure CaixaBotaoClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure IPTUBotaoClick(Sender: TObject);
    procedure ContasBotaoClick(Sender: TObject);
    procedure IPTUParcelaChange(Sender: TObject);
    procedure IPTUQtdeChange(Sender: TObject);
    procedure EditInfo1Change(Sender: TObject);
    procedure EditInfo2Change(Sender: TObject);
    procedure EditInfo3Change(Sender: TObject);
    procedure EditInfo4Change(Sender: TObject);
    procedure EditValorValorFormaCloseUp(Sender: TObject);
    procedure CaixaRenovacaoClick(Sender: TObject);
    procedure tabReajustesShow(Sender: TObject);
    procedure EditSimuladorPorcentagemChange(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure EditValorDiaFormaCloseUp(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure contaMultaChange(Sender: TObject);
    procedure contaJurosChange(Sender: TObject);
    procedure contaDescontoChange(Sender: TObject);
    procedure ContasValorChange(Sender: TObject);
    procedure Tipo_Pessoa_ContratoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelecaoRegistro: TStringList;
    FormCriador: TForm;
    FormCriadorConteudo: String;
    contador: integer;
    FormCriatura: TFormClass;
    procedure setImovel(Logradouro: String; Cep: String; Tipo: String; Rua: String; Cidade: String; Bairro: String; Uf: String; Numero: string; Complemento: String);
    function PegaQtde(caixa: String; Subtipo: String): String;
    function PegaQtdePag(caixa: String; Subtipo: String): String;
    function PegaValor(caixa: String; Subtipo: String): Double;
    //procedure calcularResumo();
//    procedure ajustarEntrada();
//    procedure ajustarSaida();
//    procedure camposentrada(tipo: String);
//    procedure campossaida(tipo: String);
    procedure setComponentesFinanceiros();
    procedure setContador();
    procedure setContadorAvulso(SubCategoria, Id_Contrato: Integer; Continuar: Boolean);
    procedure Pesquisar();
    procedure retirarContasContrato(datainicial: TDateTime; id_contrato: Integer);
    procedure retiraContasContratoConfirma();
    procedure voltarStatusImovel();
    procedure getGarantiaPessoaPopula();
    procedure getGarantiaSeguradoraPopula();
    function getPessoa(tipo: String; codigo: String): String;
    procedure calculoSimuladorPorcentagemPessoa(componenteOrigem: String);
    procedure GeraDimob(SelecaoImoveis: TStringList);
  End;

implementation

uses FrmDM_ADMIN, FrmDM_Cadastro, FrmPrincipal, unCamposBusca, unMsg, FrmPessoa,
  unImagem, FrmImovel, FrmDM_REL,
  unValidacao, FrmMatriz, unUtilitario, unINI, unFinanceiro,
  FrmDM_FINANCEIRO, FrmCaixas, unWord, unLog, FrmDM_RELATORIOS, unPaginacao;
  //FrmJanelaContratoFinanceiro

var
  CAD_Aluguel: TCAD_Aluguel;
  Fechar: Smallint;
  pagina: TPaginacao;
  numMinimoIRRF: Double;

{$R *.dfm}


procedure TCAD_Aluguel.Pesquisar();
Var quantidadeFiltros, i: integer;
    tamanhoString: Smallint;
    BUSCA_VALOR, troca, consultaFinal, Where: string;
    contador: TStringList;
begin

     Valor.Color := clSkyBlue;
     Valor.Repaint;

     DM_Admin.Z_ALUGUEL.Close;
     DM_Admin.Z_ALUGUEL.SQL.Clear;

     //Trata completamente a string, removendo caracteres especiais e trocando palavras
    BUSCA_VALOR := tratarBusca(Valor.Text);

    if BUSCA_VALOR = 'false' then
       exit;

    //Ver qual é a quantidade de filtros usadas para refinar a busca
    quantidadeFiltros := contarPalavras(BUSCA_VALOR, 'AND') + contarPalavras(BUSCA_VALOR, 'OR');

    //ORDENAÇÃO DA GRID         
    if ordenacao = 'INQUILINO' then
       ordenacao := 'INQUILINO'
    else
    if ordenacao = 'PROPRIETARIO' then
       ordenacao := 'PROPRIETARIO'
    else
    if ordenacao = 'LOGRADOURO' then
       ordenacao := 'log.nome'
    else
    if ordenacao = 'COMPLEMENTO' then
       ordenacao := 'im.complemento'
    else
    if ordenacao = 'NUMERO' then
       ordenacao := 'im.numero'
    else
    If Ordenacao = 'DATAFINAL' Then //ARRUMAR ISSO AQUI! DEVE SER A DATA FINAL DO CONTRATO CALCULADA
       Ordenacao := 'C.DATA'
    else
    If Ordenacao = '' Then
       Ordenacao := 'C.DATA'
    Else
    If (POS('.',Ordenacao) = 0) Then
       Ordenacao := 'C.'+Ordenacao;

    TamanhoString := Length(BUSCA_VALOR); //Verifica se foi alterado ou não

    //Trocar as palavras e elaborar a SQL
    for i := 0 to quantidadeFiltros do
    Begin
         If (Pos('C.ID_CONTRATO',BUSCA_VALOR) = 0) AND ((Pos('CODIGO ',BUSCA_VALOR) <> 0) OR (Pos('CONTRATO ',BUSCA_VALOR) <> 0)) then
         Begin
              if varAte > 0 then
              Begin
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO', 'CODIGO DE',[rfReplaceAll]);
                   quantidadeFiltros := quantidadeFiltros + 1;
              end
              else
              Begin
                   troca := ' C.ID_CONTRATO = ';
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO', troca,[rfReplaceAll]);
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CONTRATO', troca,[rfReplaceAll]);
              end;
         end
         else
         If (Pos('C.ID_REFERENCIA',BUSCA_VALOR) = 0) AND ((Pos('REFERENCIA ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' C.ID_REFERENCIA = ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'REFERENCIA', troca,[rfReplaceAll]);
         end
         else
         If (Pos('TUDO',BUSCA_VALOR) <> 0) OR (Pos('TODOS',BUSCA_VALOR) <> 0) OR (Pos('TODO',BUSCA_VALOR) <> 0) then
         Begin
              BUSCA_VALOR := ' (1 = 1) '; //Só para passar sem parâmetros mesmo...
         end
         else
         If (Pos('log.nome',BUSCA_VALOR) = 0) AND ((Pos('IMOVEL ',BUSCA_VALOR) <> 0) OR (Pos('IMÓVEL ',BUSCA_VALOR) <> 0)) then
         Begin
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'IMOVEL',' (Mv_Soundex(log.nome) LIKE ''%''||Mv_Soundex(''',[rfReplaceAll]);
              BUSCA_VALOR := BUSCA_VALOR+ ''')||''%'' ';
         end
         else
         If (Pos('C.TIPO_CONTRATO',BUSCA_VALOR) = 0) AND (Pos('TIPO',BUSCA_VALOR) > 0) then
         Begin
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'TIPO ',' C.TIPO_CONTRATO = ''',[rfReplaceAll]);
              BUSCA_VALOR := BUSCA_VALOR +''' ';
         end;

    end;

    //CODIGO
    if (Length(BUSCA_VALOR) = TamanhoString) and verificaStringInt(BUSCA_VALOR) then
    Begin
         BUSCA_VALOR := ' ( C.ID_CONTRATO = '+BUSCA_VALOR+' ) ';
    end;

    //TIPO DE PESSOA
    if (Length(Trim(Valor_Tipo.Text)) > 0) then
    Begin
         BUSCA_VALOR := '(EXISTS (SELECT P.NOME FROM PESSOA P LEFT JOIN PESSOA_CONTRATO PC '+
         ' ON P.ID_PESSOA = PC.ID_PESSOA WHERE PC.ID_CONTRATO = C.ID_CONTRATO AND P.NOME LIKE ''%'+ BUSCA_VALOR +'%'' and PC.tipo = '''+Trim(Valor_Tipo.Text)+''') OR '+
         ' ((select COUNT(pe.nome) from pessoa pe LEFT join pessoa_imovel pi on pi.id_pessoa = pe.id_pessoa where pi.status = ''PROPRIETARIO'' and pe.nome '+
         ' like ''%'+ BUSCA_VALOR +'%'' AND pi.id_imovel = C.id_imovel) > 0)) ';
    end;

    if (Length(BUSCA_VALOR) = TamanhoString) then
    Begin
         DM_Admin.Z_ALUGUEL.SQL.Add(
         ' select C.*,  ''00/00/0000'' as DATAFINAL, CASE WHEN (SELECT FIRST 1 PC.TIPO ||''-''|| P.NOME  FROM PESSOA P '+
         ' INNER JOIN PESSOA_CONTRATO PC ON P.ID_PESSOA = PC.ID_PESSOA WHERE PC.ID_CONTRATO = C.ID_CONTRATO AND P.NOME LIKE ''%'+ BUSCA_VALOR +'%'') IS NULL THEN '+
         ' (SELECT FIRST 1 PC.TIPO ||''-''|| P.NOME FROM PESSOA P INNER JOIN PESSOA_CONTRATO PC ON P.ID_PESSOA = PC.ID_PESSOA WHERE (PC.tipo = ''INQUILINO'' or PC.tipo LIKE '+' ''LOCAT_RIO'' or PC.tipo = ''MORADOR'' or PC.tipo = ''COMPRADOR'') AND PC.ID_CONTRATO = C.ID_CONTRATO) ELSE (SELECT FIRST 1 PC.TIPO ||''-''|| P.NOME  FROM PESSOA P '+
         ' INNER JOIN PESSOA_CONTRATO PC ON P.ID_PESSOA = PC.ID_PESSOA WHERE PC.ID_CONTRATO = C.ID_CONTRATO AND P.NOME LIKE ''%'+ BUSCA_VALOR +'%'') END AS INQUILINO, '+
         ' (select first 1 pe.nome from pessoa pe INNER join pessoa_imovel pi on pi.id_pessoa = pe.id_pessoa '+
         ' where pi.status = ''PROPRIETARIO'' and pi.id_imovel = C.id_imovel ) as PROPRIETARIO,  '+
         ' im.complemento, im.numero, log.nome as logradouro '+
         ' from CONTRATO C INNER join imovel im on im.id_imovel = c.id_imovel INNER join logradouro log on log.id_logradouro = im.id_logradouro where (EXISTS (SELECT P.NOME FROM PESSOA P INNER JOIN PESSOA_CONTRATO PC '+
         ' ON P.ID_PESSOA = PC.ID_PESSOA WHERE PC.ID_CONTRATO = C.ID_CONTRATO AND P.NOME LIKE ''%'+ BUSCA_VALOR +'%'') OR '+
         ' (im.complemento LIKE ''%'+ BUSCA_VALOR +'%'') OR (log.nome LIKE ''%'+ BUSCA_VALOR +'%'') OR (im.complemento LIKE ''%'+ BUSCA_VALOR +'%'') OR (C.obs LIKE ''%'+ BUSCA_VALOR +'%'') OR ((select COUNT(pe.nome) from pessoa pe INNER join pessoa_imovel pi on pi.id_pessoa = pe.id_pessoa where pi.status = ''PROPRIETARIO'' and pe.nome '+
         ' like ''%'+ BUSCA_VALOR +'%'' AND pi.id_imovel = C.id_imovel) > 0)) ');
    end
    Else
    Begin
         //Usar essa opção se usar algum filtro.
         DM_Admin.Z_ALUGUEL.SQL.Add('SELECT C.*, im.numero, ''00/00/0000'' as DATAFINAL, PC.TIPO ||''-''|| P.NOME AS INQUILINO,'+' (select first 1 skip 0 pe.nome from pessoa pe LEFT join pessoa_imovel'+' pi on pi.id_pessoa = pe.id_pessoa where pi.status LIKE ''%PROPRIET_RIO%'' and pi.id_imovel = C.id_imovel) as'+' PROPRIETARIO, im.complemento, log.nome as '+' logradouro FROM CONTRATO C LEFT JOIN PESSOA_CONTRATO PC ON PC.ID_CONTRATO = C.ID_CONTRATO and (PC.TIPO LIKE ''LOCAT_RIO'' OR PC.TIPO = ''INQUILINO'' OR PC.TIPO = ''COMPRADOR'') LEFT join imovel im on im.id_imovel = c.id_imovel '+'LEFT join logradouro log on log.id_logradouro = im.id_logradouro LEFT JOIN PESSOA P ON P.ID_PESSOA = PC.ID_PESSOA WHERE ' + BUSCA_VALOR );
    end;

     //DATAS
     case StrIndex(LabelData.Caption, ['NÃO procurar por data',
                                      'Procurar por data do CONTRATO',
                                      'Procurar por data de ALTERAÇÃO',
                                      'Procurar Por data de 1º VENCIMENTO',
                                      'Procurar Por data de TÉRMINO',
                                      'Procurar Por data de REAJUSTE',
                                      'Procurar Por data de RESCISÃO',
                                      'Procurar Por data de NÃO REAJUSTADO']) of
          1: DM_Admin.Z_ALUGUEL.SQL.Add(' ');
          2: DM_Admin.Z_ALUGUEL.SQL.Add(' AND C.DATA between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ');
          3: DM_Admin.Z_ALUGUEL.SQL.Add(' AND C.ALTERACAO_DATA between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ');
          4: DM_Admin.Z_ALUGUEL.SQL.Add(' AND C.VENCIMENTO between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ');
          5: DM_Admin.Z_ALUGUEL.SQL.Add(' AND dateadd(C.VIGENCIA-1 MONTH to C.VENCIMENTO) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ');
          6: DM_Admin.Z_ALUGUEL.SQL.Add(' AND c.id_contrato not in ( select cx.id_contrato from contrato cx where dateadd(Cx.VIGENCIA-1 MONTH to Cx.VENCIMENTO) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''') and c.id_contrato in (select ce.id_contrato from caixa_entrada ce where ce.id_subtipo = 3 and (ce.parcela = 12 or ce.parcela = 24 or ce.parcela = 36 or ce.parcela = 48 or ce.parcela = 60 or ce.parcela = 72 or ce.parcela = 84 or'+' ce.parcela = 96 or ce.parcela = 108 or ce.parcela = 120 or ce.parcela = 132 or '+' ce.parcela = 144 or ce.parcela = 156) and ce.data_ref between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' AND CE.ativo = ''SIM'') ');
          7: DM_Admin.Z_ALUGUEL.SQL.Add(' AND C.RES_MOTIVO is not null and CHAR_LENGTH(trim(C.RES_MOTIVO)) > 0 and cast(replace (C.RES_MOTIVO,''/'',''.'') as date) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' and '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ');
          8: DM_Admin.Z_ALUGUEL.SQL.Add(' AND c.id_contrato not in ( select cx.id_contrato from contrato cx where dateadd(Cx.VIGENCIA-1 MONTH to Cx.VENCIMENTO) between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''') and c.id_contrato in (select distinct( case when ce.valor = '+
          ' (select cex.valor from caixa_entrada cex where cex.id_categoria = ce.id_categoria and cex.id_tipo = ce.id_tipo and cex.id_subtipo = ce.id_subtipo and cex.id_contrato = ce.id_contrato and cex.id_pessoa = ce.id_pessoa and '+'cex.parcela = ce.parcela+1 and cex.ativo = ''SIM'') then ce.id_contrato else 0 end) from caixa_entrada '+
          ' ce where ce.id_subtipo = 3 and '+' (ce.parcela = 12 or ce.parcela = 24 or ce.parcela = 36 or ce.parcela = 48 or ce.parcela = 60 or '+' ce.parcela = 72 or ce.parcela = 84 or ce.parcela = 96 or ce.parcela = 108 or ce.parcela = 120 or ce.parcela = 132 or ce.parcela = 144 or ce.parcela = 156) and ce.data_ref between '''+
          formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' AND CE.ativo = ''SIM'') ');
     else
         LabelData.Caption := ' ';
     end;

    //BUSCA DOS COMPONENTES VISUAIS
    Try
       If Valor_Ativo.Checked Then
          DM_Admin.Z_ALUGUEL.SQL.Add(' AND (C.ativo = ''SIM'') ')
       else
           DM_Admin.Z_ALUGUEL.SQL.Add(' AND (C.ativo = ''NAO'') ');

       If Valor_Marca.State <> cbGrayed Then
          If Valor_Marca.State = cbChecked Then
             DM_Admin.Z_ALUGUEL.SQL.Add(' AND (C.HONORARIO_APOS = 1) ')
          else
              DM_Admin.Z_ALUGUEL.SQL.Add(' AND (C.HONORARIO_APOS <> 1) ');

       DM_Admin.Z_ALUGUEL.SQL.Add(' order by '+Ordenacao);

       if PainelRodape.Visible then
       Begin
            consultaFinal := DM_Admin.Z_ALUGUEL.SQL.Text;
            pagina.Mostrar := pagina.Mostrar;
            DM_ADMIN.Z_ALUGUEL.SQL.Clear;
            DM_ADMIN.Z_ALUGUEL.SQL.Text := pagina.maisRegistros(consultaFinal);
       end;

       DM_Admin.Z_ALUGUEL.SQL.Text;
       DM_Admin.Z_ALUGUEL.Open;
    except
          PRINCIPAL.setMensagem('Erro ao realizar busca. Favor entrar em contato com o Suporte Técnico, ou consultar o manual do sistema em http://manual.celuladigital.com.br');
          Exit;
    end;

    //Saber quantos contratos foi a resposta. qtde total
    contador := TStringList.Create;

    IF DM_Admin.Z_ALUGUEL.Active AND (DM_Admin.Z_ALUGUEL.RecordCount > 0) Then
    Begin

         while not DM_Admin.Z_ALUGUEL.Eof do
         Begin
              if not contador.IndexOf(DM_Admin.Z_ALUGUELID_CONTRATO.AsString) >= 0  then
                 contador.Add(DM_Admin.Z_ALUGUELID_CONTRATO.AsString);

              DM_Admin.Z_ALUGUEL.Next;
         end;

         DM_Admin.Z_ALUGUEL.First;
    end;

    PRINCIPAL.setMensagem('Contratos Encontrados: '+IntToStr(contador.Count));

    FreeAndNil(contador);
    Valor.Color := clWhite;
    Valor.Repaint;

    if (DM_Admin.Z_ALUGUEL.RecordCount > 0) AND (Tab_Pesquisa.Showing) then
       Grid_Busca.SetFocus;

    if (DM_Admin.Z_ALUGUEL.RecordCount = 0) AND (Tab_Pesquisa.Showing) then
       Valor.SetFocus;
    
end;

procedure TCAD_Aluguel.Btn_FecharClick(Sender: TObject);
begin
     unUtilitario.salvaGrid(Self.Name,Grid_Busca);
     Fechar := 0;
     close;
end;

procedure TCAD_Aluguel.FormClose(Sender: TObject; var Action: TCloseAction);
begin

     PRINCIPAL.DestroiForm(FormCriatura, FormCriador, FormCriadorConteudo, Fechar);

     DS.DataSet.Cancel;
     DS.DataSet.Close;
     ZEntrada.Cancel;
     ZEntrada.Close;
     ZSaida.Cancel;
     ZSaida.Close;
     DM_REL.ZQUERY1.Cancel;
     DM_REL.ZQUERY1.Close;
     DM_REL.ZQUERY2.Cancel;
     DM_REL.ZQUERY2.Close;
     DM_REL.ZQUERY3.Cancel;
     DM_REL.ZQUERY3.Close;
     DM_REL.ZQUERY4.Cancel;
     DM_REL.ZQUERY4.Close;
     DM_REL.ZQUERY5.Cancel;
     DM_REL.ZQUERY5.Close;
     DM_CADASTRO.Z_Curinga_01.Close;
     DM_CADASTRO.Z_Curinga_02.Close;
     DM_CADASTRO.Z_Curinga_06.Close;
     DM_ADMIN.Z_PESSOA_CONTRATO.Close;
     
     Action := caFree;
end;

procedure TCAD_Aluguel.FormCreate(Sender: TObject);       
var varSql, varMysql: TZQuery;
begin

  DS.DataSet := DM_Admin.Z_Aluguel;

  SelecaoRegistro := TStringList.Create;

  Data_Menor.Date := DATE;
  Data_Maior.Date := DATE;

  Ordenacao  := '';

  varSql := unUtilitario.getSelect('select distinct(tipo) from pessoa_contrato order by tipo');

  // Alimentando o dropdown
  Valor_Tipo.Items.Clear;
  Valor_Tipo.Items.Add('');
  Valor_Tipo.Items.Add('PROPRIETARIO');

  while not varSQL.eof do
  Begin
       Valor_Tipo.Items.Add(varSql.Fields[0].AsString);
       varSql.Next;
  end;

  FreeAndNil(varSql);

  Tab_Pesquisa.Show;
  Fechar := 0;

  Grid_Busca := unUtilitario.pegaGrid(Self.Name, Grid_Busca);

  setComponentesFinanceiros();

  pagina := TPaginacao.create();
  pagina.Mostrar := 30;

  varMysql := TZQuery.Create(PRINCIPAL);
  conectaMySQL(mysqlSistemaBanco,mysqlSistemaServidor,mysqlSistemaUsuario, mysqlSistemaSenha);
  varMysql.Connection := PRINCIPAL.MySQL;
  varMysql.SQL.Text := 'SELECT min(valor_inicio) FROM sistema_irrf WHERE ativo = ''SIM'' and valor_inicio > 0 and vigencia_fim is null';

  try
  varMysql.Open;

  if varMysql.RecordCount > 0 then
     numMinimoIRRF := varMysql.Fields[0].AsFloat
  else
      numMinimoIRRF := 0;

  varMysql.Close;
  FreeAndNil(varMysql);
  PRINCIPAL.MySQL.Disconnect;
  except
        On E: Exception do
             Begin
                  FreeAndNil(varMysql);
                  numMinimoIRRF := 0;
                  PRINCIPAL.MySQL.Disconnect;
                  unUtilitario.setMensagem('Erro ao atualizar a listagem de IRRF online.'+#13+e.Message,'erro')
             end;
  end;

end;

procedure TCAD_Aluguel.Btn_NovoClick(Sender: TObject);
begin
     If NOT DS.DataSet.Active Then
        DS.DataSet.Open;

        DS.DataSet.Append;

        DM_ADMIN.Z_ALUGUELDATA.Value := date;
        DM_ADMIN.Z_ALUGUELVALOR.Value := 0;
        DM_ADMIN.Z_ALUGUELVALOR_REAJUSTE.Value := 0;
        DM_ADMIN.Z_ALUGUELTARIFA.Value := 0;
        DM_ADMIN.Z_ALUGUELVIGENCIA.Value := 12;
        DM_ADMIN.Z_ALUGUELMULTA.Value := 10;
        DM_ADMIN.Z_ALUGUELMULTA_APOS.Value := 0;
        DM_ADMIN.Z_ALUGUELMULTA_MORA.Value := 0.033;
        DM_ADMIN.Z_ALUGUELMULTA_MORA_APOS.Value := 0;
        DM_ADMIN.Z_ALUGUELHONORARIO.Value := 0;
        DM_ADMIN.Z_ALUGUELHONORARIO_APOS.Value := 0;
        DM_ADMIN.Z_ALUGUELREAJUSTE_APOS.Value := 0;
        DM_ADMIN.Z_ALUGUELDESCONTO.Value := 0;
        DM_ADMIN.Z_ALUGUELDESCONTO_ATE.Value := 0;
        DM_ADMIN.Z_ALUGUELMORADORES.Value := 0;
        DM_ADMIN.Z_ALUGUELFINALIDADE.Value := 'MORADIA';
        DM_ADMIN.Z_ALUGUELISENTO_CPMF.Value := 'SIM';
        DM_ADMIN.Z_ALUGUELHONORARIO_1ALUGUEL.Value := 'NAO';
        DM_ADMIN.Z_ALUGUELHONORARIO_ADMIN.Value := 'NAO';
        DM_ADMIN.Z_ALUGUELPARCELADO_EM.Value := 0;
        DM_ADMIN.Z_ALUGUELCOMISSAO_LOCACAO.Value := 0;
        DM_ADMIN.Z_ALUGUELCOMISSAO_CAPTACAO.Value := 0;
        DM_ADMIN.Z_ALUGUELCOMISSAO_INDICACAO.Value := 0;
        DM_ADMIN.Z_ALUGUELCOMISSAO_DESPESAS.Value := 0;
        DM_ADMIN.Z_ALUGUELRENTA_ALUGUEL.Value := 0;
        DM_ADMIN.Z_ALUGUELRENTA_EFETIVADO.Value := 0;
        DM_ADMIN.Z_ALUGUELRENTA_HONOR_ALUGUEL.Value := 0;
        DM_ADMIN.Z_ALUGUELRENTA_HONOR_ADMIN.Value := 0;
        DM_ADMIN.Z_ALUGUELHONORARIO_REPASSE.Value := '0';
        DM_ADMIN.Z_ALUGUELDATA.Value := DATE;
        DM_ADMIN.Z_ALUGUELVENCIMENTO.Value := DATE + 30;
        DM_ADMIN.Z_ALUGUELREPASSE.Value := 'SEM INFORMAÇÃO.';
        DM_ADMIN.Z_ALUGUELREAJUSTE.Value := 'SEM INFORMAÇÃO.';
        DM_ADMIN.Z_ALUGUELCORRESPONDENCIA.Value := 'SEM INFORMAÇÃO.';
        Check_Parcelado.Checked := false;
        DM_ADMIN.Z_ALUGUELTIPO_CONTRATO.Value := 'LOCAÇÃO';

        DM_ADMIN.Z_ALUGUELATIVO.Value := 'SIM';

        unCamposBusca.BUSCA(DM_CADASTRO.Z_Curinga_06,'select ID from sp_gen_contrato_id');

        DM_ADMIN.Z_ALUGUELID_CONTRATO.Value := DM_CADASTRO.Z_Curinga_06.FieldByName('ID').Value;

        DM_ADMIN.Z_ALUGUELID_REFERENCIA.Value := DM_ADMIN.Z_ALUGUELID_CONTRATO.Value;

        DM_CADASTRO.Z_Curinga_06.Close;

        Btn_Novo.Enabled := False;

        NovoRegistro := 1;
        Btn_Endereco_Endereco.Enabled := TRUE;

        DM_CADASTRO.DS_Curinga_02.DataSet.close;

        DM_ADMIN.DS_PESSOA_CONTRATO.DataSet.close;

        CheckMarcadoClick(Sender);
        
        //LIMPAR DADOS ANTIGOS

        Edit_Logradouro.Text := '';
        Edit_Complemento.Text := '';
        Edit_Numero.Text := '';

        Edit_Cep.Text := '';
        Edit_Tipo.Text := '';
        Edit_Rua.Text := '';
        Edit_Cidade.Text := '';
        Edit_Bairro.Text := '';
        Edit_UF.Text := '';

        //BUSCAR O PROPRIETARIO
        DM_Cadastro.Z_Curinga_02.Close;

        //BUSCAR AS PESSOAS
        unCamposBusca.BUSCA(DM_ADMIN.Z_PESSOA_CONTRATO, 'SELECT PC.*, P.id_pessoa AS XCODIGO, P.nome AS XNOME, P.cpf_cnpj AS XCPF, P.foto AS XFOTO FROM pessoa_contrato PC LEFT JOIN CONTRATO C ON C.id_contrato = PC.id_contrato LEFT JOIN PESSOA P ON P.id_pessoa = PC.id_pessoa WHERE PC.id_contrato = '+ DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +' ORDER BY P.NOME');

        unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select distinct(TIPO) from pessoa_contrato order by tipo');

        Tab_Cadastro.Show;
        Tab_Informacoes.Show;
        Tab_InformacoesShow(Sender);

        Data_Termino.Caption := '00/00/0000';

        Combo_Contrato.Enabled := true;
        Combo_Contrato.SetFocus;
end;

procedure TCAD_Aluguel.Btn_CancelarClick(Sender: TObject);
begin
     If DS.DataSet.Active Then
        Begin
             DS.DataSet.Cancel;
             (DS.DataSet as TZQuery).CancelUpdates;
             Btn_Novo.Enabled := True;

             NovoRegistro := 0;
        End;

     Tab_Pesquisa.Show;
     Btn_Endereco_Endereco.Enabled := FALSE;
end;

procedure TCAD_Aluguel.btn_CriarContaPrimeiroAluguelClick(Sender: TObject);
var Subgrupo: Integer;
    SQL, CONTA: TZQuery;
begin

     subgrupo := unUtilitario.IDCampo(ComboPrimeiroAluguel.Text);

     if not verificaStringInt(IntToStr(Subgrupo)) then
        exit;

     SQL := unUtilitario.getSelect('SELECT * FROM PESSOA_IMOVEL WHERE STATUS = ''PROPRIETARIO'' AND ATIVO = ''SIM'' AND ID_IMOVEL = '+DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString);

     while not sql.Eof do
     begin
          CONTA := unUtilitario.getSelect('SELECT * FROM CAIXA_SAIDA WHERE ID_CONTRATO = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString+' AND PARCELA = 1 AND ATIVO = ''SIM'' AND ID_PESSOA = '+SQL.FieldByName('ID_PESSOA').AsString);
          if CONTA.RecordCount = 1 then
             cadastraConta('ENTRADA', '', '1', IntToStr(subgrupo), '2', SQL.FieldByName('ID_PESSOA').AsString, DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', conta.FieldByName('data_ref').AsString, DateTimeToStr(Now()), DateTimeToStr(Now()), 'NEGOCIAÇÃO IMOBILIÁRIA' , 'CRIADO NO FORMULÁRIO DE CONTRATO PELO BOTAO RAPIDO.', CurrToStr((StrToCurr(EditPrimeiroAluguelDinheiro.Text) * sql.FieldByName('PORCENTAGEM').AsCurrency)/100) , DM_ADMIN.Z_ALUGUELMULTA_MORA.AsString, DM_ADMIN.Z_ALUGUELMULTA.AsString, '0', '1', 'NAO', 'SIM', 'NAO')
          else
              setMensagem('Foram encontradas mais contas no Caixa Saída para este contrato com parcela 1 para uma única PESSOA de código: '+SQL.FieldByName('ID_PESSOA').AsString+' - A ação desde momento será cancelada.','erro');
          sql.Next;
     end;

     setMensagem('Conta de abatimento criada no caixa entrada!','informa');
     EditPrimeiroAluguelDinheiro.Text := '0,00';
     EditPrimeiroAluguelPorcentagem.Text := '0';
end;

procedure TCAD_Aluguel.Btn_GravarClick(Sender: TObject);
var
  modo_edicao: boolean;
  varSQL, varMySQL: TZQuery;
begin

  If DS.DataSet.Active Then
  Begin
       Try
          if Length(Trim(ComboEscolhaMes.Text)) > 0 then
             if Pos('- REPASSE DIA '+DBEdit3.Text,DBMemo2.Lines.Text) = 0 then
                DM_ADMIN.Z_ALUGUELOBS.AsString := '- REPASSE DIA '+DBEdit3.Text+' DO '+ComboEscolhaMes.Text+' PELO USUÁRIO(A) '+getUser('USUARIO')+' NA DATA DE '+DateTimeToStr(Date+Time)+'.'+#13+DM_ADMIN.Z_ALUGUELOBS.AsString;

             if CheckDeposito.Checked then
                DM_ADMIN.Z_ALUGUELOBS.AsString := '- DEPOSITO MARCADO PARA ESTE CONTRATO NA DATA DE '+DateTimeToStr(Date+Time)+'.'+#13+DM_ADMIN.Z_ALUGUELOBS.AsString;

          DS.DataSet.FieldByName('ALTERACAO_FUNC').AsString := getUser('CODIGO_USUARIO');
          DS.DataSet.FieldByName('ALTERACAO_DATA').Value := Date+Time;
          DS.DataSet.Post;
          (DS.DataSet as TZQuery).ApplyUpdates;

          setLog(DS.DataSet.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption, (DS.DataSet as TZQuery));

          PRINCIPAL.setMensagem('REGISTRO SALVO!');
          Btn_Novo.Enabled := True;
          NovoRegistro := 0;

          //ALTERAR STATUS DO IMÓVEL AUTOMATICAMENTE.
          if DS.DataSet.FieldByName('ATIVO').Value = 'SIM' then
          Begin
               if DS.DataSet.FieldByName('TIPO_CONTRATO').Value = 'LOCAÇÃO' then
                  varSQL := unUtilitario.getSQL('update imovel I set I.status = ''ALUGADO'', I.CHAVE = ''NAO'', I.INTERNET = ''NAO'', I.alteracao_data = current_date, I.alteracao_func = '+getUser('CODIGO_USUARIO')+' WHERE ID_IMOVEL = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString);

               if DS.DataSet.FieldByName('TIPO_CONTRATO').Value = 'VENDA' then
                  varSQL := unUtilitario.getSQL('update imovel I set I.status = ''VENDIDO'', I.INTERNET = ''NAO'', I.alteracao_data = current_date, I.alteracao_func = '+getUser('CODIGO_USUARIO')+' WHERE ID_IMOVEL = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString);

               varSQL.ApplyUpdates;

               setLogSQL(DS.DataSet.FieldByName('ID_IMOVEL').AsString, 'ALTERAÇÃO', Self.Caption+': ALTERAÇÃO DO IMÓVEL', varSQL.SQL.Text);

               conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);

               //RETIRA DA INTERNET O IMÓVEL
               varMySQL := TZQuery.Create(PRINCIPAL);
               varMySQL.Connection := PRINCIPAL.MySQL;
               varMySQL.SQL.Add('delete from imovel where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString);
               varMySQL.ExecSQL;

               FreeAndNil(varMySQL);
          end
          ELSE
          Begin
               //Retira as contas do caixa se caso for conta inativa...
               retiraContasContratoConfirma();
               voltarStatusImovel();
               unUtilitario.setMensagem('Lembre-se de verificar a data de RESCISÃO DO CONTRATO na aba Condições do Contrato.','informa');
          end;


       Except
             On E: Exception do
             Begin

                  if StrPos(pchar(e.Message),'violation of FOREIGN KEY constraint') <> nil Then
                     unUtilitario.setMensagem('Você NÃO pode salvar a alteração atual.'+#13+'Caso tenha que fazer esse tipo de alteração, crie um NOVO contrato, pois está alterando informação altamente relevante.','erro')
                  else
                      unUtilitario.setMensagem('Problema ao salvar o contrato. Verifique novamente os dados.','erro');
             end;
       End;
       DS.DataSet.Edit;
  End
  Else
      unMsg.ERRO(13);

      Btn_Endereco_Endereco.Enabled := False;

end;

function TCAD_Aluguel.getPessoa(tipo: String; codigo: String): String;
var varSQL, varSQLTelefone: TZQuery;
begin

     if tipo = 'locador' then  //BUSCAR CÓDIGO DO IMÓVEL
     Begin
          varSQL := unUtilitario.getSelect('select prop.nome from pessoa prop '+
          ' LEFT join pessoa_imovel pi on pi.id_pessoa = prop.id_pessoa '+
          ' where pi.id_imovel = '+codigo+' and pi.status = ''PROPRIETARIO'' and prop.ativo = ''SIM'' ');

          result := '';

          while NOT varSQL.Eof do
          Begin
               result := result + varSQL.FieldByName('NOME').AsString+' - ';
               varSQL.Next;
          end;
     end;

     if tipo = 'locatario' then  //BUSCAR CÓDIGO DO CONTRATO
     Begin
          varSQL := unUtilitario.getSelect('select inq.nome, inq.id_pessoa, inq.email, inq.yahoo, inq.msn from pessoa inq '+
          ' LEFT join pessoa_contrato pc on pc.id_pessoa = inq.id_pessoa '+
          ' where pc.id_contrato = '+codigo+' and inq.ativo = ''SIM'' and '+
          ' (pc.tipo LIKE ''LOCAT_RIO'' or pc.tipo = ''COMPRADOR'' or pc.tipo = ''MORADOR'' or pc.tipo = ''INQUILINO'') ');

          result := '';


          while NOT varSQL.Eof do
          Begin
               varSQLTelefone := unUtilitario.getSelect('select DDD, NUMERO from telefone where id_pessoa = '+varSQL.FieldByName('ID_PESSOA').AsString);

               result := result + varSQL.FieldByName('NOME').AsString+' ('+Trim(varSQL.FieldByName('EMAIL').AsString+' '+varSQL.FieldByName('YAHOO').AsString+' '+varSQL.FieldByName('MSN').AsString);
               while NOT varSQLTelefone.Eof do
               Begin
                    result := result + ', '+varSQLTelefone.FieldByName('DDD').AsString+' '+varSQLTelefone.FieldByName('NUMERO').AsString;
                    varSQLTelefone.Next;
               end;
               varSQLTelefone.close;
               result := result +') - ';
               varSQL.Next;
          end;
     end;

     FreeAndNil(varSQL);
end;

procedure TCAD_Aluguel.Btn_ImprimirClick(Sender: TObject);
var qtde, nomeArquivo, varGarantido:string;
    VarSQL, VarSQL2: TZQuery;
    Arquivo: TextFile;
    vetor: array[1..14] of String;
    data: TDateTime;
    sqlEtiqueta: TZQuery;
   Escolha, Registros: String;
   I: Integer;
   total, indiceTotal, taxaTotal, taxa, indiceDinheiro, indiceReajustado: Currency;
   indice: Double;
begin

     //if NOT dm_admin.Z_ALUGUEL.Active Then
     //   Exit;

     qtde := InputBox('RELATÓRIO DE CONTRATOS:','Qual relatório deseja imrpimir?'+#13+'1 - Completo (1 por folha)'+#13'2 - Completo (alguns por folha)'+#13+'3 - Simplificado'+#13+'33 - Simplificado (Reajustes)'+#13+'4 - Saúde dos registros de contratos'+#13+'5 - Inquilino & Imóveis alugados'+#13+'6 - Etiqueta 30 (25,4 x 66,7) - Polifix (ARQUIVAMENTO)','');

     if NOT verificaStringInt(qtde) Then
        exit;

     if (strtoint(qtde) = 1)Then
     Begin
     DM_REL.ZQUERY1.CLOSE;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT '+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS TOTALENTRADA,'+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS TOTALSAIDA,'+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.PENDENTE = ''SIM'' AND CE.ATIVO = ''SIM'') AS PENDENTEENTRADA,'+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.PENDENTE = ''SIM'' AND CE.ATIVO = ''SIM'') AS PENDENTESAIDA,'+
     ' (SELECT AVG(CE.valor) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS MEDIASENTRADA,'+
     ' (SELECT AVG(CE.valor) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS MEDIASSAIDA,'+
     ' (SELECT COUNT(CE.id_caixa) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS NPAGOENTRADA,'+
     ' (SELECT SUM(CE.valor) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS TOTNPAGOENTRADA,'+
     ' (SELECT COUNT(CE.id_caixa) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS NPAGOSAIDA,'+
     ' (SELECT SUM(CE.valor) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS TOTNPAGOSAIDA,'+
     ' (C.valor * C.tarifa/100) AS TAXACALC,'+
     ' C.*, i.numero, i.complemento, i.valor_aluquel, i.valor_condominio, i.status, l.cep, l.tipo, l.nome FROM contrato C'+
     ' left join imovel i on i.id_imovel = c.id_imovel '+
     ' left join logradouro l on l.id_logradouro = i.id_logradouro where C.id_contrato in( '+alinhaStringlist(SelecaoRegistro)+' ) order by c.id_contrato');

     {dm_admin.Z_ALUGUEL.First;

      while NOT dm_admin.Z_ALUGUEL.Eof do
      begin
           DM_REL.ZQUERY1.SQL.Add(' C.id_contrato = '+ dm_admin.Z_ALUGUELID_CONTRATO.AsString +' OR ');
           dm_admin.Z_ALUGUEL.Next;
      end;
     DM_REL.ZQUERY1.SQL.Add(' C.id_contrato = 0 order by c.id_contrato ');
     }
     
     DM_REL.ZQUERY1.Open;

     DM_REL.ZQUERY2.SQL.Clear;
     DM_REL.ZQUERY2.SQL.Add('SELECT L.tipo, L.nome, E.numero, E.complemento, L.cep, C.id_contrato,  P.*   FROM PESSOA P '+
     ' LEFT JOIN PESSOA_IMOVEL PI ON PI.id_pessoa = P.id_pessoa AND PI.status LIKE ''PROPRIET_RIO'' '+
     ' LEFT JOIN CONTRATO C ON C.id_imovel = PI.id_imovel'+
     ' LEFT JOIN ENDERECO E ON E.id_pessoa = P.id_pessoa AND E.id_endereco_tipo = 1 '+
     ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = E.id_logradouro'+
     ' WHERE p.ativo <> ''XXX'' order by p.nome');

     DM_REL.ZQUERY2.Open;

     DM_REL.ZQUERY3.SQL.Clear;
     DM_REL.ZQUERY3.SQL.Add('SELECT pc.tipo, L.tipo, L.nome, E.numero, E.complemento, L.cep, PC.id_contrato,  P.* FROM PESSOA P'+
     ' LEFT JOIN PESSOA_CONTRATO PC ON PC.id_pessoa = P.id_pessoa'+
     ' LEFT JOIN ENDERECO E ON E.id_pessoa = P.id_pessoa AND E.id_endereco_tipo = 1'+
     ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = E.id_logradouro'+
     ' WHERE p.ativo <> ''XXX'' order by pc.tipo');

     DM_REL.ZQUERY3.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;
     DM_REL.RV_Query2.DataSet := DM_REL.ZQUERY2;
     DM_REL.RV_Query3.DataSet := DM_REL.ZQUERY3;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CONTRATO1.rav';

     setRave(1,'',InputBox('- Observação Personalizada -','Escreva uma OBS personalizada para ser impressa junto com o relatório:',''));

     end;


     if (strtoint(qtde) = 2)Then
     Begin
     DM_REL.ZQUERY1.CLOSE;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT '+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS TOTALENTRADA,'+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS TOTALSAIDA,'+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.PENDENTE = ''SIM'' AND CE.ATIVO = ''SIM'') AS PENDENTEENTRADA,'+
     ' (SELECT COUNT(CE.ID_CAIXA) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.PENDENTE = ''SIM'' AND CE.ATIVO = ''SIM'') AS PENDENTESAIDA,'+
     ' (SELECT AVG(CE.valor) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS MEDIASENTRADA,'+
     ' (SELECT AVG(CE.valor) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'') AS MEDIASSAIDA,'+
     ' (SELECT COUNT(CE.id_caixa) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS NPAGOENTRADA,'+
     ' (SELECT SUM(CE.valor) FROM CAIXA_ENTRADA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS TOTNPAGOENTRADA,'+
     ' (SELECT COUNT(CE.id_caixa) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS NPAGOSAIDA,'+
     ' (SELECT SUM(CE.valor) FROM CAIXA_SAIDA CE WHERE CE.id_contrato = C.id_contrato AND CE.ATIVO = ''SIM'' AND CE.data_pgto IS NULL) AS TOTNPAGOSAIDA,'+
     ' (C.valor * C.tarifa/100) AS TAXACALC,'+
     ' C.*, i.numero, i.complemento, i.valor_aluquel, i.valor_condominio, i.status, l.cep, l.tipo, l.nome FROM contrato C'+
     ' left join imovel i on i.id_imovel = c.id_imovel '+
     ' left join logradouro l on l.id_logradouro = i.id_logradouro where C.id_contrato in( '+alinhaStringlist(SelecaoRegistro)+' ) order by c.id_contrato');

     { dm_admin.Z_ALUGUEL.First;

      while NOT dm_admin.Z_ALUGUEL.Eof do
      begin
           DM_REL.ZQUERY1.SQL.Add(' C.id_contrato = '+ dm_admin.Z_ALUGUELID_CONTRATO.AsString +' OR ');
           dm_admin.Z_ALUGUEL.Next;
      end;
     DM_REL.ZQUERY1.SQL.Add(' C.id_contrato = 0 order by c.id_contrato ');
     }

     DM_REL.ZQUERY1.Open;

     DM_REL.ZQUERY2.SQL.Clear;
     DM_REL.ZQUERY2.SQL.Add('SELECT L.tipo, L.nome, E.numero, E.complemento, L.cep, C.id_contrato,  P.*   FROM PESSOA P '+
     ' LEFT JOIN PESSOA_IMOVEL PI ON PI.id_pessoa = P.id_pessoa AND PI.status LIKE ''PROPRIET_RIO'' '+
     ' LEFT JOIN CONTRATO C ON C.id_imovel = PI.id_imovel'+
     ' LEFT JOIN ENDERECO E ON E.id_pessoa = P.id_pessoa AND E.id_endereco_tipo = 1 '+
     ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = E.id_logradouro'+
     ' WHERE p.ativo <> ''XXX'' order by p.nome');

     DM_REL.ZQUERY2.Open;

     DM_REL.ZQUERY3.SQL.Clear;
     DM_REL.ZQUERY3.SQL.Add('SELECT pc.tipo, L.tipo, L.nome, E.numero, E.complemento, L.cep, PC.id_contrato,  P.* FROM PESSOA P'+
     ' LEFT JOIN PESSOA_CONTRATO PC ON PC.id_pessoa = P.id_pessoa'+
     ' LEFT JOIN ENDERECO E ON E.id_pessoa = P.id_pessoa AND E.id_endereco_tipo = 1'+
     ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = E.id_logradouro'+
     ' WHERE p.ativo <> ''XXX'' order by pc.tipo');

     DM_REL.ZQUERY3.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;
     DM_REL.RV_Query2.DataSet := DM_REL.ZQUERY2;
     DM_REL.RV_Query3.DataSet := DM_REL.ZQUERY3;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CONTRATO2.rav';

     setRave(1,'',InputBox('- Observação Personalizada -','Escreva uma OBS personalizada para ser impressa junto com o relatório:',''));

     end;



if (strtoint(qtde) = 3)Then
     Begin

     if SelecaoRegistro.Count = 0 then
     Begin
          unUtilitario.setMensagem('Selecione os registros que deseja imprimir...','informa');
          exit;
     end;

     DM_REL.ZQUERY1.CLOSE;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('select c.*, i.*, l.*, b.nome as bairro, ci.nome as cidade, uf.sigla as uf from contrato c '+
     ' LEFT join imovel i on i.id_imovel = c.id_imovel '+
     ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
     ' LEFT join cidade ci on ci.id_cidade = l.id_cidade '+
     ' LEFT join uf on uf.id_sigla = l.id_sigla '+
     ' LEFT join bairro b on b.id_bairro = l.id_bairro '+
     ' where c.id_contrato in ('+alinhaStringlist(SelecaoRegistro)+') order by l.nome, i.numero ');
     DM_REL.ZQUERY1.Open;

     nomeArquivo := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_Relatorio_Contratos_MOD3.txt';
     AssignFile(Arquivo,nomeArquivo);
     Rewrite(Arquivo);

     Writeln(Arquivo,'RELATORIO DE CONTRATOS SIMPLIFICADO. '+DateTimeToStr(Date()+Time()));
     Writeln(Arquivo,' ');
     Writeln(Arquivo,' ');

     total := 0;
     taxa := 0;
      while NOT DM_REL.ZQUERY1.Eof do
      begin
            VarSQL2 := unUtilitario.getSelect('select count(1) as contador from caixa_SAIDA where id_contrato = '+DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString+' and garantido = ''SIM'' and data_pgto is null and ativo = ''SIM'' ');

            if VarSQL2.FieldByName('CONTADOR').AsInteger > 0 then
               varGarantido := 'PAGAMENTO GARANTIDO'
            else
                varGarantido := '';

           Writeln(Arquivo,'---------');
           Writeln(Arquivo,'CONTRATO: '+DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString +' '+varGarantido);
           Writeln(Arquivo,'IMOVEL: '+
           DM_REL.ZQUERY1.FieldByName('TIPO').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('NOME').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('NUMERO').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('COMPLEMENTO').AsString+', '+
           DM_REL.ZQUERY1.FieldByName('BAIRRO').AsString+', '+
           DM_REL.ZQUERY1.FieldByName('CIDADE').AsString+'-'+
           DM_REL.ZQUERY1.FieldByName('UF').AsString+' CEP:'+
           DM_REL.ZQUERY1.FieldByName('CEP').AsString
           );
           Writeln(Arquivo,'LOCADOR: '+getPessoa('locador',DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString));
           Writeln(Arquivo,'LOCATÁRIO: '+getPessoa('locatario',DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString));
           total := total + DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency;
           Writeln(Arquivo,'VALOR: '+getCurrToStr(DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency, True));
           taxa := taxa + ((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100);
           Writeln(Arquivo,'COMISSÃO: '+getCurrToStr((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100, True));
           Writeln(Arquivo,'VENCIMENTO: '+IntToStr(DayOfTheMonth(DM_REL.ZQUERY1.FieldByName('VENCIMENTO').AsDateTime))+'  REPASSE: '+DM_REL.ZQUERY1.FieldByName('HONORARIO_REPASSE').AsString);   
           Writeln(Arquivo,' ');

           DM_REL.ZQUERY1.Next;
      end;

      Writeln(Arquivo,'VALOR TOTAL: '+getCurrToStr(total,true));
      Writeln(Arquivo,'COMISSÃO TOTAL: '+getCurrToStr(taxa,true));

      DM_REL.ZQUERY1.Close;
      CloseFile(Arquivo);
      FreeAndNil(varSQL);

      WinExec(pchar('notepad "'+nomeArquivo+'"'), SW_SHOW);
     end;



     if (strtoint(qtde) = 33)Then
     Begin

     if SelecaoRegistro.Count = 0 then
     Begin
          unUtilitario.setMensagem('Selecione os registros que deseja imprimir...','informa');
          exit;
     end;

     qtde := InputBox('ESCOLHA O MODELO','Escolha o formato da saída:'+#13+'1 - COM busca de índice.'+#13'2 - SEM busca de índice.','2');

     if NOT verificaStringInt(qtde) Then
     Begin
          unUtilitario.setMensagem('Entre com o número solicitado... Ação Cancelada.','informa');
          exit;
     end;

     DM_REL.ZQUERY1.CLOSE;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('select c.*, i.*, l.*, b.nome as bairro, ci.nome as cidade, uf.sigla as uf from contrato c '+
     ' LEFT join imovel i on i.id_imovel = c.id_imovel '+
     ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
     ' LEFT join cidade ci on ci.id_cidade = l.id_cidade '+
     ' LEFT join uf on uf.id_sigla = l.id_sigla '+
     ' LEFT join bairro b on b.id_bairro = l.id_bairro '+
     ' where c.id_contrato in ('+alinhaStringlist(SelecaoRegistro)+') order by c.vencimento ');
     DM_REL.ZQUERY1.Open;

     nomeArquivo := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_Relatorio_Contratos_MOD33.txt';
     AssignFile(Arquivo,nomeArquivo);
     Rewrite(Arquivo);

     //Gera Relatório
     Writeln(Arquivo,'RELATÓRIO DE CONTRATOS SIMPLIFICADO. '+DateTimeToStr(Date()+Time()));
     Writeln(Arquivo,' ');

     Writeln(Arquivo,UpperCase(InputBox('ESCREVA UM TÍTULO','Informe um texto para identificar o relatório conforme a sua necessidade:'+#13+'Ex: REAJUSTE 01/01/15 À 31/01/2015'+#13+'Ex: À VENCER 01/01/15 À 31/01/2015', '')));

     Writeln(Arquivo,' ');

     total := 0;
     taxa := 0;
     indiceDinheiro := 0;
     indiceReajustado := 0;
     indice := 0;
      while NOT DM_REL.ZQUERY1.Eof do
      begin
            VarSQL2 := unUtilitario.getSelect('select count(1) as contador from caixa_SAIDA where id_contrato = '+DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString+' and garantido = ''SIM'' and data_pgto is null and ativo = ''SIM'' ');

            if VarSQL2.FieldByName('CONTADOR').AsInteger > 0 then
               varGarantido := 'PAGAMENTO GARANTIDO'
            else
                varGarantido := '';

            if qtde = '1' then
            Begin
           indice := unValidacao.getIndiceReajuste(DM_REL.ZQUERY1.FieldByName('REAJUSTE').AsString);

           Writeln(Arquivo,'---------');
           Writeln(Arquivo,'CONTRATO: '+DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString+' REAJUSTE: '+DM_REL.ZQUERY1.FieldByName('REAJUSTE').AsString+'  '+varGarantido);
           Writeln(Arquivo,'IMÓVEL: '+
           DM_REL.ZQUERY1.FieldByName('TIPO').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('NOME').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('NUMERO').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('COMPLEMENTO').AsString+', '+
           DM_REL.ZQUERY1.FieldByName('BAIRRO').AsString+', '+
           DM_REL.ZQUERY1.FieldByName('CIDADE').AsString+'-'+
           DM_REL.ZQUERY1.FieldByName('UF').AsString+' CEP:'+
           DM_REL.ZQUERY1.FieldByName('CEP').AsString
           );
           Writeln(Arquivo,'LOCADOR: '+getPessoa('locador',DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString));
           Writeln(Arquivo,'LOCATÁRIO: '+getPessoa('locatario',DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString));
           if DM_REL.ZQUERY1.FieldByName('REAJUSTE').AsString = 'SEM INFORMAÇÃO.' then
           Begin
                Writeln(Arquivo,'VALOR: '+getCurrToStr(DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency, True)+ '  MANUAL: R$_________________');
                Writeln(Arquivo,'COMISSÃO: '+getCurrToStr((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100, True));
           end
           else
           Begin
                Writeln(Arquivo,'VALOR: '+getCurrToStr(DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency, True)+ '  ÍNDICE: '+getCurrToStr(FloatToCurr((indice -1)*100), false)+'%  REAJUSTE: '+getCurrToStr((INDICE * DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency) - DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency, True)+'  ATUAL: '+getCurrToStr((INDICE * DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency), True)+'  MANUAL: R$_________________');
                Writeln(Arquivo,'COMISSÃO: '+getCurrToStr((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100, True)+'  ATUALIZAÇÃO: '+getCurrToStr(((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100)*indice, True));
                taxa := taxa + ((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100);
                taxaTotal := taxaTotal + (INDICE * DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency);
                indiceTotal := indiceTotal + (((DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency * DM_REL.ZQUERY1.FieldByName('TARIFA').AsCurrency)/100)*indice);
           end;

           Writeln(Arquivo,'VENCIMENTO: '+IntToStr(DayOfTheMonth(DM_REL.ZQUERY1.FieldByName('VENCIMENTO').AsDateTime)));
           Writeln(Arquivo,' ');

           total := total + DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency;

            end;

            if qtde = '2' then
            Begin
           Writeln(Arquivo,'--------------------------------------------------------------------');
           Writeln(Arquivo,'CONTRATO: '+DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString+'   TERMINO: '+DateToStr(IncMonth(DM_REL.ZQUERY1.fieldbyname('VENCIMENTO').AsDateTime, DM_REL.ZQUERY1.fieldbyname('VIGENCIA').AsInteger - 1))+'  ** '+varGarantido);
           Writeln(Arquivo,'LOCADOR: '+getPessoa('locador',DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString));
           Writeln(Arquivo,'LOCATÁRIO: '+getPessoa('locatario',DM_REL.ZQUERY1.FieldByName('ID_CONTRATO').AsString));
           Writeln(Arquivo,'IMÓVEL: '+
           DM_REL.ZQUERY1.FieldByName('TIPO').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('NOME').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('NUMERO').AsString+' '+
           DM_REL.ZQUERY1.FieldByName('COMPLEMENTO').AsString+', '+
           DM_REL.ZQUERY1.FieldByName('BAIRRO').AsString+', '+
           DM_REL.ZQUERY1.FieldByName('CIDADE').AsString+'-'+
           DM_REL.ZQUERY1.FieldByName('UF').AsString+' CEP:'+
           DM_REL.ZQUERY1.FieldByName('CEP').AsString
           );

           Writeln(Arquivo,'VALOR: '+getCurrToStr(DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency, True)+ '   ** ÍNDICE DO MÊS: _________________   VALOR COM ÍNDICE: R$_________________');
           Writeln(Arquivo,'VALOR PEDIDO: R$_________________   ** PROPOSTA: R$_________________   ** VALOR FINAL: R$_________________');

           Writeln(Arquivo,' ');

           total := total + DM_REL.ZQUERY1.FieldByName('VALOR').AsCurrency;

            end;

           DM_REL.ZQUERY1.Next;
      end;

      Writeln(Arquivo,'--------------------------------------------------------------------');
      Writeln(Arquivo,' ');
      Writeln(Arquivo,'VALOR TOTAL: '+getCurrToStr(total,true) );
      Writeln(Arquivo,'QUANTIDADE DE CONTRATOS: '+IntToStr(DM_REL.ZQUERY1.RecordCount));

      DM_REL.ZQUERY1.Close;
      CloseFile(Arquivo);
      FreeAndNil(varSQL);

      WinExec(pchar('notepad "'+nomeArquivo+'"'), SW_SHOW);
     end;



     if (strtoint(qtde) = 4) Then
     Begin

          nomeArquivo := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_Relatorio_SaudeContratos.txt';
          AssignFile(Arquivo,nomeArquivo);
          Rewrite(Arquivo);

          //Gera Relatório
          Writeln(Arquivo,'RELATÓRIO DA SAÚDE DE TODOS OS CONTRATOS DO SISTEMA. '+DateTimeToStr(Date()+Time()));
          Writeln(Arquivo,'Apenas os códigos dos contratos são listados.');
          Writeln(Arquivo,' ');
     
          //CONTRATOS ---------------

          //Contratos com valor = 0
          Writeln(Arquivo,'CONTRATOS COM VALOR "0":');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where valor <= 0 and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos com data suspeita
          Writeln(Arquivo,'CONTRATOS COM DATA SUSPEITA:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where VENCIMENTO <= ''01.01.2000'' and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos sem valor de taxa
          Writeln(Arquivo,'CONTRATOS SEM VALOR DE TAXA:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (tarifa <= 0 or tarifa is null) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos sem valor de multa
          Writeln(Arquivo,'CONTRATOS SEM VALOR DE MULTA:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (multa <= 0 or multa is null) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos sem valor de juros
          Writeln(Arquivo,'CONTRATOS SEM VALOR DE JUROS:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (multa_mora <= 0 or multa_mora is null) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos sem valor de repasse
          Writeln(Arquivo,'CONTRATOS SEM VALOR DE REPASSE:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (honorario_repasse = 0 or honorario_repasse is null or honorario_repasse > 31) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos sem valor de ativo
          Writeln(Arquivo,'CONTRATOS SEM VALOR DE ATIVO-EXCLUÍDO:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where CHAR_LENGTH(trim(ativo)) = 0');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos sem finalidade
          Writeln(Arquivo,'CONTRATOS SEM FINALIDADE:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where ativo <> ''XXX'' and CHAR_LENGTH(trim(finalidade)) = 0');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos terminando
          Writeln(Arquivo,'CONTRATOS PRÓXIMO DO TÉRMINO:');
          VarSQL := unUtilitario.getSelect('select id_contrato, dateadd(VIGENCIA-1 MONTH to VENCIMENTO) as DATA from contrato where ativo = ''SIM'' and '+'current_date between dateadd(VIGENCIA-1 MONTH to VENCIMENTO) and dateadd(VIGENCIA MONTH to VENCIMENTO) order by dateadd(VIGENCIA-1 MONTH to VENCIMENTO)');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+VarSQL.FieldByName('DATA').AsString+'), ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos reajuste
          Writeln(Arquivo,'CONTRATOS A REAJUSTAR:');
          varSQL := unUtilitario.getSelect('select ce.id_contrato, ce.*  from caixa_entrada ce where ce.id_subtipo = 3 and (ce.parcela = 12 or ce.parcela = 24 or ce.parcela = 36 or ce.parcela = 48 or ce.parcela = 60 or ce.parcela = 72 or ce.parcela = 84 or'+' ce.parcela = 96 or ce.parcela = 108 or ce.parcela = 120 or ce.parcela = 132 or ce.parcela = 144 or ce.parcela = 156) and ce.data_ref '+' between current_date AND dateadd(1 MONTH to current_date) and CE.id_contrato not in (select id_contrato from contrato where ativo = ''SIM'' and '+'current_date between dateadd(VIGENCIA-1 MONTH to VENCIMENTO) and dateadd(VIGENCIA MONTH to VENCIMENTO) order by dateadd(VIGENCIA-1 MONTH to VENCIMENTO)) order by ce.data_ref ');
          //VarSQL := unUtilitario.getSelect('select distinct(id_contrato) from caixa_entrada ce where ( parcela = 12 or parcela = 24 or parcela = 36 or'+' parcela = 48 or parcela = 60 or parcela = 72 or parcela = 84 or parcela = 96 '+'or parcela = 108 or parcela = 120 or parcela = 132 or parcela = 144 ) and ativo = ''SIM'' and data_ref between current_date - 30 and current_date + 30 and not data_ref = (select max(data_ref) from caixa_entrada where id_contrato = ce.id_contrato)');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+'(Parcela '+VarSQL.FieldByName('PARCELA').AsString+'-'+VarSQL.FieldByName('DATA_REF').AsString +'), ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');
                        
          //Contratos contrato vencido
          Writeln(Arquivo,'CONTRATOS VENCIDOS:');
          VarSQL := unUtilitario.getSelect('select id_contrato from contrato where vencimento + (vigencia*30) <= current_date and ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');


          //Contratos com a vigencia diferente da quantidade de parcelas no caixa
          Writeln(Arquivo,'CONTRATOS COM MAIS CONTAS NO CAIXA ENTRADA QUE A VIGÊNCIA DO MESMO:');
          VarSQL := unUtilitario.getSelect('select C.id_contrato from contrato C where C.vigencia < (select count(id_caixa) from caixa_entrada where data_pgto is null and ativo = ''SIM'' and id_subtipo = 3 and id_contrato = C.id_contrato) and C.ativo = ''SIM''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos residencial próximo do término de 30 meses
          Writeln(Arquivo,'CONTRATOS DE MORADIA COM MAIS DE 30 MESES:');
          VarSQL := unUtilitario.getSelect('select C.id_contrato from contrato C where C.finalidade like ''%MORADIA%'' and C.vigencia > 30 and C.ativo = ''SIM'' order by C.id_contrato');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //CCONTRATOS ATIVOS COM MENOS DE 12 MÊSES
          Writeln(Arquivo,'CONTRATOS ATIVOS COM MENOS DE 12 MESES:');
          VarSQL := unUtilitario.getSelect('select C.id_contrato from contrato C where C.vigencia < 12 and C.ativo = ''SIM'' ');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos contrato com criada e que não está em sincronia
          Writeln(Arquivo,'CONTRATOS COM CONTA DE ENTRADA DIFERENTE DE SEU VENCIMENTO REAL:');
          VarSQL := unUtilitario.getSelect('select distinct(id_contrato) from contrato c where not (vencimento + (vigencia*30)) between (select max(data_ref - 30) from caixa_entrada where c.id_contrato = id_contrato and ativo = ''SIM'' and id_subtipo = 3) and (select max(data_ref + 30) from'+' caixa_entrada where c.id_contrato = id_contrato and ativo = ''SIM'' and id_subtipo = 3) and ativo = ''SIM'' and tipo_contrato = ''LOCAÇÃO''');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Contratos com valor médio diferente das suas contas
          Writeln(Arquivo,'CONTRATOS COM VALOR DIFERENTE DA MÉDIA COBRADA NO CAIXA ENTRADA:');
          VarSQL := unUtilitario.getSelect('select c.id_contrato from contrato c where c.ativo = ''SIM'' and not c.valor between (select avg(ce.valor) from caixa_entrada ce where ce.id_subtipo = 3 and ce.ativo = ''SIM'' and ce.data_pgto is null and ce.id_contrato = c.id_contrato) - 100 and'+' (select avg(ce.valor) from caixa_entrada ce where ce.id_subtipo = 3 and ce.ativo = ''SIM'' and ce.data_pgto is null and ce.id_contrato = c.id_contrato) + 100');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Ultimos 7 contratos criados
          Writeln(Arquivo,'ÚLTIMOS 5 CONTRATOS CRIADOS:');
          VarSQL := unUtilitario.getSelect('select first 7 c.id_contrato from contrato c where c.ativo = ''SIM'' order by c.id_contrato desc');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Ultimos 7 contratos DESATIVADOS
          Writeln(Arquivo,'ÚLTIMOS 7 CONTRATOS DESATIVADOS:');
          VarSQL := unUtilitario.getSelect('select first 7 c.id_contrato from contrato c where c.ativo = ''NAO'' order by c.alteracao_data desc');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Ultimos 7 contratos DESATIVADOS
          Writeln(Arquivo,'ÚLTIMOS 5 CONTRATOS EXCLUÍDOS:');
          VarSQL := unUtilitario.getSelect('select first 7 c.id_contrato from contrato c where c.ativo = ''XXX'' order by c.alteracao_data desc');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Registros marcados
          Writeln(Arquivo,'CONTRATOS MARCADOS:');
          VarSQL := unUtilitario.getSelect('select c.id_contrato from contrato c where c.ativo = ''SIM'' and c.honorario_apos = 1 order by c.id_contrato');
          qtde := '';
          if VarSQL.RecordCount = 0 then
             Writeln(Arquivo,#9+'Ok!')
          else
          Begin
               while not VarSQL.Eof do
               Begin
                    qtde := qtde + VarSQL.FieldByName('ID_CONTRATO').AsString+', ';
                    VarSQL.Next;
               end;
               VarSQL.Close;
               Writeln(Arquivo,#9+qtde);
          end;
          Writeln(Arquivo,' ');

          //Ultimos 7 contratos DESATIVADOS
          Writeln(Arquivo,'CONTRATOS E SEUS VENCIMENTOS EM '+IntToStr(YearOf(Date()))+' Ex: codigo(data):');
          VarSQL := unUtilitario.getSelect('select * from contrato where ativo = ''SIM'' ');

          vetor[13] := 'ANTERIOR A '+IntToStr(YearOf(Date))+' = ';
          vetor[1] := 'JANEIRO = ';
          vetor[2] := 'FEVEREIRO = ';
          vetor[3] := 'MARÇO = ';
          vetor[4] := 'ABRIL = ';
          vetor[5] := 'MAIO = ';
          vetor[6] := 'JUNHO = ';
          vetor[7] := 'JULHO = ';
          vetor[8] := 'AGOSTO = ';
          vetor[9] := 'SETEMBRO = ';
          vetor[10] := 'OUTUBRO = ';
          vetor[11] := 'NOVEMBRO = ';
          vetor[12] := 'DEZEMBRO = ';
          vetor[14] := 'POSTERIOR A '+IntToStr(YearOf(Date))+' = ';


          while not VarSQL.Eof do
          Begin
               data := IncMonth(VarSQL.FieldByName('VENCIMENTO').AsDateTime, VarSQL.FieldByName('VIGENCIA').AsInteger);
               if YearOf(data) < YearOf(Date()) then begin
                  vetor[13] := vetor[13] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+DateToStr(data)+'), ';
                  VarSQL.Next;
                  Continue;
               end;

               if YearOf(data) > YearOf(Date()) then begin
                  vetor[14] := vetor[14] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+DateToStr(data)+'), ';
                  VarSQL.Next;
                  Continue;
               end;

               if MonthOf(data) = 1 then
                  vetor[1] := vetor[1] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 2 then
                  vetor[2] := vetor[2] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 3 then
                  vetor[3] := vetor[3] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 4 then
                  vetor[4] := vetor[4] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 5 then
                  vetor[5] := vetor[5] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 6 then
                  vetor[6] := vetor[6] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 7 then
                  vetor[7] := vetor[7] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 8 then
                  vetor[8] := vetor[8] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 9 then
                  vetor[9] := vetor[9] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 10 then
                  vetor[10] := vetor[10] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 11 then
                  vetor[11] := vetor[11] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               if MonthOf(data) = 12 then
                  vetor[12] := vetor[12] + VarSQL.FieldByName('ID_CONTRATO').AsString+'('+IntToStr(DayOf(data))+'), ';

               VarSQL.Next;
          end;

          Writeln(Arquivo,vetor[13]);
          Writeln(Arquivo,vetor[1]);
          Writeln(Arquivo,vetor[2]);
          Writeln(Arquivo,vetor[3]);
          Writeln(Arquivo,vetor[4]);
          Writeln(Arquivo,vetor[5]);
          Writeln(Arquivo,vetor[6]);
          Writeln(Arquivo,vetor[7]);
          Writeln(Arquivo,vetor[8]);
          Writeln(Arquivo,vetor[9]);
          Writeln(Arquivo,vetor[10]);
          Writeln(Arquivo,vetor[11]);
          Writeln(Arquivo,vetor[12]);
          Writeln(Arquivo,vetor[14]);

          VarSQL.Close;
          Writeln(Arquivo,' ');

          CloseFile(Arquivo);
          FreeAndNil(varSQL);

          WinExec(pchar('notepad "'+nomeArquivo+'"'), SW_SHOW);

     end;

     if (strtoint(qtde) = 5) Then
     Begin

          if (NOT DS.DataSet.Active) Then
             Exit;

          DM_RELATORIOS.SQL1.Close;
          DM_RELATORIOS.SQL1.SQL.Clear;

          if SelecaoRegistro.Count > 0 then
          Begin

               DM_RELATORIOS.SQL1.SQL.text := 'select p.*, i.*, l.*, c.nome as cidade, b.nome as bairro, pc.* from pessoa_contrato pc '+
               'LEFT join pessoa p on pc.id_pessoa = p.id_pessoa '+
               'LEFT join imovel i on pc.id_imovel = i.id_imovel '+
               'LEFT join logradouro l on i.id_logradouro = l.id_logradouro '+
               'LEFT join cidade c on c.id_cidade = l.id_cidade '+
               'LEFT join bairro b on b.id_bairro = l.id_bairro '+
               'where '+
               '(pc.tipo LIKE ''LOCAT_RIO'' or pc.tipo = ''COMPRADOR'' or pc.tipo = ''MORADOR'' or pc.tipo = ''INQUILINO'') and '+
               ' pc.id_contrato in ('+alinhaStringlist(SelecaoRegistro)+') order by p.nome';
          end
          else
          Begin
               unUtilitario.setMensagem('Primeiramente selecione os contratos antes de seguir na ação. Clique com o botão direito do mouse e adicione à sua lista.','erro');
               exit;
          end;

          DM_RELATORIOS.DS1.DataSet := DM_RELATORIOS.SQL1;

          DM_RELATORIOS.Rave.SetParam('varPeriodo',InputBox('Anotação: ','Escreva uma anotação para ser colocada no relatório.',''));

          DM_RELATORIOS.Rave.Close;
          DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_INQUILINO_IMOVEL.rav';
          principal.setRelatorio(DM_RELATORIOS.Rave);
          DM_RELATORIOS.Rave.Open;
          DM_RELATORIOS.Rave.Execute;
     end;


     if (strtoint(qtde) = 6) Then
     Begin
          //ETIQUETA 30 ARQUIVAR aqui
          //http://www.celuladigital.com.br/site/erros/?param1=MTA2Mg==

          if SelecaoRegistro.Count = 0 Then
          Begin
               ShowMessage('NENHUM REGISTRO SELECIONADO'+#13+'Faça a seleção dos registros com a tecla ALT no resultado da consulta.');
               Exit;
          end;

          qtde := Trim(InputBox('Quantidade de etiquetas à pular.','Quantas etiquetas em branco que o sistema deve pular?','0'));

          if not unUtilitario.verificaStringInt(qtde) then
          begin
               unUtilitario.setMensagem('Entre somente com o número de etiquetas que devem ser puladas!','erro');
               exit;
          end;

          sqlEtiqueta := TZQuery.Create(Self);
          sqlEtiqueta.Connection := PRINCIPAL.Conexao;

          DM_REL.ZQUERY1.SQL.Clear;
          DM_REL.ZQUERY1.SQL.Add('select cep, nome, rua, bairro, cidade from ( '+
          ' select first '+qtde+' '' '' as cep, '' '' as nome, '' '' as rua, '' '' as bairro, '' '' as cidade from pessoa p '+
          ' UNION ALL '+
          ' select con.id_contrato as cep, '+
          ' l.nome ||'' ''|| i.numero ||'' ''|| COALESCE(i.complemento,'''') ||'', ''|| b.nome as nome, '+
          ' ''LOCADOR: '' || (select first 1 p.nome from pessoa_imovel pi LEFT join pessoa p on p.id_pessoa = pi.id_pessoa where pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' order by pi.porcentagem desc) as rua, '+
          ' ''LOCATÁRIO: '' || (select first 1 pe.nome from pessoa_contrato pc LEFT join pessoa pe on pe.id_pessoa = pc.id_pessoa where pc.id_contrato '+' = con.id_contrato and (pc.tipo like ''LOCAT_RIO'' or pc.tipo = ''INQUILINO'' or pc.tipo = ''COMPRADOR'' )) as bairro, '+
          ' ''RESCISÃO: '' || con.RES_MOTIVO || ''  LOTE:'' as cidade '+
          ' from contrato con '+
          ' LEFT join imovel i on i.id_imovel = con.id_imovel '+
          ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
          ' LEFT join bairro b on b.id_bairro = l.id_bairro '+
          ' where con.id_contrato in ('+alinhaStringlist(SelecaoRegistro)+') '+
          ' ) order by cep ');

          DM_REL.ZQUERY1.Open;
          DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

          DM_REL.RV_IMPRESSAO.CLOSE;
          DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_ETIQUETA_POLIFIX_25X66_ARQUIVAMENTO.rav';
          principal.setLogo(dm_rel.RV_IMPRESSAO);
          DM_REL.RV_IMPRESSAO.Open;

          DM_REL.RV_IMPRESSAO.Execute;

          sqlEtiqueta.Close;
          FreeAndNil(sqlEtiqueta);
          DM_REL.ZQUERY1.Close;
     end;



end;

procedure TCAD_Aluguel.Btn_ExcluirClick(Sender: TObject);
begin
     If MessageDlg('Deseja excluir este registro?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DS.DataSet.Active Then
           Begin

                try
                   DS.Edit;
                   DS.DataSet.FieldByName('ATIVO').AsString := 'XXX';
                   DS.DataSet.Post;

                   setLog(DS.DataSet.Fields[0].AsString, 'EXCLUSÃO', Self.Caption, (DS.DataSet as TZQuery));

                   //Retira contas do financeiro
                   retiraContasContratoConfirma();

                   Tab_Pesquisa.Show;
                   Pesquisar();

                   unMsg.INFORMA(2);
                   Btn_Novo.Enabled := True;
                Except
                      unMsg.ERRO(12);
                End;

                DS.DataSet.Edit;
           End
           Else
               unMsg.ERRO(13);
     End;
end;

procedure TCAD_Aluguel.retiraContasContratoConfirma();
begin
     //Retira contas do financeiro
     if unUtilitario.setMensagem('Deseja excluir também as contas geradas e vinculadas a este contrato do seu financeiro?','confirma') = IDYES Then
     Begin
          try
             retirarContasContrato(StrToDate(InputBox('Entre com a data DD/MM/AAAA','O sistema irá apagar as contas igual ou posteriores a data informada:',DateToStr(Date()))),DS.DataSet.FieldByName('ID_CONTRATO').AsInteger);
          except
                unUtilitario.setMensagem('Informe corretamente a data para que o sistema possa fazer a operação. (DD/MM/AAAA)','erro');
          end;
     end;

end;

procedure TCAD_Aluguel.voltarStatusImovel();
Var varSQL: TZQuery;
    opcao: String;
begin
     //Retira contas do financeiro
     if unUtilitario.setMensagem('Deseja alterar o status atual do Imóvel para ser disponível?','confirma') = IDYES Then
     Begin

             varSQL := unUtilitario.getSelect('select distinct(status) from imovel where ativo = ''SIM'' order by status ');

             while not varSQL.Eof do
             Begin
                  opcao := opcao + #13+varSQL.FieldByName('STATUS').AsString;
                  varSQL.Next;
             end;


             opcao := InputBox('Alterar Status do Imóvel','Escolha um status já usado ou entre com um novo status para o imóvel do contrato:'+#13+opcao,'');

             if Length(Trim(opcao)) = 0 then
             Begin
               setMensagem('Entre com algum status! A operação não foi concluída! Altere manualmente o status do Imóvel.','erro');
               Exit;
             end;

             if unUtilitario.setMensagem('Deseja alterar o Status do imóvel para '+UpperCase(opcao)+'?','confirma') = IDYES then
             Begin
                  varSQL := unUtilitario.getSQL('update imovel set status = upper('''+opcao+''') where id_imovel = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString)
             end
             else
                 unUtilitario.setMensagem('O status NÃO foi alterado. Altere manualmente se for o caso.','informa');

     end;

end;

procedure TCAD_Aluguel.retirarContasContrato(datainicial: TDateTime; id_contrato: integer);
var varSQL: TZQuery;
begin
     if unUtilitario.setMensagem('Deseja excluir todas as contas do contrato '+IntToStr(id_contrato)+' com vencimento igual ou posterior à '+DateToStr(datainicial),'confirma') = IDYES then
     Begin
          varSQl := unUtilitario.getSQL('update caixa_ENTRADA set ativo = ''XXX'', data_alt = current_timestamp where data_pgto is null and id_contrato = '+IntToStr(id_contrato)+' and data_ref >= '''+formataDataSQL(DateToStr(datainicial))+'''');
          varSQl := unUtilitario.getSQL('update caixa_SAIDA set ativo = ''XXX'', data_alt = current_timestamp where data_pgto is null and id_contrato = '+IntToStr(id_contrato)+' and data_ref >= '''+formataDataSQL(DateToStr(datainicial))+'''');
          unUtilitario.setMensagem('O comando foi executado com sucesso (verifique as contas que não possuem vínculo com este contrato também!). Se caso errou em confirmar esta operação, ligue para a '+celulaNome+' que retornaremos as contas para você.','informa');
          FreeAndNil(varSQL);
     end;
end;

procedure TCAD_Aluguel.Btn_RetornoClick(Sender: TObject);
begin
Fechar := 1;
Close;
end;

procedure TCAD_Aluguel.CaixaBotaoClick(Sender: TObject);
Var i,j, CodigoEntrada, CodigoInquilino: Integer;
    codigoProp: TStringList;
    texto, Garantido, operacao, descontoContas, deposito: String;
    varSQL, SQLconsulta: TZQuery;
    DIA, DIAProp: integer;
    DataInicialInquilino, DataInicialProprietario: TDateTime;
begin
     if PRINCIPAL.bloqueado then
     Begin
         PRINCIPAL.mostraAvisoBloqueio();
         exit;
     end;
     
if not verificaPermissao('ADMINISTRAR >> CONTRATOS = CRIAR CONTAS') then
   Exit;

If Length(Trim(ComboEscolhaMes.Text)) = 0 Then
Begin
  unUtilitario.setMensagem('Favor, revise todas as informações dos valores, e complete o quadro vermelho da aba Condições de Contrato.','erro');
  exit;
end;

if (Trim(UpperCase(Combo_Contrato.Text)) = 'VENDA') or
(Trim(UpperCase(Combo_Contrato.Text)) = 'SEM INFORMAÇÃO') then
Begin
     unUtilitario.setMensagem('Este contrato não pode ser gerado por este meio (Somente para Locações).'+#13+'Favor usar a opção inferior Geração Dinâmica.','erro');
     exit;
end;

     if NOT DM_ADMIN.Z_ALUGUEL.Active Then
        Exit;

     IF unUtilitario.setMensagem('Deseja criar o financeiro agora?'+#13+'Verifique TODOS os dados do contrato!', 'confirma') = IDNO Then
        Exit;

     if DBComboBox1.Text = 'SEM INFORMAÇÃO.' then
     Begin
          setMensagem('Volte e verifique a opção MODO DE REPASSE.','erro');
          Exit;
     end;

     IF (DM_ADMIN.Z_ALUGUELVALOR.AsFloat = 0) or (Length(Trim(Edit_Valor.Text)) = 0) Then
     Begin
          unUtilitario.setMensagem('Entre com um valor no contrato!','erro');
          Exit;
     End;

     //BUSCA OS NOMES USADOS NO GRUPO E SUBGRUPO PADRÃO: ALUGUEL / MENSALIDADE:
     SQLconsulta := unUtilitario.getSelect('select nome ||'' / ''|| (select nome from caixa_sis where id_caixa_sis = 3) ||'': '' from caixa_sis where id_caixa_sis = 2');

     //GERENCIAR DATAS
     codigoProp := TStringList.Create;
     DataInicialInquilino := DM_ADMIN.Z_ALUGUELVENCIMENTO.AsDateTime;
     DIA := DayOf(DataInicialInquilino); //PARAR O PROBLEMA DO DIA 28/02

     if CaixaRenovacao.Font.Color = clRed Then
        if unUtilitario.setMensagem('Deseja RENOVAR o CONTRATO com as novas informações agora?','confirma') = IDNO Then
           Exit;

     if CheckBoleto.Checked then
        operacao := 'CRIADO AUTOMATICAMENTE PELO FINANCEIRO DO CONTRATO. [BOLETO]'
     else
         operacao := 'CRIADO AUTOMATICAMENTE PELO FINANCEIRO DO CONTRATO.';


     if DBComboBox1.Text <> 'IMÓVEL PRÓPRIO, NÃO REPASSAR.' Then
     Begin
         if ComboEscolhaMes.ItemIndex = 0 Then //Mesmo Mês
            DataInicialProprietario := RecodeDay(DataInicialInquilino, DM_ADMIN.Z_ALUGUELHONORARIO_REPASSE.AsInteger)
         else
         if ComboEscolhaMes.ItemIndex = 1 Then //Próximo Mês
            DataInicialProprietario := RecodeDay(IncMonth(DataInicialInquilino), DM_ADMIN.Z_ALUGUELHONORARIO_REPASSE.AsInteger)
         else
         Begin
              unUtilitario.setMensagem('Escolha o mes de pagamento do proprietário!'+#13+'Aproveite para REVISAR TODAS as informações do contrato.','erro');
              Exit;
         End;

         DIAProp := DayOf(DataInicialProprietario); //PARAR O PROBLEMA DO DIA 28/02
     end;

     varSQL := unUtilitario.getSelect('SELECT first 1 ID_PESSOA FROM pessoa_contrato WHERE (TIPO LIKE ''LOCAT_RIO'' OR TIPO = ''INQUILINO'' OR TIPO = ''COMPRADOR'' ) AND ID_CONTRATO = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);

     if varSQL.Fields[0].IsNull Then
     Begin
          unUtilitario.setMensagem('Cadastre um INQUILINO / LOCATÁRIO primeiro!','erro');
          exit;
     End;

     CodigoInquilino := varSQL.Fields[0].AsInteger;

     texto := InputBox('Aluguel Garantido?','1 - SIM'+#13+'2 - NÃO'+#13+#13+'Escolha um código:','2');

     try
        if (StrToInt(texto) > 2) OR (StrToInt(texto) <= 0) Then
        Begin
             unUtilitario.setMensagem('Escolha entre 1 ou 2...','erro');
             exit;
        End;

        if StrToInt(texto) = 1 Then
           Garantido := 'SIM'
        else
           Garantido := 'NAO';
     except
           unUtilitario.setMensagem('Entre somente com números!','erro');
           exit;
     end;

     try
        if (DBComboBox1.Text <> 'IMÓVEL PRÓPRIO, NÃO REPASSAR.') AND (StrToFloat(StringReplace(formataDinheiroSQL(Edit_ValorRepasse.Text),'.',',',[rfReplaceAll])) <= 0) Then
        Begin
             unUtilitario.setMensagem('Entre com os valores do contrato!','erro');
             Exit;
        End;
     except
           unUtilitario.setMensagem('Entre com os valores do contrato!','erro');
           Exit;
     end;

     varSQL := unUtilitario.getSelect('SELECT PI.ID_PESSOA, PI.PORCENTAGEM, P.NOME FROM PESSOA_IMOVEL PI LEFT JOIN PESSOA P ON P.id_pessoa = PI.id_pessoa WHERE (PI.status LIKE ''PROPRIET_RIO'' or PI.STATUS = ''LOCADOR'' ) AND PI.ID_IMOVEL = '+DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString);

     texto := varSQL.Fields[0].AsString;

     if varSQL.RecordCount > 1 THEN
     Begin
          WHILE NOT varSQL.Eof DO
          Begin
               texto := texto + varSQL.FieldByName('ID_PESSOA').AsString +' - '+ varSQL.FieldByName('NOME').AsString + ' ('+varSQL.FieldByName('PORCENTAGEM').AsString+'%)' +#13;
               codigoProp.Add(varSQL.FieldByName('ID_PESSOA').AsString);
               varSQL.Next;
          End;

          if unUtilitario.setMensagem('Foi detectado que este imóvel possui mais de um proprietário.'+#13+'Deseja criar as contas somente no nome de UMA PESSOA?','confirma') = IDYES Then
          Begin
          
               texto := InputBox('Escolha o Proprietário:',texto+' => INFORME SOMENTE O CÓDIGO:','');

               try
                  texto := inttostr(StrToInt(texto));

                  if codigoProp.IndexOf(texto) < 0 Then
                  Begin
                       unUtilitario.setMensagem('Proprietário não econtrado!','erro');
                       exit;
                  End;
               except
                     unUtilitario.setMensagem('Entre somente com o código informado na lista de escolhas.','erro');
                     exit;
               end;

               setContador();

               for i := 0 to DM_ADMIN.Z_ALUGUELVIGENCIA.AsInteger -1  do
               Begin
                    varSQL := unUtilitario.getSelect('SELECT ID FROM sp_gen_CAIXA_ENTRADA_id');

                    CodigoEntrada := varSQL.Fields[0].AsInteger;

                    if (StrToInt(CaixaDescontoParcelaInicial.Text) <= (i+contador)) and (StrToInt(CaixaDescontoParcelaFinal.Text) >= (i+contador)) then
                         descontoContas := StringReplace(CaixaDescontoValor.Text, '.', ',', [rfReplaceAll])
                    else
                         descontoContas := '0,00';

                    DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency := StrToCurr(descontoContas);

                    cadastraConta('ENTRADA', IntToStr(CodigoEntrada), '1', '3', '2', IntToStr(CodigoInquilino), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', DateTimeToStr(DataInicialInquilino), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao, DM_ADMIN.Z_ALUGUELVALOR.AsString, DM_ADMIN.Z_ALUGUELMULTA_MORA.AsString, DM_ADMIN.Z_ALUGUELMULTA.AsString, DM_ADMIN.Z_ALUGUELDESCONTO.AsString, IntToStr(i+contador), 'NAO', 'SIM', Garantido);

                    if StrToFloat(descontoContas)> 0 then
                    Begin
                       descontoContas := FloatToStr(((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency) * DM_ADMIN.Z_ALUGUELTARIFA.AsCurrency)/100);
                       descontoContas := FloatToStr(StrToFloat(StringReplace(Edit_ValorRepasse.Text, '.', '', [rfReplaceAll])) - ((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency) - StrToCurr(descontoContas)));
                    end;

                    deposito := '';
                    if CheckDeposito.Checked then
                       deposito := ' [DEPOSITO]';

                    cadastraConta('SAIDA', '', '1', '3', '2', texto, DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), IntToStr(CodigoEntrada), '0', DateTimeToStr(DataInicialProprietario), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao + deposito, Edit_ValorRepasse.Text, '0', '0', descontoContas , IntToStr(i+contador), 'NAO', 'SIM', Garantido);

                    if (DIA > 28) and (MonthOf(IncMonth(DataInicialInquilino)) = 2) then
                       DataInicialInquilino := EncodeDateTime(YearOf(DataInicialInquilino), 2,28, 0, 0, 0, 0)
                    else
                        DataInicialInquilino := RecodeDay(IncMonth(DataInicialInquilino), DIA);

                    if (DIAProp > 28) and (MonthOf(IncMonth(DataInicialProprietario)) = 2) then
                       DataInicialProprietario := EncodeDateTime(YearOf(DataInicialProprietario), 2,28, 0, 0, 0, 0)
                    else
                        DataInicialProprietario := RecodeDay(IncMonth(DataInicialProprietario), DIAProp);

               End;
          End
          Else
          Begin
               IF unUtilitario.setMensagem('Proprietários encontrados:'+#13+texto+#13+'Deseja continuar a gerar as parcelas?','confirma') = IDYES Then
               Begin

                    setContador();
                    
                    for i := 0 to DM_ADMIN.Z_ALUGUELVIGENCIA.AsInteger - 1 do
                    Begin
                         varSQL := unUtilitario.getSelect('SELECT ID FROM sp_gen_CAIXA_ENTRADA_id');
                         CodigoEntrada := varSQL.Fields[0].AsInteger;

                         if (StrToInt(CaixaDescontoParcelaInicial.Text) <= (i+contador)) and (StrToInt(CaixaDescontoParcelaFinal.Text) >= (i+contador)) then
                            descontoContas := StringReplace(CaixaDescontoValor.Text, '.', ',', [rfReplaceAll])
                         else
                             descontoContas := '0,00';

                         DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency := StrToCurr(descontoContas);

                         cadastraConta('ENTRADA', IntToStr(CodigoEntrada), '1', '3', '2', IntToStr(CodigoInquilino), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', DateTimeToStr(DataInicialInquilino), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao, DM_ADMIN.Z_ALUGUELVALOR.AsString, DM_ADMIN.Z_ALUGUELMULTA_MORA.AsString, DM_ADMIN.Z_ALUGUELMULTA.AsString, DM_ADMIN.Z_ALUGUELDESCONTO.AsString, IntToStr(i+contador), 'NAO', 'SIM', Garantido);

                         for J:=0 to codigoProp.Count - 1 Do
                         Begin
                              varSQL := unUtilitario.getSelect('SELECT PORCENTAGEM FROM PESSOA_IMOVEL WHERE STATUS = ''PROPRIETARIO'' AND ID_PESSOA = '+codigoProp[J]+' AND ID_IMOVEL = '+DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString);
                              if (NOT varSQL.Fields[0].IsNull) or (varSQL.Fields[0].AsFloat > 0) Then
                              Begin
                                 //VERIFICAR AQUI, POIS ESTÁ DIVIDINDO IGUALMENTE O VALOR DO DESCONTO!!!!
                                 if StrToFloat(descontoContas)> 0 then
                                 Begin
                                    descontoContas := FloatToStr((((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency) * DM_ADMIN.Z_ALUGUELTARIFA.AsCurrency)/100)/codigoProp.Count);
                                    descontoContas := FloatToStr(StrToFloat(StringReplace(Edit_ValorRepasse.Text, '.', '', [rfReplaceAll])) - ((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency) - StrToCurr(descontoContas)));
                                 end;

                                 deposito := '';
                                 if CheckDeposito.Checked then
                                    deposito := ' [DEPOSITO]';
                                 cadastraConta('SAIDA', '', '1', '3', '2', codigoProp[j], DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), IntToStr(CodigoEntrada), '0', DateTimeToStr(DataInicialProprietario), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao+deposito, CurrToStr(getPorcToDinh(varSQL.Fields[0].AsString,Edit_ValorRepasse.Text)), '0', '0', descontoContas, IntToStr(i+contador), 'NAO', 'SIM', Garantido);
                              end
                              else
                              begin
                                  unUtilitario.setMensagem('Cheque o proprietário de CÓDIGO '+codigoProp.Strings[J]+', pois o sistema identificou um erro quanto à % desse proprietário.'+#13+'A geração será terminada. Verifique as contas geradas até agora para verificar se houve erros, e exclua as duplicadas.','erro');
                                  exit;
                              end;

                         End;

                         if (DIA > 28) and (MonthOf(IncMonth(DataInicialInquilino)) = 2) then
                            DataInicialInquilino := EncodeDateTime(YearOf(DataInicialInquilino), 2,28, 0, 0, 0, 0)
                         else
                             DataInicialInquilino := RecodeDay(IncMonth(DataInicialInquilino), DIA);

                         if (DIAProp > 28) and (MonthOf(IncMonth(DataInicialProprietario)) = 2) then
                            DataInicialProprietario := EncodeDateTime(YearOf(DataInicialProprietario), 2,28, 0, 0, 0, 0)
                         else
                             DataInicialProprietario := RecodeDay(IncMonth(DataInicialProprietario), DIAProp);
                    End;
               End
               ELSE
                   exit;
          End;
     End
     ELSE
     Begin
          setContador();
          
          if DBComboBox1.Text = 'IMÓVEL PRÓPRIO, NÃO REPASSAR.' Then
          Begin//NÃO PASSA PARA O PROPRIETÁRIO, IMÓVEL PRÓPRIO


              for i := 0 to DM_ADMIN.Z_ALUGUELVIGENCIA.AsInteger - 1 do
              Begin
                   varSQL := unUtilitario.getSelect('SELECT ID FROM sp_gen_CAIXA_ENTRADA_id');

                   CodigoEntrada := varSQL.Fields[0].AsInteger;

                   if (StrToInt(CaixaDescontoParcelaInicial.Text) <= (i+contador)) and (StrToInt(CaixaDescontoParcelaFinal.Text) >= (i+contador)) then
                      descontoContas := StringReplace(CaixaDescontoValor.Text, '.', ',', [rfReplaceAll])
                   else
                       descontoContas := '0,00';

                   DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency := StrToCurr(descontoContas);

                   cadastraConta('ENTRADA', IntToStr(CodigoEntrada), '1', '3', '2', IntToStr(CodigoInquilino), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', DateTimeToStr(DataInicialInquilino), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao, DM_ADMIN.Z_ALUGUELVALOR.AsString, DM_ADMIN.Z_ALUGUELMULTA_MORA.AsString, DM_ADMIN.Z_ALUGUELMULTA.AsString, DM_ADMIN.Z_ALUGUELDESCONTO.AsString, IntToStr(i+contador), 'NAO', 'SIM', Garantido);

                   if (DIA > 28) and (MonthOf(IncMonth(DataInicialInquilino)) = 2) then
                      DataInicialInquilino := EncodeDateTime(YearOf(DataInicialInquilino), 2,28, 0, 0, 0, 0)
                   else
                       DataInicialInquilino := RecodeDay(IncMonth(DataInicialInquilino), DIA);
                       
              End;
          end
          else
          Begin//FAZ A COBRANÇA E REPASSA PARA O PROPRIETÁRIO

                for i := 0 to DM_ADMIN.Z_ALUGUELVIGENCIA.AsInteger - 1 do
                Begin
                     varSQL := unUtilitario.getSelect('SELECT ID FROM sp_gen_CAIXA_ENTRADA_id');

                     CodigoEntrada := varSQL.Fields[0].AsInteger;

                     if (StrToInt(CaixaDescontoParcelaInicial.Text) <= (i+contador)) and (StrToInt(CaixaDescontoParcelaFinal.Text) >= (i+contador)) then
                        descontoContas := StringReplace(CaixaDescontoValor.Text, '.', ',', [rfReplaceAll])
                     else
                         descontoContas := '0,00';

                     DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency := StrToCurr(descontoContas);

                     cadastraConta('ENTRADA', IntToStr(CodigoEntrada), '1', '3', '2', IntToStr(CodigoInquilino), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', DateTimeToStr(DataInicialInquilino), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao, DM_ADMIN.Z_ALUGUELVALOR.AsString, DM_ADMIN.Z_ALUGUELMULTA_MORA.AsString, DM_ADMIN.Z_ALUGUELMULTA.AsString, DM_ADMIN.Z_ALUGUELDESCONTO.AsString, IntToStr(i+contador), 'NAO', 'SIM', Garantido);

                     if StrToFloat(descontoContas)> 0 then
                     Begin
                        descontoContas := FloatToStr(((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency) * DM_ADMIN.Z_ALUGUELTARIFA.AsCurrency)/100);
                        descontoContas := FloatToStr(StrToFloat(StringReplace(Edit_ValorRepasse.Text, '.', '', [rfReplaceAll])) - ((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - DM_ADMIN.Z_ALUGUELDESCONTO.AsCurrency) - StrToCurr(descontoContas)));
                     end;

                     deposito := '';
                     if CheckDeposito.Checked then
                       deposito := ' [DEPOSITO]';
                     cadastraConta('SAIDA', '', '1', '3', '2', texto, DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), IntToStr(CodigoEntrada), '0', DateTimeToStr(DataInicialProprietario), DateTimeToStr(Now()), DateTimeToStr(Now()), SQLconsulta.Fields[0].AsString+CaixaObs.Text , operacao+deposito, Edit_ValorRepasse.Text, '0', '0', descontoContas, IntToStr(i+contador), 'NAO', 'SIM', Garantido);

                     if (DIA > 28) and (MonthOf(IncMonth(DataInicialInquilino)) = 2) then
                        DataInicialInquilino := EncodeDateTime(YearOf(DataInicialInquilino), 2,28, 0, 0, 0, 0)
                     else
                         DataInicialInquilino := RecodeDay(IncMonth(DataInicialInquilino), DIA);

                     if (DIAProp > 28) and (MonthOf(IncMonth(DataInicialProprietario)) = 2) then
                        DataInicialProprietario := EncodeDateTime(YearOf(DataInicialProprietario), 2,28, 0, 0, 0, 0)
                     else
                         begin
                              DataInicialProprietario := RecodeDay(IncMonth(DataInicialProprietario), DIAProp);
                         end;
                End;
          end;
     End;

     SQLconsulta.Close;
     FreeAndNil(SQLconsulta);

     garantido := '';

     //LOG DAS AÇÕES
     if CaixaRenovacao.Font.Color = clRed then
     Begin
          setLog(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'RENOVAÇÃO', Self.Caption+': REAJUSTE DE VALOR DO CONTRATO', DM_ADMIN.Z_ALUGUEL);
     End
     else
     Begin
          setLog(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'INSERÇÃO', Self.Caption, DM_ADMIN.Z_ALUGUEL);
     End;

     if StrToCurr(CaixaDescontoValor.Text) > 0 then
        DM_ADMIN.Z_ALUGUELOBS.AsString := '- O(A) USUÁRIO(A) '+getUser('USUARIO')+ ' DEU DESCONTO DE R$'+CaixaDescontoValor.Text+' NAS PARCELAS '+CaixaDescontoParcelaInicial.Text+' ATÉ '+CaixaDescontoParcelaFinal.Text+' NA DATA DE '+DateTimeToStr(Date+Time)+'.'+#13+DM_ADMIN.Z_ALUGUELOBS.AsString;

     if CheckDeposito.Checked then
        DM_ADMIN.Z_ALUGUELOBS.AsString := '- DEPOSITO MARCADO PARA ESTE CONTRATO NA DATA DE '+DateTimeToStr(Date+Time)+'.'+#13+DM_ADMIN.Z_ALUGUELOBS.AsString;

     Btn_GravarClick(Sender);  //SALVAR REGISTRO.

     PRINCIPAL.setMensagem('Contas criadas com sucesso!');

     CaixaBotao.Enabled := FALSE;
     IPTUBotao.Enabled := TRUE;
     ContasBotao.Enabled := TRUE;

     CaixaRenovacao.Font.Color := clBlack;
     CaixaRenovacao.Font.Style := [];
     
     setComponentesFinanceiros();

     if varSQL <> nil Then
        FreeAndNil(varSQL);

     if codigoProp <> nil Then
        FreeAndNil(codigoProp);

     TabSheet1Show(Sender); //Atualiza as informações na tela.
end;

procedure TCAD_Aluguel.CaixaDescontoParcelaFinalExit(Sender: TObject);
begin
     IF Length(trim(CaixaDescontoParcelaFinal.Text)) = 0 Then
        CaixaDescontoParcelaFinal.Text := '0'
     else
         if StrToInt(CaixaDescontoParcelaInicial.Text) > StrToInt(CaixaDescontoParcelaFinal.Text) then
         Begin
              unUtilitario.setMensagem('O valor final é maior do que o valor INICIAL!','erro');
              CaixaDescontoParcelaFinal.Text := '0';
         end;
end;

procedure TCAD_Aluguel.CaixaDescontoParcelaInicialExit(Sender: TObject);
begin
     IF Length(trim(CaixaDescontoParcelaInicial.Text)) = 0 Then
        CaixaDescontoParcelaInicial.Text := '0,00';
end;

procedure TCAD_Aluguel.CaixaDescontoValorExit(Sender: TObject);
begin
     IF Length(trim(CaixaDescontoValor.Text)) = 0 Then
        CaixaDescontoValor.Text := '0,00';

     CaixaDescontoValor.Text := StringReplace(CaixaDescontoValor.Text, '.', ',', [rfReplaceAll]) 
end;

procedure TCAD_Aluguel.setContador();
vAR varSQLNovo: TZQuery;
begin

TRY
    if UpperCase(Trim(getConf('CONTRATO_DIAS_CALCULO'))) <> 'CONTINUAR' then
       contador := 1
    else
    begin
         if NOT DM_ADMIN.Z_ALUGUELID_CONTRATO.IsNull then
         Begin
              //PODE SER DO CAIXA ENTRADA, POIS ELE VAI PEGAR SOMENTE O N DE CONTAS PARA SER INFORMATIVO
            varSQLNovo := unUtilitario.getSelect('select max(parcela) from caixa_ENTRADA where id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString+' and id_subtipo = 3 and ativo = ''SIM''');

            if varSQLNovo.Fields[0].IsNull Then
               contador := 1
            else
                contador := varSQLNovo.Fields[0].AsInteger + 1;

             FreeAndNil(varSQLNovo);
         End
         else
             contador := 1;
    end;
EXCEPT
      unUtilitario.setMensagem('Erro ao buscar o contador exato das parcelas.'+#13+'Caso a empresa continue a usar o contador das parcelas iniciando em 1 novamente, não tem problemas.','erro');
      contador := 1;
END;

end;

procedure TCAD_Aluguel.setContadorAvulso(SubCategoria, Id_Contrato: Integer; Continuar: Boolean);
vAR varSQLNovo: TZQuery;
begin

TRY
    if NOT Continuar then
       contador := 1
    else
    begin
         //PODE SER DO CAIXA ENTRADA, POIS ELE VAI PEGAR SOMENTE O N DE CONTAS PARA SER INFORMATIVO
         varSQLNovo := unUtilitario.getSelect('select max(parcela) from caixa_ENTRADA where id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString+' and id_subtipo = 3 and ativo = ''SIM''');

         if varSQLNovo.Fields[0].IsNull Then
            contador := 1
         else
             contador := varSQLNovo.Fields[0].AsInteger + 1;

         FreeAndNil(varSQLNovo);
    end;
EXCEPT
      unUtilitario.setMensagem('Erro ao buscar o contador exato das parcelas.'+#13+'Caso a empresa continue a usar o contador das parcelas iniciando em 1 novamente, não tem problemas.','erro');
      contador := 1;
END;

end;

procedure TCAD_Aluguel.CaixaRenovacaoClick(Sender: TObject);
begin

     if not verificaPermissao('ADMINISTRAR >> CONTRATOS = RENOVAR') then
        Exit;

     if (Trim(UpperCase(Combo_Contrato.Text)) = 'VENDA') or
     (Trim(UpperCase(Combo_Contrato.Text)) = 'SEM INFORMAÇÃO') then
     Begin
          unUtilitario.setMensagem('Este contrato não pode ser gerado por este meio (Somente para Locações).'+#13+'Favor usar a opção inferior Geração Dinâmica.','erro');
          exit;
     end;

     if CaixaRenovacao.Font.Color = clRed then
     Begin
          CaixaRenovacao.Font.Color := clBlack;
          CaixaRenovacao.Font.Style := [];
          TabSheet1Show(Sender);
     End
     Else
     Begin
          if unUtilitario.setMensagem('Deseja RENOVAR o CONTRATO?'+#13+'Vá na aba CONDIÇÕES DO CONTRATO e depois volte a esta aba para concluir o processo.','confirma') = IDNO Then
             Exit;
             
          CaixaRenovacao.Font.Color := clRed;
          CaixaRenovacao.Font.Style := [fsBold];
          CaixaBotao.Enabled := True;
          ContasBotao.Enabled := False;

          Tab_Condicoes.Show;

          DM_ADMIN.Z_ALUGUELVENCIMENTO.AsDateTime := IncMonth(StrToDate(Data_Termino.Caption), 1);

          DBEdit4Exit(Sender);
     End;
end;

{ SE ESTIVER FAZENDO FALTA, PODE TIRAR ESSE CÓDIGO
procedure TCAD_Aluguel.camposentrada(tipo: String);
begin
  if tipo = 'DESATIVAR' then
    begin
      entvalnew.readonly := true;
      EntValParcela.ReadOnly := true;
      EntPagNew.readonly := true;
      EntPagParcela.readonly := true;

      entvalnew.color := clScrollBar;
      EntValParcela.color := clScrollBar;
      EntPagNew.color := clScrollBar;
      EntPagParcela.color := clScrollBar;

      btnAlterarValorEntrada.Enabled := false;
      btnAlterarDiaEntrada.Enabled := false;
    end
  else if tipo = 'ATIVAR' then
    begin
      entvalnew.readonly := false;
      EntValParcela.ReadOnly := false;
      EntPagNew.readonly := false;
      EntPagParcela.readonly := false;

      entvalnew.color := clWindow;
      EntValParcela.color := clWindow;
      EntPagNew.color := clWindow;
      EntPagParcela.color := clWindow;

      btnAlterarValorEntrada.Enabled := true;
      btnAlterarDiaEntrada.Enabled := true;
    end;
end;

procedure TCAD_Aluguel.campossaida(tipo: String);
begin
  if tipo = 'DESATIVAR' then
    begin
      saivalnew.readonly := true;
      saiValParcela.ReadOnly := true;
      saiPagNew.readonly := true;
      saiPagParcela.readonly := true;

      saivalnew.color := clScrollBar;
      saiValParcela.color := clScrollBar;
      saiPagNew.color := clScrollBar;
      saiPagParcela.color := clScrollBar;

      btnAlterarValorSaida.Enabled := false;
      btnAlterarDiaSaida.Enabled := false;
    end
  else if tipo = 'ATIVAR' then
    begin
      saivalnew.readonly := false;
      saiValParcela.ReadOnly := false;
      saiPagNew.readonly := false;
      saiPagParcela.readonly := false;

      saivalnew.color := clWindow;
      saiValParcela.color := clWindow;
      saiPagNew.color := clWindow;
      saiPagParcela.color := clWindow;

      btnAlterarValorSaida.Enabled := true;
      btnAlterarDiaSaida.Enabled := true;
    end;
end;
}

procedure TCAD_Aluguel.Btn_EsquerdaClick(Sender: TObject);
begin
     If DS.DataSet.Active Then
     Begin
        DS.DataSet.Prior;
       //BUSCAR O LOGRADOURO
          unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select id_logradouro, numero, obs from imovel where id_imovel = '+ DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString);

          Edit_Logradouro.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('ID_LOGRADOURO').AsString;
          Edit_Complemento.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('OBS').AsString;
          Edit_Numero.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('NUMERO').AsString;

          unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select L.*, B.nome AS XBAIRRO, C.nome AS XCIDADE, U.nome AS XESTADO,'+' U.sigla AS XSIGLA from logradouro L left join bairro B on B.id_bairro = L.id_bairro left join cidade C on C.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE L.ID_LOGRADOURO = ' + Edit_Logradouro.Text);

          Edit_Cep.Text := DM_Cadastro.Z_Curinga_01.FieldByName('CEP').Value;
          Edit_Tipo.Text := DM_Cadastro.Z_Curinga_01.FieldByName('TIPO').Value;
          Edit_Rua.Text := DM_Cadastro.Z_Curinga_01.FieldByName('NOME').Value;
          Edit_Cidade.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XCIDADE').Value;
          Edit_Bairro.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XBAIRRO').Value;
          Edit_UF.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XSIGLA').Value;

        //BUSCAR O PROPRIETARIO
           unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_02, 'select P.id_pessoa, P.nome, P.nome_fantasia, P.cpf_cnpj, p.foto, p.ativo from pessoa P left join pessoa_imovel PI on PI.id_pessoa = P.id_pessoa left join imovel I on I.id_imovel = PI.id_imovel where I.id_imovel = ' + DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString + ' and (PI.status = ''PROPRIETARIO'' or PI.status = ''PROPRIETÁRIO'')');

        //BUSCAR AS PESSOAS
           unCamposBusca.BUSCA(DM_ADMIN.Z_PESSOA_CONTRATO, 'SELECT PC.*, P.id_pessoa AS XCODIGO, P.nome AS XNOME, P.cpf_cnpj AS XCPF, P.foto AS XFOTO FROM pessoa_contrato PC LEFT JOIN CONTRATO C ON C.id_contrato = PC.id_contrato LEFT JOIN PESSOA P ON P.id_pessoa = PC.id_pessoa WHERE PC.id_contrato = '+ DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +' ORDER BY P.NOME');

     End;
end;

procedure TCAD_Aluguel.Btn_DireitaClick(Sender: TObject);
begin
     If DS.DataSet.Active Then
     Begin
        DS.DataSet.Next;
        //BUSCAR O LOGRADOURO
                  unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select id_logradouro, numero, obs from imovel where id_imovel = '+ DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString);

                  Edit_Logradouro.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('ID_LOGRADOURO').AsString;
                  Edit_Complemento.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('OBS').AsString;
                  Edit_Numero.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('NUMERO').AsString;

                  unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select L.*, B.nome AS XBAIRRO, C.nome AS XCIDADE, U.nome AS XESTADO,'+' U.sigla AS XSIGLA from logradouro L left join bairro B on B.id_bairro = L.id_bairro left join cidade C on C.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE L.ID_LOGRADOURO = ' + Edit_Logradouro.Text);

                  Edit_Cep.Text := DM_Cadastro.Z_Curinga_01.FieldByName('CEP').Value;
                  Edit_Tipo.Text := DM_Cadastro.Z_Curinga_01.FieldByName('TIPO').Value;
                  Edit_Rua.Text := DM_Cadastro.Z_Curinga_01.FieldByName('NOME').Value;
                  Edit_Cidade.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XCIDADE').Value;
                  Edit_Bairro.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XBAIRRO').Value;
                  Edit_UF.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XSIGLA').Value;

                   //BUSCAR O PROPRIETARIO
                   unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_02, 'select P.id_pessoa, P.nome, P.nome_fantasia, P.cpf_cnpj, p.foto, p.ativo from pessoa P left join pessoa_imovel PI on PI.id_pessoa = P.id_pessoa left join imovel I on I.id_imovel = PI.id_imovel where I.id_imovel = ' + DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString + ' and (PI.status = ''PROPRIETARIO'' or PI.status = ''PROPRIETÁRIO'')');

                   //BUSCAR AS PESSOAS
                   unCamposBusca.BUSCA(DM_ADMIN.Z_PESSOA_CONTRATO, 'SELECT PC.*, P.id_pessoa AS XCODIGO, P.nome AS XNOME, P.cpf_cnpj AS XCPF, P.foto AS XFOTO FROM pessoa_contrato PC LEFT JOIN CONTRATO C ON C.id_contrato = PC.id_contrato LEFT JOIN PESSOA P ON P.id_pessoa = PC.id_pessoa WHERE PC.id_contrato = '+ DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +' ORDER BY P.NOME');

     End;
end;


{procedure TCAD_Aluguel.calcularResumo();
Var Entrada, Saida, Taxa: Double;
    lista: TStringList;
Begin
     if DM_Admin.Z_ALUGUEL.Active AND (DM_Admin.Z_ALUGUEL.RecordCount > 0) then
     Begin
          Entrada := 0;
          Saida := 0;
          Taxa := 0;
          lista := TStringList.Create;

          while NOT DM_Admin.Z_ALUGUEL.Eof do
          Begin
               if lista.IndexOf(DM_Admin.Z_ALUGUELID_CONTRATO.AsString) < 0 then
               Begin
                    Entrada := Entrada + DM_Admin.Z_ALUGUELVALOR.AsFloat;
                    Taxa := Taxa + getPorcToDinh(DM_Admin.Z_ALUGUELTARIFA.AsString,DM_Admin.Z_ALUGUELVALOR.AsString);
                    Saida := Saida + (DM_Admin.Z_ALUGUELVALOR.AsFloat - getPorcToDinh(DM_Admin.Z_ALUGUELTARIFA.AsString,DM_Admin.Z_ALUGUELVALOR.AsString));
                    lista.Add(DM_Admin.Z_ALUGUELID_CONTRATO.AsString);
               end;

               DM_Admin.Z_ALUGUEL.Next;
          end;

          if lista <> nil then
             FreeAndNil(lista);

          DM_Admin.Z_ALUGUEL.First;
          //LabelResumo.Caption := 'Entrada: '+getCurrToStr(Entrada,true)+' Taxas: '+getCurrToStr(Taxa,true)+' Saída: '+getCurrToStr(Saida,true);
     end
     else
         LabelResumo.Caption := 'Entrada: R$0,00 Taxas: R$0,00 Saída: R$0,00';
end;
}

procedure TCAD_Aluguel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

If (Key = VK_RETURN) and Tab_Pesquisa.Showing then
   Pesquisar();

If (Key = VK_RETURN) and (not Tab_Pesquisa.Showing) then
   Perform(Wm_NextDlgCtl,0,0);

  Case Key of
       VK_F1:
             Begin
                  Btn_NovoClick(Sender);
             End;
       VK_F2:
             Begin
                  Btn_CancelarClick(Sender);
             End;
       VK_F3:
             Begin
                  Btn_GravarClick(Sender);
             End;
       VK_F4:
             Begin
                  Btn_ExcluirClick(Sender);
             End;
       VK_F11:
              Begin
                   Valor.SetFocus;
              End;
       VK_F12:
              Begin
                   ShowMessage('MENU AJUDA: Em construção.');
              End;
       VK_PRIOR:
                Begin
                     Btn_EsquerdaClick(Sender);
                End;
       VK_NEXT:
               Begin
                     Btn_DireitaClick(Sender);
               End;
       VK_ESCAPE:
                 Begin
                      If ssShift in Shift Then
                      Begin
                           Btn_RetornoClick(Sender);
                      End
                      Else
                      Begin
                           Close;
                      End;
                 End;

  end;
end;

procedure TCAD_Aluguel.GerarDIMOB1Click(Sender: TObject);
begin
     if unUtilitario.setMensagem('Deseja exportar a seleção de '+IntToStr(SelecaoRegistro.Count)+' contratos para o sistema da Receita Federal - DIMOB?'+#13+'-O arquivo .TXT será salvo no caminho informado ao final do processo;'+#13+'OBS: 1º) Verifique no formulário de cadastro da empresa os dados referentes ao DIMOB. 2º) Verifique todos os dados dos locatários e locadores antes de continuar (CPF, Endereços, nomes e etc)','confirma') = IDYES then
     Begin
          GeraDimob(SelecaoRegistro);
          //SelecaoRegistro.Clear; não limpar a seleção
     end;
end;

procedure TCAD_Aluguel.Grid_BuscaDblClick(Sender: TObject);
begin
     If DS.DataSet.Active Then
     Begin
          DS.DataSet.Edit;
          Tab_Cadastro.Show;
          Tab_Informacoes.Show;
          Tab_InformacoesShow(Sender);
     End;

     //Tab_Informacoes.Show;
     //Tab_InformacoesShow(Sender);
end;

procedure TCAD_Aluguel.Grid_BuscaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  VAR D: TDate; ccc: integer; varsql: TZQuery;
  begin

  IF (COLUMN.Title.CAPTION = 'Código') AND (DS.DataSet.RecordCount > 0) THEN
  begin

       if (DS.DataSet.FieldByName('HONORARIO_ADMIN').AsString = 'SIM') THEN
            Grid_Busca.Canvas.Brush.Color:= clGradientActiveCaption
       else
           Grid_Busca.Canvas.Brush.Color:= clWhite;


       if (DS.DataSet.FieldByName('HONORARIO_1ALUGUEL').AsString = 'SIM') THEN
       begin
            Grid_Busca.Canvas.Font.Color:= clOlive;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold, fsUnderline];
       end
       else
       Begin
            Grid_Busca.Canvas.Font.Color:= clBlack;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style;
       end;

       Grid_Busca.Canvas.FillRect(Rect);
       Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  IF (COLUMN.Title.CAPTION = 'Ativo') AND (DS.DataSet.RecordCount > 0) THEN
  begin
       D := IncMonth(DS.DataSet.FieldByName('VENCIMENTO').AsDateTime, DS.DataSet.FieldByName('VIGENCIA').AsInteger);

       ccc := DaysBetween(DATE , D);

       if ccc <= 60 THEN
       begin
            Grid_Busca.Canvas.Brush.Color:= clYellow;
            Grid_Busca.Canvas.Font.Color:= clWindowText;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
            Grid_Busca.Canvas.FillRect(Rect);
            Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;

       if
         (DS.DataSet.FieldByName('VALOR').AsFloat <= 0) OR
         (DS.DataSet.FieldByName('TARIFA').AsFloat <= 0) OR
         (DS.DataSet.FieldByName('VIGENCIA').AsFloat <= 0) OR
         (DS.DataSet.FieldByName('MULTA').AsFloat <= 0) OR
         (DS.DataSet.FieldByName('MULTA_MORA').AsFloat <= 0)
       THEN
       begin
            Grid_Busca.Canvas.Brush.Color:= clRed;
            Grid_Busca.Canvas.Font.Color:= clWindowText;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
            Grid_Busca.Canvas.FillRect(Rect);
            Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;

       varsql := unUtilitario.getSelect('select count(cs.id_caixa_status) from caixa_entrada ce inner join caixa_status cs on cs.id_caixa_entrada = ce.id_caixa where ce.id_contrato = '+DS.DataSet.FieldByName('id_contrato').AsString);

       if varsql.Fields[0].AsInteger > 0 THEN
       begin
            Grid_Busca.Canvas.Brush.Color:= clFuchsia;
            Grid_Busca.Canvas.Font.Color:= clWindowText;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
            Grid_Busca.Canvas.FillRect(Rect);
            Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;

       FreeAndNil(varsql);

       if (DS.DataSet.FieldByName('HONORARIO_APOS').AsInteger = 1) THEN
       begin
            Grid_Busca.Canvas.Brush.Color:= clGray;
            Grid_Busca.Canvas.Font.Color:= clWindowText;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
            Grid_Busca.Canvas.FillRect(Rect);
            Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;

       if numMinimoIRRF > 0 then
       if (DS.DataSet.FieldByName('VALOR').AsFloat >= numMinimoIRRF) THEN
       begin
            Grid_Busca.Canvas.Brush.Color:= clLime;
            Grid_Busca.Canvas.Font.Color:= clWindowText;
            Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
            Grid_Busca.Canvas.FillRect(Rect);
            Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;

  end;

end;

procedure TCAD_Aluguel.Grid_BuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If Key = VK_RETURN then
 Grid_BuscaDblClick(Sender);
end;

procedure TCAD_Aluguel.Grid_BuscaTitleClick(Column: TColumn);
var colunas: integer;
begin
//Ordenar pelo título da grid...

Ordenacao := '';

Ordenacao := Column.FieldName;

          For Colunas := 0 TO Grid_Busca.Columns.Count-1 DO
              If Grid_Busca.Columns[Colunas].Visible = true Then
                 Grid_Busca.Columns[Colunas].Title.Font.Style := [];

Column.Title.Font.Style := [fsBold];

IF DM_Admin.Z_ALUGUEL.Active THEN
   Pesquisar();

end;

procedure TCAD_Aluguel.grid_irrf_taxasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

     if ds.DataSet.FieldByName('ID_CONTRATO').IsNull then
        EXIT
     else
         if ds.DataSet.FieldByName('ID_CONTRATO').AsInteger <= 0 then
            EXIT;


     IF (COLUMN.Title.CAPTION = 'Dedução') AND (DS_IRRF.DataSet.RecordCount > 0) THEN
          if DS.DataSet.FieldByName('TIPO_CONTRATO').AsString = 'LOCAÇÃO' then
             if (DS_IRRF.DataSet.FieldByName('VALOR_INICIO').AsCurrency <= DS.DataSet.FieldByName('VALOR').AsCurrency) and (DS_IRRF.DataSet.FieldByName('VALOR_FIM').AsCurrency >= DS.DataSet.FieldByName('VALOR').AsCurrency) then
             Begin
                  grid_irrf_taxas.Canvas.Brush.Color:= clMoneyGreen;
                  grid_irrf_taxas.Canvas.Font.Color:= clWhite;
                  grid_irrf_taxas.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
                  grid_irrf_taxas.Canvas.FillRect(Rect);
                  grid_irrf_taxas.DefaultDrawColumnCell(Rect, DataCol, Column, State);

                  if DS_IRRF.DataSet.FieldByName('DEDUCAO').AsCurrency = 0 then
                     btnCriarImposto.Enabled := False
                  else
                      btnCriarImposto.Enabled := True;
             end
end;

procedure TCAD_Aluguel.Image3Click(Sender: TObject);
begin
     if EditValorValorForma.ItemIndex = 0 Then //INQUILINO
        EditValorValorNovo.Text := EditSimuladorNovoAluguel.Text;

     if EditValorValorForma.ItemIndex = 1 Then //PROPRIETÁRIO
        EditValorValorNovo.Text := EditSimuladorNovoRepasse.Text;

     if EditValorValorForma.ItemIndex = 2 Then //AMBAS AS PARTES
        EditValorValorNovo.Text := EditSimuladorPorcentagem.Text;
end;

procedure TCAD_Aluguel.Image7Click(Sender: TObject);
begin
     principal.SITE('http://www.debit.com.br/aluguel10.php');
end;

procedure TCAD_Aluguel.Image8Click(Sender: TObject);
begin
     principal.SITE('http://www.aluga.com.br/calculo-aluguel');
end;

procedure TCAD_Aluguel.Image9Click(Sender: TObject);
begin
     principal.SITE('http://calculoexato.com.br/parprima.aspx?codMenu=AlugReajuste');
end;

procedure TCAD_Aluguel.IPTUBotaoClick(Sender: TObject);
Var i, codigo, CodigoInquilino, CodigoLocador: Integer;
    mes, dataLocador: TDateTime;
    varSQL, varSQL2: TZQuery;
    operacao, deposito, garantido: String;
begin
     if PRINCIPAL.bloqueado then
     Begin
         PRINCIPAL.mostraAvisoBloqueio();
         exit;
     end;
     
     IF (StrToFloat(IPTUParcela.Text) = 0) OR (StrToInt(IPTUQtde.Text) = 0) Then
     Begin
          unUtilitario.setMensagem('Entre com um valor e qtde no IPTU!','erro');
          Exit;
     End;

     if (NOT IPTULocatario.Checked) and (NOT IPTULocador.Checked) Then
     Begin
          unUtilitario.setMensagem('Escolhas as Pessoas!','erro');
          Exit;
     End;

     if CheckBoleto.Checked then
        operacao := 'CRIADO AUTOMATICAMENTE PELO FINANCEIRO DO CONTRATO. [BOLETO]'
     else
         operacao := 'CRIADO AUTOMATICAMENTE PELO FINANCEIRO DO CONTRATO.';

     mes := IPTUDatePrimeiraParcela.Date;
     dataLocador := IPTUDatePrimeiraLocadorParcela.Date;

     varSQL := unUtilitario.getSelect('SELECT first 1 ID_PESSOA FROM pessoa_contrato WHERE (TIPO LIKE ''LOCAT_RIO'' OR TIPO = ''INQUILINO'' OR TIPO = ''COMPRADOR'' ) AND ID_CONTRATO = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);

     if varSQL.Fields[0].IsNull Then
     Begin
          unUtilitario.setMensagem('Cadastre um INQUILINO / LOCATÁRIO primeiro!','erro');
          exit;
     End;

     CodigoInquilino := varSQL.Fields[0].AsInteger;

     varSQL := unUtilitario.getSelect('SELECT first 1 id_pessoa FROM pessoa_IMOVEL WHERE status LIKE ''PROPRIET_RIO'' AND ativo = ''SIM'' AND ID_IMOVEL = '+DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString);

     if varSQL.Fields[0].IsNull Then
     Begin
          unUtilitario.setMensagem('Cadastre um PROPRIETÁRIO primeiro!','erro');
          exit;
     End;

     if checkGarantidoIPTU.Checked Then
          garantido := 'SIM'
     else
         garantido := 'NAO';

     CodigoLocador := varSQL.Fields[0].AsInteger;

     varSQL2 := unUtilitario.getSelect('select nome ||'' / ''|| (select nome from caixa_sis where id_caixa_sis = 4) ||'': '' from caixa_sis where id_caixa_sis = 2');

     for i := 1 to StrToInt(IPTUQtde.Text) do
     Begin
               varSQL := unUtilitario.getSelect('SELECT ID FROM sp_gen_CAIXA_ENTRADA_id');
               codigo := varSQL.Fields[0].AsInteger;
               
               if IPTULocatario.Checked Then
                  cadastraConta('ENTRADA', IntToStr(codigo), '1', '4', '2', IntToStr(CodigoInquilino), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', DateToStr(mes), DateTimeToStr(Now()), DateTimeToStr(Now()), varSQL2.Fields[0].AsString+'( '+IntToStr(i)+' de '+IPTUQtde.Text+' ) '+IPTUObs.Text , operacao, IPTUParcela.Text, IPTUJuros.Text, IPTUMulta.Text, '0', IntToStr(i), 'NAO', 'SIM', garantido);

               if IPTULocador.Checked Then
               Begin
                    deposito := '';
                    if CheckDeposito.Checked then
                       deposito := ' [DEPOSITO]';
                  cadastraConta('SAIDA', '0', '1', '4', '2', IntToStr(CodigoLocador), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), IntToStr(codigo), '0', DateToStr(dataLocador), DateTimeToStr(Now()), DateTimeToStr(Now()), varSQL2.Fields[0].AsString+'( '+IntToStr(i)+' de '+IPTUQtde.Text+' ) '+IPTUObs.Text , operacao+deposito, IPTUParcela.Text, '0', '0', '0', IntToStr(i), 'NAO', 'SIM', garantido);

               end;
               Mes := IncMonth(Mes, 1);
               dataLocador := IncMonth(dataLocador,1);
     End;
     varSQL2.Close;
     FreeAndNil(varSQL2);

     unUtilitario.setMensagem('Contas criadas com sucesso!','informa');
     IPTUBotao.Enabled := False;
     setComponentesFinanceiros();
end;

procedure TCAD_Aluguel.IPTUDatePrimeiraLocadorParcelaCloseUp(Sender: TObject);
begin
  IPTUDatePrimeiraLocadorParcelaExit(Sender);
end;

procedure TCAD_Aluguel.IPTUDatePrimeiraLocadorParcelaExit(Sender: TObject);
begin

  if(IPTUDatePrimeiraLocadorParcela.Date < IPTUDatePrimeiraParcela.Date) then
  Begin
    unUtilitario.setMensagem('A data do Locador deverá ser igual ou maior a do Locatário!','erro');
    IPTUDatePrimeiraLocadorParcela.Date := IPTUDatePrimeiraParcela.Date;
  end;
    
end;

procedure TCAD_Aluguel.IPTUJurosChange(Sender: TObject);
begin
     IPTUJuros := validaPontoDinheiroChange(IPTUJuros);
end;

procedure TCAD_Aluguel.IPTUMultaChange(Sender: TObject);
begin
     IPTUMulta := validaPontoDinheiroChange(IPTUMulta);
end;

procedure TCAD_Aluguel.IPTUParcelaChange(Sender: TObject);
begin
     IPTUParcela := validaPontoDinheiroChange(IPTUParcela);

     if (getStrToCurr(IPTUQtde.Text) = 0) or (getStrToCurr(IPTUParcela.Text) = 0) Then
        IPTUTotal.Caption := 'R$  ?,??';

     IPTUTotal.Caption := FormatFloat('R$  ###,###,###,##0.00',getStrToCurr(IPTUQtde.Text) * getStrToCurr(IPTUParcela.Text))
end;

procedure TCAD_Aluguel.IPTUQtdeChange(Sender: TObject);
begin
     IPTUParcelaChange(Sender);
end;

procedure TCAD_Aluguel.LabelDataClick(Sender: TObject);
begin
     case StrIndex(LabelData.Caption, ['NÃO procurar por data',
                                      'Procurar por data do CONTRATO',
                                      'Procurar por data de ALTERAÇÃO',
                                      'Procurar Por data de 1º VENCIMENTO',
                                      'Procurar Por data de TÉRMINO',
                                      'Procurar Por data de REAJUSTE',
                                      'Procurar Por data de RESCISÃO',
                                      'Procurar Por data de NÃO REAJUSTADO']) of
          1: LabelData.Caption := 'Procurar por data do CONTRATO';
          2: LabelData.Caption := 'Procurar por data de ALTERAÇÃO';
          3: LabelData.Caption := 'Procurar Por data de 1º VENCIMENTO';
          4: LabelData.Caption := 'Procurar Por data de TÉRMINO';
          5: LabelData.Caption := 'Procurar Por data de REAJUSTE';
          6: LabelData.Caption := 'Procurar Por data de RESCISÃO';
          7: LabelData.Caption := 'Procurar Por data de NÃO REAJUSTADO';
          8: LabelData.Caption := 'NÃO procurar por data';

     else
         LabelData.Caption := 'SEM INFORMAÇÃO';
     end;
end;

procedure TCAD_Aluguel.LimparLista1Click(Sender: TObject);
begin
     If unUtilitario.setMensagem('Deseja limpar TODA a sua lista de contratos feita até agora?' + #13 + IntToStr(SelecaoRegistro.Count) + ' Registro(s) na lista até o momento.', 'confirma') = IDYES Then
     Begin
          SelecaoRegistro.Clear;
          unUtilitario.setMensagem('Seleção excluída com sucesso!', 'informa');
     End;
end;

procedure TCAD_Aluguel.ListView1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('CONTRATO À VENCER. REVISAR PARA RENOVAR...');
end;

procedure TCAD_Aluguel.ListView3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('CONTRATOS ATIVOS & INATIVOS...');
end;

procedure TCAD_Aluguel.ListView4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('FALTANDO VALORES E INFORMAÇÕES RELEVANTES...');
end;

procedure TCAD_Aluguel.ListView5MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('CARTAS DE COBRANÇA, JURÍDICO, EM CONSULTA, PROTESTO...');
end;

function TCAD_Aluguel.PegaQtde(caixa: String; Subtipo: String): String;
begin
  dm_cadastro.ZqAux.Close;
  dm_cadastro.zqaux.sql.clear;

  if Subtipo = 'Outros' then
    dm_cadastro.zqaux.sql.add('select count(id_caixa) as QTDE from ' + caixa + ' where id_contrato = ' + ds.DataSet.FieldByName('id_contrato').asstring + ' and ativo <> ''XXX'' and pendente <> ''SIM'' and ID_SUBTIPO not in (3, 4, 5) ')
  else
    dm_cadastro.zqaux.sql.add('select count(id_caixa) as QTDE from ' + caixa + ' where id_contrato = ' + ds.DataSet.FieldByName('id_contrato').asstring + ' and ativo <> ''XXX'' and pendente <> ''SIM'' and ID_SUBTIPO = ' + Subtipo + ' ');

  dm_cadastro.zqaux.Open;

  if dm_cadastro.ZqAux.FieldByName('qtde').AsInteger = 0 then
    result := '0'
  else
    result := dm_cadastro.ZqAux.FieldByName('qtde').Asstring;

    dm_cadastro.ZqAux.Close;
end;

function TCAD_Aluguel.PegaQtdePag(caixa, Subtipo: String): String;
begin
  dm_cadastro.ZqAux.Close;
  dm_cadastro.zqaux.sql.clear;

  if Subtipo = 'Outros' then
    dm_cadastro.zqaux.sql.add('select count(ID_CAIXA) as QTDE from ' + caixa + ' where id_contrato = ' + ds.DataSet.FieldByName('id_contrato').asstring + ' and ATIVO <> ''XXX'' AND pendente <> ''SIM'' and ID_SUBTIPO not in (3, 4, 5) and DATA_PGTO IS NOT NULL ')
  else
    dm_cadastro.zqaux.sql.add('select count(ID_CAIXA) as QTDE from ' + caixa + ' where id_contrato = ' + ds.DataSet.FieldByName('id_contrato').asstring + ' and ATIVO <> ''XXX'' AND pendente <> ''SIM'' and ID_SUBTIPO = ' + Subtipo + ' and DATA_PGTO IS NOT NULL ');

  dm_cadastro.zqaux.Open;

  if dm_cadastro.ZqAux.FieldByName('qtde').AsInteger = 0 then
    result := '0'
  else
    result := dm_cadastro.ZqAux.FieldByName('qtde').Asstring;

    dm_cadastro.ZqAux.Close;
end;

function TCAD_Aluguel.PegaValor(caixa, Subtipo: String): double;
begin
  dm_cadastro.ZqAux.Close;
  dm_cadastro.zqaux.sql.clear;

  if Subtipo = 'Outros' then
    dm_cadastro.zqaux.sql.add('select sum(VALOR) as valor from ' + caixa + ' where id_contrato = ' + ds.DataSet.FieldByName('id_contrato').asstring + ' and ATIVO <> ''XXX'' AND pendente <> ''SIM'' and ID_SUBTIPO not in (3, 4, 5) ')
  else
    dm_cadastro.zqaux.sql.add('select sum(VALOR) as valor from ' + caixa + ' where id_contrato = ' + ds.DataSet.FieldByName('id_contrato').asstring + ' and ATIVO <> ''XXX'' AND pendente <> ''SIM''and ID_SUBTIPO = ' + Subtipo + ' ');

  dm_cadastro.zqaux.Open;

  if dm_cadastro.ZqAux.RecordCount = 0 then
    result := 0
  else
    result := dm_cadastro.ZqAux.FieldByName('valor').AsFloat;

    dm_cadastro.ZqAux.Close;
end;



procedure TCAD_Aluguel.Tab_InformacoesShow(Sender: TObject);
begin
//EVENTO ONSHOW DA ABA INFORMAÇÕES

  If NOT (DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').IsNull) Then
  Begin

       DBEDIT_ID_CONTRATOChange(Sender);

       //NÃO DEIXA EDITAR O TIPO DE CONTRATO
       if Btn_Novo.Enabled then
          Combo_Contrato.Enabled := False;       

      //BUSCAR O LOGRADOURO
      unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select id_logradouro, numero, obs, complemento from imovel where id_imovel = '+ DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString);

      Edit_Logradouro.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('ID_LOGRADOURO').AsString;
      Edit_Complemento.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('complemento').AsString;
      Edit_Numero.Text := DM_CADASTRO.Z_Curinga_01.FieldByName('NUMERO').AsString;

      unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select L.*, B.nome AS XBAIRRO, C.nome AS XCIDADE, U.nome AS XESTADO,'+' U.sigla AS XSIGLA from logradouro L left join bairro B on B.id_bairro = L.id_bairro left join cidade C on C.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE L.ID_LOGRADOURO = ' + Edit_Logradouro.Text);

      Edit_Cep.Text := DM_Cadastro.Z_Curinga_01.FieldByName('CEP').Value;
      Edit_Tipo.Text := DM_Cadastro.Z_Curinga_01.FieldByName('TIPO').Value;
      Edit_Rua.Text := DM_Cadastro.Z_Curinga_01.FieldByName('NOME').Value;
      Edit_Cidade.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XCIDADE').Value;
      Edit_Bairro.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XBAIRRO').Value;
      Edit_UF.Text := DM_Cadastro.Z_Curinga_01.FieldByName('XSIGLA').Value;

       //BUSCAR O PROPRIETARIO
       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_02, 'select P.id_pessoa, P.nome, P.nome_fantasia, P.cpf_cnpj, p.foto, p.ativo from pessoa P left join pessoa_imovel PI on PI.id_pessoa = P.id_pessoa left join imovel I on I.id_imovel = PI.id_imovel where I.id_imovel = ' + DM_Admin.Z_ALUGUEL.FieldByName('ID_IMOVEL').AsString + ' and (PI.status = ''PROPRIETARIO'' or PI.status = ''PROPRIETÁRIO'')');

       //BUSCAR AS PESSOAS
       unCamposBusca.BUSCA(DM_ADMIN.Z_PESSOA_CONTRATO, 'SELECT PC.*, P.id_pessoa AS XCODIGO, P.nome AS XNOME, P.cpf_cnpj AS XCPF, P.foto AS XFOTO FROM pessoa_contrato PC LEFT JOIN CONTRATO C ON C.id_contrato = PC.id_contrato LEFT JOIN PESSOA P ON P.id_pessoa = PC.id_pessoa WHERE PC.id_contrato = '+ DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +' ORDER BY P.NOME');

       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select distinct(TIPO) from pessoa_contrato order by tipo');

       DM_ADMIN.Z_ALUGUEL.Edit;

       {
       //FORMATAR PARA O TIPO DE CONTRATO - ESTA ROTINA ESTÁ ERRADA! O COMANDO FOI COLOCADO NA RECUPERAÇÃO DO FORM DE IMÓVEL
       IF (DM_ADMIN.Z_ALUGUEL.State = dsEdit) OR (DM_ADMIN.Z_ALUGUEL.State = dsInsert) THEN
       BEGIN
           If (Trim(Combo_Contrato.Text) = 'LOCAÇÃO') AND not (DM_Cadastro.Z_Imovel.FieldByName('VALOR_ALUQUEL').IsNull) Then
                DM_ADMIN.Z_ALUGUELVALOR.Value := DM_Cadastro.Z_Imovel.FieldByName('VALOR_ALUQUEL').Value;

           If (Trim(Combo_Contrato.Text) = 'VENDA') AND NOT (DM_Cadastro.Z_Imovel.FieldByName('VALOR_VENDA').IsNull) Then
                DM_ADMIN.Z_ALUGUELVALOR.Value := DM_Cadastro.Z_Imovel.FieldByName('VALOR_VENDA').Value;
       END;

       }
  End;
end;

procedure TCAD_Aluguel.Tab_PesquisaShow(Sender: TObject);
begin
     if DM_Admin.Z_ALUGUEL.Active then
        if DM_Admin.Z_ALUGUEL.RecordCount > 0 then
           DM_Admin.Z_ALUGUEL.Refresh;
     
end;

procedure TCAD_Aluguel.Btn_Pessoas_NovoClick(Sender: TObject);
begin
       If NOT DM_ADMIN.Z_PESSOA_CONTRATO.Active Then
        DM_ADMIN.Z_PESSOA_CONTRATO.Open;

       DM_ADMIN.Z_PESSOA_CONTRATO.Append;

       Btn_Pessoas_Novo.Enabled := False;

       //EFETUA UMA NOVA BUSCA POR TIPOS DE PESSOAS
       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select distinct(TIPO) from pessoa_contrato order by tipo');

       //DM_CADASTRO.Z_Curinga_01.First;

       Tipo_Pessoa_Contrato.Items.Clear;

       While NOT DM_CADASTRO.Z_Curinga_01.Eof do
       Begin
            Tipo_Pessoa_Contrato.Items.Add(DM_Cadastro.Z_Curinga_01.FieldByName('TIPO').AsString);
            DM_Cadastro.Z_Curinga_01.Next;
       End;

       DM_Cadastro.Z_Curinga_01.Close;

       PRINCIPAL.CriarForm(TCAD_Pessoa, self, '1');
end;

procedure TCAD_Aluguel.Btn_Pessoas_CancelarClick(Sender: TObject);
begin
   If DM_ADMIN.Z_PESSOA_CONTRATO.Active Then
        Begin
              DM_ADMIN.Z_PESSOA_CONTRATO.Cancel;
              DM_ADMIN.Z_PESSOA_CONTRATO.CancelUpdates;

              Btn_Pessoas_Novo.Enabled := True;

              DM_Cadastro.Z_Curinga_01.Close;
        End;
end;

procedure TCAD_Aluguel.Btn_Pessoas_GravarClick(Sender: TObject);
VAR varSQL: TZQuery;
Begin

If NovoRegistro = 1 Then
Begin
      If unUtilitario.setMensagem('Será necessário gravar as alterações'+#13+'realizadas até agora no registro principal, OK?'+#13+'Verifique os campos obrigatórios antes de prosseguir.', 'confirma') = IDYES Then
           Btn_GravarClick(Sender)
      Else
           PRINCIPAL.setMensagem('O registro completo não foi salvo.');
End;

  If NovoRegistro = 0 Then
  Begin
        varSQL := unUtilitario.getSelect('select id_pessoa from pessoa_contrato where (tipo like ''LOCAT_RIO'' or tipo = ''COMPRADOR'' or tipo = ''INQUILINO'' or tipo = ''MORADOR'' ) and id_contrato = '+DS.DataSet.FieldByName('ID_CONTRATO').AsString);

        if varSQL.RecordCount > 1 Then
        Begin
          if NOT unUtilitario.setMensagem('O sistema verificou que você já possui uma pessoa cadastrada com este tipo "'+Tipo_Pessoa_Contrato.Text+'".'+#13
          +'Não é recomendado a entrada de mais um tipo de pessoa com estes tipos:'+#13
          +'MORADOR, INQULINO, LOCATÁRIO ou COMPRADOR para evitar erros nos relatórios (ex: rel. cobrança) e rotinas da geração do financeiro.'+#13+'Em todo caso, isto é só um alerta, deseja continuar?','confirma') = IDYES Then
          Begin
            Tipo_Pessoa_Contrato.SetFocus;
            exit;
          end;
        end;

        FreeAndNil(varSQL);

       If DM_ADMIN.Z_PESSOA_CONTRATO.Active Then
          Begin
               Try
                  DM_ADMIN.Z_PESSOA_CONTRATOID_IMOVEL.Value := DM_ADMIN.Z_ALUGUELID_IMOVEL.Value;
                  DM_ADMIN.Z_PESSOA_CONTRATOID_CONTRATO.Value := DM_ADMIN.Z_ALUGUELID_CONTRATO.Value;

                  If DM_ADMIN.Z_PESSOA_CONTRATOTIPO.IsNull Then
                     DM_ADMIN.Z_PESSOA_CONTRATOTIPO.Value := 'SEM TIPO';

                  If DM_ADMIN.Z_PESSOA_CONTRATOPORCENTAGEM.IsNull Then
                     DM_ADMIN.Z_PESSOA_CONTRATOPORCENTAGEM.Value := 0;
                  Try
                     DM_ADMIN.Z_PESSOA_CONTRATO.ApplyUpdates;
                     setLog(DM_ADMIN.Z_PESSOA_CONTRATOID_CONTRATO.AsString, 'ALTERAÇÃO', Self.Caption+': PES. ENVOLVIDAS', DM_ADMIN.Z_PESSOA_CONTRATO);
                  except
                        on EZSQLException do
                           ShowMessage('Erro ao inserir o registro!'+#13+' Verifique se a pessoa já está cadastrada com as mesmas informações.');
                  end;
                  unMsg.INFORMA(1);
                  Btn_Pessoas_Novo.Enabled := True;
                  Btn_Pessoas_Novo.SetFocus;

                  DM_Cadastro.Z_Curinga_01.Close;
               Except
                     unMsg.ERRO(18);
               End;
          End
          Else
              unMsg.ERRO(13);

          DM_ADMIN.Z_PESSOA_CONTRATO.Edit;
  End;

   If NOT (DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').IsNull) and (DM_ADMIN.Z_PESSOA_CONTRATO.Active) Then
      unImagem.getImagem(IMG_Pessoas,DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').Value);

end;

procedure TCAD_Aluguel.Btn_Pessoas_ExcluirClick(Sender: TObject);
begin
     If MessageDlg('Deseja excluir esta Pessoa?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_ADMIN.Z_PESSOA_CONTRATO.Active Then
              Begin
                   Try
                      setLog(DM_ADMIN.Z_PESSOA_CONTRATOID_CONTRATO.AsString, 'EXCLUSÃO', Self.Caption+': PES. ENVOLVIDAS', DM_ADMIN.Z_PESSOA_CONTRATO);
                      DM_ADMIN.Z_PESSOA_CONTRATO.Delete;
                      DM_ADMIN.Z_PESSOA_CONTRATO.ApplyUpdates;
                      unMsg.INFORMA(2);
                      DM_Cadastro.Z_Curinga_01.Close;
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_ADMIN.Z_PESSOA_CONTRATO.Edit;
end;

procedure TCAD_Aluguel.DBGrid1DblClick(Sender: TObject);
begin

     if DM_ADMIN.Z_ALUGUELID_CONTRATO.IsNull Then
        Exit;

     unCamposBusca.buscaIndividual(1,ZEntradaID_CAIXA.AsInteger,TCAD_Caixas,self);
end;

procedure TCAD_Aluguel.DBGrid2DblClick(Sender: TObject);
begin
     DBEdit11DblClick(Sender);
end;

procedure TCAD_Aluguel.DBGrid2Enter(Sender: TObject);
begin

  Try
  PRINCIPAL.setMensagem('Procurando Imagens...');
     If (DM_CADASTRO.Z_Curinga_02.Active) and not (DM_CADASTRO.Z_Curinga_02.FieldByName('FOTO').IsNull) Then
        unImagem.getImagem(IMG_Proprietario,DM_CADASTRO.Z_Curinga_02.FieldByName('FOTO').Value)
     ELSE
         unImagem.getImagem(IMG_Proprietario,'X_Foto.jpg');
  Except
        unMsg.ERRO(22);
  End;



end;

procedure TCAD_Aluguel.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
DBGrid2Enter(Sender);
end;

procedure TCAD_Aluguel.DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     DBGrid2Enter(Sender);
end;

procedure TCAD_Aluguel.DBGrid3DblClick(Sender: TObject);
begin
     DBEdit77DblClick(Sender);
end;

procedure TCAD_Aluguel.DBGrid3Enter(Sender: TObject);
begin

  unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select distinct(TIPO) from pessoa_contrato order by tipo');

  Try
  PRINCIPAL.setMensagem('Procurando Imagens...');
     If NOT (DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').IsNull) and (DM_ADMIN.Z_PESSOA_CONTRATO.Active) Then
        unImagem.getImagem(IMG_Pessoas,DM_ADMIN.Z_PESSOA_CONTRATO.FieldByName('XFOTO').Value)
        ELSE
        unImagem.getImagem(IMG_Pessoas,'X_Foto.jpg');

  Except
        unMsg.ERRO(22);
  End;

end;

procedure TCAD_Aluguel.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     DBGrid3Enter(Sender);
end;

procedure TCAD_Aluguel.DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     DBGrid3Enter(Sender);
end;

procedure TCAD_Aluguel.Tab_InformacoesHide(Sender: TObject);
begin

     //DM_CADASTRO.Z_Curinga_01.Close;
     //DM_CADASTRO.Z_Curinga_02.Close;
     //DM_CADASTRO.Z_Curinga_06.Close;
     //DM_ADMIN.Z_PESSOA_CONTRATO.Close;

end;

procedure TCAD_Aluguel.TabSheet1Show(Sender: TObject);
Var varSQL: TZQuery;
    cxEntrada, cxSaida: Integer;
    id_pessoas: TStringList;
begin

if DM_ADMIN.Z_ALUGUELID_CONTRATO.IsNull Then
   Exit;

   id_pessoas := TStringList.Create;

   //Verifica as contas relacionadas com esse contrato e lista
   outrasContasListagem.Items.Clear;
   //Entrada das pessoas do contrato
   varSQL := unUtilitario.getSelect('select ''ENTRADA'' as CAIXA, csCAT.nome as CATEGORIA, csTIP.nome as TIPO, csSTI.nome as SUBTIPO, pc.tipo as PTIPO, p.nome as PESSOA, '+
   ' MAX((select first 1 caixaE.valor from caixa_ENTRADA caixaE where caixaE.id_contrato = ce.id_contrato and caixaE.id_categoria = ce.id_categoria and caixaE.id_tipo = '+'ce.id_tipo and caixaE.id_subtipo = ce.id_subtipo and caixaE.ativo = ''SIM'' order by caixaE.data_ref desc)) as VALOR, p.ID_PESSOA from caixa_ENTRADA ce '+
   ' LEFT join caixa_sis csCAT on csCAT.id_caixa_sis = ce.id_categoria '+
   ' LEFT join caixa_sis csTIP on csTIP.id_caixa_sis = ce.id_tipo '+
   ' LEFT join caixa_sis csSTI on csSTI.id_caixa_sis = ce.id_subtipo '+
   ' LEFT join pessoa p on p.id_pessoa = ce.id_pessoa '+
   ' INNER join pessoa_contrato pc on pc.id_pessoa = p.id_pessoa '+
   ' where ce.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +
   ' group by CATEGORIA, TIPO, SUBTIPO, PTIPO, PESSOA, ID_PESSOA ');

   while NOT varSQL.Eof do
   Begin
        outrasContasListagem.Items.Add(
                                       varSQL.FieldByName('CAIXA').AsString+'     '+
                                       varSQL.FieldByName('CATEGORIA').AsString+'>'+
                                       varSQL.FieldByName('TIPO').AsString+'>'+
                                       varSQL.FieldByName('SUBTIPO').AsString+'     '+
                                       varSQL.FieldByName('PTIPO').AsString+': '+
                                       varSQL.FieldByName('PESSOA').AsString+' '+
                                       unUtilitario.getCurrToStr(varSQL.FieldByName('VALOR').AsCurrency,true)
                                       );

        id_pessoas.Add(varSQL.FieldByName('ID_PESSOA').AsString);

        varSQL.Next;
   end;
   varSQL.Close;

   //entrada proprietarios
   varSQL := unUtilitario.getSelect('select ''ENTRADA'' as CAIXA, csCAT.nome as CATEGORIA, csTIP.nome as TIPO, csSTI.nome as SUBTIPO, pc.STATUS as PTIPO, p.nome as PESSOA, '+
   ' MAX((select first 1 caixaE.valor from caixa_ENTRADA caixaE where caixaE.id_contrato = ce.id_contrato and caixaE.id_categoria = ce.id_categoria and caixaE.id_tipo = '+'ce.id_tipo and caixaE.id_subtipo = ce.id_subtipo and caixaE.ativo = ''SIM'' order by caixaE.data_ref desc)) as VALOR, p.ID_PESSOA from caixa_ENTRADA ce '+
   ' LEFT join caixa_sis csCAT on csCAT.id_caixa_sis = ce.id_categoria '+
   ' LEFT join caixa_sis csTIP on csTIP.id_caixa_sis = ce.id_tipo '+
   ' LEFT join caixa_sis csSTI on csSTI.id_caixa_sis = ce.id_subtipo '+
   ' LEFT join pessoa p on p.id_pessoa = ce.id_pessoa '+
   ' INNER join pessoa_imovel pc on pc.id_pessoa = p.id_pessoa '+
   ' where ce.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +
   ' group by CATEGORIA, TIPO, SUBTIPO, PTIPO, PESSOA, ID_PESSOA ');

   while NOT varSQL.Eof do
   Begin
        outrasContasListagem.Items.Add(
                                       varSQL.FieldByName('CAIXA').AsString+'     '+
                                       varSQL.FieldByName('CATEGORIA').AsString+'>'+
                                       varSQL.FieldByName('TIPO').AsString+'>'+
                                       varSQL.FieldByName('SUBTIPO').AsString+'     '+
                                       varSQL.FieldByName('PTIPO').AsString+': '+
                                       varSQL.FieldByName('PESSOA').AsString+' '+
                                       unUtilitario.getCurrToStr(varSQL.FieldByName('VALOR').AsCurrency,true)
                                       );
                                       
        id_pessoas.Add(varSQL.FieldByName('ID_PESSOA').AsString);
        varSQL.Next;
   end;
   varSQL.Close;

   //entrada pessoas em geral
   varSQL := unUtilitario.getSelect('select ''ENTRADA'' as CAIXA, csCAT.nome as CATEGORIA, csTIP.nome as TIPO, csSTI.nome as SUBTIPO, p.nome as PESSOA, '+
   ' MAX((select first 1 caixaE.valor from caixa_ENTRADA caixaE where caixaE.id_contrato = ce.id_contrato and caixaE.id_categoria = ce.id_categoria and caixaE.id_tipo = '+'ce.id_tipo and caixaE.id_subtipo = ce.id_subtipo and caixaE.ativo = ''SIM'' order by caixaE.data_ref desc)) as VALOR from caixa_ENTRADA ce '+
   ' LEFT join caixa_sis csCAT on csCAT.id_caixa_sis = ce.id_categoria '+
   ' LEFT join caixa_sis csTIP on csTIP.id_caixa_sis = ce.id_tipo '+
   ' LEFT join caixa_sis csSTI on csSTI.id_caixa_sis = ce.id_subtipo '+
   ' INNER join pessoa p on p.id_pessoa = ce.id_pessoa '+
   ' where ce.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +' and ce.ativo = ''SIM'' and P.id_pessoa not in ('+alinhaStringlist(id_pessoas)+') '+
   ' group by CATEGORIA, TIPO, SUBTIPO, PESSOA ');

   while NOT varSQL.Eof do
   Begin
        outrasContasListagem.Items.Add(
                                       varSQL.FieldByName('CAIXA').AsString+'     '+
                                       varSQL.FieldByName('CATEGORIA').AsString+'>'+
                                       varSQL.FieldByName('TIPO').AsString+'>'+
                                       varSQL.FieldByName('SUBTIPO').AsString+'     '+
                                       'OUTROS: '+varSQL.FieldByName('PESSOA').AsString+' '+
                                       unUtilitario.getCurrToStr(varSQL.FieldByName('VALOR').AsCurrency,true)
                                       );
        varSQL.Next;
   end;
   varSQL.Close;

   id_pessoas.Clear;
   id_pessoas := TStringList.Create; //Limpa para iniciar novo recolhimento de nomes para excluir da seleção final

   //Saida dos proprietarios
   varSQL := unUtilitario.getSelect('select ''SAÍDA'' as CAIXA, csCAT.nome as CATEGORIA, csTIP.nome as TIPO, csSTI.nome as SUBTIPO, pc.STATUS as PTIPO, p.nome as PESSOA, '+
   ' MAX((select first 1 caixaE.valor from caixa_SAIDA caixaE where caixaE.id_contrato = ce.id_contrato and caixaE.id_categoria = ce.id_categoria and caixaE.id_tipo = '+'ce.id_tipo and caixaE.id_subtipo = ce.id_subtipo and caixaE.ativo = ''SIM'' order by caixaE.data_ref desc)) as VALOR, p.id_pessoa from caixa_SAIDA ce '+
   ' LEFT join caixa_sis csCAT on csCAT.id_caixa_sis = ce.id_categoria '+
   ' LEFT join caixa_sis csTIP on csTIP.id_caixa_sis = ce.id_tipo '+
   ' LEFT join caixa_sis csSTI on csSTI.id_caixa_sis = ce.id_subtipo '+
   ' LEFT join pessoa p on p.id_pessoa = ce.id_pessoa '+
   ' LEFT join pessoa_imovel pc on pc.id_pessoa = p.id_pessoa '+
   ' where ce.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +
   ' group by CATEGORIA, TIPO, SUBTIPO, PTIPO, PESSOA, ID_PESSOA ');

   while NOT varSQL.Eof do
   Begin
        outrasContasListagem.Items.Add(
                                       varSQL.FieldByName('CAIXA').AsString+'     '+
                                       varSQL.FieldByName('CATEGORIA').AsString+'>'+
                                       varSQL.FieldByName('TIPO').AsString+'>'+
                                       varSQL.FieldByName('SUBTIPO').AsString+'     '+
                                       varSQL.FieldByName('PTIPO').AsString+': '+
                                       varSQL.FieldByName('PESSOA').AsString+' '+
                                       unUtilitario.getCurrToStr(varSQL.FieldByName('VALOR').AsCurrency,true)
                                       );

        id_pessoas.Add(varSQL.FieldByName('ID_PESSOA').AsString);

        varSQL.Next;
   end;
   varSQL.Close;

   //Saidas de pessoas do contrato
   varSQL := unUtilitario.getSelect('select ''SAÍDA'' as CAIXA, csCAT.nome as CATEGORIA, csTIP.nome as TIPO, csSTI.nome as SUBTIPO, pc.tipo as PTIPO, p.nome as PESSOA, '+
   ' MAX((select first 1 caixaE.valor from caixa_SAIDA caixaE where caixaE.id_contrato = ce.id_contrato and caixaE.id_categoria = ce.id_categoria and caixaE.id_tipo = '+'ce.id_tipo and caixaE.id_subtipo = ce.id_subtipo and caixaE.ativo = ''SIM'' order by caixaE.data_ref desc)) as VALOR, p.id_pessoa from caixa_SAIDA ce '+
   ' LEFT join caixa_sis csCAT on csCAT.id_caixa_sis = ce.id_categoria '+
   ' LEFT join caixa_sis csTIP on csTIP.id_caixa_sis = ce.id_tipo '+
   ' LEFT join caixa_sis csSTI on csSTI.id_caixa_sis = ce.id_subtipo '+
   ' LEFT join pessoa p on p.id_pessoa = ce.id_pessoa '+
   ' INNER join pessoa_contrato pc on pc.id_pessoa = p.id_pessoa and pc.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +
   ' where ce.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +
   ' group by CATEGORIA, TIPO, SUBTIPO, PTIPO, PESSOA, id_pessoa ');

   varSQL.SQL.Text;

   while NOT varSQL.Eof do
   Begin
        outrasContasListagem.Items.Add(
                                       varSQL.FieldByName('CAIXA').AsString+'     '+
                                       varSQL.FieldByName('CATEGORIA').AsString+'>'+
                                       varSQL.FieldByName('TIPO').AsString+'>'+
                                       varSQL.FieldByName('SUBTIPO').AsString+'     '+
                                       varSQL.FieldByName('PTIPO').AsString+': '+
                                       varSQL.FieldByName('PESSOA').AsString+' '+
                                       unUtilitario.getCurrToStr(varSQL.FieldByName('VALOR').AsCurrency,true)
                                       );

        id_pessoas.Add(varSQL.FieldByName('ID_PESSOA').AsString);
        
        varSQL.Next;
   end;
   varSQL.Close;

   //saida pessoas em geral
   varSQL := unUtilitario.getSelect('select ''SAÍDA'' as CAIXA, csCAT.nome as CATEGORIA, csTIP.nome as TIPO, csSTI.nome as SUBTIPO, p.nome as PESSOA, '+
   ' MAX((select first 1 caixaE.valor from caixa_SAIDA caixaE where caixaE.id_contrato = ce.id_contrato and caixaE.id_categoria = ce.id_categoria and caixaE.id_tipo = '+'ce.id_tipo and caixaE.id_subtipo = ce.id_subtipo and caixaE.ativo = ''SIM'' order by caixaE.data_ref desc)) as VALOR from caixa_SAIDA ce '+
   ' LEFT join caixa_sis csCAT on csCAT.id_caixa_sis = ce.id_categoria '+
   ' LEFT join caixa_sis csTIP on csTIP.id_caixa_sis = ce.id_tipo '+
   ' LEFT join caixa_sis csSTI on csSTI.id_caixa_sis = ce.id_subtipo '+
   ' LEFT join pessoa p on p.id_pessoa = ce.id_pessoa '+
   ' where ce.id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString +' and ce.ativo = ''SIM'' and P.id_pessoa not in ('+alinhaStringlist(id_pessoas)+') '+
   ' group by CATEGORIA, TIPO, SUBTIPO, PESSOA ');

   varSQL.SQL.Text;

   while NOT varSQL.Eof do
   Begin
        outrasContasListagem.Items.Add(
                                       varSQL.FieldByName('CAIXA').AsString+'     '+
                                       varSQL.FieldByName('CATEGORIA').AsString+'>'+
                                       varSQL.FieldByName('TIPO').AsString+'>'+
                                       varSQL.FieldByName('SUBTIPO').AsString+'     '+
                                       'OUTROS: '+ varSQL.FieldByName('PESSOA').AsString+' '+
                                       unUtilitario.getCurrToStr(varSQL.FieldByName('VALOR').AsCurrency,true)
                                       );
        varSQL.Next;
   end;
   varSQL.Close;

   FreeAndNil(id_pessoas);


if DM_ADMIN.Z_ALUGUELTIPO_CONTRATO.AsString = 'LOCAÇÃO' then
Begin
     GroupCriaContaIPTU.Visible := True;
     GroupCriaContaLocacao.Visible := True;


//MENSALIDADE - Se estiver com renovação em ativo
     if CaixaRenovacao.Font.Color = 255 then
     Begin
          IPTUBotao.Enabled := False;
          ContasBotao.Enabled := False;
          Exit;
     End;

     varSQL := unUtilitario.getSelect('select count(id_caixa) from caixa_ENTRADA where ID_SUBTIPO = 3 AND ativo = ''SIM'' and pendente = ''NAO'' AND id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     cxEntrada := varSQL.Fields[0].AsInteger;

     varSQL := unUtilitario.getSelect('select count(id_caixa) from caixa_SAIDA where ID_SUBTIPO = 3 AND ativo = ''SIM'' and pendente = ''NAO'' AND id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     cxSaida := varSQL.Fields[0].AsInteger;

     if (cxEntrada > 0) OR (cxSaida > 0) Then
     Begin
          PRINCIPAL.setMensagem('Já foi gerado o financeiro deste contrato! Para gerar novamente, é necessário colocar todas as contas como pendentes ou deletar as mesmas (Caixa Entrada e Saída).');
          CaixaBotao.Enabled := False;
     End
     Else
          CaixaBotao.Enabled := True;


//IPTU
     varSQL := unUtilitario.getSelect('select count(id_caixa) from caixa_ENTRADA where ID_SUBTIPO = 4 AND ativo = ''SIM'' and pendente = ''NAO'' AND id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     cxEntrada := varSQL.Fields[0].AsInteger;

     varSQL := unUtilitario.getSelect('select count(id_caixa) from caixa_SAIDA where ID_SUBTIPO = 4 AND ativo = ''SIM'' and pendente = ''NAO'' AND id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     cxSaida := varSQL.Fields[0].AsInteger;

     if (cxEntrada > 0) OR (cxSaida > 0) Then
     Begin
          PRINCIPAL.setMensagem('Já foi gerado o IPTU deste contrato! Para gerar novamente, é necessário colocar todas as contas como pendentes ou deletar as mesmas (Caixa Entrada e Saída).');
          IPTUBotao.Caption := 'RECRIAR Contas';
     End
     Else
         IPTUBotao.Caption := 'Criar Contas';

         IPTUBotao.Enabled := True;
end
else
Begin
     GroupCriaContaLocacao.Visible := False;
     GroupCriaContaIPTU.Visible := False;
end;

    //setComponentesFinanceiros();

//MOSTRA OS NOMES DAS PESSOAS DO CONTRATO
     varSQL := unUtilitario.getSelect('SELECT first 1 ID_PESSOA FROM pessoa_contrato WHERE (TIPO LIKE ''LOCAT_RIO'' OR TIPO = ''INQUILINO'' OR TIPO = ''COMPRADOR'' ) AND ID_CONTRATO = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);

     if varSQL.Fields[0].IsNull Then
     Begin
          ContaPessoaEntrada.Text := 'CONTRATO SEM LOCATÁRIO/COMPRADOR!';
          exit;
     End;

     ContaPessoaEntrada.Text := 'LOCATÁRIO-'+varSQL.Fields[0].AsString;

     varSQL := unUtilitario.getSelect('SELECT PI.ID_PESSOA FROM PESSOA_IMOVEL PI LEFT JOIN PESSOA P ON P.id_pessoa = PI.id_pessoa WHERE (PI.status LIKE ''PROPRIET_RIO'' or PI.STATUS = ''LOCADOR'' ) AND PI.ID_IMOVEL = '+DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString);

     if varSQL.Fields[0].IsNull Then
     Begin
          ContaPessoaSaida.Text := 'CONTRATO SEM PROPRIETÁRIO/VENDEDOR!';
          exit;
     End;

     ContaPessoaSaida.Text := 'PROPRIETÁRIO-'+varSQL.Fields[0].AsString;
end;

procedure TCAD_Aluguel.TabSheet2Show(Sender: TObject);
var
   entTotGeral, entTotGeralQtde, entTotPago, entTotPagoQtde, entTotNPago, entTotNPagoQtde: Double;
   saiTotGeral, saiTotGeralQtde, saiTotPago, saiTotPagoQtde, saiTotNPago, saiTotNPagoQtde: Double;
begin
     if DM_ADMIN.Z_ALUGUELID_CONTRATO.IsNull Then
        Exit;

     entTotGeral := 0;
     entTotGeralQtde := 0;
     entTotPago := 0;
     entTotPagoQtde := 0;
     entTotNPago := 0;
     entTotNPagoQtde := 0;
     saiTotGeral := 0;
     saiTotGeralQtde := 0;
     saiTotPago := 0;
     saiTotPagoQtde := 0;
     saiTotNPago := 0;
     saiTotNPagoQtde := 0;

     ZEntrada.Close;
     ZEntrada.Params[0].AsString := DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString;
     ZEntrada.Open;

     ZSaida.Close;
     ZSaida.Params[0].AsString := DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString;
     ZSaida.Open;

     while not ZEntrada.Eof do
     Begin
          if ZEntradaDATA_PGTO.IsNull Then
          Begin
               entTotNPago := entTotNPago + ZEntradaVALOR.AsFloat;
               entTotNPagoQtde := entTotNPagoQtde + 1;
          End
          Else
          Begin
               entTotPago := entTotPago + ZEntradaVALOR.AsFloat;
               entTotPagoQtde := entTotPagoQtde + 1;
          End;

          entTotGeral := entTotGeral + ZEntradaVALOR.AsFloat;
          entTotGeralQtde := entTotGeralQtde + 1;

          ZEntrada.Next;
     End;
     ZEntrada.First;
     ResumoEntrada.Caption := 'Caixa Entrada: Total Geral R$'+getCurrToStr(entTotGeral,false)+' ('+CurrToStr(entTotGeralQtde)+' Registros). Total Pago R$'+getCurrToStr(entTotPago,false)+' ('+CurrToStr(entTotPagoQtde)+' Registros). Total Não Pago R$'+getCurrToStr(entTotNPago,false)+' ('+CurrToStr(entTotNPagoQtde)+' Registros).';


     while not ZSaida.Eof do
     Begin
          if ZSaidaDATA_PGTO.IsNull Then
          Begin
               saiTotNPago := saiTotNPago + ZSaidaVALOR.AsFloat;
               saiTotNPagoQtde := saiTotNPagoQtde + 1;
          End
          Else
          Begin
               saiTotPago := saiTotPago + ZSaidaVALOR.AsFloat;
               saiTotPagoQtde := saiTotPagoQtde + 1;
          End;

          saiTotGeral := saiTotGeral + ZSaidaVALOR.AsFloat;
          saiTotGeralQtde := saiTotGeralQtde + 1;

          ZSaida.Next;
     End;
     ZSaida.First;
     ResumoSaida.Caption := 'Caixa Entrada: Total Geral R$'+getCurrToStr(saiTotGeral,false)+' ('+CurrToStr(saiTotGeralQtde)+' Registros). Total Pago R$'+getCurrToStr(saiTotPago,false)+' ('+CurrToStr(saiTotPagoQtde)+' Registros). Total Não Pago R$'+getCurrToStr(saiTotNPago,false)+' ('+CurrToStr(saiTotNPagoQtde)+' Registros).';

end;

procedure TCAD_Aluguel.TabSheet3Show(Sender: TObject);
begin
     if DM_ADMIN.Z_ALUGUELID_CONTRATO.IsNull Then
        Exit;
end;

procedure TCAD_Aluguel.TabSheet5Hide(Sender: TObject);
begin
     ZIRRF.Active := False;
     PRINCIPAL.MySQL.Disconnect;
end;

procedure TCAD_Aluguel.TabSheet5Show(Sender: TObject);
begin

     if ds.DataSet.FieldByName('ID_CONTRATO').IsNull then
        EXIT;

     PRINCIPAL.MySQL.Disconnect;
     conectaMySQL(mysqlSistemaBanco,mysqlSistemaServidor,mysqlSistemaUsuario, mysqlSistemaSenha);
     ZIRRF.Active := False;
     ZIRRF.SQL.Clear;
     ZIRRF.SQL.Add('SELECT * FROM sistema_irrf ORDER BY id DESC');
     ZIRRF.Open;

     ZIRRF_CONTAS.Close;
     ZIRRF_CONTAS.SQL.Clear;
     ZIRRF_CONTAS.SQL.Add('select ce.*, p.nome, 0.00 as valorreal, (select first 1 cs.valor||'' (''||cs.data_ref||'')'' from '+' caixa_saida cs where cs.id_pessoa = ce.id_pessoa and cs.id_imovel = ce.id_imovel and cs.ativo = ''SIM'' and cs.parcela = ce.parcela and cs.id_subtipo = 3) as valorSaida from caixa_entrada ce '+
     ' inner join pessoa p on p.id_pessoa = ce.id_pessoa '+
     ' where ce.id_subtipo = (select first 1 id_caixa_sis from caixa_sis where nome = ''IRRF'' and tipo = ''SUBGRUPO'' and ativo = ''SIM'') '+
     ' and ce.ativo = ''SIM'' and ce.id_contrato = '+ds.DataSet.FieldByName('ID_CONTRATO').AsString+' order by ce.data_ref, p.nome ');
     ZIRRF_CONTAS.Open;


     IRRFDATAINICIAL.Date := Date();
     IRRFDATAFINAL.Date := Date();
end;

procedure TCAD_Aluguel.setComponentesFinanceiros();
begin
     CaixaObs.Text := '';
     IPTUQtde.Text := '0';
     IPTUDatePrimeiraParcela.Date := Date();
     IPTUDatePrimeiraLocadorParcela.Date := Date();

     IPTUParcela.Text := '0,00';
     IPTUTotal.Caption := '0,00';
     IPTUMulta.Text := '0,00';
     IPTUJuros.Text := '0';
     IPTUObs.Text := '';
     IPTULocatario.Checked := True;
     ContasDateInicio.Date := Date();
     ContasValor.Text := '0,00';
     ContasDocumento.Text := '';
     ContasObs.Text := '';
     contaMulta.Text := '0,00';
     contaJuros.Text := '0';
     contaDesconto.Text := '0,00';
     ContasVezes.Text := '1';
     ContasParcela.Text := '0,00';
     ContasdiaLookupCategoria.KeyValue := NULL;
     ContasdiaLookupGrupo.KeyValue := NULL;
     ContasdiaLookupSubgrupo.KeyValue := NULL;

     DM_FINANCEIRO.ZCaixaCategoria.Close;
     DM_FINANCEIRO.ZCaixaGrupo.Close;
     DM_FINANCEIRO.ZCaixaSubgrupo.Close;

     DM_FINANCEIRO.ZCaixaCategoria.Open;
     DM_FINANCEIRO.ZCaixaGrupo.Open;
     DM_FINANCEIRO.ZCaixaSubgrupo.Open;
end;

procedure TCAD_Aluguel.Tab_CondicoesHide(Sender: TObject);
begin
     Tab_InformacoesHide(Sender);
end;

procedure TCAD_Aluguel.Tab_GarantiaHide(Sender: TObject);
begin
     DM_ADMIN.Z_GARANTIA_CONTRATO.Close;
end;

procedure TCAD_Aluguel.Tab_FinancasHide(Sender: TObject);
begin
     Tab_InformacoesHide(Sender);
end;

procedure TCAD_Aluguel.Btn_Endereco_EnderecoClick(Sender: TObject);
begin
     PRINCIPAL.CriarForm(TCAD_Imovel, self, '1');
//     Btn_Pessoas_Novo.SetFocus;
end;

procedure TCAD_Aluguel.BitBtn2Click(Sender: TObject);
Var
   qtde: String;
   ar: array of string;
begin

     qtde := InputBox('Repetição:','Escolha quantas vezes você deseja repetir as TAG''s do sistema no documento?'+#13+'Se caso não souber do que isso se trata, deixe o valor padrão.'+#13+'Se caso o documento ficou sem o preenchimento de uma TAG que anteriormente já tenha sido preenchida automaticamente, aumente esse número.'+#13+'Padrão: 6','6');

     if verificaStringInt(qtde) Then
        setDocumento('GERAL_COM_DOCUMENTO', '', '',strtoint(qtde), 0, DM_ADMIN.Z_ALUGUEL.FieldByName('id_imovel').AsInteger,  DM_ADMIN.Z_ALUGUEL.FieldByName('id_contrato').AsInteger, ar)
     else
         unUtilitario.setMensagem('Entre somente com números. O Word não será aberto.','erro');
end;

procedure TCAD_Aluguel.BitBtn3Click(Sender: TObject);
begin

     Try

        if Length(DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString) > 0 then
           ShellExecute(Handle, nil, PChar('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\DOC\'+DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString), nil, nil, SW_SHOWNORMAL)
        else
            unUtilitario.setMensagem('Primeiro inclua um arquivo como anexo a esta garantia.'+#13+'Para mais de um arquivo, use os programas Winzip ou Winrar agrupando-os.','informa');
     Except
           unUtilitario.setMensagem('Erro ao abrir o arquivo anexado.'+#13+'1) É possível você não ter instalado o programa para executar o anexo.'+#13+'2) Verifique se a sua rede está funcionando.'+#13+'3) Veja se o arquivo não foi excluído do servidor.'+#13+'Caminho:'+#13+'\\'+getUser('SERVIDOR')+'\IMOBILIARIA\DOC\'+DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString,'erro');
     end;
end;

procedure TCAD_Aluguel.Tab_GarantiaShow(Sender: TObject);
begin


     //COMPONENTES DE COMBOBOX
     getGarantiaPessoaPopula();
     getGarantiaSeguradoraPopula();
     ComboGarantiaTipo.Text := '';
     CheckGarantiaSelecionado.Checked := false;

     //RECUPERANDO OS CONTRATOS CADASTRADOS
     if DM_ADMIN.Z_ALUGUEL.Active Then
     Begin

          unCamposBusca.BUSCA(DM_ADMIN.Z_GARANTIA_CONTRATO, 'select * from contrato_garantia where id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);

          If DM_ADMIN.Z_GARANTIA_CONTRATO.Active Then
             DM_ADMIN.Z_GARANTIA_CONTRATO.Edit;

     End;



end;

procedure TCAD_Aluguel.getGarantiaPessoaPopula();
var varSQL: TZQuery;
begin

     ComboGarantiaPessoa.Items.Clear;
     ComboGarantiaPessoa.Text := '';


     if DM_ADMIN.Z_ALUGUEL.Active then
        varSQL := getSelect('SELECT P.NOME, PC.TIPO, P.ID_PESSOA FROM PESSOA P INNER JOIN PESSOA_CONTRATO PC ON PC.ID_PESSOA = P.ID_PESSOA WHERE PC.ID_CONTRATO = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString+' ORDER BY P.NOME')
     else
         varSQL := getSelect('SELECT P.NOME, PC.TIPO, P.ID_PESSOA FROM PESSOA P INNER JOIN PESSOA_CONTRATO PC ON PC.ID_PESSOA = P.ID_PESSOA WHERE PC.ID_CONTRATO = 0 ORDER BY P.NOME');

     if varSQL.RecordCount = 0 then
        Exit;

     ComboGarantiaPessoa.Text := varSQL.FieldByName('NOME').AsString +' ('+varSQL.FieldByName('TIPO').AsString+')-'+varSQL.FieldByName('ID_PESSOA').AsString;

     while NOT varSQL.Eof do
     Begin
          ComboGarantiaPessoa.Items.Add(varSQL.FieldByName('NOME').AsString +' ('+varSQL.FieldByName('TIPO').AsString+')-'+varSQL.FieldByName('ID_PESSOA').AsString);
          varSQL.Next;
     end;

     AjustarLargura(ComboGarantiaPessoa);

     FreeAndNil(varSQL);
end;

procedure TCAD_Aluguel.getGarantiaSeguradoraPopula();
var varSQL: TZQuery;
begin

     ComboGarantiaSeguradora.Items.Clear;
     ComboGarantiaSeguradora.Text := '';

     varSQL := getSelect('SELECT distinct(DEP_DESTINO) from CONTRATO_GARANTIA');

     if varSQL.RecordCount = 0 then
        Exit;

     ComboGarantiaSeguradora.Items.Add('');   
     while NOT varSQL.Eof do
     Begin
          ComboGarantiaSeguradora.Items.Add(varSQL.FieldByName('DEP_DESTINO').AsString);
          varSQL.Next;
     end;

     FreeAndNil(varSQL); 
end;

procedure TCAD_Aluguel.CheckMarcadoClick(Sender: TObject);
begin

     IF DM_Admin.Z_ALUGUELID_CONTRATO.IsNull OR NOT tab_Informacoes.Showing Then
        Exit;

     DM_Admin.Z_ALUGUEL.Edit;

     if CheckMarcado.State = cbChecked then
     Begin
          //MARCAR DECLARADOS
          DM_Admin.Z_ALUGUELHONORARIO_APOS.AsInteger := 1;
          CheckMarcado.Hint := 'Marcado Leão.';
     end;

     if CheckMarcado.State = cbUnchecked then
     Begin
          //MARCAR NÃO DECLARAR
          DM_Admin.Z_ALUGUELHONORARIO_APOS.AsInteger := 0;
          CheckMarcado.Hint := 'Não marcado Leão.';
     end;

     if CheckMarcado.State = cbGrayed then
     Begin
          //MARCAR DECLARAR + IRRF
          DM_Admin.Z_ALUGUELHONORARIO_APOS.AsInteger := 2;
          CheckMarcado.Hint := 'Marcado Leão + IRRF.';
     end;
end;

procedure TCAD_Aluguel.Check_ParceladoClick(Sender: TObject);
begin
     If Check_Parcelado.Checked Then
        Check_Parcelado.Caption := 'SIM'
     Else
         Check_Parcelado.Caption := 'NÃO';
end;

procedure TCAD_Aluguel.Btn_Garantia_NovoClick(Sender: TObject);
begin
     If NOT DM_ADMIN.Z_GARANTIA_CONTRATO.Active Then
        DM_ADMIN.Z_GARANTIA_CONTRATO.Open;

     DM_ADMIN.Z_GARANTIA_CONTRATO.Append;

     Btn_Garantia_Novo.Enabled := False;

     //COMPONENTES DE COMBOBOX
     getGarantiaPessoaPopula();
     getGarantiaSeguradoraPopula();

     DM_ADMIN.Z_GARANTIA_CONTRATOID_CONTRATO.Value := DM_ADMIN.Z_ALUGUELID_CONTRATO.Value;
     DM_ADMIN.Z_GARANTIA_CONTRATOID_IMOVEL.Value := DM_ADMIN.Z_ALUGUELID_IMOVEL.Value;
     DM_ADMIN.Z_GARANTIA_CONTRATODEP_VALOR.Value := 0;
     DM_ADMIN.Z_GARANTIA_CONTRATODEP_PARCELADO.Value := 'NAO';
     DM_ADMIN.Z_GARANTIA_CONTRATOSEG_NUM.Value := '00000';
     DM_ADMIN.Z_GARANTIA_CONTRATOSEG_PRAZO.Value := 0;
     DM_ADMIN.Z_GARANTIA_CONTRATOSEG_MESES.Value := 0;
     DM_ADMIN.Z_GARANTIA_CONTRATOSEG_PREMIO.Value := 0;
     DM_ADMIN.Z_GARANTIA_CONTRATOSEG_CAPITAL.Value := 0;

     PRINCIPAL.setID(DM_ADMIN.Z_GARANTIA_CONTRATO, 'ID_CONTRATO_GARANTIA', 'CONTRATO_GARANTIA');

     ComboGarantiaTipo.SetFocus;
end;

procedure TCAD_Aluguel.Btn_Garantia_CancelarClick(Sender: TObject);
begin
   If DM_ADMIN.Z_PESSOA_CONTRATO.Active Then
        Begin
              DM_ADMIN.Z_GARANTIA_CONTRATO.Cancel;
              DM_ADMIN.Z_GARANTIA_CONTRATO.CancelUpdates;

              Btn_Garantia_Novo.Enabled := True;
        End;
end;

procedure TCAD_Aluguel.Btn_Garantia_GravarClick(Sender: TObject);
begin

    If NovoRegistro = 1 Then
  Begin
      If MessageDlg('Será necessário gravar as alterações'+#13+'realizadas até agora no registro principal, OK?'+#13+'Verifique os campos obrigatórios antes de prosseguir.', mtConfirmation, [mbYes, mbNo],0) = mrYes Then
      Begin
           Btn_GravarClick(Sender);
      End
      Else
      Begin
           ShowMessage('O registro completo não foi salvo.');
      End;

  End;

  If NovoRegistro = 0 Then
  Begin
       If DM_ADMIN.Z_GARANTIA_CONTRATO.Active Then
          Begin
               Try
                  //TIPO DA GARANTIA
                  if Length(ComboGarantiaTipo.Text) <=0  then
                  Begin
                       unUtilitario.setMensagem('Entre com o tipo de garantia!','erro');
                       ComboGarantiaTipo.SetFocus;
                       exit;
                  end;

                  DM_ADMIN.Z_GARANTIA_CONTRATOCAL_TIPO.AsString := ComboGarantiaTipo.Text;

                  //PESSOA DA GARANTIA
                  if Length(ComboGarantiaPessoa.Text) <=0  then
                  Begin
                       unUtilitario.setMensagem('Entre com a pessoa responsável pela garantia!','erro');
                       ComboGarantiaPessoa.SetFocus;
                       exit;
                  end;

                  DM_ADMIN.Z_GARANTIA_CONTRATOSEG_SEGURADORA.AsString := IDCampoSTR(ComboGarantiaPessoa.Text);

                  //EXCLUSIVO
                  if CheckGarantiaSelecionado.Checked then
                  Begin
                       if Pos(' '+DS.DataSet.FieldByName('ID_IMOVEL').AsString,DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString) = 0 then
                       Begin
                            StringReplace(DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString, DS.DataSet.FieldByName('ID_IMOVEL').AsString,'',[rfReplaceAll]);
                            DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString := DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString +' '+ DS.DataSet.FieldByName('ID_IMOVEL').AsString;
                       end;
                  end
                  else
                  Begin
                       DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString := StringReplace(DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString, DS.DataSet.FieldByName('ID_IMOVEL').AsString,'',[rfReplaceAll]);
                  end;

                  //SEGURADORA
                  if Length(ComboGarantiaSeguradora.Text) > 0  then
                  Begin
                       DM_ADMIN.Z_GARANTIA_CONTRATODEP_DESTINO.AsString := ComboGarantiaSeguradora.Text;
                  end;

                  DBMemo1.Lines.Text := UpperCase(DBMemo1.Lines.Text);

                  DM_ADMIN.Z_GARANTIA_CONTRATO.ApplyUpdates;
                  setLog(DM_ADMIN.Z_GARANTIA_CONTRATOID_CONTRATO_GARANTIA.AsString, 'ALTERAÇÃO', Self.Caption+': GARANTIA', DM_ADMIN.Z_GARANTIA_CONTRATO);
                  unMsg.INFORMA(1);
                  Btn_Garantia_Novo.Enabled := True;
               Except
                ON E: Exception DO
                     unUtilitario.setMensagem('Houve um erro ao salvar o registro!'+#13+e.Message,'erro');
               End;
          End
          Else
              unMsg.ERRO(13);

          DM_ADMIN.Z_GARANTIA_CONTRATO.Edit;
  End;
end;

procedure TCAD_Aluguel.Btn_Garantia_ExcluirClick(Sender: TObject);
begin
     If MessageDlg('Deseja excluir esta Pessoa?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_ADMIN.Z_PESSOA_CONTRATO.Active Then
              Begin
                   Try
                      setLog(DM_ADMIN.Z_GARANTIA_CONTRATOID_CONTRATO_GARANTIA.AsString, 'EXCLUSÃO', Self.Caption+': GARANTIA', DM_ADMIN.Z_GARANTIA_CONTRATO);
                      DM_ADMIN.Z_GARANTIA_CONTRATO.Delete;
                      DM_ADMIN.Z_GARANTIA_CONTRATO.ApplyUpdates;
                      unMsg.INFORMA(2);

                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_ADMIN.Z_GARANTIA_CONTRATO.Edit;
end;

procedure TCAD_Aluguel.AdicionarRegistros1Click(Sender: TObject);
Var i: integer;
begin

  IF DM_Admin.Z_Aluguel.RecordCount = 0 Then
     Exit;

  if Grid_Busca.SelectedRows.Count > 0 then
  begin
       with Grid_Busca.DataSource.DataSet do
       begin
            for i := 0 to Grid_Busca.SelectedRows.Count-1 do
            begin
                 GotoBookmark(Pointer(Grid_Busca.SelectedRows.Items[i]));
                 SelecaoRegistro.Add(Grid_Busca.DataSource.DataSet.FieldByName('ID_CONTRATO').AsString);
            end;
       end;

       unUtilitario.setMensagem('CONTRATO'+#13+IntToStr(Grid_Busca.SelectedRows.Count) + ' Registro(s) Adicionado(s)!' + #13 + IntToStr(SelecaoRegistro.Count) + ' Registro(s) na lista até o momento.','informa');
       PRINCIPAL.setMensagem('CONTRATO '+IntToStr(Grid_Busca.SelectedRows.Count) + ' Registro(s) Adicionado(s)! ' + IntToStr(SelecaoRegistro.Count) + ' Registro(s) na lista até o momento.');
  end;

  Grid_Busca.SelectedRows.Clear;

end;

procedure TCAD_Aluguel.BitBtn10Click(Sender: TObject);
begin
      unUtilitario.setMensagem('Se caso você souber que o Governo Federal fez alguma atualização na tabela de IRRF, favor nos informe para que possamos atualizar as informações do sistema.'+#13+'Email: suporte@celuladigital.com.br Telefone: '+celulaTelefone,'INFORMA');
end;

procedure TCAD_Aluguel.BitBtn11Click(Sender: TObject);
begin
      ShellExecute(0, 'open', 'http://www.fazendocontas.com.br/index.php?option=com_content&view=article&id=201:irrf-imposto-de-renda-retido-na-fonte-no-aluguel&catid=37:financas&Itemid=81', nil, nil, SW_SHOWNORMAL);
end;

procedure TCAD_Aluguel.btnCriarImpostoClick(Sender: TObject);
var sql, sql2, sqlTaxa: TZQuery;
    id_irrf: String;
    valor_irrf: Currency;
begin

     sql := unUtilitario.getSelect('select first 1 id_caixa_sis from caixa_sis where UPPER(nome) = ''IRRF'' and tipo = ''SUBGRUPO'' and ativo = ''SIM'' ');

     if sql.RecordCount <= 0 then
     Begin
          setMensagem('Não foi identificado um SUBGRUPO de contas no sistema. Favor, crie um SUBGRUPO de contas chamado "IRRF" para ser usado neste processo. Vá em ADMINISTRAR >> CONFIGURAÇÕES.','informa');
          EXIT;
     end
     else
         id_irrf := sql.Fields[0].AsString;


     if Length(Trim(id_irrf)) <= 0 then
     Begin
          setMensagem('Não foi identificado o CÓDIGO DO SUBGRUPO de contas IRRF. Favor entrar em contato com o Suporte Técnico.','erro');
          EXIT;
     end;

     if DM_ADMIN.Z_ALUGUELVALOR.AsCurrency >= 0 then
     Begin
          setMensagem('Contrato sem valor de cobrança do inquilino. Favor informar esse valor na aba Condições de Contrato.','erro');
          EXIT;
     end
     else
     Begin
          valor_irrf := 0;
          sqlTaxa.Connection := PRINCIPAL.MySQL;
          //sqlTaxa.SQL.Add('SELECT * FROM sistema_irrf where ORDER BY id DESC');
          //valor_irrf = ((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency * sqlTaxa.FieldByName('').AsCurrency)/100) - sqlTaxa.FieldByName('').AsCurrency;

          if valor_irrf <= 0 then
             setMensagem('Cálculo de IRRF errado! Resultado:'+CurrToStr(valor_irrf),'erro');
             EXIT;
     end;
     

     sql := unUtilitario.getSQL('update caixa_entrada set ativo = ''XXX'', data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+' where operacao like ''%IRRF%'' and id_contrato = '+ds.DataSet.FieldByName('ID_CONTRATO').AsString+' and id_subtipo = '+id_irrf+' and ativo = ''SIM'' and data_ref between '''+formataDataSQL(DateToStr(IRRFDATAINICIAL.Date))+''' and '''+formataDataSQL(DateToStr(IRRFDATAFINAL.Date))+''' ');
     sql.ApplyUpdates;

     sql := unUtilitario.getSelect('select CS.*, 0.00 AS CALCULO from caixa_saida CS where cs.id_contrato = '+ds.DataSet.FieldByName('ID_CONTRATO').AsString+' and cs.id_subtipo = 3 and cs.ativo = ''SIM'' AND cs.data_pgto is not null and cs.data_ref between '''+formataDataSQL(DateToStr(IRRFDATAINICIAL.Date))+''' and '''+formataDataSQL(DateToStr(IRRFDATAFINAL.Date))+''' ');

     if sql.RecordCount <= 0 then
     Begin
          setMensagem('Não foi encontrado nenhuma conta no Caixa Saída para estas datas e este contrato. Favor criar as contas na aba Geração do Financeiro deste formulário de Contratos!','erro');
          EXIT;
     end
     else
     Begin
          setMensagem('Foram encontrados '+IntToStr(sql.RecordCount)+' conta(s) no Caixa Saída (Repasse de aluguéis) para este contrato durante o período informado (e que não estão pagas).'+#13+'Será criado contas no Caixa Entrada com vínculos para estas contas.'+#13+'Não importa se já foram criadas anteriormente. O sistema vai atualizar as contas já existentes com essa nova geração.','informa');
          while not sql.Eof do
          Begin
               cadastraConta('ENTRADA', '0', '1', id_irrf, '2', sql.FieldByName('ID_PESSOA').AsString, DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', sql.FieldByName('ID_CAIXA').AsString, sql.FieldByName('DATA_REF').AsString, DateTimeToStr(Now()), DateTimeToStr(Now()), 'ABATIMENTO IRRF 0%' , 'CRIADO NO FORM DE CONTRATOS ABA DE IRRF.', '1.00', '0', '0', '0', sql.FieldByName('PARCELA').AsString, 'NAO', 'SIM', 'NAO');
               sql.Next;
          end;
     end;

     ZIRRF_CONTAS.Close;
     ZIRRF_CONTAS.Open;
     
     setMensagem('Processo Concluído! Verifique na tabela de Contas de IRRF já criadas para este Contrato se está tudo correto.','informa');
end;

procedure TCAD_Aluguel.btnIRRFClick(Sender: TObject);
begin
     if numMinimoIRRF > 0 then
     Begin
     DM_Admin.Z_ALUGUEL.Close;
     DM_Admin.Z_ALUGUEL.SQL.Clear;
     DM_Admin.Z_ALUGUEL.SQL.Text := 'SELECT C.*, im.numero, ''00/00/0000'' as DATAFINAL, '+
     ' PC.TIPO ||''-''|| P.NOME AS INQUILINO, (select first 1 skip 0 pe.nome from pessoa pe '+
     ' LEFT join pessoa_imovel pi on pi.id_pessoa = pe.id_pessoa '+
     ' where pi.status LIKE ''%PROPRIET_RIO%'' and pi.id_imovel = C.id_imovel) as PROPRIETARIO, '+
     ' im.complemento, log.nome as  logradouro FROM CONTRATO C '+
     ' LEFT JOIN PESSOA_CONTRATO PC ON PC.ID_CONTRATO = C.ID_CONTRATO and (PC.TIPO LIKE ''LOCAT_RIO'' OR PC.TIPO = ''INQUILINO'' OR PC.TIPO = ''COMPRADOR'') '+
     ' LEFT join imovel im on im.id_imovel = c.id_imovel '+
     ' LEFT join logradouro log on log.id_logradouro = im.id_logradouro '+
     ' LEFT JOIN PESSOA P ON P.ID_PESSOA = PC.ID_PESSOA WHERE (C.ativo = ''SIM'') AND '+
     ' C.valor >= '+formataDinheiroSQL(FloatToStr(numMinimoIRRF))+
     ' order by C.DATA';

     DM_Admin.Z_ALUGUEL.Open;

     PRINCIPAL.setMensagem('Contratos Encontrados: '+IntToStr(DM_Admin.Z_ALUGUEL.RecordCount));
     end
     else
         unUtilitario.setMensagem('O valor mínimo de IFFR não foi encontrado online. Verifique a sua conexão com a internet.','erro');

end;

procedure TCAD_Aluguel.BitBtn13Click(Sender: TObject);
Var varSQL: TZQuery;
    dataFinal: String;
begin

     IF DS.DataSet.FieldByName('ID_CONTRATO').IsNull THEN
        EXIT;

     try
        if getStrToCurr(trim(EditValorValorNovo.Text)) = 0 Then
        Begin
             unUtilitario.setMensagem('Entre com o valor que deseja alterar!','erro');
             EditValorValorNovo.SetFocus;
             Exit;
        End;
     Except
           Exit;
     end;

     try
         if unUtilitario.setMensagem('Deseja atualizar os registros agora?','confirma') = IDYES then
         Begin

              varSQL := unUtilitario.getSelect('select max(data_ref) from caixa_entrada where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
              dataFinal := DateToStr(varSQL.Fields[0].AsDateTime);

              if EditValorValorForma.ItemIndex = 0 Then //INQUILINO
              Begin
                   varSQL := unUtilitario.getSQL('update caixa_ENTRADA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+',  valor = '+formataDinheiroSQL(EditValorValorNovo.Text)+' where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL.ApplyUpdates;
                   setLogSQL(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'ALTERAÇÃO', Self.Caption+': REAJUSTE DE VALOR DO CONTRATO', varSQL.SQL.Text);
              End;

              if EditValorValorForma.ItemIndex = 1 Then //PROPRIETÁRIO
              Begin
                   varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+', valor = '+formataDinheiroSQL(EditValorValorNovo.Text)+' where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL.ApplyUpdates;
                   setLogSQL(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'ALTERAÇÃO', Self.Caption+': REAJUSTE DE VALOR DO CONTRATO', varSQL.SQL.Text);
              End;

              if EditValorValorForma.ItemIndex = 2 Then //AMBAS AS PARTES
              Begin
                   varSQL := unUtilitario.getSQL('update caixa_ENTRADA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+', valor = valor + '+formataDinheiroSQL(CurrToStr(getPorcToDinh(EditValorValorNovo.Text,EditSimuladorAntigoAluguel.Text)))+' where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL.ApplyUpdates;
                   setLogSQL(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'ALTERAÇÃO', Self.Caption+': REAJUSTE DE VALOR DO CONTRATO', varSQL.SQL.Text);

                   //varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+', valor = valor + '+formataDinheiroSQL(CurrToStr(getPorcToDinh(EditValorValorNovo.Text,EditSimuladorAntigoRepasse.Text)))+' where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+', valor = (valor * ('+formataDinheiroSQL(EditValorValorNovo.Text)+'+100) /100 ) where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL.SQL.Text;
                   varSQL.ApplyUpdates;
                   setLogSQL(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'ALTERAÇÃO', Self.Caption+': REAJUSTE DE VALOR DO CONTRATO', varSQL.SQL.Text);
              End;

         End;

     finally
            FreeAndNil(varSQL);
            unUtilitario.setMensagem('(CONCLUÍDO!)'+#13+'Entre agora com os NOVOS VALORES na aba CONDIÇÕES DO CONTRATO, e salve o registro do contrato!'+#13+'Se caso você não atualizar os valores, as informações do seu contrato não vão bater com as informações financeiras.','informa');
            PageControl2.TabIndex := 1;
     end;

end;

procedure TCAD_Aluguel.BitBtn14Click(Sender: TObject);
var escolha, sql: String;
begin

     escolha := InputBox('Geração do Relatório:','Quais informações você deseja gerar?'+#13+'1-Somente desde Contrato.'+#13+'2-Todos os Contratos do Proprietário.','1');

     if NOT verificaStringInt(escolha) then
        escolha := '1';

     escolha := trim(escolha);

     if escolha = '1' then
        sql := ' cs.id_contrato = '+DS.DataSet.FieldByName('ID_CONTRATO').AsString;

     if escolha = '2' then
     Begin
          DM_CADASTRO.DS_Curinga_02.DataSet.Open;
          DM_CADASTRO.DS_Curinga_02.DataSet.First;
          sql := '';
          
          while not DM_CADASTRO.DS_Curinga_02.DataSet.Eof do
          Begin
               sql := sql + DM_CADASTRO.DS_Curinga_02.DataSet.FieldByName('ID_PESSOA').AsString+', ';
               DM_CADASTRO.DS_Curinga_02.DataSet.Next;
          end;

          sql := sql+'0';
          sql := 'p.id_pessoa in ('+sql+')';
     end;

     DM_REL.ZQUERY1.Close;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.ZQUERY1.SQL.Add('select '+
     ' p.*, '+
     ' cs.*, '+
     ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as prop_valor, '+
     ' ce.*, '+
     ' iif( CS.garantido = ''SIM'', ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, 0, 0, ce.valor_desconto)) * pi.porcentagem)/100 , ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) * pi.porcentagem)/100) as inq_valor, '+
     ' pe.*, '+
     ' i.*, '+
     ' l.*, '+
     ' c.nome as cidade, '+
     ' u.sigla as estado, '+
     ' b.nome as bairro, '+
     ' iif( CS.garantido = ''SIM'', 0.00, ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, 0.00)) * pi.porcentagem)/100 - ((ce.valor * pi.porcentagem)/100) ) as inq_multa, '+
     ' iif( CS.garantido = ''SIM'', ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, 0, 0, ce.valor_desconto))'+' * pi.porcentagem)/100 - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)), ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))'+' * pi.porcentagem)/100 - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) ) as taxa_admin, '+
     ' 0.00 AS IRRF '+
     ' from caixa_saida cs '+
     ' inner join pessoa p on p.id_pessoa = cs.id_pessoa '+
     ' inner join caixa_entrada ce on ce.id_caixa = cs.id_entrada '+
     ' inner join pessoa pe on pe.id_pessoa = ce.id_pessoa and ce.data_pgto is not null '+
     ' inner join imovel i on i.id_imovel = cs.id_imovel '+
     ' inner join logradouro l on l.id_logradouro = i.id_logradouro '+
     ' inner join cidade c on c.id_cidade = l.id_cidade '+
     ' inner join uf u on u.id_sigla = l.id_sigla '+
     ' inner join bairro b on b.id_bairro = l.id_bairro '+
     ' inner join pessoa_imovel pi on pi.id_pessoa = p.id_pessoa and pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'''+
     ' where '+
     ' cs.id_subtipo = 3 and cs.ativo = ''SIM'' and cs.data_pgto is not null and cs.data_pgto between '''+formataDataSQL(DateToStr(IRRFDATAINICIAL.Date))+''' and '''+formataDataSQL(DateToStr(IRRFDATAFINAL.date))+''' and '+sql+
     ' order by P.ID_PESSOA, PE.ID_PESSOA, cs.data_pgto ');

     //l.nome, i.numero, p.nome,

     try
        DM_REL.ZQUERY1.SQL.Text;
        DM_REL.ZQUERY1.Open;
     except
           unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados do banco.','ERRO');
           Exit;
     end;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', 'RELAÇÃO DE RENDIMENTOS - '+DateToStr(IRRFDATAINICIAL.Date)+' ATÉ '+DateToStr(IRRFDATAFINAL.Date));

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_IRRF1.rav';
     setRave(1,'','');


     DM_REL.RV_SYS.SystemSetups := DM_REL.RV_SYS.SystemSetups - [ssAllowSetup];
     DM_REL.RV_SYS.DefaultDest := rdFile;
     DM_REL.RV_SYS.DoNativeOutput:= false;
     DM_REL.RV_SYS.RenderObject := DM_REL.RV_RENDER_PDF;
     DM_REL.RV_IMPRESSAO.SelectReport('Report1',True);
     DM_REL.RV_SYS.OutputFileName := ExtractFilePath(ParamStr(0))+'REL\pdf\INFORME_RENDIMENTO_'+DBEDIT_ID_CONTRATO.Text+'.pdf';
     DM_REL.RV_IMPRESSAO.Execute;


     DM_REL.RV_SYS.SystemSetups := DM_REL.RV_SYS.SystemSetups + [ssAllowSetup];
     DM_REL.RV_SYS.DefaultDest := rdPreview;
     DM_REL.RV_SYS.DoNativeOutput := true;
     DM_REL.RV_SYS.RenderObject := nil;

end;

procedure TCAD_Aluguel.BitBtn15Click(Sender: TObject);
var sql: TZQuery;
begin
      if fileexists(ExtractFilePath(ParamStr(0))+'REL\pdf\INFORME_RENDIMENTO_'+DBEDIT_ID_CONTRATO.Text+'.pdf') then
      Begin
           SQL := unUtilitario.getSelect('select p.nome, p.email from pessoa_imovel as pi inner join pessoa p on pi.id_pessoa = p.id_pessoa and p.ativo = ''SIM'' and p.email is not null where pi.status = ''PROPRIETARIO'' and pi.id_imovel = '+edit_codigo.Text);
           while not SQL.Eof do
           Begin
                PRINCIPAL.enviaEmail(0, getConf('EMPRESA_FANTASIA')+' - INFORME DE RENDIMENTO '+DBEDIT_ID_CONTRATO.Text, sql.FieldByName('email').AsString, sql.FieldByName('nome').AsString, ExtractFilePath(ParamStr(0))+'REL\pdf\INFORME_RENDIMENTO_'+DBEDIT_ID_CONTRATO.Text+'.pdf', 'Segue anexo o informe de rendimento em formato PDF.');
                SQL.Next;
           end;
           SQL.Close;
           DeleteFile(ExtractFilePath(ParamStr(0))+'REL\pdf\INFORME_RENDIMENTO_'+DBEDIT_ID_CONTRATO.Text+'.pdf');
           unUtilitario.setMensagem('Processo de envio de email concluído!', 'informa');
      end
      else
          unUtilitario.setMensagem('Primeiro, gere o arquivo de Informe de Rendimentos. (Para cada envio, é necessário gerar um novo arquivo.)', 'informa');
end;

procedure TCAD_Aluguel.BitBtn1Click(Sender: TObject);
begin

     PRINCIPAL.pegaDocumento.Execute;
     TRY
        If Length(Trim(PRINCIPAL.pegaDocumento.FileName))  > 0 Then
        Begin
             Screen.Cursor:=crHourGlass;
             //DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString := unUtilitario.copiaArquivo(Abrir_Arquivo.FileName, ExtractFileName(Abrir_Arquivo.FileName), 'DOC');
             DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString := unUtilitario.copiaArquivo(PRINCIPAL.pegaDocumento.FileName, 'ANEXO_CONTRATO_'+DS.DataSet.FieldByName('ID_CONTRATO').AsString, 'DOC');
             setLogSQL(DM_ADMIN.Z_GARANTIA_CONTRATOID_CONTRATO_GARANTIA.AsString, 'ANEXAR', Self.Caption+': GARANTIA DE CONTRATO', 'ANEXO INCLUIDO: '+DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString);

             Btn_Garantia_GravarClick(Sender);
        End;
     finally
            Screen.Cursor:=crDefault;
     end;

 { BACKUP PQ ESTOU USANDO AGORA O COMPONENTE DA TELA PRINCIPAL
   TRY
        If Length(Trim(Abrir_Arquivo.FileName))  > 0 Then
        Begin
             Screen.Cursor:=crHourGlass;
             //DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString := unUtilitario.copiaArquivo(Abrir_Arquivo.FileName, ExtractFileName(Abrir_Arquivo.FileName), 'DOC');
             DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString := unUtilitario.copiaArquivo(Abrir_Arquivo.FileName, 'ANEXO_CONTRATO_'+DS.DataSet.FieldByName('ID_CONTRATO').AsString, 'DOC');
             setLogSQL(DM_ADMIN.Z_GARANTIA_CONTRATOID_CONTRATO_GARANTIA.AsString, 'ANEXAR', Self.Caption+': GARANTIA DE CONTRATO', 'ANEXO INCLUIDO: '+DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString);

             Btn_Garantia_GravarClick(Sender);
        End;
     finally
            Screen.Cursor:=crDefault;
     end;
 }

end;

procedure TCAD_Aluguel.DBGrid4CellClick(Column: TColumn);
begin
     If DM_ADMIN.Z_GARANTIA_CONTRATO.Active then
        DM_ADMIN.Z_GARANTIA_CONTRATO.Edit;
end;

procedure TCAD_Aluguel.DBGrid5DblClick(Sender: TObject);
begin
     if DM_ADMIN.Z_ALUGUELID_CONTRATO.IsNull Then
        Exit;

     unCamposBusca.buscaIndividual(2,ZSaidaID_CAIXA.AsInteger,TCAD_Caixas,self);
end;

procedure TCAD_Aluguel.BitBtn4Click(Sender: TObject);
begin

     If setMensagem('Deseja excluir o arquivo anexado?','confirma') = IDYes Then
     Begin
          if DeleteFile('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\DOC\'+DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString) then
          Begin
               DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString := '';
               setMensagem('Anexo excluído com sucesso!'+#13+'Salve o registro desta garantia para concluir a ação.','informa');
               setLogSQL(DM_ADMIN.Z_GARANTIA_CONTRATOID_CONTRATO_GARANTIA.AsString, 'EXCLUIR', Self.Caption+': GARANTIA DE CONTRATO', 'ANEXO DELETADO: '+DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString);

               Btn_Garantia_GravarClick(Sender);
          end
          else
              setMensagem('Erro ao tentar apagar o arquivo!'+#13+'Verifique a sua rede local e/ou verifique se o arquivo já não foi apagado. Local:'+#13+'\\'+getUser('SERVIDOR')+'\IMOBILIARIA\DOC\'+DM_ADMIN.Z_GARANTIA_CONTRATOANEXO_OBS.AsString+#13+'Se o arquivo já foi apagado do servidor, basta enviar outro para sobrepor o antigo.','erro');
     End;
     
end;

procedure TCAD_Aluguel.BitBtn6Click(Sender: TObject);
begin
      ShellExecute(0, 'open', 'http://www.receita.fazenda.gov.br/Aliquotas/TabProgressivaCalcMens.htm', nil, nil, SW_SHOWNORMAL);
end;

procedure TCAD_Aluguel.checkPessoasContratosClick(Sender: TObject);
begin
     if checkPessoasContratos.Checked then
     begin
          ContaPessoaEntrada.Text := 'Escolha um nome da listagem já elaborada';
          ContaPessoaSaida.Text := 'Escolha um nome da listagem já elaborada';
          ContaPessoaEntrada.Items.Clear;
          ContaPessoaSaida.Items.Clear;
     end
     else
     begin
          ContaPessoaEntrada.Text := 'Digite um nome e abra a listagem';
          ContaPessoaSaida.Text := 'Digite um nome e abra a listagem';
          ContaPessoaEntrada.Items.Clear;
          ContaPessoaSaida.Items.Clear;
     end;
     
end;

procedure TCAD_Aluguel.checkPessoasContratosMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
     PRINCIPAL.setMensagem('Listar somente as pessoas deste contrato.');
end;

procedure TCAD_Aluguel.contaContinuarMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
     PRINCIPAL.setMensagem('Continuar a numeração das parcelas para o mesmo SubGrupo, se caso já tenha alguma criada para este mesmo contrato. Ex: 1,2,3 ou 13,14,15... OBS: A numeração é com base no caixa ENTRADA somente.');
end;

procedure TCAD_Aluguel.contaDescontoChange(Sender: TObject);
begin
     IF Length(contaDesconto.Text) = 0 Then
        contaDesconto.Text := '0';

     contaDesconto := validaPontoDinheiroChange(contaDesconto);
end;

procedure TCAD_Aluguel.contaJurosChange(Sender: TObject);
begin
     IF Length(contaJuros.Text) = 0 Then
        contaJuros.Text := '0';

     contaJuros := validaPontoDinheiroChange(contaJuros);
end;

procedure TCAD_Aluguel.contaMultaChange(Sender: TObject);
begin

     IF Length(contaMulta.Text) = 0 Then
        contaMulta.Text := '0';

     contaMulta := validaPontoDinheiroChange(contaMulta);
end;

procedure TCAD_Aluguel.ContaPessoaEntradaDropDown(Sender: TObject);
Var varSQL: TZQuery;
begin
     ContaPessoaEntrada.Items.Clear;

     if Length(trim(DBEDIT_ID_CONTRATO.Text)) = 0 then  //Código contrato
     Begin
       unUtilitario.setMensagem('Abra um novo registro ou edite um existente.','erro');
       exit;
     end;

     if Length(trim(Edit_Codigo.Text)) = 0 then  //Código imovel
     Begin
       unUtilitario.setMensagem('Selecione um imóvel para este contrato.','erro');
       exit;
     end;

     if checkPessoasContratos.Checked then
     Begin

          varSQL := unUtilitario.getSelect('SELECT p.NOME || '' ('' || pi.status || '') ''|| pi.porcentagem ||''% -''|| p.ID_PESSOA FROM PESSOA p inner join pessoa_imovel pi on pi.id_pessoa =p.id_pessoa WHERE p.ATIVO = ''SIM'' and pi.id_imovel = '+Edit_Codigo.Text+' ORDER BY p.NOME');

          while not varSQL.Eof do
          Begin
               if Length(trim(varSQL.Fields[0].AsString)) > 0 then
               Begin
                    ContaPessoaEntrada.Items.Add(varSQL.Fields[0].AsString);
               end;
               varSQL.Next;
          End;

          varSQL := unUtilitario.getSelect('SELECT p.NOME || '' ('' || pc.tipo || '') ''|| pc.porcentagem ||''% -''|| p.ID_PESSOA FROM PESSOA p inner join pessoa_contrato pc on pc.id_pessoa =p.id_pessoa WHERE p.ATIVO = ''SIM'' AND pc.id_contrato = '+DBEDIT_ID_CONTRATO.Text+' ORDER BY p.NOME');

          while not varSQL.Eof do
          Begin
               if Length(trim(varSQL.Fields[0].AsString)) > 0 then
               Begin
                    ContaPessoaEntrada.Items.Add(varSQL.Fields[0].AsString);
               end;
               varSQL.Next;
          End;

     end
     else
     begin
          if Length(Trim(ContaPessoaEntrada.Text)) = 0 then
             Exit;

          varSQL := unUtilitario.getSelect('SELECT NOME ||''-''|| ID_PESSOA FROM PESSOA WHERE ATIVO = ''SIM'' AND NOME LIKE '''+ContaPessoaEntrada.Text+'%'' ORDER BY NOME');

          while not varSQL.Eof do
          Begin
               ContaPessoaEntrada.Items.Add(varSQL.Fields[0].AsString);
               varSQL.Next;
          End;
     end;

     AjustarLargura(ContaPessoaEntrada);
     varSQL.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_Aluguel.ContaPessoaEntradaSelect(Sender: TObject);
begin
     calculoSimuladorPorcentagemPessoa('CONTAPESSOAENTRADA');
end;

procedure TCAD_Aluguel.ContaPessoaSaidaDropDown(Sender: TObject);
Var varSQL: TZQuery;
begin
     ContaPessoaSaida.Items.Clear;

     if Length(trim(DBEDIT_ID_CONTRATO.Text)) = 0 then  //Código contrato
     Begin
       unUtilitario.setMensagem('Abra um novo registro ou edite um existente.','erro');
       exit;
     end;

     if Length(trim(Edit_Codigo.Text)) = 0 then  //Código imovel
     Begin
       unUtilitario.setMensagem('Selecione um imóvel para este contrato.','erro');
       exit;
     end;

     if checkPessoasContratos.Checked then
     Begin

          varSQL := unUtilitario.getSelect('SELECT p.NOME || '' ('' || pi.status || '') ''|| pi.porcentagem ||''% -''|| p.ID_PESSOA FROM PESSOA p inner join pessoa_imovel pi on pi.id_pessoa =p.id_pessoa WHERE p.ATIVO = ''SIM'' and pi.id_imovel = '+Edit_Codigo.Text+' ORDER BY p.NOME');

          while not varSQL.Eof do
          Begin
               if Length(trim(varSQL.Fields[0].AsString)) > 0 then
               Begin
                    ContaPessoaSaida.Items.Add(varSQL.Fields[0].AsString);
               end;
               varSQL.Next;
          End;

          varSQL := unUtilitario.getSelect('SELECT p.NOME || '' ('' || pc.tipo || '') ''|| pc.porcentagem ||''% -''|| p.ID_PESSOA FROM PESSOA p inner join pessoa_contrato pc on pc.id_pessoa =p.id_pessoa WHERE p.ATIVO = ''SIM'' AND pc.id_contrato = '+DBEDIT_ID_CONTRATO.Text+' ORDER BY p.NOME');

          while not varSQL.Eof do
          Begin
               if Length(trim(varSQL.Fields[0].AsString)) > 0 then
               Begin
                    ContaPessoaSaida.Items.Add(varSQL.Fields[0].AsString);
               end;
               varSQL.Next;
          End;

     end
     else
     begin
          if Length(Trim(ContaPessoaSaida.Text)) = 0 then
             Exit;

          varSQL := unUtilitario.getSelect('SELECT NOME ||''-''|| ID_PESSOA FROM PESSOA WHERE ATIVO = ''SIM'' AND NOME LIKE '''+ContaPessoaSaida.Text+'%'' ORDER BY NOME');

          while not varSQL.Eof do
          Begin
               ContaPessoaSaida.Items.Add(varSQL.Fields[0].AsString);
               varSQL.Next;
          End;
     end;

     AjustarLargura(ContaPessoaSaida);
     varSQL.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_Aluguel.ContaPessoaSaidaSelect(Sender: TObject);
begin
     calculoSimuladorPorcentagemPessoa('CONTAPESSOASAIDA');
end;

procedure TCAD_Aluguel.ContasBotaoClick(Sender: TObject);
Var i, codigo: Integer;
    mes: TDateTime;
    varSQL, varSQL2: TZQuery;
    operacao, descricao, garantido: String;
begin
     if PRINCIPAL.bloqueado then
     Begin
         principal.mostraAvisoBloqueio();
         exit;
     end;
     
     IF (StrToFloat(ContasValor.Text) = 0) OR (StrToInt(ContasVezes.Text) = 0) OR (StrToFloat(ContasParcela.Text) = 0) Then
     Begin
          unUtilitario.setMensagem('Entre com um valor, qtde e parcela na nova conta!','erro');
          Exit;
     End;

     if ((NOT verificaStringInt(IntToStr(IDCampo(ContaPessoaEntrada.Text)))) OR (IDCampo(ContaPessoaEntrada.Text) <= 0)) and (ContasCaixa.Text <> 'Saída (Pagamentos)') then
     Begin
          unUtilitario.setMensagem('Informe a pessoa para pagar a imobiliária!','informa');
          ContaPessoaEntrada.SetFocus;
          exit;
     end;

     if ((NOT verificaStringInt(IntToStr(IDCampo(ContaPessoaSaida.Text)))) OR (IDCampo(ContaPessoaSaida.Text) <= 0)) and (ContasCaixa.Text <> 'Entrada (Recebimentos)') then
     Begin
          unUtilitario.setMensagem('Informe a pessoa para a imobiliária pagar!','informa');
          ContaPessoaSaida.SetFocus;
          exit;
     end;

     mes := ContasDateInicio.Date;

     if CheckBoleto.Checked then
        operacao := 'CRIADO AUTOMATICAMENTE PELO FINANCEIRO DO CONTRATO. [BOLETO]'
     else
         operacao := 'CRIADO AUTOMATICAMENTE PELO FINANCEIRO DO CONTRATO.';

     if checkgarantidoOutros.Checked then
        garantido := 'SIM'
     else
         garantido := 'NAO';
     
     if contaContinuar.State = cbChecked then
        setContadorAvulso(ContasdiaLookupSubgrupo.KeyValue, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsInteger, True)
     else
         setContadorAvulso(ContasdiaLookupSubgrupo.KeyValue, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsInteger, False);

     for i := 0 to StrToInt(ContasVezes.Text) - 1 do
     Begin
           //IPTU o tratamento é diferente para aparecer o número total das parcelas na descrição
          if ContasdiaLookupSubgrupo.KeyValue = 4 then
          Begin
               descricao := '( '+IntToStr(i+1)+' de '+ContasVezes.Text+' ) '+ContasdiaLookupGrupo.Text+' / '+ContasdiaLookupSubgrupo.Text+': ';
          end
          else
              descricao := ContasdiaLookupGrupo.Text+' / '+ContasdiaLookupSubgrupo.Text+': ';

          if (ContasCaixa.ItemIndex = 0) OR (ContasCaixa.ItemIndex = 2) Then
          Begin
               varSQL := unUtilitario.getSelect('SELECT ID FROM sp_gen_CAIXA_ENTRADA_id');
               codigo := varSQL.Fields[0].AsInteger;
               cadastraConta('ENTRADA', IntToStr(codigo), IntToStr(ContasdiaLookupCategoria.KeyValue), IntToStr(ContasdiaLookupSubgrupo.KeyValue), IntToStr(ContasdiaLookupGrupo.KeyValue), IntToStr(IDCampo(ContaPessoaEntrada.Text)), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), '0', '0', DateToStr(mes), DateTimeToStr(Now()), DateTimeToStr(Now()), descricao + ContasObs.Text , operacao, ContasParcela.Text, contaJuros.Text, contaMulta.Text, contaDesconto.Text, IntToStr(i+contador), 'NAO', 'SIM', garantido);
          End;

          if (ContasCaixa.ItemIndex = 1) then
               cadastraConta('SAIDA', '0', IntToStr(ContasdiaLookupCategoria.KeyValue), IntToStr(ContasdiaLookupSubgrupo.KeyValue), IntToStr(ContasdiaLookupGrupo.KeyValue), IntToStr(IDCampo(ContaPessoaSaida.Text)), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), IntToStr(codigo), '0', DateToStr(mes), DateTimeToStr(Now()), DateTimeToStr(Now()), descricao + ContasObs.Text , operacao, ContasParcela.Text, contaJuros.Text, contaMulta.Text, contaDesconto.Text, IntToStr(i+contador), 'NAO', 'SIM', garantido);

          if (ContasCaixa.ItemIndex = 2) Then
              cadastraConta('SAIDA', '0', IntToStr(ContasdiaLookupCategoria.KeyValue), IntToStr(ContasdiaLookupSubgrupo.KeyValue), IntToStr(ContasdiaLookupGrupo.KeyValue), IntToStr(IDCampo(ContaPessoaSaida.Text)), DM_ADMIN.Z_ALUGUELID_IMOVEL.AsString, DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, getUser('CODIGO_USUARIO'), IntToStr(codigo), '0', DateToStr(mes), DateTimeToStr(Now()), DateTimeToStr(Now()), descricao + ContasObs.Text , operacao, ContasParcela.Text, '0', '0', contaDesconto.Text, IntToStr(i+contador), 'NAO', 'SIM', garantido);

          if ContasRepetindo.ItemIndex = 0 Then
             Mes := IncDay(Mes, 1)
          else
          if ContasRepetindo.ItemIndex = 1 Then
             Mes := IncWeek(Mes, 1)
          else
          if ContasRepetindo.ItemIndex = 2 Then
             Mes := IncMonth(Mes, 1)
          else
          if ContasRepetindo.ItemIndex = 3 Then
             Mes := IncYear(Mes, 1);
     End;

     FreeAndNil(varSQL2);
     unUtilitario.setMensagem('Contas criadas com sucesso!'+#13+'Os dados se mantém nos campos para auxiliar a inclusão de mais contas.' ,'informa');
     TabSheet1Show(Sender); //Atualiza as informações na tela.
     //setComponentesFinanceiros(); Para facilitar a inclusão de várias contas.
end;

procedure TCAD_Aluguel.ContasCaixaChange(Sender: TObject);
begin
{
Entrada (Recebimentos)
Saída (Pagamentos)
Ambos (Entrada & Saída)
}

 ContaPessoaEntrada.Enabled := TRUE;
 ContaPessoaSaida.Enabled := TRUE;

     if ContasCaixa.Text = 'Entrada (Recebimentos)' then
     begin
          ContaPessoaEntrada.Enabled := TRUE;
          ContaPessoaSaida.Enabled := FALSE;
     end;

     if ContasCaixa.Text = 'Saída (Pagamentos)' then
     begin
          ContaPessoaEntrada.Enabled := FALSE;
          ContaPessoaSaida.Enabled := TRUE;
     end;

     if ContasCaixa.Text = 'Ambos (Entrada & Saída)' then
     begin
          ContaPessoaEntrada.Enabled := TRUE;
          ContaPessoaSaida.Enabled := TRUE;
     end;
     
end;

procedure TCAD_Aluguel.ContasParcelaChange(Sender: TObject);
begin
     if ContasParcela.Focused then
     Begin
          ContasParcela := validaPontoDinheiroChange(ContasParcela);
          if Length(trim(ContasParcela.Text)) > 0 then
             if StrToCurr(ContasVezes.Text) > 0 then
                if Length(trim(ContasVezes.Text)) > 0 then
                   if StrToCurr(ContasParcela.Text) > 0 then
                      ContasValor.Text := StringReplace(unUtilitario.getCurrToStr(StrToCurr(ContasParcela.text)*StrToCurr(ContasVezes.Text),false),'.','',[rfReplaceAll])
                   else
                       ContasValor.Text := '0,00'
                else
                    ContasVezes.Text := '1'
             else
                 ContasValor.Text := '0,00'
          else
              ContasValor.Text := '0,00';
     end;
end;

procedure TCAD_Aluguel.ContasParcelaExit(Sender: TObject);
begin
     IF Length(trim(ContasParcela.Text)) = 0 Then
        ContasParcela.Text := '0,00';

     ContasParcela.Text := StringReplace(unUtilitario.getCurrToStr( StrToCurr(ContasParcela.Text),false ),'.','',[rfReplaceAll]);
end;

procedure TCAD_Aluguel.ContasValorChange(Sender: TObject);
begin
     if ContasValor.Focused then
     Begin
          ContasValor := validaPontoDinheiroChange(ContasValor);
          if Length(trim(ContasValor.Text)) > 0 then
             if Length(trim(ContasVezes.Text)) > 0 then
                if StrToCurr(ContasVezes.Text) > 0 then
                   ContasParcela.Text := StringReplace(unUtilitario.getCurrToStr(StrToCurr(ContasValor.text)/StrToCurr(ContasVezes.Text),false),'.','',[rfReplaceAll])
                else
                    ContasParcela.Text := '0,00'
             else
                 ContasVezes.Text := '1'
          else
              ContasValor.Text := '0';
     end;

end;

procedure TCAD_Aluguel.ContasValorExit(Sender: TObject);
begin
     IF Length(trim(ContasValor.Text)) = 0 Then
        ContasValor.Text := '0,00';

     ContasValor.Text := StringReplace(unUtilitario.getCurrToStr( StrToCurr(ContasValor.Text),false ),'.','',[rfReplaceAll]);
end;

procedure TCAD_Aluguel.ContasVezesChange(Sender: TObject);
begin
     if ContasVezes.Focused then
     Begin
          if Length(trim(ContasValor.Text)) > 0 then
             if StrToCurr(ContasValor.Text) > 0 then
                if Length(trim(ContasVezes.Text)) > 0 then
                   if StrToCurr(ContasVezes.Text) > 0 then
                      ContasParcela.Text := StringReplace(unUtilitario.getCurrToStr(StrToCurr(ContasValor.text)/StrToCurr(ContasVezes.Text),false),'.','',[rfReplaceAll])
                   else
                       ContasParcela.Text := '0,00'
                else
                    ContasVezes.Text := '1'
             else
                 ContasParcela.Text := '0,00'
          else
              ContasValor.Text := '0,00';
     end;
end;

procedure TCAD_Aluguel.ContasVezesExit(Sender: TObject);
begin
     IF Length(trim(ContasVezes.Text)) = 0 Then
        ContasVezes.Text := '1';

     if StrToInt(ContasVezes.Text) < 0 then
        ContasVezes.text := '1';
     
end;

procedure TCAD_Aluguel.DBEdit11DblClick(Sender: TObject);
begin
    if not DM_CADASTRO.DS_Curinga_02.DataSet.FieldByName('ID_PESSOA').IsNull then
       unCamposBusca.buscaIndividual(5,DM_CADASTRO.DS_Curinga_02.DataSet.FieldByName('ID_PESSOA').Value,TCAD_Pessoa,self);

end;

procedure TCAD_Aluguel.DBEdit1Change(Sender: TObject);
var varSQL: TZQuery;
begin

     if Length(Trim(DM_ADMIN.Z_GARANTIA_CONTRATOCAL_TIPO.AsString)) > 0 Then
        ComboGarantiaTipo.Text := DM_ADMIN.Z_GARANTIA_CONTRATOCAL_TIPO.AsString
     else
         ComboGarantiaTipo.Text := '';

     if Length(Trim(DM_ADMIN.Z_GARANTIA_CONTRATOSEG_SEGURADORA.AsString)) > 0 Then
     Begin
          varSQL := getSelect('SELECT P.NOME, PC.TIPO, P.ID_PESSOA FROM PESSOA P INNER JOIN PESSOA_CONTRATO PC ON PC.ID_PESSOA = P.ID_PESSOA WHERE P.ID_PESSOA = '+DM_ADMIN.Z_GARANTIA_CONTRATOSEG_SEGURADORA.AsString);

          ComboGarantiaPessoa.Text := varSQL.FieldByName('NOME').AsString +' ('+varSQL.FieldByName('TIPO').AsString+')-'+varSQL.FieldByName('ID_PESSOA').AsString;

          varSQL.Close;
          FreeAndNil(varSQL);
     end
     else
         ComboGarantiaPessoa.Text := '';

     if Pos(' '+DS.DataSet.FieldByName('ID_IMOVEL').AsString,DM_ADMIN.Z_GARANTIA_CONTRATOOBS.AsString) > 0 then
        CheckGarantiaSelecionado.Checked := true
     else
         CheckGarantiaSelecionado.Checked := false;

     if Length(Trim(DM_ADMIN.Z_GARANTIA_CONTRATODEP_DESTINO.AsString)) > 0 Then
        ComboGarantiaSeguradora.Text := DM_ADMIN.Z_GARANTIA_CONTRATODEP_DESTINO.AsString
     else
         ComboGarantiaSeguradora.Text := '';

     if DM_ADMIN.Z_GARANTIA_CONTRATO.State = dsBrowse then
        DM_ADMIN.Z_GARANTIA_CONTRATO.Edit;

end;

procedure TCAD_Aluguel.DBEdit2DblClick(Sender: TObject);
begin
     BitBtn3Click(Sender);
end;

procedure TCAD_Aluguel.DBEdit4Exit(Sender: TObject);
begin
     if DM_ADMIN.Z_ALUGUEL.Active then
     Begin
          Data_Termino.Caption := DateToStr(IncMonth(DM_ADMIN.Z_ALUGUEL.fieldbyname('VENCIMENTO').AsDateTime, DM_ADMIN.Z_ALUGUEL.fieldbyname('VIGENCIA').AsInteger - 1));
     end
     else
         Data_Termino.Caption := '00/00/0000';
     
end;

procedure TCAD_Aluguel.DBEDIT_ID_CONTRATOChange(Sender: TObject);
begin
     if NOT DM_Admin.Z_ALUGUELID_CONTRATO.IsNull AND Tab_Informacoes.Showing then
     Begin
        if DM_Admin.Z_ALUGUELHONORARIO_APOS.AsInteger = 1 then
             CheckMarcado.State := cbChecked;

        if DM_Admin.Z_ALUGUELHONORARIO_APOS.AsInteger = 0 then
             CheckMarcado.State := cbUnchecked;

        if DM_Admin.Z_ALUGUELHONORARIO_APOS.AsInteger = 2 then
             CheckMarcado.State := cbGrayed;
     end
end;

procedure TCAD_Aluguel.DBEdit77DblClick(Sender: TObject);
begin
    if not DM_ADMIN.DS_PESSOA_CONTRATO.DataSet.FieldByName('ID_PESSOA').IsNull then
       unCamposBusca.buscaIndividual(5,DM_ADMIN.DS_PESSOA_CONTRATO.DataSet.FieldByName('ID_PESSOA').Value,TCAD_Pessoa,self);

end;

procedure TCAD_Aluguel.Edit_TaxaPorcChange(Sender: TObject);
begin
  IF EDIT_TAXAPORC.Focused THEN
  BEGIN

       Edit_TaxaDinhe.Text := '';
       Edit_ValorRepasse.Text := '';

       If (Length(Trim(Edit_TaxaPorc.Text)) > 0) Then
          Edit_TaxaDinhe.Text := getCurrToStr((DM_ADMIN.Z_ALUGUELVALOR.AsCurrency * StrToFloat(StringReplace(formataDinheiroSQL(Edit_TaxaPorc.TEXT),'.',',',[rfReplaceAll])))/100, false);

       IF Length(TRIM(Edit_TaxaPorc.Text)) = 0 THEN
       BEGIN
            EDIT_TAXAPORC.Text := '0';
            EDIT_TAXAPORC.SetFocus;
       END;
    END;
end;

procedure TCAD_Aluguel.Edit_TaxaPorcExit(Sender: TObject);
begin
  if StrToFloat(StringReplace(formataDinheiroSQL(Edit_TaxaPorc.text),'.',',',[rfReplaceAll])) > 100 then
   begin
     application.MessageBox('Valor Inválido! Verifique novamente.','Aviso '+celulaNome, MB_OK);
     edit_taxaporc.SetFocus;
     Edit_taxaporc.Text := '';
   end;
end;

procedure TCAD_Aluguel.EditInfo1Change(Sender: TObject);
begin
     if EditInfo1.Focused Then
        setTela('INFO_1', EditInfo1.Text);
end;

procedure TCAD_Aluguel.EditInfo2Change(Sender: TObject);
begin
     if EditInfo2.Focused Then
        setTela('INFO_2', EditInfo2.Text);
end;

procedure TCAD_Aluguel.EditInfo3Change(Sender: TObject);
begin
     if EditInfo3.Focused Then
        setTela('INFO_3', EditInfo3.Text);
end;

procedure TCAD_Aluguel.EditInfo4Change(Sender: TObject);
begin
     if EditInfo4.Focused Then
        setTela('INFO_4', EditInfo4.Text);
end;

procedure TCAD_Aluguel.EditPrimeiroAluguelDinheiroChange(Sender: TObject);
begin
     if EditPrimeiroAluguelDinheiro.Focused then
     Begin
          EditPrimeiroAluguelPorcentagem.Text := '0';
          if Length(Trim(Edit_ValorRepasse.Text)) > 0 then
             if StrToCurr(Edit_ValorRepasse.Text) > 0 then
                if Length(Trim(EditPrimeiroAluguelDinheiro.Text)) > 0 then
                   EditPrimeiroAluguelPorcentagem.Text := getCurrToStr((StrToCurr(EditPrimeiroAluguelDinheiro.Text) * 100)/StrToCurr(Edit_ValorRepasse.Text), false)
     end;
end;

procedure TCAD_Aluguel.EditPrimeiroAluguelDinheiroExit(Sender: TObject);
begin
     if Length(Trim(EditPrimeiroAluguelDinheiro.Text)) <= 0 then
     Begin
          EditPrimeiroAluguelPorcentagem.Text := '0';
          EditPrimeiroAluguelDinheiro.Text := '0,00';
     end;
end;

procedure TCAD_Aluguel.EditPrimeiroAluguelPorcentagemChange(Sender: TObject);
begin
     if EditPrimeiroAluguelPorcentagem.Focused then
     Begin
          EditPrimeiroAluguelDinheiro.Text := '0,00';
          if Length(Trim(Edit_ValorRepasse.Text)) > 0 then
             if StrToCurr(Edit_ValorRepasse.Text) > 0 then
                if Length(Trim(EditPrimeiroAluguelPorcentagem.Text)) > 0 then
                   EditPrimeiroAluguelDinheiro.Text := getCurrToStr((StrToCurr(Edit_ValorRepasse.Text) * StrToCurr(EditPrimeiroAluguelPorcentagem.Text)) /100, false);
     end;
end;

procedure TCAD_Aluguel.EditPrimeiroAluguelPorcentagemExit(Sender: TObject);
begin
     if Length(Trim(EditPrimeiroAluguelPorcentagem.Text)) <= 0 then
     Begin
          EditPrimeiroAluguelPorcentagem.Text := '0';
          EditPrimeiroAluguelDinheiro.Text := '0,00';
     end;
end;

procedure TCAD_Aluguel.EditSimuladorPorcentagemChange(Sender: TObject);
Var varSQL: TZQuery;
begin

     IF DS.DataSet.FieldByName('ID_CONTRATO').IsNull THEN
        EXIT;
        
try
     EditSimuladorPorcentagem.Color := clRed;
     EditSimuladorPorcentagem.Repaint;

     if Length(Trim(EditSimuladorPorcentagem.Text)) = 0 Then
        EditSimuladorPorcentagem.Text := '0,00';

     varSQL := unUtilitario.getSelect('select SUM(valor) from caixa_ENTRADA where id_subtipo = ''3'' and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     EditSimuladorTotalLocatario.Text := 'Montante atual R$'+getCurrToStr(varSQL.Fields[0].AsCurrency,FALSE)+' / Novo montante R$'+getCurrToStr(varSQL.Fields[0].AsCurrency + getPorcToDinh(EditSimuladorPorcentagem.Text,varSQL.Fields[0].AsString),false);

     varSQL := unUtilitario.getSelect('select SUM(valor) from caixa_SAIDA where id_subtipo = ''3'' and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     EditSimuladorTotalProprietario.Text := 'Montante atual R$'+getCurrToStr(varSQL.Fields[0].AsCurrency,FALSE)+' / Novo montante R$'+getCurrToStr(varSQL.Fields[0].AsCurrency + getPorcToDinh(EditSimuladorPorcentagem.Text,varSQL.Fields[0].AsString),false);

     EditSimuladorNovoAluguel.Text := getCurrToStr( StrToCurr(StringReplace(EditSimuladorAntigoAluguel.Text,'.', '',[rfReplaceAll])) + getPorcToDinh(StringReplace(EditSimuladorPorcentagem.Text,'.', '',[rfReplaceAll]),StringReplace(EditSimuladorAntigoAluguel.Text,'.', '',[rfReplaceAll])),false);
     EditSimuladorNovoRepasse.Text := getCurrToStr( StrToCurr(StringReplace(EditSimuladorAntigoRepasse.Text,'.', '',[rfReplaceAll])) + getPorcToDinh(StringReplace(EditSimuladorPorcentagem.Text,'.', '',[rfReplaceAll]),StringReplace(EditSimuladorAntigoRepasse.Text,'.', '',[rfReplaceAll])),false);

finally
     //varSQL.Close;
     FreeAndNil(varSQL);
     EditSimuladorPorcentagem.Color := clWhite;
     EditSimuladorPorcentagem.Repaint;
end;

end;

procedure TCAD_Aluguel.editSimuladorValorBaseChange(Sender: TObject);
begin

     if Length(Trim(editSimuladorValorBase.Text)) = 0 then
     begin
          editSimuladorValorBaseProcessado.Text := '0,00';
          PRINCIPAL.setMensagem('Insira um valor na Base de Cálculo de % do formulário de contratos.');
          exit;
     end;

     if editSimuladorValorBase.Focused then
     Begin
          editSimuladorValorBase := validaPontoDinheiroChange(editSimuladorValorBase);
          PRINCIPAL.setMensagem('Selecione agora uma pessoa para fazer o cálculo. Somente informativo. Copie o valor para o campo de Valor Total para ser efetivado.');
     end;

end;

procedure TCAD_Aluguel.editSimuladorValorBaseExit(Sender: TObject);
begin
     IF Length(trim(editSimuladorValorBase.Text)) = 0 Then
     Begin
          editSimuladorValorBase.Text := '0,00';
          editSimuladorValorBaseProcessado.Text := '0,00';
     end;

     editSimuladorValorBase.Text := StringReplace(unUtilitario.getCurrToStr( StrToCurr(editSimuladorValorBase.Text),false ),'.','',[rfReplaceAll]);
end;

procedure TCAD_Aluguel.calculoSimuladorPorcentagemPessoa(componenteOrigem: String);
var valorBase: Currency;
    sql: TZQuery;
    tabelaPesquisa, id_pessoa: String;
    porcentagem: Currency;
begin

     tabelaPesquisa := 'PESSOA_CONTRATO';
     componenteOrigem := UpperCase(componenteOrigem);

     if componenteOrigem = 'CONTAPESSOAENTRADA' then
     Begin
          if Pos('PROPRIETARIO',ContaPessoaEntrada.Text) > 1 then
             tabelaPesquisa := 'PESSOA_IMOVEL';

          if Pos('PESSOAS',ContaPessoaEntrada.Text) > 1 then
             tabelaPesquisa := 'PESSOA_CONTRATO';

          id_pessoa := IntToStr(IDCampo(ContaPessoaEntrada.Text));
     end;

     if componenteOrigem = 'CONTAPESSOASAIDA' then
     Begin
          if Pos('PROPRIETARIO',ContaPessoaSaida.Text) > 1 then
             tabelaPesquisa := 'PESSOA_IMOVEL';

          if Pos('PESSOAS',ContaPessoaSaida.Text) > 1 then
             tabelaPesquisa := 'PESSOA_CONTRATO';

          id_pessoa := IntToStr(IDCampo(ContaPessoaSaida.Text));
     end;

     if Length(Trim(Edit_Codigo.Text)) = 0 then
        exit;

     if Length(Trim(editSimuladorValorBase.Text)) = 0 then
     begin
          PRINCIPAL.setMensagem('Informe algum valor no campo de Base de Cálculo em % para gerar o cálculo.');
          editSimuladorValorBase.text := '0,00';
          editSimuladorValorBaseProcessado.text := '0,00';
          exit;
     end;

     if tabelaPesquisa = 'PESSOA_IMOVEL' then
        sql := unUtilitario.getSelect('SELECT p.porcentagem FROM pessoa_IMOVEL p WHERE p.id_pessoa = '+id_pessoa+' and p.id_imovel ='+Edit_Codigo.Text)
     else
         sql := unUtilitario.getSelect('SELECT p.porcentagem FROM pessoa_CONTRATO p WHERE p.id_pessoa = '+id_pessoa+' and p.id_imovel ='+Edit_Codigo.Text);

     porcentagem := sql.Fields[0].AsCurrency;

     if porcentagem = null then
        porcentagem := 0;

     valorBase := StrToCurr(editSimuladorValorBase.Text);

     if valorBase <= 0 then
     begin
          PRINCIPAL.setMensagem('Informe algum valor maior que R$ 0,00 no campo de Base de Cálculo para gerar o resultado.');
          editSimuladorValorBase.text := '0,00';
          editSimuladorValorBaseProcessado.text := '0,00';
          exit;
     end;

     valorBase := ((porcentagem * valorBase)/100);

     editSimuladorValorBaseProcessado.Text := CurrToStr(valorBase);

     editSimuladorValorBaseProcessado.Text := StringReplace(unUtilitario.getCurrToStr( StrToCurr(editSimuladorValorBaseProcessado.Text),false ),'.','',[rfReplaceAll]);

end;

procedure TCAD_Aluguel.EditValorDiaFormaCloseUp(Sender: TObject);
begin

     if EditValorDiaForma.ItemIndex = 0 Then //INQUILINO
        EditValorDiaAtual.Text := IntToStr(DayOf(DM_ADMIN.Z_ALUGUELVENCIMENTO.AsDateTime));

     if EditValorDiaForma.ItemIndex = 1 Then //PROPRIETÁRIO
        EditValorDiaAtual.Text := DM_ADMIN.Z_ALUGUELHONORARIO_REPASSE.AsString;

end;

procedure TCAD_Aluguel.EditValorValorFormaCloseUp(Sender: TObject);
begin

     if EditValorValorForma.ItemIndex = 0 Then //INQUILINO
        EditValorValorAtual.Text := getCurrToStr(DM_ADMIN.Z_ALUGUELVALOR.AsCurrency,FALSE);

     if EditValorValorForma.ItemIndex = 1 Then //PROPRIETÁRIO
        EditValorValorAtual.Text := getCurrToStr(DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - getPorcToDinh(DM_ADMIN.Z_ALUGUELTARIFA.AsString,DM_ADMIN.Z_ALUGUELVALOR.AsString),false);

     if EditValorValorForma.ItemIndex = 2 Then //AMBAS AS PARTES
        EditValorValorAtual.Text := 'Entre com a %.';

     EditSimuladorAntigoAluguel.Text := DM_ADMIN.Z_ALUGUELVALOR.AsString;
     EditSimuladorAntigoRepasse.Text := getCurrToStr(DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - getPorcToDinh(DM_ADMIN.Z_ALUGUELTARIFA.AsString,DM_ADMIN.Z_ALUGUELVALOR.AsString),false);

end;

procedure TCAD_Aluguel.Edit_TaxaDinheChange(Sender: TObject);
begin
  If Edit_TaxaDinhe.Focused Then
    Begin
      If NOT (DM_ADMIN.Z_ALUGUELVALOR.IsNull) Then
        Begin
          If (Edit_TaxaDinhe.Text <> '') Then
            DM_ADMIN.Z_ALUGUELTARIFA.AsString := getCurrToStr((StrToFloat(StringReplace(formataDinheiroSQL(Edit_TaxaDinhe.Text),'.',',',[rfReplaceAll])) * 100)/DM_ADMIN.Z_ALUGUELVALOR.AsCurrency,false)
          Else
            Begin
              DM_ADMIN.Z_ALUGUELTARIFA.AsString := '';
              Edit_ValorRepasse.Text := '';
             End;
          End;

      IF Length(TRIM(Edit_TaxaDinhe.TEXT)) = 0 THEN
        BEGIN
          Edit_TaxaDinhe.TEXT := '0';
          Edit_ValorRepasse.Text := '0';
          Edit_TaxaDinhe.SetFocus;
        END;

     End;

     If (Edit_TaxaDinhe.Text <> '') Then
       Edit_ValorRepasse.Text := getCurrToStr(StrToFloat(StringReplace(formataDinheiroSQL(Edit_Valor.Text),'.',',',[rfReplaceAll])) - StrToFloat( StringReplace( formataDinheiroSQL(Edit_TaxaDinhe.Text),'.',',',[rfReplaceAll])), false);

end;

procedure TCAD_Aluguel.Edit_TaxaDinheExit(Sender: TObject);
begin
  IF STRTOCURR(StringReplace(formataDinheiroSQL(Edit_TaxaDinhe.TEXT),'.',',',[rfReplaceAll])) > DS.DATASET.FIELDBYNAME('VALOR').ASCURRENCY THEN
    begin
      application.messagebox('Valor de Repasse não pode ser maior do que o Recebido!', 'Aviso '+celulaNome, mb_ok);
      edit_taxaDinhe.SetFocus;
    end;

  IF Edit_TaxaDinhe.Text = '' THEN
    BEGIN
      Edit_TaxaPorc.text := '0';
      Edit_TaxaDinhe.TEXT := '0';      
    END;
end;

procedure TCAD_Aluguel.Edit_ValorChange(Sender: TObject);
begin

    // If Edit_Valor.Focused Then
    // Begin

       Edit_TaxaDinhe.Text := '';
       Edit_ValorRepasse.Text := '';


          If (Length(Trim(Edit_TaxaPorc.Text)) > 0) Then
               If Length(Trim(Edit_Valor.Text)) > 0 Then
                  Edit_TaxaDinhe.Text := getCurrToStr((StrToFloat(StringReplace(formataDinheiroSQL(Edit_Valor.Text),'.',',',[rfReplaceAll])) * StrToFloat(StringReplace(formataDinheiroSQL(Edit_TaxaPorc.Text),'.',',',[rfReplaceAll])))/100, false);

          If (Length(Trim(Edit_TaxaPorc.Text)) = 0) and (Length(Trim(Edit_TaxaDinhe.Text)) > 0) Then
          Begin
               If Length(Trim(Edit_Valor.Text)) > 0 Then
                  DM_ADMIN.Z_ALUGUELTARIFA.AsString := getCurrToStr((StrToFloat(StringReplace(formataDinheiroSQL(Edit_TaxaPorc.Text),'.',',',[rfReplaceAll])) * 100)/DM_ADMIN.Z_ALUGUELVALOR.AsCurrency, false)
               Else
               Begin
                  DM_ADMIN.Z_ALUGUELTARIFA.Value :=  null;
               End;
          End;

    // End;
end;

procedure Tcad_aluguel.setImovel(Logradouro: String; Cep: String; Tipo: String; Rua: String; Cidade: String; Bairro: String; Uf: String; Numero: string; Complemento: String);
Begin
     Edit_Logradouro.Text := Logradouro;
     Edit_Cep.Text := Cep;
     Edit_Tipo.Text := Tipo;
     Edit_Rua.Text := Rua;
     Edit_Cidade.Text := Cidade;
     Edit_Bairro.Text := Bairro;
     Edit_UF.Text := Uf;
     Edit_Numero.Text := Numero;
     Edit_Complemento.Text := Complemento;
End;
procedure TCAD_Aluguel.SpeedButton1Click(Sender: TObject);
Var varSQL: TZQuery;
begin
     if unUtilitario.setMensagem('Deseja MARCAR todos contratos para "relatórios"?','confirma') = idyes then
     Begin
          varSQL := unUtilitario.getSQL('update contrato set HONORARIO_APOS = 1');
          DM_Admin.Z_ALUGUEL.Refresh;
          FreeAndNil(varSQL);
          unUtilitario.setMensagem('Operação efetuada.','informa');

     end;
end;

procedure TCAD_Aluguel.SpeedButton2Click(Sender: TObject);
Var varSQL: TZQuery;
begin
     if unUtilitario.setMensagem('Deseja DESMARCAR todos os contratos para "relatórios"?','confirma') = idyes then
     Begin
          varSQL := unUtilitario.getSQL('update contrato set HONORARIO_APOS = 0');
          DM_Admin.Z_ALUGUEL.Refresh;
          FreeAndNil(varSQL);
          unUtilitario.setMensagem('Operação efetuada.','informa');
     end;

end;

procedure TCAD_Aluguel.tabFinanceiroShow(Sender: TObject);
begin

  IF DS.DataSet.FieldByName('ID_CONTRATO').IsNull THEN
    EXIT;

// QUANTIDADE
  // ENTRADA
    QtAluguelEnt.caption := PegaQtde('CAIXA_ENTRADA', '3');
    QtCondEnt.Caption := PegaQtde('CAIXA_ENTRADA', '5');
    QtIptuEnt.Caption := PegaQtde('CAIXA_ENTRADA', '4');
    QtOutrosEnt.Caption := PegaQtde('CAIXA_ENTRADA', 'Outros');
    QtTotalEnt.caption := IntToStr(strtoint(QtAluguelEnt.caption) + strtoint(QtCondEnt.Caption) +strtoint(QtIptuEnt.Caption) + strtoint(QtOutrosEnt.Caption));

  // SAÍDA
    QtAluguelSai.caption := PegaQtde('CAIXA_SAIDA', '3');
    QtCondSai.Caption := PegaQtde('CAIXA_SAIDA', '5');
    QtIptuSai.Caption := PegaQtde('CAIXA_SAIDA', '4');
    QtOutrosSai.Caption := PegaQtde('CAIXA_SAIDA', 'Outros');
    QtTotalSai.caption := IntToStr(strtoint(QtAluguelSai.caption) + strtoint(QtCondSai.Caption) +strtoint(QtIptuSai.Caption) + strtoint(QtOutrosSai.Caption));

// PAGOS
  // ENTRADA
    PagAluguelEnt.caption := PegaQtdePag('CAIXA_ENTRADA', '3');
    PagCondEnt.Caption := PegaQtdePag('CAIXA_ENTRADA', '5');
    PagIptuEnt.Caption := PegaQtdePag('CAIXA_ENTRADA', '4');
    PagOutrosEnt.Caption := PegaQtdePag('CAIXA_ENTRADA', 'Outros');
    PagTotalEnt.caption := IntToStr(strtoint(PagAluguelEnt.caption) + strtoint(PagCondEnt.Caption) +strtoint(PagIptuEnt.Caption) + strtoint(PagOutrosEnt.Caption));

  // SAÍDA
    PagAluguelSai.caption := PegaQtdePag('CAIXA_SAIDA', '3');
    PagCondSai.Caption := PegaQtdePag('CAIXA_SAIDA', '5');
    PagIptuSai.Caption := PegaQtdePag('CAIXA_SAIDA', '4');
    PagOutrosSai.Caption := PegaQtdePag('CAIXA_SAIDA', 'Outros');
    PagTotalSai.caption := IntToStr(strtoint(PagAluguelSai.caption) + strtoint(PagCondSai.Caption) +strtoint(PagIptuSai.Caption) + strtoint(PagOutrosSai.Caption));

// NÃO PAGOS
  // ENTRADA
    NpagAluguelEnt.Caption := inttostr(strtoint(QtAluguelEnt.caption) - strtoint(PagAluguelEnt.Caption));
    NpagCondEnt.Caption := inttostr(strtoint(QtCondEnt.caption) - strtoint(PagCondEnt.Caption));
    NpagIptuEnt.Caption := inttostr(strtoint(QtIptuEnt.caption) - strtoint(PagIptuEnt.Caption));
    NpagOutrosEnt.Caption := inttostr(strtoint(QtOutrosEnt.caption) - strtoint(PagOutrosEnt.Caption));
    NpagTotalEnt.caption := IntToStr(strtoint(NPagAluguelEnt.caption) + strtoint(NPagCondEnt.Caption) +strtoint(NPagIptuEnt.Caption) + strtoint(NPagOutrosEnt.Caption));

  // SAÍDAS
    NpagAluguelSai.Caption := inttostr(strtoint(QtAluguelSai.caption) - strtoint(PagAluguelSai.Caption));
    NpagCondSai.Caption := inttostr(strtoint(QtCondSai.caption) - strtoint(PagCondSai.Caption));
    NpagIptuSai.Caption := inttostr(strtoint(QtIptuSai.caption) - strtoint(PagIptuSai.Caption));
    NpagOutrosSai.Caption := inttostr(strtoint(QtOutrosSai.caption) - strtoint(PagOutrosSai.Caption));
    NpagTotalSai.caption := IntToStr(strtoint(NPagAluguelSai.caption) + strtoint(NPagCondSai.Caption) +strtoint(NPagIptuSai.Caption) + strtoint(NPagOutrosSai.Caption));

// VALOR
  //ENTRADA
    ValAluguelEnt.caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_ENTRADA', '3'));
    ValCondEnt.Caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_ENTRADA', '5'));
    ValIptuEnt.Caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_ENTRADA', '4'));
    ValOutrosEnt.Caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_ENTRADA', 'Outros'));
    ValTotalEnt.caption := FormatFloat('###,###,###,###,##0.00',getStrToCurr(ValAluguelEnt.caption) + getStrToCurr(ValCondEnt.Caption) +getStrToCurr(ValIptuEnt.Caption) + getStrToCurr(ValOutrosEnt.Caption));

  // SAÍDA
    ValAluguelSai.caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_SAIDA', '3'));
    ValCondSai.Caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_SAIDA', '5'));
    ValIptuSai.Caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_SAIDA', '4'));
    ValOutrosSai.Caption := FormatFloat('###,###,###,###,##0.00',PegaValor('CAIXA_SAIDA', 'Outros'));
    ValTotalSai.caption := FormatFloat('###,###,###,###,##0.00',getStrToCurr(ValAluguelSai.caption) + getStrToCurr(ValCondSai.Caption) +getStrToCurr(ValIptuSai.Caption) + getStrToCurr(ValOutrosSai.Caption));

end;

procedure TCAD_Aluguel.tabReajustesShow(Sender: TObject);
Var varSQL: TZQuery;
begin

     IF DS.DataSet.FieldByName('ID_CONTRATO').IsNull THEN
        EXIT;

     EditValorValorData.Date := Date();
     EditValorValorAtual.Text := '0,00';
     EditValorValorNovo.Text := '0,00';
     EditValorValorForma.Text := 'Escolha a forma aqui.';

     EditValorDiaAtual.Text := '0';
     EditValorDiaNovo.Text := '0';
     EditValorDiaData.Date := Date();
     EditValorDiaForma.Text := 'Escolha a forma aqui.';

     varSQL := unUtilitario.getSelect('select SUM(valor) from caixa_ENTRADA where id_subtipo = ''3'' and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     EditSimuladorTotalLocatario.Text := 'Montante atual R$'+getCurrToStr(varSQL.Fields[0].AsCurrency,FALSE)+' / Novo montante R$0,00';

     varSQL := unUtilitario.getSelect('select SUM(valor) from caixa_SAIDA where id_subtipo = ''3'' and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorValorData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
     EditSimuladorTotalProprietario.Text := 'Montante atual R$'+getCurrToStr(varSQL.Fields[0].AsCurrency,FALSE)+' / Novo montante R$0,00';

     EditSimuladorAntigoAluguel.Text := getCurrToStr(DM_ADMIN.Z_ALUGUELVALOR.AsCurrency,FALSE);
     EditSimuladorAntigoRepasse.Text := getCurrToStr(DM_ADMIN.Z_ALUGUELVALOR.AsCurrency - getPorcToDinh(DM_ADMIN.Z_ALUGUELTARIFA.AsString,DM_ADMIN.Z_ALUGUELVALOR.AsString),false);
     EditSimuladorNovoRepasse.Text := '0,00';
     EditSimuladorNovoAluguel.Text := '0,00';

     //varSQL.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_Aluguel.Tipo_Pessoa_ContratoChange(Sender: TObject);
begin
     IF Length(Tipo_Pessoa_Contrato.Text) > 0 Then
        PRINCIPAL.setMensagem('PARA USAR ESSA PESSOA EM SEU CONTRATO, A TAG FICARÁ ALGO COMO: <@'+Tipo_Pessoa_Contrato.Text+'_NOME> , <@'+Tipo_Pessoa_Contrato.Text+'_CPF_CNPJ> , <@'+Tipo_Pessoa_Contrato.Text+'_NACIONALIDADE>... (VERIFICAR LISTA DE TAGS)');
end;

procedure TCAD_Aluguel.Tipo_Pessoa_ContratoDropDown(Sender: TObject);
begin
     PRINCIPAL.setMensagem('Escolha ou crie novos tipos de pessoa. EXE: LOCATÁRIO, INDICADOR, CAPTADOR, 1º FIADOR, 2º FIADOR...');
end;

procedure TCAD_Aluguel.Tipo_Pessoa_ContratoExit(Sender: TObject);
begin
  Btn_Pessoas_Gravar.SetFocus;
end;

procedure TCAD_Aluguel.VisualizarSeleo1Click(Sender: TObject);
Var Escolha: String;
    i: Integer;
begin

     Escolha := '';

     For i := 0 to SelecaoRegistro.Count - 1 Do
         Escolha := Escolha + #13 + SelecaoRegistro.Strings[i];

     unUtilitario.setMensagem('CONTRATOS SELECIONADOS: '+ #13 + Escolha,'informa');
end;

procedure TCAD_Aluguel.DBComboBox1Change(Sender: TObject);
begin
     if DBComboBox1.Text = 'RETER COMISSÃO E REPASSAR ALUGUEL.' Then
     Begin
          DBEdit3.Visible := True;
          Label62.Visible := True;
          Label63.Visible := True;
     end
     else
     Begin
          DBEdit3.Visible := False;
          Label62.Visible := false;
          Label63.Visible := false;
     end

end;

procedure TCAD_Aluguel.Tab_CondicoesShow(Sender: TObject);
var SQL: TZQuery;
    I: Integer;
begin
     Edit_ValorChange(Sender);
     DBEdit4Exit(Sender);
     Edit_TaxaPorcChange(SENDER);

     IF getTela('INFO_1') = 'NULO' Then
        EditInfo1.Text := 'Campo criado pela empresa (<@INFO_1>)'
     else
         EditInfo1.Text := getTela('INFO_1');

     IF getTela('INFO_2') = 'NULO' Then
        EditInfo2.Text := 'Campo criado pela empresa (<@INFO_2>)'
     else
         EditInfo2.Text := getTela('INFO_2');

     IF getTela('INFO_3') = 'NULO' Then
        EditInfo3.Text := 'Campo criado pela empresa (<@INFO_3>)'
     else
         EditInfo3.Text := getTela('INFO_3');

     IF getTela('INFO_4') = 'NULO' Then
        EditInfo4.Text := 'Campo criado pela empresa (<@INFO_4>)'
     else
         EditInfo4.Text := getTela('INFO_4');

     sql := unUtilitario.getSelect('select id_caixa_sis, nome from caixa_sis where tipo = ''SUBGRUPO'' and ativo = ''SIM'' order by NOME');
     ComboPrimeiroAluguel.Items.Clear;
     while not sql.Eof do
     Begin
          ComboPrimeiroAluguel.Items.Add(SQL.FieldByName('nome').AsString+'-'+SQL.FieldByName('id_caixa_sis').AsString);
          sql.Next;
     end;
       
end;

procedure TCAD_Aluguel.DBEdit9Exit(Sender: TObject);
begin
     if (CaixaRenovacao.Font.Color = 0) AND (Data_Termino.Caption = '00/00/0000') then
     Begin
          DM_ADMIN.Z_ALUGUELVENCIMENTO.Value := IncMonth(DM_ADMIN.Z_ALUGUELDATA.Value , 1);
          DBEdit4Exit(Sender);
     End;
end;

procedure TCAD_Aluguel.FormActivate(Sender: TObject);
begin
     Ordenacao := '';
end;

procedure TCAD_Aluguel.BitBtn7Click(Sender: TObject);
Var varSQL: TZQuery;
    dataFinal: String;
begin

     IF DS.DataSet.FieldByName('ID_CONTRATO').IsNull THEN
        EXIT;

     try
        if getStrToCurr(EditValorDiaNovo.Text) = 0 Then
        Begin
             unUtilitario.setMensagem('Entre com o Dia que deseja alterar do mesmo mês!','erro');
             EditValorDiaNovo.SetFocus;
             Exit;
        End;
     Except
           unUtilitario.setMensagem('Entre somente com números!','erro');
           Exit;
     end;

     try
         if unUtilitario.setMensagem('Deseja atualizar os registros agora?','confirma') = IDYES then
         Begin
         
              varSQL := unUtilitario.getSelect('select max(data_ref) from caixa_ENTRADA where id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
              dataFinal := DateToStr(varSQL.Fields[0].AsDateTime);

              if EditValorDiaForma.ItemIndex = 0 Then //INQUILINO
              Begin
                   varSQL := unUtilitario.getSQL('update caixa_ENTRADA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+', data_ref = CASE WHEN EXTRACT(month FROM DATA_REF) = 2 AND '+EditValorDiaNovo.Text+' > 28 THEN (''28.2.''||EXTRACT(YEAR FROM data_REF)) ELSE ('''+EditValorDiaNovo.Text+'.''||EXTRACT(month FROM data_REF)||''.''||EXTRACT(YEAR FROM data_REF)) END WHERE id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorDiaData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL.ApplyUpdates;
                   setLogSQL(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'ALTERAÇÃO', 'REAJUSTE DE DIA DE PAGAMENTO', varSQL.SQL.Text);

                   TRY
                      DM_ADMIN.Z_ALUGUELVENCIMENTO.AsDateTime := RecodeDay(DM_ADMIN.Z_ALUGUELVENCIMENTO.AsDateTime, StrToInt(EditValorDiaNovo.Text));
                   EXCEPT
                         unUtilitario.setMensagem('A data foi alterada no financeiro com sucesso.'+#13+'Entre agora com a DATA do primeiro vencimento MANUALMENTE para gravar no contrato!','informa');
                         Tab_Condicoes.Show;
                         DBEdit5.SetFocus;
                   END;
              End;

              if EditValorDiaForma.ItemIndex = 1 Then //PROPRIETÁRIO
              Begin
                   varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_alt = current_timestamp, id_funcionario = '+getUser('CODIGO_USUARIO')+', data_ref = CASE WHEN EXTRACT(month FROM DATA_REF) = 2 AND '+EditValorDiaNovo.Text+' > 28 THEN (''28.2.''||EXTRACT(YEAR FROM data_REF)) ELSE ('''+EditValorDiaNovo.Text+'.''||EXTRACT(month FROM data_REF)||''.''||EXTRACT(YEAR FROM data_REF)) END WHERE id_subtipo = 3 and ativo <> ''XXX'' and pendente <> ''SIM'' and data_ref >= '''+formataDataSQL(DateToStr(EditValorDiaData.Date))+''' and id_contrato = '+DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString);
                   varSQL.ApplyUpdates;
                   setLogSQL(DM_ADMIN.Z_ALUGUELID_CONTRATO.AsString, 'ALTERAÇÃO', 'REAJUSTE DE DIA DE PAGAMENTO', varSQL.SQL.Text);

                   DM_ADMIN.Z_ALUGUELHONORARIO_REPASSE.AsInteger := strToInt(EditValorDiaNovo.Text);
              End;
         End;

     finally
            FreeAndNil(varSQL);
            unUtilitario.setMensagem('(CONCLUÍDO!)'+#13+'As datas foram alteradas AUTOMATICAMENTE pelo sistema. Favor REVISAR as informações em CONDIÇÕES DO CONTRATO e salvar o registro!','informa');
            PageControl2.TabIndex := 1;
     end;

end;

procedure TCAD_Aluguel.btnAvancarGridClick(Sender: TObject);
begin
     DM_Admin.Z_ALUGUEL.Close;
      DM_Admin.Z_ALUGUEL.SQL.Text := pagina.maisRegistros( DM_Admin.Z_ALUGUEL.SQL.Text);
     DM_Admin.Z_ALUGUEL.Open;
end;

procedure TCAD_Aluguel.btnLimparCamposClick(Sender: TObject);
begin
     setComponentesFinanceiros();
end;

procedure TCAD_Aluguel.btnVoltarGridClick(Sender: TObject);
begin
     DM_Admin.Z_ALUGUEL.Close;
     DM_Admin.Z_ALUGUEL.SQL.Text := pagina.menosRegistros( DM_Admin.Z_ALUGUEL.SQL.Text);
     DM_Admin.Z_ALUGUEL.Open;
end;

procedure TCAD_Aluguel.btn_buscaPaginadaClick(Sender: TObject);
begin
     if btn_buscaPaginada.State = cbChecked then
     Begin
        PainelRodape.Visible := True;
     end
     else
     Begin
         PainelRodape.Visible := False;
     end;

     DM_Admin.Z_ALUGUEL.Close;
end;

procedure TCAD_Aluguel.GeraDimob(SelecaoImoveis: TStringList);
var varSQL, varSQLImovel, varSQLMeses: TZQuery;
    caminhoArquivoRel, caminhoArquivo, linhaImovel, linhaImovelRel, codigoCidade, anoCorrente, cpfcnpj: String;
    contador, randomico: Integer;
    Arquivo, ArquivoRel : TextFile;
    valorTotal, valorTotalEntrada,
    valorTotal1, valorTotal2, valorTotal3, valorTotal4, valorTotal5, valorTotal6, valorTotal7, valorTotal8, valorTotal9, valorTotal10, valorTotal11, valorTotal12,
    valorTotal1TX, valorTotal2TX, valorTotal3TX, valorTotal4TX, valorTotal5TX, valorTotal6TX, valorTotal7TX, valorTotal8TX, valorTotal9TX, valorTotal10TX, valorTotal11TX, valorTotal12TX,
    valorTotal1CNPJ, valorTotal2CNPJ, valorTotal3CNPJ, valorTotal4CNPJ, valorTotal5CNPJ, valorTotal6CNPJ, valorTotal7CNPJ, valorTotal8CNPJ, valorTotal9CNPJ, valorTotal10CNPJ, valorTotal11CNPJ, valorTotal12CNPJ,
    valorTotal1CPF, valorTotal2CPF, valorTotal3CPF, valorTotal4CPF, valorTotal5CPF, valorTotal6CPF, valorTotal7CPF, valorTotal8CPF, valorTotal9CPF, valorTotal10CPF, valorTotal11CPF, valorTotal12CPF,
    valorTotal1CNPJTX, valorTotal2CNPJTX, valorTotal3CNPJTX, valorTotal4CNPJTX, valorTotal5CNPJTX, valorTotal6CNPJTX, valorTotal7CNPJTX, valorTotal8CNPJTX, valorTotal9CNPJTX, valorTotal10CNPJTX, valorTotal11CNPJTX, valorTotal12CNPJTX,
    valorTotal1CPFTX, valorTotal2CPFTX, valorTotal3CPFTX, valorTotal4CPFTX, valorTotal5CPFTX, valorTotal6CPFTX, valorTotal7CPFTX, valorTotal8CPFTX, valorTotal9CPFTX, valorTotal10CPFTX, valorTotal11CPFTX, valorTotal12CPFTX
    : Currency;
begin

     if SelecaoImoveis.Count <= 0 then
     Begin
          unUtilitario.setMensagem('Favor selecione um ou alguns contratos.','informa');
          Exit;
     end;

try
     ForceDirectories(ExtractFilePath(ParamStr(0))+'DOCUMENTOS');

     //GERA O ARQUIVO
     Randomize;
     randomico := Random(10000);
     
     caminhoArquivo := ExtractFilePath(ParamStr(0))+'DOCUMENTOS\'+getConf('CLIENTE')+'_'+IntToStr(YearOf(Date()))+'_'+IntToStr(randomico)+'.txt';
     AssignFile(Arquivo,caminhoArquivo);
     Rewrite(Arquivo);

     //gera relatório
     caminhoArquivoRel := ExtractFilePath(ParamStr(0))+'DOCUMENTOS\'+getConf('CLIENTE')+'_'+IntToStr(YearOf(Date()))+'_'+IntToStr(randomico)+'_RELATÓRIO.txt';
     AssignFile(ArquivoRel,caminhoArquivoRel);
     Rewrite(ArquivoRel);
     Writeln(ArquivoRel,'RELATÓRIO DE IMPRESSÃO - DIMOB '+IntToStr(YearOf(Date())));
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,' ');


     Writeln(Arquivo, 'DIMOB                                                                                                                                                                                                                          '+'                                                                                                                                                       ');

     //DADOS DA EMPRESA
     varSQL :=  getSelect('select * from empresa');
     codigoCidade := varSQL.FieldByName('CIDADE').AsString;
     Writeln(ArquivoRel,'== Dados da Empresa ==');
     Writeln(ArquivoRel,'NOME: '+varSQL.FieldByName('NOME').AsString+' | FANTASIA: '+varSQL.FieldByName('NOME_FANTASIA').AsString);
     Writeln(ArquivoRel,'CNPJ: '+RemoveCaracterEspecial(varSQL.FieldByName('CNPJ').AsString));
     Writeln(ArquivoRel,'CRECI: '+getConf('EMPRESA_CRECI'));
     Writeln(ArquivoRel,'TELEFONE: '+getConf('EMPRESA_TELEFONE'));
     Writeln(ArquivoRel,'RESPONSÁVEL LEGAL: '+varSQL.FieldByName('LOGO').AsString);
     Writeln(ArquivoRel,'CPF DO RESP. LEGAL: '+varSQL.FieldByName('FUNDO').AsString);
     Writeln(ArquivoRel,'ENDEREÇO: '+varSQL.FieldByName('RUA').AsString+' '+varSQL.FieldByName('NUMERO').AsString+' '+varSQL.FieldByName('BAIRRO').AsString +' '+varSQL.FieldByName('CEP').AsString+' Código da Cidade: '+codigoCidade);
     Writeln(ArquivoRel,' ');

     anoCorrente := InputBox('Entre com o ano das contas:','Faça a entrada do ano da declaração:',inttostr(YearOf(Date())));

     Writeln(Arquivo,'R01'+RemoveCaracterEspecial(varSQL.FieldByName('CNPJ').AsString)+anoCorrente+'0000000000000000000000'+RemoveCaracterEspecial(Format('%-60.60s',[varSQL.FieldByName('NOME').AsString]))+RemoveCaracterEspecial(varSQL.FieldByName('FUNDO').AsString)+Format('%-120.120s',[RemoveCaracterEspecial(varSQL.FieldByName('RUA').AsString+' '+varSQL.FieldByName('NUMERO').AsString+' '+varSQL.FieldByName('BAIRRO').AsString +' '+varSQL.FieldByName('CEP').AsString)])+RemoveCaracterEspecial(codigoCidade)+'                              ');

     //anoCorrente := IntToStr(strtoint(anoCorrente)-1);  nao diminuir o ano.

     //DADOS DOS IMÓVEIS
     varSQLImovel :=  getSelect('select c.*, '+
     '(select first 1 p.nome from pessoa p inner join pessoa_contrato pc on pc.id_pessoa = p.id_pessoa and (pc.tipo like ''LOCAT_RIO'' or pc.tipo = ''LOCADOR'') where pc.id_contrato = c.id_contrato) as LOCATARIO, '+
     '(select first 1 p.cpf_cnpj from pessoa p inner join pessoa_contrato pc on pc.id_pessoa = p.id_pessoa and (pc.tipo like ''LOCAT_RIO'' or pc.tipo = ''LOCADOR'') where pc.id_contrato = c.id_contrato) as LOCATARIOCPF, '+
     '(select first 1 p.nome from pessoa p inner join pessoa_imovel pi on pi.id_pessoa = p.id_pessoa and pi.status = ''PROPRIETARIO'' where pi.id_imovel = c.id_imovel) as PROPRIETARIO, '+
     '(select first 1 p.cpf_cnpj from pessoa p inner join pessoa_imovel pi on pi.id_pessoa = p.id_pessoa and pi.status like ''PROPRIETARIO'' where pi.id_imovel = c.id_imovel) as PROPRIETARIOCPF, '+
     '(select i.numero from imovel i where i.id_imovel = c.id_imovel) as NUMERO, '+
     '(select i.complemento from imovel i where i.id_imovel = c.id_imovel) as COMPLEMENTO, '+
     '(select l.cep from imovel i inner join logradouro l on l.id_logradouro = i.id_logradouro where i.id_imovel = c.id_imovel) AS CEP, '+
     '(select l.nome from imovel i inner join logradouro l on l.id_logradouro = i.id_logradouro where i.id_imovel = c.id_imovel) AS RUA, '+
     '(select CI.nome from imovel i inner join logradouro l on l.id_logradouro = i.id_logradouro inner join cidade ci on ci.id_cidade = l.id_cidade where i.id_imovel = c.id_imovel) AS CIDADE, '+
     '(select u.sigla from imovel i inner join logradouro l on l.id_logradouro = i.id_logradouro inner join uf u on u.id_sigla = l.id_sigla where i.id_imovel = c.id_imovel) AS UF '+
     'from contrato c where c.id_contrato in ('+alinhaStringlist(SelecaoImoveis)+') ORDER BY C.ID_CONTRATO ');

     Writeln(ArquivoRel,'== Dados dos Imóveis ==');

     valorTotal := 0.00;
     valorTotalEntrada := 0.00;
     valorTotal1 := 0.00;
     valorTotal2 := 0.00;
     valorTotal3 := 0.00;
     valorTotal4 := 0.00;
     valorTotal5 := 0.00;
     valorTotal6 := 0.00;
     valorTotal7 := 0.00;
     valorTotal8 := 0.00;
     valorTotal9 := 0.00;
     valorTotal10 := 0.00;
     valorTotal11 := 0.00;
     valorTotal12 := 0.00;

     valorTotal1TX := 0.00;
     valorTotal2TX := 0.00;
     valorTotal3TX := 0.00;
     valorTotal4TX := 0.00;
     valorTotal5TX := 0.00;
     valorTotal6TX := 0.00;
     valorTotal7TX := 0.00;
     valorTotal8TX := 0.00;
     valorTotal9TX := 0.00;
     valorTotal10TX := 0.00;
     valorTotal11TX := 0.00;
     valorTotal12TX := 0.00;

     valorTotal1CPF := 0.00;
     valorTotal2CPF := 0.00;
     valorTotal3CPF := 0.00;
     valorTotal4CPF := 0.00;
     valorTotal5CPF := 0.00;
     valorTotal6CPF := 0.00;
     valorTotal7CPF := 0.00;
     valorTotal8CPF := 0.00;
     valorTotal9CPF := 0.00;
     valorTotal10CPF := 0.00;
     valorTotal11CPF := 0.00;
     valorTotal12CPF := 0.00;

     valorTotal1CNPJ := 0.00;
     valorTotal2CNPJ := 0.00;
     valorTotal3CNPJ := 0.00;
     valorTotal4CNPJ := 0.00;
     valorTotal5CNPJ := 0.00;
     valorTotal6CNPJ := 0.00;
     valorTotal7CNPJ := 0.00;
     valorTotal8CNPJ := 0.00;
     valorTotal9CNPJ := 0.00;
     valorTotal10CNPJ := 0.00;
     valorTotal11CNPJ := 0.00;
     valorTotal12CNPJ := 0.00;

     valorTotal1CPFTX := 0.00;
     valorTotal2CPFTX := 0.00;
     valorTotal3CPFTX := 0.00;
     valorTotal4CPFTX := 0.00;
     valorTotal5CPFTX := 0.00;
     valorTotal6CPFTX := 0.00;
     valorTotal7CPFTX := 0.00;
     valorTotal8CPFTX := 0.00;
     valorTotal9CPFTX := 0.00;
     valorTotal10CPFTX := 0.00;
     valorTotal11CPFTX := 0.00;
     valorTotal12CPFTX := 0.00;

     valorTotal1CNPJTX := 0.00;
     valorTotal2CNPJTX := 0.00;
     valorTotal3CNPJTX := 0.00;
     valorTotal4CNPJTX := 0.00;
     valorTotal5CNPJTX := 0.00;
     valorTotal6CNPJTX := 0.00;
     valorTotal7CNPJTX := 0.00;
     valorTotal8CNPJTX := 0.00;
     valorTotal9CNPJTX := 0.00;
     valorTotal10CNPJTX := 0.00;
     valorTotal11CNPJTX := 0.00;
     valorTotal12CNPJTX := 0.00;

     contador := 0;
     while not varSQLImovel.Eof do
     Begin
          contador := contador + 1;
          linhaImovel := 'R02'+RemoveCaracterEspecial(varSQL.FieldByName('CNPJ').AsString)+IntToStr(YearOf(Date())-1)+FormatFloat('00000',contador)+Format('%-14.14s',[RemoveCaracterEspecial(varSQLImovel.FieldByName('PROPRIETARIOCPF').AsString)])+Format('%-60.60s',[RemoveCaracterEspecial(varSQLImovel.FieldByName('PROPRIETARIO').AsString)])+Format('%-14.14s',[RemoveCaracterEspecial(varSQLImovel.FieldByName('LOCATARIOCPF').AsString)])+Format('%-60.60s',[RemoveCaracterEspecial(varSQLImovel.FieldByName('LOCATARIO').AsString)])+Format('%-6.6s',[varSQLImovel.FieldByName('ID_CONTRATO').AsString])+RemoveCaracterEspecial(FormatDateTime('dd/mm/yyyy',varSQLImovel.FieldByName('DATA').AsDateTime));
          linhaImovelRel := '';

          if Length(Trim(varSQLImovel.FieldByName('PROPRIETARIOCPF').AsString)) > 14 then
             cpfcnpj := 'CNPJ'
          else
              cpfcnpj := 'CPF';

          Writeln(ArquivoRel,IntToStr(contador)+'º - CONTRATO Nº'+varSQLImovel.FieldByName('ID_CONTRATO').AsString+' - PROPRIETÁRIO: '+varSQLImovel.FieldByName('PROPRIETARIO').AsString+' '+ cpfcnpj+': '+varSQLImovel.FieldByName('PROPRIETARIOCPF').AsString);
          Writeln(ArquivoRel,'DATA: '+varSQLImovel.FieldByName('DATA').AsString+' - LOCATÁRIO: '+varSQLImovel.FieldByName('LOCATARIO').AsString+' CPF: '+varSQLImovel.FieldByName('LOCATARIOCPF').AsString);

          //JANEIRO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.01.'+anoCorrente+''' and ''31.01.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Jan R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal1 := valorTotal1 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal1TX := valorTotal1TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal1CPF := valorTotal1CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal1CPFTX := valorTotal1CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal1CNPJ := valorTotal1CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal1CNPJTX := valorTotal1CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;

          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Jan R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //FEVEREIRO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.02.'+anoCorrente+''' and ''1.03.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Fev R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal2 := valorTotal2 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal2TX := valorTotal2TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal2CPF := valorTotal2CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal2CPFTX := valorTotal2CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal2CNPJ := valorTotal2CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal2CNPJTX := valorTotal2CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Fev R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //MARÇO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.03.'+anoCorrente+''' and ''31.03.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Mar R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal3 := valorTotal3 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal3TX := valorTotal3TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal3CPF := valorTotal3CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal3CPFTX := valorTotal3CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal3CNPJ := valorTotal3CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal3CNPJTX := valorTotal3CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Mar R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //ABRIL
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.04.'+anoCorrente+''' and ''30.04.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Abr R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal4 := valorTotal4 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal4TX := valorTotal4TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal4CPF := valorTotal4CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal4CPFTX := valorTotal4CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal4CNPJ := valorTotal4CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal4CNPJTX := valorTotal4CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Abr R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //MAIO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.05.'+anoCorrente+''' and ''31.05.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Mai R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal5 := valorTotal5 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal5TX := valorTotal5TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal5CPF := valorTotal5CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal5CPFTX := valorTotal5CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal5CNPJ := valorTotal5CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal5CNPJTX := valorTotal5CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Mai R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;


          //JUNHO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.06.'+anoCorrente+''' and ''30.06.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Jun R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal6 := valorTotal6 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal6TX := valorTotal6TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal6CPF := valorTotal6CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal6CPFTX := valorTotal6CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal6CNPJ := valorTotal6CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal6CNPJTX := valorTotal6CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Jun R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //JULHO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.07.'+anoCorrente+''' and ''31.07.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Jul R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal7 := valorTotal7 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal7TX := valorTotal7TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal7CPF := valorTotal7CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal7CPFTX := valorTotal7CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal7CNPJ := valorTotal7CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal7CNPJTX := valorTotal7CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Jul R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //AGOSTO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.08.'+anoCorrente+''' and ''31.08.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Ago R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal8 := valorTotal8 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal8TX := valorTotal8TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal8CPF := valorTotal8CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal8CPFTX := valorTotal8CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal8CNPJ := valorTotal8CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal8CNPJTX := valorTotal8CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Ago R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //SETEMBRO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.09.'+anoCorrente+''' and ''30.09.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Set R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal9 := valorTotal9 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal9TX := valorTotal9TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal9CPF := valorTotal9CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal9CPFTX := valorTotal9CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal9CNPJ := valorTotal9CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal9CNPJTX := valorTotal9CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Set R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //OUTUBRO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.10.'+anoCorrente+''' and ''31.10.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Out R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal10 := valorTotal10 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal10TX := valorTotal10TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal10CPF := valorTotal10CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal10CPFTX := valorTotal10CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal10CNPJ := valorTotal10CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal10CNPJTX := valorTotal10CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Out R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //NOVEMBRO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.11.'+anoCorrente+''' and ''30.11.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Nov R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal11 := valorTotal11 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal11TX := valorTotal11TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal11CPF := valorTotal11CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal11CPFTX := valorTotal11CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal11CNPJ := valorTotal11CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal11CNPJTX := valorTotal11CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Nov R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          //DEZEMBRO
          varSQLMeses := getSelect('select first 1 (select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) as VALORCALCULADO, '+
          'cast(((select result from spvalorcobranca1(1, cs.data_ref, cs.data_pgto, cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) * c.tarifa)/100 as numeric(10,2)) as TAXA '+
          'from caixa_entrada cs '+
          'inner join contrato c on c.id_contrato = cs.id_contrato '+
          'where cs.id_subtipo = 3 and cs.id_contrato is not null and '+
          'cs.data_pgto between ''01.12.'+anoCorrente+''' and ''31.12.'+anoCorrente+''' and cs.ativo = ''SIM'' and cs.data_pgto is not null and '+
          'cs.id_contrato =  '+varSQLImovel.FieldByName('ID_CONTRATO').AsString+
          'order by cs.valor desc');

          if varSQLMeses.RecordCount = 1 then
          Begin
               linhaImovelRel := linhaImovelRel + 'Dez R$'+varSQLMeses.FieldByName('VALORCALCULADO').AsString+'(R$'+varSQLMeses.FieldByName('TAXA').AsString+') ';
               linhaImovel := linhaImovel + StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency),',','',[rfReplaceAll])+StringReplace(FormatFloat('000000000000.00',varSQLMeses.FieldByName('TAXA').AsCurrency),',','',[rfReplaceAll])+'00000000000000';
               valorTotal := valorTotal + varSQLMeses.FieldByName('TAXA').AsCurrency;
               valorTotalEntrada := valorTotalEntrada + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal12 := valorTotal12 + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
               valorTotal12TX := valorTotal12TX + varSQLMeses.FieldByName('TAXA').AsCurrency;

               if cpfcnpj = 'CPF' then
               Begin
                    valorTotal12CPF := valorTotal12CPF + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal12CPFTX := valorTotal12CPFTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end
               else
               Begin
                    valorTotal12CNPJ := valorTotal12CNPJ + varSQLMeses.FieldByName('VALORCALCULADO').AsCurrency;
                    valorTotal12CNPJTX := valorTotal12CNPJTX + varSQLMeses.FieldByName('TAXA').AsCurrency;
               end;
          end
          Else
          Begin
               linhaImovelRel := linhaImovelRel + 'Dez R$0,00(R$0,00) ';
               linhaImovel := linhaImovel + '00000000000000'+'00000000000000'+'00000000000000';
          end;

          linhaImovel := linhaImovel+'U'+Format('%-60.60s',[RemoveCaracterEspecial(varSQLImovel.FieldByName('RUA').AsString+' '+varSQLImovel.FieldByName('NUMERO').AsString+' '+varSQLImovel.FieldByName('COMPLEMENTO').AsString)])+RemoveCaracterEspecial(varSQLImovel.FieldByName('CEP').AsString)+dimobFormataCidade(codigoCidade)+'                    '+varSQLImovel.FieldByName('UF').AsString+'          ';
          Writeln(Arquivo,linhaImovel);

          Writeln(ArquivoRel,'IMÓVEL: '+varSQLImovel.FieldByName('RUA').AsString+', Nº'+varSQLImovel.FieldByName('NUMERO').AsString+' '+varSQLImovel.FieldByName('COMPLEMENTO').AsString+', '+varSQLImovel.FieldByName('CIDADE').AsString+', '+varSQLImovel.FieldByName('UF').AsString+' - '+varSQLImovel.FieldByName('CEP').AsString);
          Writeln(ArquivoRel,linhaImovelRel);
          Writeln(ArquivoRel,' ');

          varSQLImovel.Next;
     end;
     
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'TOTAL DAS ENTRADAS: R$'+getCurrToStr(valorTotalEntrada,false));
     Writeln(ArquivoRel,'TOTAL DAS ENTRADAS POR MÊS: JAN=R$'+getCurrToStr(valorTotal1,false)+' FEV=R$'+getCurrToStr(valorTotal2,false)+
     ' MAR=R$'+getCurrToStr(valorTotal3,false)+' ABR=R$'+getCurrToStr(valorTotal4,false)+' MAI=R$'+getCurrToStr(valorTotal5,false)+
     ' JUN=R$'+getCurrToStr(valorTotal6,false)+' JUL=R$'+getCurrToStr(valorTotal7,false)+' AGO=R$'+getCurrToStr(valorTotal8,false)+
     ' SET=R$'+getCurrToStr(valorTotal9,false)+' OUT=R$'+getCurrToStr(valorTotal10,false)+' NOV=R$'+getCurrToStr(valorTotal11,false)+
     ' DEZ=R$'+getCurrToStr(valorTotal12,false));
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'TOTAL DO VALOR RETIDO NA IMOBILIÁRIA: R$'+getCurrToStr(valorTotal,false));
     Writeln(ArquivoRel,'TOTAL DO VALOR RETIDO NA IMOBILIÁRIA POR MÊS: JAN=R$'+getCurrToStr(valorTotal1TX,false)+' FEV=R$'+getCurrToStr(valorTotal2TX,false)+
     ' MAR=R$'+getCurrToStr(valorTotal3TX,false)+' ABR=R$'+getCurrToStr(valorTotal4TX,false)+' MAI=R$'+getCurrToStr(valorTotal5TX,false)+
     ' JUN=R$'+getCurrToStr(valorTotal6TX,false)+' JUL=R$'+getCurrToStr(valorTotal7TX,false)+' AGO=R$'+getCurrToStr(valorTotal8TX,false)+
     ' SET=R$'+getCurrToStr(valorTotal9TX,false)+' OUT=R$'+getCurrToStr(valorTotal10TX,false)+' NOV=R$'+getCurrToStr(valorTotal11TX,false)+
     ' DEZ=R$'+getCurrToStr(valorTotal12TX,false));

     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'TOTAL DAS ENTRADAS (PESSOA FÍSICA): R$'+getCurrToStr(valorTotal1CPF+valorTotal2CPF+valorTotal3CPF+valorTotal4CPF+valorTotal5CPF+valorTotal6CPF+valorTotal7CPF+valorTotal8CPF+valorTotal9CPF+valorTotal10CPF+valorTotal11CPF+valorTotal12CPF,false));
     Writeln(ArquivoRel,'TOTAL DAS ENTRADAS (PESSOA FÍSICA) POR MÊS: JAN=R$'+getCurrToStr(valorTotal1CPF,false)+' FEV=R$'+getCurrToStr(valorTotal2CPF,false)+
     ' MAR=R$'+getCurrToStr(valorTotal3CPF,false)+' ABR=R$'+getCurrToStr(valorTotal4CPF,false)+' MAI=R$'+getCurrToStr(valorTotal5CPF,false)+
     ' JUN=R$'+getCurrToStr(valorTotal6CPF,false)+' JUL=R$'+getCurrToStr(valorTotal7CPF,false)+' AGO=R$'+getCurrToStr(valorTotal8CPF,false)+
     ' SET=R$'+getCurrToStr(valorTotal9CPF,false)+' OUT=R$'+getCurrToStr(valorTotal10CPF,false)+' NOV=R$'+getCurrToStr(valorTotal11CPF,false)+
     ' DEZ=R$'+getCurrToStr(valorTotal12CPF,false));
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'TOTAL DO VALOR RETIDO NA IMOBILIÁRIA (PESSOA FÍSICA): R$'+getCurrToStr(valorTotal1CPFTX+valorTotal2CPFTX+valorTotal3CPFTX+valorTotal4CPFTX+valorTotal5CPFTX+valorTotal6CPFTX+valorTotal7CPFTX+valorTotal8CPFTX+valorTotal9CPFTX+valorTotal10CPFTX+valorTotal11CPFTX+valorTotal12CPFTX,false));
     Writeln(ArquivoRel,'TOTAL DO VALOR RETIDO NA IMOBILIÁRIA (PESSOA FÍSICA) POR MÊS: JAN=R$'+getCurrToStr(valorTotal1CPFTX,false)+' FEV=R$'+getCurrToStr(valorTotal2CPFTX,false)+
     ' MAR=R$'+getCurrToStr(valorTotal3CPFTX,false)+' ABR=R$'+getCurrToStr(valorTotal4CPFTX,false)+' MAI=R$'+getCurrToStr(valorTotal5CPFTX,false)+
     ' JUN=R$'+getCurrToStr(valorTotal6CPFTX,false)+' JUL=R$'+getCurrToStr(valorTotal7CPFTX,false)+' AGO=R$'+getCurrToStr(valorTotal8CPFTX,false)+
     ' SET=R$'+getCurrToStr(valorTotal9CPFTX,false)+' OUT=R$'+getCurrToStr(valorTotal10CPFTX,false)+' NOV=R$'+getCurrToStr(valorTotal11CPFTX,false)+
     ' DEZ=R$'+getCurrToStr(valorTotal12CPFTX,false));

     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'TOTAL DAS ENTRADAS (PESSOA JURÍDICA): R$'+getCurrToStr(valorTotal1CNPJ+valorTotal2CNPJ+valorTotal3CNPJ+valorTotal4CNPJ+valorTotal5CNPJ+valorTotal6CNPJ+valorTotal7CNPJ+valorTotal8CNPJ+valorTotal9CNPJ+valorTotal10CNPJ+valorTotal11CNPJ+valorTotal12CNPJ,false));
     Writeln(ArquivoRel,'TOTAL DAS ENTRADAS (PESSOA JURÍDICA) POR MÊS: JAN=R$'+getCurrToStr(valorTotal1CNPJ,false)+' FEV=R$'+getCurrToStr(valorTotal2CNPJ,false)+
     ' MAR=R$'+getCurrToStr(valorTotal3CNPJ,false)+' ABR=R$'+getCurrToStr(valorTotal4CNPJ,false)+' MAI=R$'+getCurrToStr(valorTotal5CNPJ,false)+
     ' JUN=R$'+getCurrToStr(valorTotal6CNPJ,false)+' JUL=R$'+getCurrToStr(valorTotal7CNPJ,false)+' AGO=R$'+getCurrToStr(valorTotal8CNPJ,false)+
     ' SET=R$'+getCurrToStr(valorTotal9CNPJ,false)+' OUT=R$'+getCurrToStr(valorTotal10CNPJ,false)+' NOV=R$'+getCurrToStr(valorTotal11CNPJ,false)+
     ' DEZ=R$'+getCurrToStr(valorTotal12CNPJ,false));
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'TOTAL DO VALOR RETIDO NA IMOBILIÁRIA (PESSOA JURÍDICA): R$'+getCurrToStr(valorTotal1CNPJTX+valorTotal2CNPJTX+valorTotal3CNPJTX+valorTotal4CNPJTX+valorTotal5CNPJTX+valorTotal6CNPJTX+valorTotal7CNPJTX+valorTotal8CNPJTX+valorTotal9CNPJTX+valorTotal10CNPJTX+valorTotal11CNPJTX+valorTotal12CNPJTX,false));
     Writeln(ArquivoRel,'TOTAL DO VALOR RETIDO NA IMOBILIÁRIA (PESSOA JURÍDICA) POR MÊS: JAN=R$'+getCurrToStr(valorTotal1CNPJTX,false)+' FEV=R$'+getCurrToStr(valorTotal2CNPJTX,false)+
     ' MAR=R$'+getCurrToStr(valorTotal3CNPJTX,false)+' ABR=R$'+getCurrToStr(valorTotal4CNPJTX,false)+' MAI=R$'+getCurrToStr(valorTotal5CNPJTX,false)+
     ' JUN=R$'+getCurrToStr(valorTotal6CNPJTX,false)+' JUL=R$'+getCurrToStr(valorTotal7CNPJTX,false)+' AGO=R$'+getCurrToStr(valorTotal8CNPJTX,false)+
     ' SET=R$'+getCurrToStr(valorTotal9CNPJTX,false)+' OUT=R$'+getCurrToStr(valorTotal10CNPJTX,false)+' NOV=R$'+getCurrToStr(valorTotal11CNPJTX,false)+
     ' DEZ=R$'+getCurrToStr(valorTotal12CNPJTX,false));


     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,' ');
     Writeln(ArquivoRel,'ARQUIVO GERADO EM '+DateTimeToStr(DATE+TIME)+' PELO FUNCIONÁRIO '+getUser('USUARIO')+' NA MÁQUINA '+getUser('MAQUINA'));
     Writeln(Arquivo,'T9                                                                                                    ');
     CloseFile(Arquivo);
     CloseFile(ArquivoRel);

     setmensagem('Arquivo salvo em:  '+caminhoArquivo+#13'-Importe o arquivo no programa DIMOB (Declaração => Importar);'+#13+'-Todos os imóveis são exportados como URBANO = "U" e município FRANCA-SP = "6425".'+#13+'Após importado, é de sua inteira responsabilidade REVISAR TODAS AS INFORMAÇÕES.','informa');
finally
       FreeAndNil(varSQL);
       FreeAndNil(varSQLImovel);
       FreeAndNil(varSQLMeses);
end;
end;


end.
