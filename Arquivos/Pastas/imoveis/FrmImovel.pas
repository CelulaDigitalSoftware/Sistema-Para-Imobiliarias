unit FrmImovel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmMatriz, DB, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  jpeg, DBCtrls, Mask, ZDataset, ZAbstractRODataset, ZAbstractDataset, Menus,
  DateUtils, unValidacao, ShellAPI, MaskUtils, math, unConfiguracao;

const
  WM_MY_MESSAGE = WM_USER + 1;

type
  TCAD_Imovel = class(TCAD_MATRIZ)
    Tab_AspectosGerais: TTabSheet;
    Tab_Caracteristica: TTabSheet;
    Tab_AnuncioAnotacao: TTabSheet;
    Tab_Historico: TTabSheet;
    ScrollBox2: TScrollBox;
    Panel3: TPanel;
    Look_Caracteristica: TDBLookupListBox;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox19: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label20: TLabel;
    Edit_ValorVenda: TDBEdit;
    Label21: TLabel;
    Edit_ValorLocacao: TDBEdit;
    Label22: TLabel;
    Edit_ValorCondominio: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Edit_ValorTemporada: TDBEdit;
    Label43: TLabel;
    DBEdit43: TDBEdit;
    Label45: TLabel;
    DBEdit45: TDBEdit;
    Label48: TLabel;
    DBEdit48: TDBEdit;
    Look_Tipo: TDBLookupComboBox;
    Look_SubTipo: TDBLookupComboBox;
    SpeedButton7: TSpeedButton;
    Btn_Endereco_Endereco: TBitBtn;
    Label59: TLabel;
    Fin_Aluguel: TDBCheckBox;
    Fin_Outros: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Fin_Venda: TDBCheckBox;
    Combo_Status: TDBComboBox;
    Label8: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    Tab_Visitacao: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox14: TGroupBox;
    DBGrid4: TDBGrid;
    Tab_Pessoas: TTabSheet;
    Tab_MedidasValores: TTabSheet;
    GroupBox3: TGroupBox;
    Label33: TLabel;
    Label47: TLabel;
    Label69: TLabel;
    Label71: TLabel;
    IMG_Proprietario: TImage;
    Label70: TLabel;
    DBGrid2: TDBGrid;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    Btn_Proprietario_Novo: TBitBtn;
    Btn_Proprietario_Cancelar: TBitBtn;
    Btn_Proprietario_Gravar: TBitBtn;
    Btn_Proprietario_Excluir: TBitBtn;
    DBCheckBox11: TDBCheckBox;
    GroupBox6: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox8: TGroupBox;
    Label19: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Bevel4: TBevel;
    Lucro: TLabel;
    Label35: TLabel;
    Label42: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit19: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    EDIT_AREATITAL_MEDIDA: TEdit;
    EDIT_AREATOTAL1_MEDIDA: TEdit;
    EDIT_AREATOTAL2_MEDIDA: TEdit;
    EDIT_AREATOTAL3_MEDIDA: TEdit;
    EDIT_TOTALSUGERIDO_MEDIDA: TEdit;
    GroupBox9: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Bevel3: TBevel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    EDIT_AREATOTAL: TEdit;
    GroupBox7: TGroupBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit61: TDBEdit;
    Label44: TLabel;
    Label46: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Btn_Agenda_Novo: TBitBtn;
    Btn_Agenda_Cancelar: TBitBtn;
    Btn_Agenda_Gravar: TBitBtn;
    Btn_Agenda_Excluir: TBitBtn;
    Btn_Pessoas_Novo: TBitBtn;
    Btn_Pessoas_Cancelar: TBitBtn;
    Btn_Pessoas_Gravar: TBitBtn;
    Btn_Pessoas_Excluir: TBitBtn;
    Btn_IPTU_Novo: TBitBtn;
    Btn_IPTU_CANCELAR: TBitBtn;
    Btn_IPTU_GRAVAR: TBitBtn;
    Btn_IPTU_EXCLUIR: TBitBtn;
    Btn_Anuncio_Novo: TBitBtn;
    Btn_Anuncio_Cancelar: TBitBtn;
    Btn_Anuncio_Gravar: TBitBtn;
    Btn_Anuncio_Excluir: TBitBtn;
    DBEdit40: TDBEdit;
    Label77: TLabel;
    DBCheckBox13: TDBCheckBox;
    DBEdit60: TDBEdit;
    Label79: TLabel;
    DBEdit64: TDBEdit;
    Label82: TLabel;
    DBEdit65: TDBEdit;
    Label83: TLabel;
    DBEdit66: TDBEdit;
    Label84: TLabel;
    Label85: TLabel;
    DBEdit68: TDBEdit;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    Label87: TLabel;
    DBEdit70: TDBEdit;
    Label88: TLabel;
    Label90: TLabel;
    DBEdit72: TDBEdit;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    Label91: TLabel;
    IMG_Pessoas: TImage;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label96: TLabel;
    Label97: TLabel;
    DBEdit78: TDBEdit;
    Label98: TLabel;
    DBEdit79: TDBEdit;
    Label99: TLabel;
    DBEdit80: TDBEdit;
    Label100: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    Label101: TLabel;
    DBGrid8: TDBGrid;
    EditAnuncCodigo: TDBEdit;
    Label103: TLabel;
    EditAnuncTitulo: TDBEdit;
    Combo_Meio: TDBComboBox;
    Label109: TLabel;
    DBCheckBox16: TDBCheckBox;
    Memo_Anuncio: TDBMemo;
    Label110: TLabel;
    DBGrid9: TDBGrid;
    Valor_Ocupado: TCheckBox;
    Btn_Imprimir_Processos: TSpeedButton;
    Edit_Cep: TEdit;
    Edit_Tipo: TEdit;
    Edit_Rua: TEdit;
    Edit_complemento: TDBEdit;
    Edit_Numero: TDBEdit;
    Edit_Cidade: TEdit;
    Edit_Bairro: TEdit;
    Edit_UF: TEdit;
    SpeedButton14: TSpeedButton;
    DBEdit1: TDBEdit;
    Label102: TLabel;
    Imagem_FRENTE1: TImage;
    Imagem_FRENTE2: TImage;
    Imagem_FRENTE3: TImage;
    Val_IPTU: TEdit;
    Valor_Aluguel: TCheckBox;
    Valor_Venda: TCheckBox;
    Valor_Outros: TCheckBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBEdit23: TDBEdit;
    Label114: TLabel;
    DBCheckBox2: TDBCheckBox;
    btn_Anuncios: TSpeedButton;
    Btn_Agenda_Pessoa: TBitBtn;
    Btn_Agenda_Pessoa2: TBitBtn;
    Btn_IPTU_Pessoa1: TBitBtn;
    Btn_IPTU_Pessoa2: TBitBtn;
    Btn_Pessoa_Pessoa: TBitBtn;
    Valor_Foto: TCheckBox;
    Valor_Placa: TCheckBox;
    DBEdit44: TDBEdit;
    Label115: TLabel;
    DBEdit54: TDBEdit;
    Label116: TLabel;
    btnchaves: TSpeedButton;
    ZqInteressados: TZQuery;
    DSAnuncioImovel: TDataSource;
    DBRadioGroup2: TDBRadioGroup;
    btn_imprimir_contrato: TBitBtn;
    Bevel2: TBevel;
    Bevel5: TBevel;
    Bevel7: TBevel;
    GroupBox21: TGroupBox;
    Grid_Imagem: TDBGrid;
    Panel4: TPanel;
    Label6: TLabel;
    Label58: TLabel;
    Valor_Captador: TDBText;
    BtnEncontraGoogle: TBitBtn;
    Valor_Internet: TCheckBox;
    Val_Ultimo_IPTU: TEdit;
    Label3: TLabel;
    LabelCountCaracteres: TLabel;
    LabelCountCaracteresTopo: TLabel;
    GroupBox22: TGroupBox;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Valor_Deposito: TCheckBox;
    Valor_Anunciar: TCheckBox;
    Valor_Imprimir: TCheckBox;
    DBEdit18: TDBEdit;
    Label105: TLabel;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    LabelIdade: TLabel;
    GroupBox1: TGroupBox;
    EstrelaVazia: TImage;
    EstrelaCheia: TImage;
    Edit_Codigo: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    Imagem_1: TImage;
    Imagem_2: TImage;
    Imagem_3: TImage;
    btnEnviarNet3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    btnEnviarNet2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnEnviarNet1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label55: TLabel;
    Btn_Caracteristica_Excluir: TBitBtn;
    Btn_Caracteristica_Gravar: TBitBtn;
    Btn_Caracteristica_Cancelar: TBitBtn;
    Btn_Caracteristica_Novo: TBitBtn;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    comboTipo: TComboBox;
    comboStatus: TComboBox;
    DBEdit3: TDBEdit;
    GroupBox23: TGroupBox;
    Label57: TLabel;
    Label60: TLabel;
    Label80: TLabel;
    DBEdit4: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit53: TDBEdit;
    DBMemo2: TDBMemo;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox18: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox20: TGroupBox;
    Label5: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit5: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBNota: TDBEdit;
    Label53: TLabel;
    Label89: TLabel;
    DBText4: TDBText;
    DBEdit8: TDBEdit;
    Label104: TLabel;
    LabelData: TLabel;
    DBGrid10: TDBGrid;
    DBGrid5: TDBGrid;
    Label106: TLabel;
    Label107: TLabel;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DSPessoasInteressadas: TDataSource;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    tab_Chaves: TTabSheet;
    PopupMenu: TPopupMenu;
    SelecionarImovel1: TMenuItem;
    LimparImovel1: TMenuItem;
    VerImovel1: TMenuItem;
    N2: TMenuItem;
    GroupBox12: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox24: TGroupBox;
    chaveEmprestimoSaidaDocumento: TEdit;
    chaveEmprestimoSaidaPessoa: TEdit;
    Label108: TLabel;
    Image3: TImage;
    Label111: TLabel;
    chaveEmprestimoSaidaTelefone: TEdit;
    Label112: TLabel;
    btnChaveEmprestar: TBitBtn;
    Image4: TImage;
    Label113: TLabel;
    chaveEmprestimoEntradaDepoimento: TEdit;
    Label117: TLabel;
    BitBtn7: TBitBtn;
    btnChaveDevolver: TBitBtn;
    chaveEmprestimoEntradaImoveis: TListBox;
    chaveEmprestimoSaidaImoveis: TListBox;
    chaveEmprestimoImoveis: TListBox;
    chaveEmprestimoEntradaPessoa: TEdit;
    chaveEmprestimoPessoas: TListBox;
    BitBtn3: TBitBtn;
    ComboProcessoTipo: TComboBox;
    ComboProcessoSubTipo: TComboBox;
    DBEdit55: TDBEdit;
    chaveEmprestimoSaidaEndereco: TEdit;
    Label118: TLabel;
    chaveEmprestimoSaidaTelefone2: TEdit;
    Label119: TLabel;
    btnChavePessoa: TBitBtn;
    checkFinancia: TCheckBox;
    DBEdit6: TDBEdit;
    Label120: TLabel;
    DSAnexo: TDataSource;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Label81: TLabel;
    Label56: TLabel;
    memoInformacao: TDBMemo;
    Memovistoria: TDBMemo;
    TabSheet2: TTabSheet;
    DBGrid6: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Label121: TLabel;
    labelAnexos: TLabel;
    VernoClulaDisplay1: TMenuItem;
    btnDisplay: TSpeedButton;
    DBEdit7: TDBEdit;
    Label122: TLabel;
    btnFacebook: TBitBtn;
    btnAbrirnoSite: TBitBtn;
    procedure btnAbrirnoSiteClick(Sender: TObject);
    procedure btnFacebookClick(Sender: TObject);
    procedure VernoClulaDisplay1Click(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EDIT_AREATOTAL3_MEDIDAExit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure EDIT_AREATOTAL2_MEDIDAExit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure EDIT_AREATOTAL1_MEDIDAExit(Sender: TObject);
    procedure EDIT_AREATITAL_MEDIDAExit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdit6Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure checkFinanciaClick(Sender: TObject);
    procedure btnChavePessoaClick(Sender: TObject);
    procedure DBEdit55Change(Sender: TObject);
    procedure Btn_Imprimir_ProcessosClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnChaveDevolverClick(Sender: TObject);
    procedure chaveEmprestimoImoveisDblClick(Sender: TObject);
    procedure chaveEmprestimoPessoasDblClick(Sender: TObject);
    procedure btnChaveEmprestarClick(Sender: TObject);
    procedure tab_ChavesShow(Sender: TObject);
    procedure LimparImovel1Click(Sender: TObject);
    procedure VerImovel1Click(Sender: TObject);
    procedure SelecionarImovel1Click(Sender: TObject);
    procedure DBGrid8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label106Click(Sender: TObject);
    procedure LabelDataClick(Sender: TObject);
    procedure EstrelaVaziaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EstrelaCheiaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdit3Change(Sender: TObject);
    procedure Grid_ImagemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Tab_PesquisaShow(Sender: TObject);
    procedure btnEnviarNet3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnEnviarNet2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnEnviarNet1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnEnviarNet3Click(Sender: TObject);
    procedure btnEnviarNet2Click(Sender: TObject);
    procedure Grid_ImagemCellClick(Column: TColumn);
    procedure btnEnviarNet1Click(Sender: TObject);
    procedure DBCheckBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit_CodigoChange(Sender: TObject);
    procedure EditAnuncTituloChange(Sender: TObject);
    procedure Memo_AnuncioChange(Sender: TObject);
    procedure btn_AnunciosClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBEdit77DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure Look_TipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_BuscaDblClick(Sender: TObject);
    procedure Grid_BuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure Btn_IPTU_EXCLUIRClick(Sender: TObject);
    procedure Tab_PesquisaHide(Sender: TObject);
    procedure Tab_HistoricoHide(Sender: TObject);
    procedure Tab_OutrosHide(Sender: TObject);
    procedure Tab_AspectosGeraisHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tab_HistoricoShow(Sender: TObject);
    procedure Tab_OutrosShow(Sender: TObject);
    procedure Imagem_FRENTE3DblClick(Sender: TObject);
    procedure Imagem_FRENTE2DblClick(Sender: TObject);
    procedure Imagem_FRENTE1DblClick(Sender: TObject);
    procedure Btn_EsquerdaClick(Sender: TObject);
    procedure Btn_DireitaClick(Sender: TObject);
    procedure Tab_AnuncioAnotacaoHide(Sender: TObject);
    procedure Tab_MedidasValoresHide(Sender: TObject);
    procedure Tab_PessoasHide(Sender: TObject);
    procedure Tab_VisitacaoHide(Sender: TObject);
    procedure Tab_CaracteristicaHide(Sender: TObject);
    procedure Tab_InformacoesHide(Sender: TObject);
    procedure Btn_IPTU_Pessoa2Click(Sender: TObject);
    procedure Btn_IPTU_Pessoa1Click(Sender: TObject);
    //procedure DBGrid6TitleClick(Column: TColumn);
    procedure Btn_IPTU_GRAVARClick(Sender: TObject);
    procedure Btn_IPTU_CANCELARClick(Sender: TObject);
    //procedure DBGrid5DblClick(Sender: TObject);
    procedure Btn_IPTU_NovoClick(Sender: TObject);
    //procedure DBGrid6ColEnter(Sender: TObject);
    procedure EDIT_TOTALSUGERIDO_MEDIDADblClick(Sender: TObject);
    procedure Tab_MedidasValoresShow(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure Btn_Agenda_Pessoa2Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure Btn_Anuncio_ExcluirClick(Sender: TObject);
    procedure Btn_Anuncio_CancelarClick(Sender: TObject);
    procedure Btn_Anuncio_NovoClick(Sender: TObject);
    procedure Btn_Anuncio_GravarClick(Sender: TObject);
    procedure Tab_AnuncioAnotacaoShow(Sender: TObject);
    procedure DBEdit77Change(Sender: TObject);
    procedure IMG_PessoasDblClick(Sender: TObject);
    procedure Btn_Pessoa_PessoaClick(Sender: TObject);
    procedure Btn_Pessoas_ExcluirClick(Sender: TObject);
    procedure Btn_Pessoas_GravarClick(Sender: TObject);
    procedure Btn_Pessoas_CancelarClick(Sender: TObject);
    procedure Btn_Pessoas_NovoClick(Sender: TObject);
    procedure IMG_ProprietarioDblClick(Sender: TObject);
    procedure Tab_PessoasShow(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure Btn_Proprietario_ExcluirClick(Sender: TObject);
    procedure Btn_Proprietario_GravarClick(Sender: TObject);
    procedure Btn_Proprietario_CancelarClick(Sender: TObject);
    procedure Btn_Proprietario_NovoClick(Sender: TObject);
    procedure Tab_VisitacaoShow(Sender: TObject);
    procedure Btn_Agenda_PessoaClick(Sender: TObject);
    procedure Btn_Agenda_ExcluirClick(Sender: TObject);
    procedure Btn_Agenda_GravarClick(Sender: TObject);
    procedure Btn_Agenda_CancelarClick(Sender: TObject);
    procedure Btn_Agenda_NovoClick(Sender: TObject);
    procedure Imagem_3DblClick(Sender: TObject);
    procedure Imagem_2DblClick(Sender: TObject);
    procedure Imagem_1DblClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Btn_Caracteristica_ExcluirClick(Sender: TObject);
    procedure Btn_Caracteristica_GravarClick(Sender: TObject);
    procedure Btn_Caracteristica_CancelarClick(Sender: TObject);
    procedure Btn_Caracteristica_NovoClick(Sender: TObject);
    procedure Tab_CaracteristicaShow(Sender: TObject);
    procedure EDIT_AREATOTALDblClick(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Look_TipoCloseUp(Sender: TObject);
    procedure Btn_Endereco_EnderecoClick(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tab_InformacoesShow(Sender: TObject);
    procedure btnchavesClick(Sender: TObject);
    procedure Grid_BuscaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Tab_HistoricoExit(Sender: TObject);
    procedure SetFotoRelatorio(Parametro: String; Arquivo: String);
    function ConverterJPegParaBmp(Arquivo: String): String;
    procedure btn_imprimir_contratoClick(Sender: TObject);
    procedure DuplicarImovel;
    procedure CopiarCaracteristicas(id_imovel, id_matriz: String);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure BtnEncontraGoogleClick(Sender: TObject);
    procedure DBGrid10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    procedure verificarCaracteristica();
    { Private declarations }
  public
        SelecaoImovel: TStringList;
        DataSource: TDataSource;
        procedure buscaIndividual(Codigo: Integer);
        procedure controleImagem();
        procedure limpaFotos();
        procedure Pesquisar(selecaoRegistros: String);
        procedure CopiarProprietarios(id_imovel, id_matriz: String);
        function getFinalidade(): String;
        procedure ajustarAnuncioBloqueia();
        procedure ajustarAnuncioLibera();
    { Public declarations }
  end;

var
  CAD_Imovel: TCAD_Imovel;
  NovoRegistro: Smallint;
  QUERY: TZQuery;
  DSC: TDataSource;
  Query_Captador : TZQuery;
  DSC_Captador : TDataSource;
  SQL: TZQuery;
  SQL2: TZQuery;

implementation

uses FrmDM_Cadastro, FrmPrincipal, unCamposBusca, unImagem, unMsg, FrmImagem,
  FrmLogradouro, FrmPessoa, FrmTipoImovel, FrmDM_ADMIN, //ZAbstractDataset,
  FrmDM_REL, FrmEmitirAnuncio, FrmChaves, FormBrowser, FrmUsuario,
  unUtilitario, unINI, FrmDM_RELATORIOS, unLog, FrmAluguel, unWord, frmThread;

{$R *.dfm}


procedure TCAD_Imovel.ajustarAnuncioBloqueia();
begin
     //Ajusta Anuncios
     DBCheckBox16.Enabled := False;
     Combo_Meio.Enabled := False;
     EditAnuncTitulo.Enabled := False;
     DBEdit6.Enabled := False;
     Memo_Anuncio.Enabled := False;
     Btn_Anuncio_Gravar.Enabled := False;
     Btn_Anuncio_Cancelar.Enabled := False;
     Btn_Anuncio_Novo.Enabled := True;

     EditAnuncTitulo.Color := cl3DLight;
     Memo_Anuncio.Color := cl3DLight;
end;

procedure TCAD_Imovel.ajustarAnuncioLibera();
begin
     //Ajusta Anuncios
     DBCheckBox16.Enabled := True;
     Combo_Meio.Enabled := True;
     EditAnuncTitulo.Enabled := True;
     DBEdit6.Enabled := True;
     Memo_Anuncio.Enabled := True;
     Btn_Anuncio_Gravar.Enabled := True;
     Btn_Anuncio_Cancelar.Enabled := True;
     Btn_Anuncio_Novo.Enabled := False;

     EditAnuncTitulo.Color := clWindow;
     Memo_Anuncio.Color := clWindow;
end;

procedure TCAD_Imovel.Pesquisar(selecaoRegistros: String);
Var quantidadeFiltros, i: integer;
    tamanhoString: Smallint;
    BUSCA_VALOR, troca, imovel_foto, Where: string;
    varSQL: TZQuery;
begin

    //ORDENAÇÃO DA GRID
If Ordenacao = '' Then
     Ordenacao := 'L.nome'
  Else
     Begin
          If
             (POS('.',Ordenacao) = 0) AND
             (Ordenacao <> 'IMS.nome') AND
             (Ordenacao <> 'IT.nome') AND
             (Ordenacao <> 'L.tipo') AND
             (Ordenacao <> 'L.nome') AND
             (Ordenacao <> 'L.CEP') AND
             (Ordenacao <> 'B.nome') AND
             (Ordenacao <> 'CI.nome') AND
             (Ordenacao <> 'U.sigla') AND
             (Ordenacao <> 'PROPRIETARIO')
             Then
             Ordenacao := 'I.'+Ordenacao;

          If Ordenacao = 'I.XSUBTIPO' Then
             Ordenacao := 'IMS.nome';

          If Ordenacao = 'I.XTIPO' Then
             Ordenacao := 'IT.nome';

          If Ordenacao = 'I.XTIPORUA' Then
             Ordenacao := 'L.tipo';

          If Ordenacao = 'I.XNOMERUA' Then
             Ordenacao := 'L.nome';

          If Ordenacao = 'I.XCEP' Then
             Ordenacao := 'L.CEP';

          If Ordenacao = 'I.XBAIRRO' Then
             Ordenacao := 'B.nome';

          If Ordenacao = 'I.XCIDADE' Then
             Ordenacao := 'CI.nome';

          If Ordenacao = 'I.XESTADO' Then
             Ordenacao := 'U.sigla';
  End;

     if Length(trim(selecaoRegistros)) = 0 Then
     Begin

     //Trata completamente a string, removendo caracteres especiais e trocando palavras
    BUSCA_VALOR := tratarBusca(Valor.Text);

    if BUSCA_VALOR = 'false' then
       exit;

    //Ver qual é a quantidade de filtros usadas para refinar a busca
    quantidadeFiltros := contarPalavras(BUSCA_VALOR, 'AND') + contarPalavras(BUSCA_VALOR, 'OR');

    TamanhoString := Length(BUSCA_VALOR); //Verifica se foi alterado ou não

    //Trocar as palavras e elaborar a SQL
    for i := 0 to quantidadeFiltros do
    Begin
         If (Pos('I.NOTA',BUSCA_VALOR) = 0) AND ((Pos('AVALIACAO ',BUSCA_VALOR) <> 0) or (Pos('NOTA ',BUSCA_VALOR) <> 0)) then
         Begin

              If (Pos('AVALIACAO DE ',BUSCA_VALOR) <> 0) OR (Pos('NOTA DE ',BUSCA_VALOR) <> 0) then
              Begin
                   troca := ' I.NOTA BETWEEN ';
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'AVALIACAO DE ', troca,[rfReplaceAll]);
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'NOTA DE ', troca,[rfReplaceAll]);
              end
              else
              begin
                   troca := ' I.NOTA = ';
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'AVALIACAO', troca,[rfReplaceAll]);
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'NOTA', troca,[rfReplaceAll]);
              end;
         end
         else
         If (Pos('I.ID_IMOVEL BETWEEN',BUSCA_VALOR) = 0) AND ((Pos('CODIGO DE ',BUSCA_VALOR) <> 0) OR (Pos('CODIGO ENTRE ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' I.ID_IMOVEL BETWEEN ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO DE ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO ENTRE ', troca,[rfReplaceAll]);
         end
         else
         If (Pos('I.VALOR_ALUQUEL BETWEEN',BUSCA_VALOR) = 0) AND ((Pos('ALUGUEL ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' I.VALOR_ALUQUEL BETWEEN ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'ALUGUEL DE ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'ALUGUEL ENTRE ', troca,[rfReplaceAll]);
              //BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VALOR ENTRE ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'ALUGUEL ', troca,[rfReplaceAll]);
         end
         else
         If (Pos('I.VALOR_VENDA BETWEEN',BUSCA_VALOR) = 0) AND ((Pos('VENDA ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' I.VALOR_VENDA BETWEEN ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VENDA DE ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'VENDA ENTRE ', troca,[rfReplaceAll]);
         end
         else
         If (Pos('ID_IMOVEL',BUSCA_VALOR) = 0) AND ((Pos('CODIGO ',BUSCA_VALOR) <> 0)) then
         Begin
              if varAte > 0 then
              Begin
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO', 'CODIGO DE',[rfReplaceAll]);
                   quantidadeFiltros := quantidadeFiltros + 1;
              end
              else
              Begin
                   troca := ' I.ID_IMOVEL = ';
                   BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CODIGO', troca,[rfReplaceAll]);
              end;
         end
         else
         If (Pos('I.ID_PESSOA',BUSCA_VALOR) = 0) AND ((Pos('USUARIO ',BUSCA_VALOR) <> 0)) then
         Begin
              troca := ' I.ID_PESSOA = ';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'USUARIO', troca,[rfReplaceAll]);
         end
         else
         If (Pos('I.DORMITORIOS',BUSCA_VALOR) = 0) AND ((Pos('QUARTOS',BUSCA_VALOR) <> 0) or (Pos('QUARTO',BUSCA_VALOR) <> 0)) then
         Begin
              troca := 'I.DORMITORIOS =';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'QUARTOS', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'QUARTO', troca,[rfReplaceAll]);
         end
         else
         If (Pos('TUDO',BUSCA_VALOR) <> 0) OR (Pos('TODOS',BUSCA_VALOR) <> 0) OR (Pos('TODO',BUSCA_VALOR) <> 0) then
         Begin
              BUSCA_VALOR := ' CURRENT_DATE = CURRENT_DATE '; //Só para passar sem parâmetros mesmo...
         end
         else
         If (Pos('id_pessoa_tipo = 14',BUSCA_VALOR) = 0) AND ((Pos('CAPTADOR ',BUSCA_VALOR) > 0) OR (Pos('CAPITADOR ',BUSCA_VALOR) > 0)) then
         Begin
              troca := ' exists (SELECT PIX.id_imovel FROM PESSOA_IMOVEL PIX LEFT join pessoa PES on PES.id_pessoa = PIX.id_pessoa WHERE I.id_imovel = PIX.id_imovel AND PIX.id_pessoa_tipo = 14 AND PES.ATIVO <> ''XXX'' AND  PES.NOME LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CAPTADOR ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CAPITADOR ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end
         else
         If (Pos(' (L.NOME LIKE',BUSCA_VALOR) = 0) AND (Pos('PES.NOME ', BUSCA_VALOR) = 0) AND ((Pos('NOME ',BUSCA_VALOR) > 0) OR (Pos('NOMES ',BUSCA_VALOR) > 0) OR (Pos('RUA ',BUSCA_VALOR) > 0) ) then
         Begin
              troca := ' (L.NOME LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'NOME ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'NOMES ', troca,[rfReplaceAll]);
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'RUA ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end
         else
         If (Pos('C.id_caracteristicas',BUSCA_VALOR) = 0) AND (Pos('CADASTRO',BUSCA_VALOR) <> 0) then
         Begin
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'CADASTRO',' I.DATA between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ',[rfReplaceAll]);
         end
         else
         If (Pos('I.COMPLEMENTO',BUSCA_VALOR) = 0) AND (Pos('COMPLEMENTO',BUSCA_VALOR) > 0) then
         Begin
              troca := ' (I.COMPLEMENTO LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'COMPLEMENTO ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end
         else
         If (Pos('B.NOME',BUSCA_VALOR) = 0) AND (Pos('QUADRANTE',BUSCA_VALOR) > 0) then
         Begin
              troca := ' (B.NOME LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'QUADRANTE ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end
         else
         If (Pos('B.NOME',BUSCA_VALOR) = 0) AND (Pos('BAIRRO',BUSCA_VALOR) > 0) then
         Begin
              troca := ' (B.NOME LIKE ''%''||TRIM(''';
              BUSCA_VALOR := StringReplace(BUSCA_VALOR, 'BAIRRO ', troca,[rfReplaceAll]);
              BUSCA_VALOR := descobrirPalavra(troca, BUSCA_VALOR);
         end;

    end;

    if (Length(BUSCA_VALOR) = TamanhoString) and verificaStringInt(BUSCA_VALOR) then
    Begin
         BUSCA_VALOR := ' ( I.ID_IMOVEL LIKE ''%'+BUSCA_VALOR+''' ) ';
    end;

    if (Length(BUSCA_VALOR) = TamanhoString) then
    Begin
              BUSCA_VALOR := ' ( '+
              ' I.COMPLEMENTO LIKE ''%'+BUSCA_VALOR+'%'' or'+
              ' I.OBS LIKE ''%'+BUSCA_VALOR+'%'' or'+
              ' Mv_Soundex(L.NOME) LIKE ''%''||Mv_Soundex('''+BUSCA_VALOR+''')||''%'' or'+
              ' B.NOME LIKE ''%'+BUSCA_VALOR+'%'' or'+
              ' CI.NOME LIKE ''%'+BUSCA_VALOR+'%'' or'+
              ' I.LOCAL_PGTO LIKE ''%'+BUSCA_VALOR+'%'' or'+
              ' L.TIPO LIKE '''+BUSCA_VALOR+''' or'+
              ' L.CEP = '''+BUSCA_VALOR+''' or'+
              ' U.SIGLA = '''+BUSCA_VALOR+''' or'+
              ' I.id_imovel ';

              varSQL := unUtilitario.getSelect('SELECT PIX.id_imovel AS ID FROM PESSOA_IMOVEL PIX inner join pessoa PES on PES.id_pessoa = PIX.id_pessoa WHERE PES.ATIVO <> ''XXX'' AND Mv_Soundex(PES.NOME) LIKE ''%''||Mv_Soundex('''+tratarBusca(Valor.Text)+''')||''%'' ');
              BUSCA_VALOR := BUSCA_VALOR + descobreIDSelect(varSQL,'ID');
              //varSQL.Close;

              BUSCA_VALOR := BUSCA_VALOR + ' or I.id_imovel ';

              varSQL := unUtilitario.getSelect('SELECT distinct(PIX.id_imovel) as ID FROM PESSOA_CONTRATO PIX inner join pessoa PES on PES.id_pessoa = PIX.id_pessoa WHERE PES.ATIVO <> ''XXX'' AND Mv_Soundex(PES.NOME) LIKE ''%''||Mv_Soundex('''+tratarBusca(Valor.Text)+''')||''%''');
              BUSCA_VALOR := BUSCA_VALOR + descobreIDSelect(varSQL,'ID');
              //varSQL.Close;

              BUSCA_VALOR := BUSCA_VALOR + ' ) ';
    end;


     //DATAS
     case StrIndex(LabelData.Caption, ['NÃO procurar por data',
                                      'Procurar por data de CADASTRO',
                                      'Procurar por data de ALTERAÇÃO',
                                      'Procurar Por data de ENTRADA de PROCESSOS',
                                      'Procurar Por data de SAÍDA de PROCESSOS']) of
          1: BUSCA_VALOR := BUSCA_VALOR + ' ';
          2: BUSCA_VALOR := BUSCA_VALOR + ' AND I.DATA between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ';
          3: BUSCA_VALOR := BUSCA_VALOR + ' AND I.ALTERACAO_DATA between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' AND '''+formataDataSQL(DateToStr(Data_Maior.Date))+''' ';
          4: BUSCA_VALOR := BUSCA_VALOR + ' AND I.id_imovel IN (SELECT PIX.id_imovel AS ID FROM PESSOA_IMOVEL PIX WHERE PIX.data_inicial between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' and '''+formataDataSQL(DateToStr(Data_Maior.Date))+''') ';
          5: BUSCA_VALOR := BUSCA_VALOR + ' AND I.id_imovel IN (SELECT PIX.id_imovel AS ID FROM PESSOA_IMOVEL PIX WHERE PIX.data_final between '''+formataDataSQL(DateToStr(Data_Menor.Date))+''' and '''+formataDataSQL(DateToStr(Data_Maior.Date))+''') ';
     else
         LabelData.Caption := ' ';
     end;

    //BUSCA DOS COMPONENTES VISUAIS
    Where := iif(Valor_Ativo.Checked, BUSCA_VALOR + ' AND (I.ativo = ''SIM'') ', BUSCA_VALOR + ' AND (I.ativo = ''NAO'') ');

    If NOT (Valor_Ocupado.State = cbGrayed) Then
       Where := iif(Valor_Ocupado.Checked, where + ' AND (I.ocupado = ''SIM'')', where + ' AND (I.ocupado = ''NAO'')');

    If NOT (Valor_Deposito.State = cbGrayed) Then
       Where := iif(Valor_Deposito.Checked, where + ' and (I.deposito = ''SIM'')', where + ' AND (I.deposito = ''NAO'')');

    If NOT (Valor_Anunciar.State = cbGrayed) Then
       Where := iif(Valor_Anunciar.Checked, where + ' and (I.anunciar = ''SIM'')', where + ' AND (I.anunciar = ''NAO'')');

    If NOT (Valor_Imprimir.State = cbGrayed) Then
       Where := iif(Valor_Imprimir.Checked, where + ' and (I.imprimir = ''SIM'')', where + ' AND (I.imprimir = ''NAO'')');

    If NOT (Valor_Internet.State = cbGrayed) Then
       Where := iif(Valor_Internet.Checked, where + ' and (I.internet = ''SIM'')', where + ' AND (I.internet = ''NAO'')');

    If NOT (Valor_Aluguel.State = cbGrayed) Then
       Where := iif(Valor_Aluguel.Checked, where + ' and (I.aluguel = ''SIM'')', where + ' AND (I.aluguel = ''NAO'')');

    If NOT (Valor_Venda.State = cbGrayed) Then
       Where := iif(Valor_Venda.Checked, where + ' and (I.venda = ''SIM'')', where + ' and (I.venda = ''NAO'')');

    If NOT (Valor_Outros.State = cbGrayed) Then
       Where := iif(Valor_Outros.Checked, where + ' and (I.outros = ''SIM'')', where + ' and (I.outros = ''NAO'')');

    If NOT (Valor_Placa.State = cbGrayed) Then
       Where := iif(Valor_Placa.Checked, where + ' and (I.placa = ''SIM'')', where + ' and (I.placa = ''NAO'')');

    If NOT (Valor_Placa.State = cbGrayed) Then
       Where := iif(Valor_Placa.Checked, where + ' and (I.placa = ''SIM'')', where + ' and (I.placa = ''NAO'')');

    If NOT (Valor_Foto.State = cbGrayed) Then
    Begin
         imovel_foto := '';

         varSQL := unUtilitario.getSelect('SELECT DISTINCT(ID_IMOVEL) FROM IMOVEL_CARACTERISTICA WHERE ((FOTO1 <> ''X_Foto.jpg'') OR (FOTO2 <> ''X_Foto.jpg'') OR (FOTO3 <> ''X_Foto.jpg'')) ');

         WHILE NOT varSQL.Eof DO
         BEGIN
              imovel_foto := imovel_foto + varSQL.Fields[0].AsString + ', ';
              varSQL.Next;
         END;

         imovel_foto := imovel_foto + ' 0 ';

         //varSQL.Close;

         If Valor_Foto.Checked Then
            Where := where + ' AND (I.ID_IMOVEL IN (' + IMOVEL_FOTO + ')) '
         else
             Where := where + ' AND (I.ID_IMOVEL NOT IN (' + IMOVEL_FOTO + ')) ';

         FreeAndNil(varSQL);
     End;

     if Length(Trim(comboTipo.Text)) > 0  then
        Where := where + ' AND (I.id_imovel_subtipo = '+IntToStr(IDCampo(comboTipo.Text))+' ) ';

     if Length(Trim(comboStatus.Text)) > 0  then
        Where := where + ' AND (I.status = '''+comboStatus.Text+''' ) ';

     finalizaPesquisa('select distinct(I.*), IMS.nome as XSUBTIPO, IT.nome as XTIPO, L.tipo as XTIPORUA, L.nome as XNOMERUA, L.CEP as XCEP, B.nome '+' as XBAIRRO, CI.nome as XCIDADE, U.sigla as XESTADO, '+'(select first 1 pes.nome from pessoa pes inner join pessoa_imovel pesi on pesi.id_pessoa = pes.id_pessoa where pesi.status = ''PROPRIETARIO'' and pesi.id_imovel = I.id_imovel) AS PROPRIETARIO '+'FROM imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT '+' on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE '+Where+' order by '+Ordenacao);
     end else
     Begin
          finalizaPesquisa('select distinct(I.*), IMS.nome as XSUBTIPO, IT.nome as XTIPO, L.tipo as XTIPORUA, L.nome as XNOMERUA, L.CEP as XCEP, B.nome '+' as XBAIRRO, CI.nome as XCIDADE, U.sigla as XESTADO, '+'(select first 1 pes.nome from pessoa pes inner join pessoa_imovel pesi on pesi.id_pessoa = pes.id_pessoa where pesi.status = ''PROPRIETARIO'' AND pesi.id_imovel = I.id_imovel) AS PROPRIETARIO '+'FROM imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT '+' on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE'+' I.id_imovel in ('+selecaoRegistros+') order by '+Ordenacao);
          Valor.Text := 'REGISTROS SELECIONADOS';
     end;
end;


procedure TCAD_Imovel.buscaIndividual(Codigo: Integer);
begin

     if Codigo > 0 then
     Begin
          Ordenacao := 'I.numero';
          Valor.Text := 'CODIGO '+IntToStr(Codigo);
          Pesquisar('');          

          if DM_CADASTRO.Z_Imovel.RecordCount > 0 then
          Begin
               Tab_Informacoes.Show;
          end
          else
          Begin
               Tab_Pesquisa.Show;
          end;
     end
     else
     Begin
          Tab_Pesquisa.Show;
     end;

end;

procedure TCAD_Imovel.Tab_InformacoesShow(Sender: TObject);
begin
  inherited;
  //TAB INFORMAÇÃO SHOW!

  If NOT DM_Cadastro.Z_Imovel.Active Then
     exit;

  DM_Cadastro.Z_Imovel.Edit;   

  //VERIFICA FINANCIAMENTO
  if POS('[ACEITA FINANCIAMENTO]',DM_CADASTRO.Z_Imovel.FieldByName('OBS').AsString) > 0 then
     checkFinancia.Checked := True
  else
      checkFinancia.Checked := False;
     

If NOT DM_Cadastro.Z_ImovelID_IMOVEL.IsNull Then
Begin

DBEdit27Exit(Sender);

QUERY_Captador.Close;
QUERY_Captador.ParamByName('CODIGO').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;
QUERY_Captador.Open;

     unCamposBusca.BUSCA(SQL, 'SELECT first 1 VALOR_TOTAL_IPTU FROM IMOVEL_IPTU WHERE ID_IMOVEL = '+DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').AsString+' ORDER BY ANO desc');

     If SQL.RecordCount > 0 Then
          Val_IPTU.Text := unUtilitario.getCurrToStr(SQL.FieldByName('VALOR_TOTAL_IPTU').AsCurrency,true)
     else
         Val_IPTU.Text := 'R$ 0,00';

     SQL.close;

     unCamposBusca.BUSCA(SQL, 'select first 1 ce.valor as VALOR_ULTIMO_IPTU from caixa_entrada ce inner join caixa_sis cs on cs.id_caixa_sis = ce.id_subtipo where cs.nome = ''IPTU'' and ce.id_imovel = '+DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').AsString+' order by ce.data_ref desc ');

     If SQL.RecordCount > 0 Then
          Val_Ultimo_IPTU.Text := unUtilitario.getCurrToStr(SQL.FieldByName('VALOR_ULTIMO_IPTU').AsCurrency,true)
     else
         Val_Ultimo_IPTU.Text := unUtilitario.getCurrToStr(0.00,true);

     SQL.close;

     If NOT DM_Cadastro.Z_Imovel.FieldByName('ID_LOGRADOURO').IsNull Then
     Begin
       unCamposBusca.BUSCA(DM_Cadastro.Z_Logradouro, 'select L.*, B.nome AS XBAIRRO, C.nome AS XCIDADE, U.nome AS XESTADO,'+' U.sigla AS XSIGLA from logradouro L left join bairro B on B.id_bairro = L.id_bairro left join cidade C on C.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla WHERE L.ID_LOGRADOURO = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_LOGRADOURO').Value)+' order by U.nome, C.nome, B.nome, C.nome');

       Edit_Cep.Text := DM_Cadastro.Z_Logradouro.FieldByName('CEP').Value;
       Edit_Tipo.Text := DM_Cadastro.Z_Logradouro.FieldByName('TIPO').Value;
       Edit_Rua.Text := DM_Cadastro.Z_Logradouro.FieldByName('NOME').Value;
       Edit_Cidade.Text := DM_Cadastro.Z_Logradouro.FieldByName('XCIDADE').Value;
       Edit_Bairro.Text := DM_Cadastro.Z_Logradouro.FieldByName('XBAIRRO').Value;
       Edit_UF.Text := DM_Cadastro.Z_Logradouro.FieldByName('XSIGLA').Value;

       DM_Cadastro.Z_Logradouro.Close;
     End;


IF NOT DM_Cadastro.Z_Imovel.FieldByName('STATUS').IsNull THEN
BEGIN
     unCamposBusca.BUSCA(SQL, 'SELECT distinct(STATUS) FROM imovel WHERE ATIVO = ''SIM''');

     Combo_Status.Items.Clear;

     SQL.First;

     While NOT SQL.Eof DO
     Begin
          Combo_Status.Items.Add(SQL.FieldByName('STATUS').Value);
          SQL.Next;
     End;

     SQL.Close;


     unCamposBusca.BUSCA(SQL, 'SELECT distinct(STATUS) FROM imovel WHERE ATIVO = ''SIM''');

     Combo_Status.Items.Clear;

     SQL.First;

     While not SQL.Eof Do
     Begin
          Combo_Status.Items.Add(SQL.FieldByName('STATUS').Value);
          SQL.Next;
     End;

     Combo_Status.Repaint;

     SQL.Close;
END;

//FOTOS

  Try
     unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_06, 'select FIRST 1 IC.*, C.NOME from imovel_caracteristica IC left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica where (ic.id_imovel = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value)+') AND (C.NOME = ''FACHADA'' OR C.NOME = ''FRENTE'') ');

     If NOT DM_Cadastro.Z_Curinga_06.FieldByName('FOTO1').IsNull Then
        unImagem.getImagem(Imagem_FRENTE1,DM_Cadastro.Z_Curinga_06.FieldByName('FOTO1').Value)
     Else
         unImagem.getImagem(Imagem_FRENTE1,'X_Foto.jpg');

     If NOT DM_Cadastro.Z_Curinga_06.FieldByName('FOTO2').IsNull Then
        unImagem.getImagem(Imagem_FRENTE2,DM_Cadastro.Z_Curinga_06.FieldByName('FOTO2').Value)
     Else
         unImagem.getImagem(Imagem_FRENTE2,'X_Foto.jpg');

     If NOT DM_Cadastro.Z_Curinga_06.FieldByName('FOTO3').IsNull Then
        unImagem.getImagem(Imagem_FRENTE3,DM_Cadastro.Z_Curinga_06.FieldByName('FOTO3').Value)
     Else
         unImagem.getImagem(Imagem_FRENTE3,'X_Foto.jpg');

     Imagem_FRENTE1.Repaint;
     Imagem_FRENTE2.Repaint;
     Imagem_FRENTE3.Repaint;

     Imagem_FRENTE1.Refresh;
     Imagem_FRENTE2.Refresh;
     Imagem_FRENTE3.Refresh;
  Except

        unMsg.ERRO(19);
  End;
                
End;
DBEdit27Exit(Sender); //calcular a area
//DBCheckBox1.SetFocus;

//TIPO
IF NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').IsNull THEN
BEGIN
//     unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select id_imovel_tipo, nome, OBS from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');
       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select * from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');
END;

IF NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_SUBTIPO').IsNull THEN
BEGIN
//     unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select id_imovel_SUBtipo, nome from imovel_SUBtipo WHERE id_imovel_tipo = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').Value)+' ORDER BY NOME');
       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select * from imovel_SUBtipo WHERE padrao <> ''XXX'' and id_imovel_tipo = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').Value)+' ORDER BY NOME');
END;

    //ESTRELAS
    DM_Cadastro.Z_Imovel.Edit;
    if DM_CADASTRO.Z_ImovelNOTA.AsInteger > 200 then
    Begin
         EstrelaCheia.Width := 200;
         DM_Cadastro.Z_ImovelNOTA.AsInteger := 200;
    end;

    if DM_Cadastro.Z_ImovelNOTA.IsNull then
       EstrelaCheia.Width := 0
    else
        EstrelaCheia.Width := DM_Cadastro.Z_ImovelNOTA.AsInteger;

end;

procedure TCAD_Imovel.FormCreate(Sender: TObject);
begin
inherited;
  SelecaoImovel := TStringList.Create;

  //Componentes criados em tempo de execução
  //Query := TZQuery.Create(self);
  //DSC := TDataSource.Create(self);
  Query_Captador := TZQuery.Create(self);
  DSC_Captador := TDataSource.Create(self);
  SQL := TZQuery.Create(self);
  SQL2 := TZQuery.Create(self);
  DataSource := TDataSource.Create(self);
  DataSource.DataSet := SQL2;

  SQL.Connection := PRINCIPAL.Conexao;
  SQL2.Connection := PRINCIPAL.Conexao;

  //QUERY.Connection := PRINCIPAL.Conexao;
  //QUERY.Close;
  //QUERY.SQL.Add('SELECT distinct(STATUS) FROM imovel WHERE ATIVO = ''SIM''');
  //QUERY.Open;

  QUERY_Captador.Connection := PRINCIPAL.Conexao;
  QUERY_Captador.Close;
  QUERY_Captador.SQL.Add('select P.nome from pessoa_imovel PI left join imovel I on I.id_imovel = PI.id_imovel left join pessoa P on P.id_pessoa = PI.id_pessoa left join pessoa_tipo PT on PT.id_pessoa_tipo = PI.id_pessoa_tipo where PT.nome = ''CAPTADOR'' and I.id_imovel = :CODIGO');
  QUERY_Captador.Open;

  DSC_Captador.DataSet := QUERY_Captador;
  //DSC.DataSet := QUERY;

  Valor_Captador.DataSource := DSC_Captador;
  Valor_Captador.DataField := 'NOME';

  //unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel, 'select distinct(I.*), IMS.nome as XSUBTIPO, IT.nome as XTIPO, L.tipo as XTIPORUA, L.nome as XNOMERUA, L.CEP as XCEP, B.nome as XBAIRRO, CI.nome as XCIDADE, U.sigla as XESTADO from imovel I left'+' join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left '+'join imovel_caracteristica IC on IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = '+'L.id_cidade left join uf U on U.id_sigla = L.id_sigla where I.id_imovel = 0 order by U.sigla, CI.nome, B.nome, L.tipo, L.nome, I.numero');

  DS.DataSet := DM_Cadastro.Z_Imovel;

  Data_Menor.Date := DATE;
  Data_Maior.Date := DATE;

  // Padrão de tela 1024X768
  Self.Height := 525;
  SELF.Width := 936;

  Tab_PesquisaShow(Sender);
  Grid_Busca := unUtilitario.pegaGrid(Self.Name, Grid_Busca);


end;


procedure TCAD_Imovel.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if (Edit_ValorCondominio.Focused AND (key = 13))  then
        Tab_Caracteristica.Show;

     if (DBEdit23.Focused AND (key = 13))  then
        Tab_Pessoas.Show;

     inherited;

end;

procedure TCAD_Imovel.FormShow(Sender: TObject);
begin
  inherited;

end;

{
procedure TCAD_Imovel.Btn_PesquisarClick(Sender: TObject);
Var Cod, x: integer;
    imovel_foto: string;
    BUSCA_VALOR: string;
    Where: string;
begin
 try
  Screen.Cursor := crAppStart; //Ampulheta

  //VERIFICAR POSTERIORMENTE PARA COLOCAR A MELHOR MANEIRA DE FAZER A BUSCA! ORGANIZAR OS CAMPOS! ESSA AINDA NÃO É A MELHOR MANEIRA!
  //Cod := unCamposBusca.IDCampo(Campos.Text);
  //BUSCA_VALOR := StringReplace() unCamposBusca.TROCA(Valor.Text+'*','*','%');
  BUSCA_VALOR := StringReplace(TROCA_LETRA(Valor.Text)+'*','*','%',[rfReplaceAll]);

  If Ordenacao = '' Then
     Ordenacao := 'U.sigla, CI.nome, B.nome, L.tipo, L.nome, I.numero'
  Else
     Begin
          If (POS('.',Ordenacao) = 0) AND
             (Ordenacao <> 'IMS.nome') AND
             (Ordenacao <> 'IT.nome') AND
             (Ordenacao <> 'L.tipo') AND
             (Ordenacao <> 'L.nome') AND
             (Ordenacao <> 'L.CEP') AND
             (Ordenacao <> 'B.nome') AND
             (Ordenacao <> 'CI.nome') AND
             (Ordenacao <> 'U.sigla')
             Then
             Ordenacao := 'I.'+Ordenacao;

          If Ordenacao = 'I.XSUBTIPO' Then
             Ordenacao := 'IMS.nome';

          If Ordenacao = 'I.XTIPO' Then
             Ordenacao := 'IT.nome';

          If Ordenacao = 'I.XTIPORUA' Then
             Ordenacao := 'L.tipo';

          If Ordenacao = 'I.XNOMERUA' Then
             Ordenacao := 'L.nome';

          If Ordenacao = 'I.XCEP' Then
             Ordenacao := 'L.CEP';

          If Ordenacao = 'I.XBAIRRO' Then
             Ordenacao := 'B.nome';

          If Ordenacao = 'I.XCIDADE' Then
             Ordenacao := 'CI.nome';

          If Ordenacao = 'I.XESTADO' Then
             Ordenacao := 'U.sigla';
  End;

If Valor_Ativo.Visible Then
  If Valor_Ativo.Checked Then
     Where := ' (I.ativo = ''SIM'')'
     else
     Where := ' (I.ativo = ''NAO'')';

If Valor_Ocupado.Visible Then
   If NOT (Valor_Ocupado.State = cbGrayed) Then
      If Valor_Ocupado.Checked Then
         Where := where + ' and (I.ocupado = ''SIM'')'
      else
          Where := where + ' and (I.ocupado = ''NAO'')';

If Valor_Deposito.Visible Then
   If NOT (Valor_Deposito.State = cbGrayed) Then
      Where := iif(Valor_Deposito.Checked, where + ' and (I.deposito = ''SIM'')', where + ' and (I.deposito = ''NAO'')');

If Valor_Anunciar.Visible Then
   If NOT (Valor_Anunciar.State = cbGrayed) Then
      Where := iif(Valor_Anunciar.Checked, where + ' and (I.anunciar = ''SIM'')', where + ' and (I.anunciar = ''NAO'')');

If Valor_Imprimir.Visible Then
   If NOT (Valor_Imprimir.State = cbGrayed) Then
      Where := iif(Valor_Imprimir.Checked, where + ' and (I.imprimir = ''SIM'')', where + ' and (I.imprimir = ''NAO'')');


If Valor_Internet.Visible Then
   If NOT (Valor_Internet.State = cbGrayed) Then
      If Valor_Internet.Checked Then
         Where := where + ' and (I.internet = ''SIM'')'
      else
          Where := where + ' and (I.internet = ''NAO'')';

If Valor_Aluguel.Visible Then
   If NOT (Valor_Aluguel.State = cbGrayed) Then
      If Valor_Aluguel.Checked Then
         Where := where + ' and (I.aluguel = ''SIM'')'
      else
          Where := where + ' and (I.aluguel = ''NAO'')';

If Valor_Venda.Visible Then
   If NOT (Valor_Venda.State = cbGrayed) Then
      If Valor_Venda.Checked Then
         Where := where + ' and (I.venda = ''SIM'')'
      else
          Where := where + ' and (I.venda = ''NAO'')';

If Valor_Outros.Visible Then
   If NOT (Valor_Outros.State = cbGrayed) Then
      If Valor_Outros.Checked Then
         Where := where + ' and (I.outros = ''SIM'')'
      else
          Where := where + ' and (I.outros = ''NAO'')';

If Valor_Placa.Visible Then
   If NOT (Valor_Placa.State = cbGrayed) Then
      If Valor_Placa.Checked Then
         Where := where + ' and (I.placa = ''SIM'')'
      else
          Where := where + ' and (I.placa = ''NAO'')';

If Valor_Placa.Visible Then
   If NOT (Valor_Placa.State = cbGrayed) Then
      If Valor_Placa.Checked Then
         Where := where + ' and (I.placa = ''SIM'')'
      else
          Where := where + ' and (I.placa = ''NAO'')';

If Valor_Foto.Visible Then
   If NOT (Valor_Foto.State = cbGrayed) Then
     BEGIN
       imovel_foto := '';

       DM_CADASTRO.ZqAux.Close;
       DM_CADASTRO.ZQAUX.SQL.CLEAR;
       DM_CADASTRO.ZQAUX.SQL.Add('SELECT DISTINCT(ID_IMOVEL) FROM IMOVEL_CARACTERISTICA WHERE ((FOTO1 <> ''X_Foto.jpg'') OR (FOTO2 <> ''X_Foto.jpg'') OR (FOTO3 <> ''X_Foto.jpg'')) ');
       DM_CADASTRO.ZQAUX.OPEN;
       DM_CADASTRO.ZqAux.FIRST;

       WHILE NOT DM_CADASTRO.ZQAUX.EOF DO
         BEGIN
           imovel_foto := imovel_foto + dm_cadastro.ZqAux.fieldbyname('id_imovel').asstring + ', ';
           DM_CADASTRO.ZQAUX.Next;
         END;
       imovel_foto := imovel_foto + dm_cadastro.ZqAux.fieldbyname('id_imovel').asstring;
       DM_CADASTRO.ZqAux.Close;


       If Valor_Foto.Checked Then
           Where := where + ' AND I.ID_IMOVEL IN (' + IMOVEL_FOTO + ') '
       else
         Where := where + ' AND I.ID_IMOVEL NOT IN (' + IMOVEL_FOTO + ') ';

       IMOVEL_FOTO := '';
     END;



If Valor_Tipo.Visible Then
   If Check_Tipo.Checked Then
      if Length(Valor_Tipo.Text) > 0  then
          Where := where + ' and (IT.id_imovel_tipo = '+IntToStr(Valor_Tipo.KeyValue)+' )'
      Else
      Begin
          ShowMessage('Escolha um tipo de imóvel!');
          Exit;
      End;




If Valor_Nota.Visible Then
   If Length(Valor_Nota.Text) > 0 Then
      Where := where + ' and ('+Valor_Nota.Text+' I.NOTA)';


If Valor_Status_Usar.Visible Then
  If Valor_Status_Usar.Checked Then
     Where := where + ' and (I.status = '''+Valor_Status.KeyValue+''')';

If Length(Where) >0 Then
     Where := Where + ' AND (I.ATIVO <> ''XXX'') and';

  Case Cod of
       1://CÓDIGO
         Begin

              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro'+' L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on IC.id_imovel = I.id_imovel'+' left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', ' I.id_imovel LIKE '''+ BUSCA_VALOR+'''', Ordenacao))

         End;
       4://ENDEREÇO
         Begin

              If Length(Valor_Quartos.Text) > 0 Then
                  If StrPos(Pchar(Valor_Quartos.Text),'=') = nil Then
                       If StrPos(PChar(Valor_Quartos.Text),'>') = nil Then
                          If StrPos(PChar(Valor_Quartos.Text),'<') = nil Then
                             Valor_Quartos.Text :=  Valor_Quartos.Text + '=';


                 IF Valor_Aluguel.Checked Then
                    //Where := where + ' ( I.VALOR_ALUQUEL between ' + formataDinheiroSQL(Valor_Menor.Text) +' and '+ formataDinheiroSQL(Valor_Maior.Text) +') and I.ATIVO <> ''XXX'' and';

                 If Valor_Venda.Checked Then
                    //Where := where + ' ( I.VALOR_VENDA between ' + formataDinheiroSQL(Valor_Menor.Text) +' and '+ formataDinheiroSQL(Valor_Maior.Text) +') and I.ATIVO <> ''XXX'' and';

                 If Valor_Outros.Checked Then
                     //Where := where + ' (( I.VALOR_OUTROS between ' + formataDinheiroSQL(Valor_Menor.Text) +' and '+ formataDinheiroSQL(Valor_Maior.Text) +') and I.ATIVO <> ''XXX'' and';

                 If not (Valor_Aluguel.Checked) and not (Valor_Venda.Checked) and not (Valor_Outros.Checked) then
                    PRINCIPAL.setMensagem('A busca por valor não pode ser feita pois não tem nenhum parâmetros selecionado. (Venda/Aluguel/Outros)');



              If Length(Valor_Quartos.Text) > 0 Then
                 Where := where + ' (' + Valor_Quartos.Text + ' I.DORMITORIOS ) and ';

              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (L.NOME LIKE '''+BUSCA_VALOR+''')', Ordenacao));

         End;
       18://NÚMERO
         Begin
              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (I.NUMERO LIKE '''+BUSCA_VALOR+''')', Ordenacao));
         END;

       5://BAIRRO
         Begin
              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (B.NOME LIKE '''+BUSCA_VALOR+''')', Ordenacao));
         END;

       6://CIDADE
         Begin
              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla',  where + ' (CI.NOME LIKE '''+BUSCA_VALOR+''')', Ordenacao));
         End;
       15://ESTADO
         Begin
              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (U.SIGLA = '''+BUSCA_VALOR+''')', Ordenacao));
         End;
       7://CEP
         Begin
                 unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (L.CEP LIKE '''+BUSCA_VALOR+''')', Ordenacao));
         END;
       3://DATA
         Begin
                 unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (I.DATA BETWEEN '''+unCamposBusca.TROCA(DateToStr(Data_Menor.DATE),'/','.')+''' AND '''+unCamposBusca.TROCA(DateToStr(Data_Maior.DATE),'/','.')+''')', Ordenacao));
         END;
       25://CARACTERÍSICA
         Begin

              If Length(Valor.Text) > 0 Then
                  If StrPos(Pchar(Valor.Text),'=') = nil Then
                       If StrPos(PChar(Valor.Text),'>') = nil Then
                          If StrPos(PChar(Valor.Text),'<') = nil Then
                             Valor.Text :=  Valor.Text + '=';

              if CheckProcurarPor.Checked Then
                 Where := where + ' ('+Valor.Text+' IC.quantidade ) and (IC.id_caracteristica = '+IntToStr(Valor_Dinamico1.KeyValue)+')'
              else
                  Where := where + ' (IC.OBS like '''+ BUSCA_VALOR +''')';


              If Length(Valor.Text) > 0 Then
                 unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where, Ordenacao))
              Else
              Begin
                 unMsg.ERRO(1);
              End;
        END;

       17://TIPO
         Begin
                 IF Valor_Subtipo.Checked THEN
                    unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (IMS.id_imovel_tipo = '+IntToStr(Valor_Dinamico1.KeyValue)+') AND (IMS.id_imovel_subtipo = '+IntToStr(Valor_Dinamico2.KeyValue)+') AND (B.NOME LIKE '''+BUSCA_VALOR+''')', Ordenacao))
                 ELSE
                     unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (IMS.id_imovel_tipo = '+IntToStr(Valor_Dinamico1.KeyValue)+') AND (B.NOME LIKE '''+BUSCA_VALOR+''')', Ordenacao));

         End;

       19://DATA DE ALTERAÇÃO
         Begin
              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (I.ALTERACAO_DATA BETWEEN '''+unCamposBusca.TROCA(DateToStr(Data_Menor.DATE),'/','.')+''' AND '''+unCamposBusca.TROCA(DateToStr(Data_Maior.DATE),'/','.')+''')', Ordenacao));
         End;

       22://ÁREA CONSTRUÍDA
         Begin

              //If (Length(Valor_Menor.Text) > 0) and (Length(Valor_Maior.Text) > 0) Then
              //   unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (I.area_construida BETWEEN '''+formataDinheiroSQL(Valor_Menor.Text)+''' AND '''+formataDinheiroSQL(Valor_Maior.Text)+''')', Ordenacao))
              //Else
              //Begin
              //   unMsg.ERRO(1);
              //End;

         End;

       23://ALUGUEL
         Begin

              //If (Length(Valor_Menor.Text) > 0) and (Length(Valor_Maior.Text) > 0) Then
              //   unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (I.VALOR_ALUQUEL BETWEEN '+formataDinheiroSQL(Valor_Menor.Text)+' AND '+formataDinheiroSQL(Valor_Maior.Text)+')', Ordenacao))
              //Else
              //Begin
              //   unMsg.ERRO(1);
              //End;

         End;

       24://VALOR
         Begin
              //If (Length(Valor_Menor.Text) > 0) and (Length(Valor_Maior.Text) > 0) Then
              //   unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla = L.id_sigla', where + ' (I.VALOR_VENDA BETWEEN '+formataDinheiroSQL(Valor_Menor.Text)+' AND '+formataDinheiroSQL(Valor_Maior.Text)+')', Ordenacao))
              //Else
              //Begin
              //   unMsg.ERRO(1);
              //End;

         End;

       27://PROPRIETARIO
         Begin
              unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla ='+' L.id_sigla left join pessoa_imovel PI on PI.id_imovel = I.id_imovel left join pessoa P on P.id_pessoa = PI.id_pessoa', where + ' (P.NOME like '''+BUSCA_VALOR+''')', Ordenacao));
         END;

       40://PESSOAS ENVOLVIDAS
         Begin
              if data_maior.Date <= data_menor.date then
                application.messagebox('Datas Inválidas!','Aviso Célula Digital', mb_ok)
              else
                 Where := where + ' (PI.DATA between ''' + unCamposBusca.TROCA(DateToStr(Data_Menor.Date),'/','.') + ''' and ''' + unCamposBusca.TROCA(DateToStr(Data_Maior.Date),'/','.') + ''') AND';

                 unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam,'imovel I left join imovel_subtipo IMS on IMS.id_imovel_subtipo = I.id_imovel_subtipo left join imovel_tipo IT on IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro L on L.id_logradouro = I.id_logradouro left join imovel_caracteristica IC on '+'IC.id_imovel = I.id_imovel left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica left join bairro B on B.id_bairro = L.id_bairro left join cidade CI on CI.id_cidade = L.id_cidade left join uf U on U.id_sigla ='+' L.id_sigla left join pessoa_imovel PI on PI.id_imovel = I.id_imovel left join pessoa P on P.id_pessoa = PI.id_pessoa', where + ' (PI.id_pessoa_TIPO = '+IntToStr(Valor_Dinamico1.KeyValue)+') AND (P.NOME LIKE '''+BUSCA_VALOR+''')', Ordenacao));

         END;

       43: //ANUNCIOS
         BEGIN
          {if (valor_menor.text) = '' then
            begin
               application.messagebox('Digite um valor mínimo!', 'Aviso Célula Digital', mb_ok);
               //valor_menor.setfocus;
               exit;
            end;


          if (valor_maior.text) = '' then
            begin
               application.messagebox('Digite um valor máximo!', 'Aviso Célula Digital', mb_ok);
               //valor_maior.setfocus;
               exit;
            end;

           if strtoint(valor_menor.Text) > strtoint(valor_maior.text) then
             begin
               application.messagebox('Valores Inválidos!', 'Aviso Célula Digital', mb_ok);
               //valor_menor.SetFocus;
               exit;
             end

           else          
             unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel ,unCamposBusca.SQL(Cam ,'imovel i left join anuncio an on an.id_imovel = i.id_imovel ', where + ' (count(an.id_anuncio) >= ' + Valor_Menor.text + ' and count(an.id_anuncio) <= ' + valor_maior.text + ')', Ordenacao));

         END;


       END;

        inherited;

   finally //Fim do Cursor
  Screen.Cursor := crDefault;
 end;
 Application.ProcessMessages; //Processar mensagens que não foram mostradas durante esse preríodo, caso tenha.
end;
}

procedure TCAD_Imovel.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.Z_Imovel.FieldByName('ATIVO').Value := 'SIM';
  DM_Cadastro.Z_Imovel.FieldByName('ID_PESSOA').AsString := getUser('CODIGO_USUARIO');
  DM_Cadastro.Z_Imovel.FieldByName('DEPOSITO').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('SEGURO_FIANCA').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('FIADOR').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('VISITACORRETOR').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('OCUPADO').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('PLACA').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('VENDA').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('ALUGUEL').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('OUTROS').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('VALOR_REAL').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('VALOR_VENDA').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('VALOR_ALUQUEL').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('VALOR_CONDOMINIO').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('VALOR_OUTROS').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('AREA_L').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('AREA_C').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('AREA_CONSTRUIDA').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('AREA_FATOR').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('AREA_OUTROS').Value := 0; 
  DM_Cadastro.Z_Imovel.FieldByName('AREA_DEPRECIACAO').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('DATA').Value := DATE;
  DM_Cadastro.Z_Imovel.FieldByName('ALTERACAO_DATA').Value := DATE;
  DM_Cadastro.Z_Imovel.FieldByName('ANUNCIAR').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('EXCLUSIVO').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('ALTERACAO_FUNC').AsString := getUser('CODIGO_USUARIO');
  DM_Cadastro.Z_Imovel.FieldByName('STATUS').Value := 'SEM STATUS';
  DM_Cadastro.Z_Imovel.FieldByName('NUMERO').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('IMPRIMIR').Value := 'NAO';
  DM_Cadastro.Z_Imovel.FieldByName('DORMITORIOS').Value := 0;
  DM_Cadastro.Z_Imovel.FieldByName('INTERNET').Value := 'SIM';
  DM_Cadastro.Z_Imovel.FieldByName('NOTA').Value := 0;
  Valor_Captador.Caption := '';


  unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_06, 'select ID from SP_GEN_IMOVEL_ID ');
  DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Curinga_06.FieldByName('ID').Value;

  DM_Cadastro.Z_Curinga_06.Close;

//  unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select id_imovel_tipo, nome, OBS from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');
    unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select * from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');

  Edit_Cep.Text := '';
  Edit_Tipo.Text := '<===';
  Edit_Rua.Text := '';
  Edit_Cidade.Text := '';
  Edit_Bairro.Text := '';
  Edit_UF.Text := '';

  NovoRegistro := 1;

  unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'SELECT distinct(STATUS) FROM imovel WHERE ATIVO = ''SIM''');
  Combo_Status.Items.Clear;
     
  DM_Cadastro.Z_Curinga_01.First;

  While not DM_Cadastro.Z_Curinga_01.Eof Do
  Begin
       Combo_Status.Items.Add(DM_Cadastro.Z_Curinga_01.FieldByName('STATUS').Value);
       DM_Cadastro.Z_Curinga_01.Next;
  End;

  Combo_Status.Repaint;

  DM_Cadastro.Z_Curinga_01.Close;

  Tab_Informacoes.Show;

//   Btn_Endereco_Endereco.SetFocus;
  //Combo_Status.SetFocus;

   unImagem.getImagem(Imagem_FRENTE1,'X_Foto.jpg');
   unImagem.getImagem(Imagem_FRENTE2,'X_Foto.jpg');
   unImagem.getImagem(Imagem_FRENTE3,'X_Foto.jpg');

   unImagem.getImagem(IMG_Proprietario,'X_Foto.jpg');
   unImagem.getImagem(IMG_Pessoas,'X_Foto.jpg');

   DBRadioGroup2.ItemIndex := 0;

end;

procedure TCAD_Imovel.Btn_Endereco_EnderecoClick(Sender: TObject);
begin
  inherited;
    If DM_Cadastro.Z_Curinga_02.Active Then
     DM_Cadastro.Z_Curinga_02.Close;

  DM_Cadastro.Z_Curinga_02.SQL.Clear;
  DM_Cadastro.Z_Curinga_02.SQL.Add('select distinct(tipo) from logradouro order by tipo');

  PRINCIPAL.CriarForm(TCAD_Logradouro, self, '1');
end;

procedure TCAD_Imovel.LimparImovel1Click(Sender: TObject);
begin

     SelecaoImovel.Clear;
     ShowMessage('Registros selecionados excluídos com sucesso!');

end;

procedure TCAD_Imovel.Look_TipoCloseUp(Sender: TObject);
begin
  inherited;

//       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select id_imovel_subtipo, nome from imovel_subtipo WHERE id_imovel_tipo = '+IntToStr(Look_Tipo.KeyValue)+' order by nome');
         unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select * from imovel_subtipo WHERE padrao <> ''XXX'' and id_imovel_tipo = '+IntToStr(Look_Tipo.KeyValue)+' order by nome');

end;

procedure TCAD_Imovel.SpeedButton7Click(Sender: TObject);
begin
  inherited;
//  unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select id_imovel_tipo, nome, obs, padrao, ativo from imovel_tipo where id_imovel_tipo = :CODIGO ORDER BY NOME');
    unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select * from imovel_tipo where id_imovel_tipo = :CODIGO ORDER BY NOME');
//  unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select id_imovel_subtipo, id_imovel_tipo, nome, obs, padrao from imovel_subtipo where id_imovel_tipo = :TIPO order by nome');
    unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select * from imovel_subtipo where padrao <> ''XXX'' and id_imovel_tipo = :TIPO order by nome');

  PRINCIPAL.CriarForm(TCAD_TipoImovel, self, '1');

//  unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select id_imovel_tipo, nome, OBS from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');
    unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select * from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');

  IF NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_SUBTIPO').IsNull THEN
  BEGIN
//     unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select id_imovel_SUBtipo, nome from imovel_SUBtipo WHERE id_imovel_tipo = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').Value)+' ORDER BY NOME');
       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select * from imovel_SUBtipo WHERE padrao <> ''XXX'' and id_imovel_tipo = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').Value)+' ORDER BY NOME');
  END;

  //Look_Tipo.SetFocus;
end;

procedure TCAD_Imovel.btn_AnunciosClick(Sender: TObject);
begin
  inherited;

  if SelecaoImovel.Count = 0 then
  Begin
       ShowMessage('Você não selecionou nenhum registro...'+#13+'Aperte a tecla ALT na grade de busca.');
  end
  Else
  Begin
       PRINCIPAL.SELECAO := SelecaoImovel;
       Application.CreateForm(TCAD_EmitirAnuncio, CAD_EmitirAnuncio);
       CAD_EmitirAnuncio.ShowModal;
       FreeAndNil(CAD_EmitirAnuncio);
  end;
end;

procedure TCAD_Imovel.SelecionarImovel1Click(Sender: TObject);
  Var 
  i: integer;
begin

     if Grid_Busca.SelectedRows.Count > 0 then
     begin

          with Grid_Busca.DataSource.DataSet do
          begin
               for i := 0 to Grid_Busca.SelectedRows.Count-1 do
               begin
                    GotoBookmark(Pointer(Grid_Busca.SelectedRows.Items[i]));
                    SelecaoImovel.Add(DM_CADASTRO.Z_Imovel.FieldByName('ID_IMOVEL').AsString);

                    if DM_CADASTRO.Z_Imovel.FieldByName('CHAVE').AsString = 'EMP' then
                       setMensagem('O imóvel '+DM_CADASTRO.Z_Imovel.FieldByName('ID_IMOVEL').AsString+' está com a chave emprestada! Faça o retorno da chave para poder emprestar novamente caso esteja selecionando para Empréstimo de Chaves.','informa');

               end;
          end;

          //ShowMessage(IntToStr(Grid_Busca.SelectedRows.Count) + ' Registro(s) Adicionado(s)!' + #13 + IntToStr(SelecaoImovel.Count) + ' Registro(s) na lista até o momento.');
          Grid_Busca.SelectedRows.Clear;
     end;

end;

procedure TCAD_Imovel.SetFotoRelatorio(Parametro: String; Arquivo: String);
var
  foto: String;
begin
  foto := ConverterJPegParaBmp(ARQUIVO);
  dm_rel.rv_impressao.setparam(parametro, foto);
end;

procedure TCAD_Imovel.Btn_Imprimir_ProcessosClick(Sender: TObject);
var parametros: array[0..11] of string;
    VarSQL: TZQuery;
    id_contrato: String;
begin

  with DM_CADASTRO.DS_Curinga_04.DataSet do
  Begin

       parametros[0] := FieldByName('FORMA_CONTATO').AsString;
       parametros[1] := FieldByName('FINALIDADE').AsString;
       parametros[2] := FieldByName('DATA_INICIAL').AsString;
       parametros[3] := FieldByName('DATA_FINAL').AsString;
       parametros[4] := FieldByName('DATA').AsString;
       parametros[5] := FieldByName('HORA_INICIAL').AsString;
       parametros[6] := FieldByName('HORA_FINAL').AsString;
       parametros[7] := FieldByName('ID_USUARIO').AsString;
       parametros[8] := FieldByName('ATIVO').AsString;
       parametros[9] := FieldByName('OBS').AsString;
       parametros[10] := FieldByName('RESPONSAVEL').AsString;
       parametros[11] := FieldByName('PESSOA2_NOME').AsString;
       
  end;

  varSQL := unUtilitario.getSelect('select first 1 id_contrato from contrato where id_imovel = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString+' order by data desc');

  if VarSQL.RecordCount > 0 then
     id_contrato := VarSQL.FieldByName('ID_CONTRATO').AsString
  else
      id_contrato := '0';

  setDocumento('IMOVEL_PROCESSOS', '', '',3, 0, DS.DataSet.FieldByName('ID_IMOVEL').AsInteger,  StrToInt(id_contrato), parametros);

  FreeAndNil(varSQL);
end;

procedure TCAD_Imovel.SpeedButton14Click(Sender: TObject);
begin
  inherited;
IF NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').IsNull THEN
BEGIN
//     unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select id_imovel_tipo, nome, OBS from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');
       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Tipo, 'select * from imovel_tipo WHERE ATIVO = ''SIM'' ORDER BY NOME');
END;

IF NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_SUBTIPO').IsNull THEN
BEGIN
//     unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select id_imovel_SUBtipo, nome from imovel_SUBtipo WHERE id_imovel_tipo = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').Value)+' ORDER BY NOME');
       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Subtipo, 'select * from imovel_SUBtipo WHERE padrao <> ''XXX'' and id_imovel_tipo = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL_TIPO').Value)+' ORDER BY NOME');
END;
//Look_Tipo.SetFocus;
end;

procedure TCAD_Imovel.DBEdit25Exit(Sender: TObject);
begin
  //Btn_Gravar.SetFocus;
end;

procedure TCAD_Imovel.DBEdit27Exit(Sender: TObject);
begin
  inherited;
  IF NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_L').IsNull) AND NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_C').IsNull) THEN
       EDIT_AREATOTAL.Text := FloatToStr(DM_Cadastro.Z_Imovel.FieldByName('AREA_L').Value * DM_Cadastro.Z_Imovel.FieldByName('AREA_C').Value)
  else
      EDIT_AREATOTAL.Text := '';
end;

procedure TCAD_Imovel.DBEdit29Exit(Sender: TObject);
begin
     if Length(Trim(ds.DataSet.FieldByName('AREA_L').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_L').AsString := '0';
end;

procedure TCAD_Imovel.EditAnuncTituloChange(Sender: TObject);
begin
  inherited;
  LabelCountCaracteresTopo.Caption := IntToStr(Length(EditAnuncTitulo.Text))+' Caracteres.';
end;

procedure TCAD_Imovel.EDIT_AREATITAL_MEDIDAExit(Sender: TObject);
begin
     if Length(Trim(EDIT_AREATITAL_MEDIDA.Text)) <= 0 then
        EDIT_AREATITAL_MEDIDA.Text := '0';

end;

procedure TCAD_Imovel.EDIT_AREATOTAL1_MEDIDAExit(Sender: TObject);
begin
     if Length(Trim(EDIT_AREATOTAL1_MEDIDA.Text)) <= 0 then
        EDIT_AREATOTAL1_MEDIDA.Text := '0';
end;

procedure TCAD_Imovel.EDIT_AREATOTAL2_MEDIDAExit(Sender: TObject);
begin
     if Length(Trim(EDIT_AREATOTAL2_MEDIDA.Text)) <= 0 then
        EDIT_AREATOTAL2_MEDIDA.Text := '0';

end;

procedure TCAD_Imovel.EDIT_AREATOTAL3_MEDIDAExit(Sender: TObject);
begin
     if Length(Trim(EDIT_AREATOTAL3_MEDIDA.Text)) <= 0 then
        EDIT_AREATOTAL3_MEDIDA.Text := '0';

end;

procedure TCAD_Imovel.EDIT_AREATOTALDblClick(Sender: TObject);
begin
  inherited;
  DBEdit27Exit(Sender);
end;

procedure TCAD_Imovel.Edit_CodigoChange(Sender: TObject);
begin
  inherited;

  if Length(edit_codigo.Text) > 0 then
  begin
       if Length(DM_CADASTRO.Z_ImovelOUTROS_NOME.AsString) > 0 then
       Begin
            TRY
               StrToDate(DM_CADASTRO.Z_ImovelOUTROS_NOME.AsString);
            EXCEPT
                  LabelIdade.Caption := 'Idade: 0 anos.';
            end;

            LabelIdade.Caption := 'Idade: '+IntToStr(YearsBetween(Date,StrToDate(DM_CADASTRO.Z_ImovelOUTROS_NOME.AsString)))+' anos.';
       end
       Else
           LabelIdade.Caption := 'Idade: 0 anos.';
  end;
end;

procedure TCAD_Imovel.Tab_CaracteristicaShow(Sender: TObject);
begin
     inherited;

     Look_Caracteristica.Top := 123;
     Look_Caracteristica.Height := 288;

    If NOT DM_Cadastro.Z_Imovel.Active Then
     exit;

  IF NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').IsNull THEN
  BEGIN
       DM_Cadastro.Z_Curinga_03.SQL.Clear;
       DM_Cadastro.Z_Curinga_03.SQL.Text := 'select IC.*, C.NOME from imovel_caracteristica IC left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica where ic.id_imovel = '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString;

       DM_Cadastro.Z_Curinga_03.Open;
       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_03, 'select IC.*, C.NOME from imovel_caracteristica IC left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica where ic.id_imovel = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value)+' ORDER BY IC.TIPO, IC.DATA, C.NOME');

       DM_Cadastro.UP_Curinga_03.DeleteSQL.Clear;
       DM_Cadastro.UP_Curinga_03.DeleteSQL.Add('DELETE FROM imovel_caracteristica WHERE   imovel_caracteristica.ID_MOVEL_CARACTERISTICA = :OLD_ID_MOVEL_CARACTERISTICA ');
       DM_Cadastro.UP_Curinga_03.InsertSQL.Clear;
       DM_Cadastro.UP_Curinga_03.InsertSQL.Add('INSERT INTO imovel_caracteristica (imovel_caracteristica.ID_MOVEL_CARACTERISTICA, imovel_caracteristica.ID_IMOVEL,  imovel_caracteristica.ID_CARACTERISTICA, imovel_caracteristica.FOTO1,    imovel_caracteristica.FOTO2, imovel_caracteristica.FOTO3,'+' imovel_caracteristica.QUANTIDADE,    imovel_caracteristica.OBS, imovel_caracteristica.ID_IMOVEL_CARACTERISTICA,    imovel_caracteristica.VISTORIA,'+' imovel_caracteristica.TIPO, imovel_caracteristica.DATA) VALUES  (:ID_MOVEL_CARACTERISTICA, :ID_IMOVEL, :ID_CARACTERISTICA, :FOTO1, :FOTO2,    :FOTO3, :QUANTIDADE, :OBS, :ID_IMOVEL_CARACTERISTICA, :VISTORIA, :TIPO, :DATA) ');
       DM_Cadastro.UP_Curinga_03.ModifySQL.Clear;
       DM_Cadastro.UP_Curinga_03.ModifySQL.Add('UPDATE imovel_caracteristica SET imovel_caracteristica.FOTO1 ='+' :FOTO1, imovel_caracteristica.FOTO2 = :FOTO2,   imovel_caracteristica.FOTO3 = :FOTO3,   imovel_caracteristica.QUANTIDADE = :QUANTIDADE,'+' imovel_caracteristica.OBS = :OBS,   imovel_caracteristica.ID_IMOVEL_CARACTERISTICA = :ID_IMOVEL_CARACTERISTICA,   imovel_caracteristica.VISTORIA = :VISTORIA,'+' imovel_caracteristica.TIPO = :TIPO,   imovel_caracteristica.DATA = :DATA WHERE   imovel_caracteristica.ID_MOVEL_CARACTERISTICA = :OLD_ID_MOVEL_CARACTERISTICA ');

       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Caracteristica, 'select * from caracteristicas where ATIVO = ''SIM'' ORDER BY NOME');

       //Look_Caracteristica.SetFocus;

       if Grid_Imagem.DataSource.DataSet.RecordCount < 1 then
          Btn_Caracteristica_Gravar.Enabled := false;

          //'insert into log (acao, componente, data, id_func, id_conta, obs, ativo ) values (''DOC'', ''IMOVEL_ANEXO'', current_timestamp, '+getUser('CODIGO_USUARIO')+', '+Edit_Codigo.Text+', '''+nomeDoArquivo+''', ''SIM'' )');
       //PARA SERVIR LISTANDO OS ANEXOS SQL2
       labelAnexos.Caption := 'Os arquivos se encontram em: \\'+UpperCase(getUser('SERVIDOR'))+'\IMOBILIARIA\DOC\';
       SQL2.Close;
       SQL2.SQL.Clear;
       SQL2 := unUtilitario.getSelect('select data as Data, id_func as Pessoa, Obs as Arquivo, ativo as Ativo from log where ativo = ''SIM'' and acao = ''DOC'' and componente = ''IMOVEL_ANEXO'' and id_conta = '+DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').AsString+ ' order by data desc');
       DSAnexo.DataSet := SQL2;
  END;

  //Look_Caracteristica.Width := 173;
  //Look_Caracteristica.Height := 276;

  limpaFotos();

END;

procedure TCAD_Imovel.Btn_Caracteristica_NovoClick(Sender: TObject);
begin
  inherited;
       Look_Caracteristica.CURSOR := crHandPoint;

       If NOT DM_Cadastro.Z_Curinga_03.Active Then
        DM_Cadastro.Z_Curinga_03.Open;

       DM_Cadastro.Z_Curinga_03.Append;

       Btn_Caracteristica_Novo.Enabled := False;

       PRINCIPAL.setID(DM_Cadastro.Z_Curinga_03, 'ID_MOVEL_CARACTERISTICA', 'IMOVEL_CARACTERISTICA');

       DM_Cadastro.Z_Curinga_03.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;
       DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value := 'X_Foto.jpg';
       DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value := 'X_Foto.jpg';
       DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value := 'X_Foto.jpg';
       DM_Cadastro.Z_Curinga_03.FieldByName('TIPO').AsString := 'NORMAL';
       DM_Cadastro.Z_Curinga_03.FieldByName('QUANTIDADE').AsInteger := 1;
       DM_CADASTRO.Z_Curinga_03.FieldByName('NOME').AsString := 'ESCOLHA A CARACTERÍSTICA';

       unImagem.getImagem(Imagem_1,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value);
       unImagem.getImagem(Imagem_2,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value);
       unImagem.getImagem(Imagem_3,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value);

       Look_Caracteristica.ReadOnly := false;
       Look_Caracteristica.Cursor := crHandPoint;

       unCamposBusca.BUSCA(DM_Cadastro.Z_Imovel_Caracteristica, 'select * from caracteristicas where ATIVO = ''SIM'' ORDER BY NOME');

       Btn_Caracteristica_Novo.ENABLED := FALSE;
       Btn_Caracteristica_Gravar.ENABLED := true;
       Btn_Caracteristica_Excluir.ENABLED := false;

       Look_Caracteristica.SetFocus;
end;

procedure TCAD_Imovel.Btn_Caracteristica_CancelarClick(Sender: TObject);
begin
  inherited;
   Look_Caracteristica.CURSOR := crNO;
   If DM_Cadastro.Z_Curinga_03.Active Then
        Begin
             DM_Cadastro.Z_Curinga_03.Cancel;
             DM_Cadastro.Z_Curinga_03.CancelUpdates;
             Btn_Caracteristica_Novo.Enabled := True;
             Look_Caracteristica.Cursor := crNo;
             Look_Caracteristica.ReadOnly := True;

             Btn_Caracteristica_Novo.ENABLED := true;
             Btn_Caracteristica_Excluir.ENABLED := true;
        End;
end;

procedure TCAD_Imovel.Btn_Caracteristica_GravarClick(Sender: TObject);
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
           ShowMessage('O registro completo não foi salvo.');
      End;

    End;

  If NovoRegistro = 0 Then
  Begin
       If DM_Cadastro.Z_Curinga_03.Active Then
          Begin
               Try
                  DM_Cadastro.Z_Curinga_03.FieldByName('TIPO').AsString := ComboBox1.Text;
                  DM_CADASTRO.Z_Curinga_03.FieldByName('NOME').AsString := DM_CADASTRO.Z_Imovel_Caracteristica.FieldByName('NOME').ASSTRING;

                  DM_Cadastro.Z_Curinga_03.Post;
                  DM_Cadastro.Z_Curinga_03.ApplyUpdates;

                  setLog(DM_Cadastro.Z_Curinga_03.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption+': IMAGENS', DM_Cadastro.Z_Curinga_03);

                  DM_Cadastro.Z_Curinga_03.Edit;
                  PRINCIPAL.setMensagem('O registro de foto foi salvo com sucesso!');
                  Btn_Caracteristica_Novo.Enabled := True;
                  Look_Caracteristica.Cursor := crNo;
                  Look_Caracteristica.ReadOnly := true;

                  DM_Cadastro.Z_Imovel.Edit;
                  DM_Cadastro.Z_Imovel.FieldByName('ANUNCIAR').AsString := 'SIM';
                  DM_Cadastro.Z_Imovel.Post;
                  DM_Cadastro.Z_Imovel.ApplyUpdates;
                  DM_Cadastro.Z_Imovel.Edit;

                  Btn_Caracteristica_Novo.ENABLED := true;
                  Btn_Caracteristica_Excluir.ENABLED := true;

                  if Grid_Imagem.DataSource.DataSet.RecordCount < 1 then
                    Btn_Caracteristica_Gravar.Enabled := false
                  else
                    Btn_Caracteristica_Gravar.Enabled := true;


               Except
                     unMsg.ERRO(25);
               End;
          End
          Else
              unMsg.ERRO(13);


  End;
  
  Tab_CaracteristicaShow(Sender);
  controleImagem();
  DM_Cadastro.Z_Curinga_03.Edit;
  Btn_Caracteristica_Novo.SetFocus;

end;

procedure TCAD_Imovel.Btn_Caracteristica_ExcluirClick(Sender: TObject);
begin
  inherited;
     If MessageDlg('Deseja excluir esta característica?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_Cadastro.Z_Curinga_03.Active Then
              Begin
                   Try
                      //SpeedButton2Click(Sender); //APAGA A FOTO 1;
                      //SpeedButton4Click(Sender); //APAGA A FOTO 2;
                      //SpeedButton6Click(Sender); //APAGA A FOTO 3;

                      setLog(DM_Cadastro.Z_Curinga_03.Fields[0].AsString, 'EXCLUSÃO', Self.Caption+': IMAGENS', DM_Cadastro.Z_Curinga_03);
                      
                      DM_Cadastro.Z_Curinga_03.Delete;
                      DM_Cadastro.Z_Curinga_03.ApplyUpdates;
                      unMsg.INFORMA(2);
                      Look_Caracteristica.Cursor := crNo;
                      Look_Caracteristica.ReadOnly := true;

                      Btn_Caracteristica_Novo.ENABLED := true;
                      Btn_Caracteristica_Excluir.ENABLED := true;

                      if Grid_Imagem.DataSource.DataSet.RecordCount < 1 then
                        Btn_Caracteristica_Gravar.Enabled := false
                      else
                        Btn_Caracteristica_Gravar.Enabled := true;
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

//     DM_Cadastro.Z_Curinga_03.Edit;
end;

procedure TCAD_Imovel.SpeedButton1Click(Sender: TObject);
var int: Integer;
begin
     verificarCaracteristica();

     inherited;

     int := 1 + Random(100);

     TRY
     DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value := unImagem.setImagem('I',IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value)+'_'+IntToStr(int)+'_'+IntToStr(Look_Caracteristica.KeyValue)+'_1');
     unImagem.getImagem(Imagem_1,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value);

     EXCEPT
           unUtilitario.setMensagem('Primeiramente, SELECIONE uma característica.','erro');
     end;
end;

procedure TCAD_Imovel.SpeedButton2Click(Sender: TObject);
begin
  verificarCaracteristica;
  inherited;
  If MessageDlg('Deseja excluir a foto?', mtConfirmation, [mbYes, mbNo],0) = mryes Then
  Begin
        If (DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value <> 'X_Foto.jpg') Then
        Begin
             DM_Cadastro.Z_Curinga_03.Edit;

             DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value := unImagem.deletaImagem(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value);
             Try
                unImagem.getImagem(Imagem_1,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value);
              Except
                    DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value :=  'X_Foto.jpg';
              End;
        End;
  End;
end;

procedure TCAD_Imovel.SpeedButton3Click(Sender: TObject);
var int: Integer;
begin

  verificarCaracteristica;

  inherited;

  int := 1 + Random(100);
  
  TRY
     DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value := unImagem.setImagem('I',IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value)+'_'+IntToStr(int)+'_'+IntToStr(Look_Caracteristica.KeyValue)+'_2');
     unImagem.getImagem(Imagem_2,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value);
  EXCEPT
        unUtilitario.setMensagem('Primeiramente, SELECIONE uma característica.','erro');
  end;
end;

procedure TCAD_Imovel.SpeedButton5Click(Sender: TObject);
var int: Integer;
begin
  verificarCaracteristica;
  
  inherited;

  int := 1 + Random(100);

  TRY
     DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value := unImagem.setImagem('I',IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value)+'_'+IntToStr(int)+'_'+IntToStr(Look_Caracteristica.KeyValue)+'_3');
     unImagem.getImagem(Imagem_3,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value);
  EXCEPT
        unUtilitario.setMensagem('Primeiramente, SELECIONE uma característica.','erro');
  end;

end;

procedure TCAD_Imovel.SpeedButton4Click(Sender: TObject);
begin
  verificarCaracteristica;
  inherited;
  If MessageDlg('Deseja excluir a foto?', mtConfirmation, [mbYes, mbNo],0) = mryes Then
  Begin
        If (DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value <> 'X_Foto.jpg') Then
        Begin
             DM_Cadastro.Z_Curinga_03.Edit;

             DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value := unImagem.deletaImagem(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value);
             Try
                unImagem.getImagem(Imagem_2,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value);
              Except
                    DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value :=  'X_Foto.jpg';
              End;
        End;
  End;
end;

procedure TCAD_Imovel.SpeedButton6Click(Sender: TObject);
begin
  verificarCaracteristica;
  inherited;
  If MessageDlg('Deseja excluir a foto?', mtConfirmation, [mbYes, mbNo],0) = mryes Then
  Begin
        If (DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value <> 'X_Foto.jpg') Then
        Begin
             DM_Cadastro.Z_Curinga_03.Edit;

             DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value := unImagem.deletaImagem(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value);
             try
                unImagem.getImagem(Imagem_3,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value);
              Except
                    DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value :=  'X_Foto.jpg';
              End;
        End;
  End;
end;

procedure TCAD_Imovel.Btn_GravarClick(Sender: TObject);
Var varMySQL: TZQuery;
    ThreadExporta: ThreadBanco;
    Dia: Smallint;
begin

     if not verificaAspasSimples(DM_Cadastro.Z_Imovel) then
        exit;

  IF (DS.STATE IN [DSEDIT, DSINSERT]) AND (verificaDuplicidade('IMOVEL', 'ID_IMOVEL', DS.DataSet.FieldByName('ID_IMOVEL').AsString, 'ID_LOGRADOURO = '+DS.DataSet.FieldByName('ID_LOGRADOURO').AsString+' AND ATIVO = ''SIM'' AND NUMERO = '+DS.DataSet.FieldByName('NUMERO').AsString)) THEN
    BEGIN

         if (DM_Cadastro.Z_ImovelINTERNET.AsString = 'NAO') AND (not DM_Cadastro.Z_ImovelID_IMOVEL.IsNull) then
         Begin
              try
                  try
                     conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);

                     //LIMPA DADOS ANTIGOS
                     varMySQL := TZQuery.Create(PRINCIPAL);
                     varMySQL.Connection := PRINCIPAL.MySQL;
                     varMySQL.SQL.Add('delete from imovel where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel =  '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString);
                     varMySQL.ExecSQL;
                     varMySQL.SQL.Clear;

                     varMySQL.SQL.Add('delete from fotos where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel = '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString);
                     varMySQL.ExecSQL;
                     varMySQL.SQL.Clear;
                  finally
                         FreeAndNil(varMySQL);
                         PRINCIPAL.MySQL.Connected := False;
                  end;
              except
                    on e: Exception do
                       PRINCIPAL.setMensagem('O sistema encontrou um erro ao enviar informações para a internet.');
              end;
         end;

         if DM_Cadastro.Z_Imovel.FieldByName('NOTA').AsInteger > 200 Then
            DM_Cadastro.Z_Imovel.FieldByName('NOTA').AsInteger := 200;
            
         DM_Cadastro.Z_Imovel.FieldByName('ALTERACAO_DATA').Value := DATE;
         DM_Cadastro.Z_Imovel.FieldByName('ALTERACAO_FUNC').AsString := getUser('CODIGO_USUARIO');
         DM_Cadastro.Z_Imovel.FieldByName('ANUNCIAR').AsString := 'SIM';

         If Tab_Caracteristica.Showing Then
            Btn_Caracteristica_GravarClick(Sender);

         inherited;

         DM_CADASTRO.Z_Imovel.ApplyUpdates;

         {if NovoRegistro = 1 then
         Begin
              Thread := 'TWITTER';
              ThreadExporta := ThreadBanco.Create(True);
              dia := DayOf(Date);

              if (dia <= 5) then
                 ThreadExporta.msg := 'Mais um imóvel chegou! '+Edit_Tipo.Text+' '+Edit_Rua.Text+' BAIRRO:'+Edit_Bairro.Text+' '+getFinalidade()+' #'+StringReplace(Edit_Cidade.Text, ' ','',[rfReplaceAll])+' #'+Look_Tipo.Text;

              if (dia > 5) and (dia <= 10) then
                 ThreadExporta.msg := 'Essa você não pode perder!! '+Edit_Tipo.Text+' '+Edit_Rua.Text+' BAIRRO:'+Edit_Bairro.Text+' '+getFinalidade()+' #'+StringReplace(Edit_Cidade.Text, ' ','',[rfReplaceAll])+' #'+Look_Tipo.Text;

              if (dia > 10) and (dia <= 15) then
                 ThreadExporta.msg := 'Novos imóveis chegando! #Confira '+Edit_Tipo.Text+' '+Edit_Rua.Text+' BAIRRO:'+Edit_Bairro.Text+' '+getFinalidade()+' #'+StringReplace(Edit_Cidade.Text, ' ','',[rfReplaceAll])+' #'+Look_Tipo.Text;

              if (dia > 15) and (dia <= 20) then
                 ThreadExporta.msg := 'Entre em nosso site e confira! '+Edit_Tipo.Text+' '+Edit_Rua.Text+' BAIRRO:'+Edit_Bairro.Text+' '+getFinalidade()+' #'+StringReplace(Edit_Cidade.Text, ' ','',[rfReplaceAll])+' #'+Look_Tipo.Text;

              if (dia > 20) and (dia <= 25) then
                 ThreadExporta.msg := getConf('EMPRESA_HOMEPAGE')+' '+Edit_Tipo.Text+' '+Edit_Rua.Text+' BAIRRO:'+Edit_Bairro.Text+' '+getFinalidade()+' #'+StringReplace(Edit_Cidade.Text, ' ','',[rfReplaceAll])+' #'+Look_Tipo.Text;

              if (dia > 25) and (dia <= 30) then
                 ThreadExporta.msg := 'Novos imóveis para fechar o mês com #ChaveDeOuro! '+Edit_Tipo.Text+' '+Edit_Rua.Text+' BAIRRO:'+Edit_Bairro.Text+' '+getFinalidade()+' #'+StringReplace(Edit_Cidade.Text, ' ','',[rfReplaceAll])+' #'+Look_Tipo.Text;

              ThreadExporta.Resume;

              //ENVIA EMAIL PARA OS INTERESSADOS NESSE IMOVEL
              //ELABORAR AQUI O CODIGO: SE JÁ TEM CONTRATO, NAO ENVIAR. ENVIAR QUANDO O VALOR DENTRO DA FAIXA DE PREÇO EM ATÉ 20% DO VALOR
         end;
         }

         NovoRegistro := 0;

         unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'SELECT distinct(STATUS) FROM imovel WHERE ATIVO = ''SIM''');

         Combo_Status.Items.Clear;

         DM_Cadastro.Z_Curinga_01.First;

         While not DM_Cadastro.Z_Curinga_01.Eof Do
         Begin
              Combo_Status.Items.Add(DM_Cadastro.Z_Curinga_01.FieldByName('STATUS').Value);
              DM_Cadastro.Z_Curinga_01.Next;
         End;
    END;
end;

function TCAD_Imovel.getFinalidade(): String;
begin

     Result := '';

     if Fin_Venda.Checked then
        Result := Result+ '#VENDO ';

     if Fin_Aluguel.Checked then
        Result := Result + '#ALUGO ';

     if Fin_Outros.Checked then
        Result := Result + '#TEMPORADA';

     Result := Trim(Result);
end;

procedure TCAD_Imovel.Btn_CancelarClick(Sender: TObject);
begin
  inherited;
NovoRegistro := 0;
end;

procedure TCAD_Imovel.Btn_ExcluirClick(Sender: TObject);
var varMySQL: TZQuery;
    varSQL: TZQuery;
begin
     If MessageDlg('ATENÇÃO!'+#13+'Deseja excluir este registro e TODAS as suas dependências?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
          If DS.DataSet.Active Then
              Begin

                   try
                      IF DS.DATASET.FieldByName('ID_IMOVEL').IsNull THEN
                        exit;

                      varSQL := getSQL('UPDATE IMOVEL SET ATIVO = ''XXX'' WHERE ID_IMOVEL = ' + DS.DataSet.FIELDBYNAME('ID_IMOVEL').ASSTRING);

                      if (DM_Cadastro.Z_ImovelINTERNET.AsString = 'SIM') then
                      Begin
                      try
                         try
                            conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);

                            //LIMPA DADOS ANTIGOS
                            varMySQL := TZQuery.Create(PRINCIPAL);
                            varMySQL.Connection := PRINCIPAL.MySQL;
                            varMySQL.SQL.Add('delete from imovel where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel =  '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString);
                            varMySQL.ExecSQL;
                            varMySQL.SQL.Clear;

                            varMySQL.SQL.Add('delete from fotos where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel = '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString);
                            varMySQL.ExecSQL;
                            varMySQL.SQL.Clear;
                         finally
                                FreeAndNil(varMySQL);
                                PRINCIPAL.MySQL.Connected := False;
                         end;
                         except
                               on e: Exception do
                                  PRINCIPAL.setMensagem('O sistema encontrou um erro ao enviar informações para a internet (Retirar o imóvel da internet, faça isso manualmente pela área do portal).');
                               end;
                      end;

                      setLog(DS.DataSet.Fields[0].AsString, 'EXCLUSÃO', Self.Caption, (DS.DataSet as TZQuery));
                      FreeAndNil(varSQL);
                      
                      Tab_Pesquisa.Show;
                      DM_CADASTRO.Z_Imovel.Refresh;

                      unMsg.INFORMA(2);
                      Btn_Novo.Enabled := True;
                   Except
                         unMsg.ERRO(12);
                   End;

                   //LIMPAR CAMPOS
                   Edit_Cep.Text := '';
                   Edit_Tipo.Text := '';
                   Edit_Rua.Text := '';
                   Edit_Cidade.Text := '';
                   Edit_Bairro.Text := '';
                   Edit_UF.Text := '';
                   Val_IPTU.Text := '';
                   EDIT_AREATOTAL.Text := '';
                   unImagem.getImagem(Imagem_FRENTE1,'X_Foto.jpg');
                   unImagem.getImagem(Imagem_FRENTE2,'X_Foto.jpg');
                   unImagem.getImagem(Imagem_FRENTE3,'X_Foto.jpg');
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_Cadastro.Z_Imovel.Edit;

     Grid_BuscaDblClick(Sender);

     NovoRegistro := 0;
end;

procedure TCAD_Imovel.Btn_FecharClick(Sender: TObject);
begin
  inherited;

  //Armazena o estado da grid - COLUNAS
  unUtilitario.salvaGrid(Self.Name,Grid_Busca);

  zqinteressados.Close;
end;

procedure TCAD_Imovel.Imagem_1DblClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TImagem, Imagem);

    If NOT DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');


  Imagem.ShowModal;
end;

procedure TCAD_Imovel.Imagem_2DblClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TImagem, Imagem);

    If NOT DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');


  Imagem.ShowModal;
end;

procedure TCAD_Imovel.Imagem_3DblClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TImagem, Imagem);

    If NOT DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');


  Imagem.ShowModal;
end;

procedure TCAD_Imovel.Btn_Agenda_NovoClick(Sender: TObject);
begin
  inherited;
       If NOT DM_Cadastro.Z_Curinga_04.Active Then
        DM_Cadastro.Z_Curinga_04.Open;

       DM_Cadastro.Z_Curinga_04.Append;

       Btn_Agenda_Novo.Enabled := False;

       If DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA_IMOVEL').IsNull then
       Begin
            unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select ID from SP_GEN_PESSOA_IMOVEL_ID');

            DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA_IMOVEL').Value := DM_Cadastro.Z_Curinga_01.FieldByName('ID').Value;

            DM_Cadastro.Z_Curinga_01.Close;
       End;

       DM_Cadastro.Z_Curinga_04.FieldByName('ATIVO').Value := 'SIM';
       DM_Cadastro.Z_Curinga_04.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;
       DM_Cadastro.Z_Curinga_04.FieldByName('ID_USUARIO').AsString := getUser('CODIGO_USUARIO');
       DM_Cadastro.Z_Curinga_04.FieldByName('STATUS').AsString := 'AGENDAMENTO';
       DM_Cadastro.Z_Curinga_04.FieldByName('DATA').Value := DATE;
end;

procedure TCAD_Imovel.btn_imprimir_contratoClick(Sender: TObject);
begin
  if DM_Cadastro.Z_Imovel.FieldByName('id_imovel').isnull then
    begin
      application.MessageBox('Não existe registro selecionado!', 'Aviso '+celulaNome, mb_ok);
      exit;
    end;

  if unUtilitario.setMensagem('Tem certeza que deseja clonar o registro '+DM_Cadastro.Z_Imovel.FieldByName('id_imovel').asString+'?', 'confirma') = IDYES then
     duplicarImovel();
end;


procedure TCAD_Imovel.BtnEncontraGoogleClick(Sender: TObject);
begin
  inherited;
  if NOT DM_CADASTRO.Z_ImovelID_IMOVEL.isnull then
  Begin
       ShellExecute(0, 'open', PChar('https://www.google.com.br/maps/place/'+unUtilitario.RemoveAcentos(StringReplace(DM_CADASTRO.Z_ImovelXTIPORUA.AsString+' '+DM_CADASTRO.Z_ImovelXNOMERUA.AsString+', '+DM_CADASTRO.Z_ImovelNUMERO.AsString+', '+DM_CADASTRO.Z_ImovelXESTADO.AsString,' ','+',[rfReplaceAll,rfIgnoreCase]))+',+'+DM_CADASTRO.Z_ImovelXCEP.AsString+'/data=!4m2!3m1!1s0x94b0a88fd3ccb537:0x5fbcba06aa5070b0'), nil, nil, SW_SHOWNORMAL);
       //Application.CreateForm(TFrmBrowser,FrmBrowser);
       //FrmBrowser.WindowState := wsMaximized;
       //FrmBrowser.setSite('https://www.google.com.br/maps/place/'+unUtilitario.RemoveAcentos(StringReplace(DM_CADASTRO.Z_ImovelXTIPORUA.AsString+' '+DM_CADASTRO.Z_ImovelXNOMERUA.AsString+'-'+DM_CADASTRO.Z_ImovelXESTADO.AsString,' ','+',[rfReplaceAll,rfIgnoreCase]))+',+'+DM_CADASTRO.Z_ImovelXCEP.AsString+'/data=!4m2!3m1!1s0x94b0a88fd3ccb537:0x5fbcba06aa5070b0');
  End
  Else
      showmessage('Nenhum imóvel foi selecionado.');
end;

procedure TCAD_Imovel.btnEnviarNet1Click(Sender: TObject);
begin
  inherited;

  if DM_CADASTRO.Z_ImovelID_IMOVEL.isnull then
     exit;

  DM_Cadastro.Z_Curinga_03.Edit;

  DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').AsString := trocaCensura(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').AsString);

  unImagem.getImagem(Imagem_1,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value);

  if Pos('%',DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').AsString) = 0 then
     Imagem_1.Stretch := False
  Else
     Imagem_1.Stretch := True;

  Btn_Caracteristica_GravarClick(Sender);
end;

procedure TCAD_Imovel.btnEnviarNet1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  PRINCIPAL.setMensagem('CENSURAR A FOTO. QUANDO CLICADO, A FOTO É OCULTA EM TODA A PARTE DO SISTEMA E PUBLICAÇÕES, MAS NÃO DEIXA DE SER CATALOGADA PELO O SISTEMA. (ÓTIMO PARA FOTOS DE VISTORIA)');
end;

procedure TCAD_Imovel.btnEnviarNet2Click(Sender: TObject);
begin
  inherited;
  if DM_CADASTRO.Z_ImovelID_IMOVEL.isnull then
     exit;
     
  DM_Cadastro.Z_Curinga_03.Edit;

  DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').AsString := trocaCensura(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').AsString);

  unImagem.getImagem(Imagem_2,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value);

  if Pos('%',DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').AsString) = 0 then
     Imagem_2.Stretch := False
  Else
     Imagem_2.Stretch := True;

  Btn_Caracteristica_GravarClick(Sender);
end;

procedure TCAD_Imovel.btnEnviarNet2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  btnEnviarNet1MouseMove(Sender, Shift, X, Y);
end;

procedure TCAD_Imovel.btnEnviarNet3Click(Sender: TObject);
begin
  inherited;
  if DM_CADASTRO.Z_ImovelID_IMOVEL.isnull then
     exit;
     
  DM_Cadastro.Z_Curinga_03.Edit;

  DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').AsString := trocaCensura(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').AsString);

  unImagem.getImagem(Imagem_3,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value);

  if Pos('%',DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').AsString) = 0 then
     Imagem_3.Stretch := True
  Else
     Imagem_3.Stretch := True;

  Btn_Caracteristica_GravarClick(Sender);
end;

procedure TCAD_Imovel.btnEnviarNet3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  btnEnviarNet1MouseMove(Sender, Shift, X, Y);
end;

procedure TCAD_Imovel.btnFacebookClick(Sender: TObject);
begin
  inherited;
  if NOT DM_CADASTRO.Z_ImovelID_IMOVEL.isnull then
  Begin
       ShellExecute(0, 'open', PChar('https://www.facebook.com/sharer/sharer.php?app_id=1496712770565168&kid_directed_site=0&sdk=joey&u=http%3A%2F%2F'+getConf('EMPRESA_HOMEPAGE')+'%2Fbem-vindo%2Fimovel.php%3Fcodigo%3D'+DM_CADASTRO.Z_ImovelID_IMOVEL.AsString+'&display=popup&ref=plugin&src=share_button'), nil, nil, SW_SHOWNORMAL);
  End
  Else
      showmessage('Nenhum imóvel foi selecionado.');
end;

procedure TCAD_Imovel.limpaFotos();
begin
     unImagem.getImagem(Imagem_1,'X_Foto.jpg');
     unImagem.getImagem(Imagem_2,'X_Foto.jpg');
     unImagem.getImagem(Imagem_3,'X_Foto.jpg');
end;

procedure TCAD_Imovel.BitBtn1Click(Sender: TObject);
Var sql: TZQuery;
    nomeDoArquivo: String;
    randomico: Integer;
begin
     if Length(Trim(Edit_Codigo.Text)) = 0 then
        exit;

     PRINCIPAL.pegaDocumento.Execute;
     TRY
        If Length(Trim(PRINCIPAL.pegaDocumento.FileName))  > 0 Then
        Begin
             Screen.Cursor:=crHourGlass;
             Randomize;
             randomico := 1 + Random(10000);
             nomeDoArquivo := 'I'+Edit_Codigo.Text+'_'+IntToStr(randomico)+'_'+StringReplace(ExtractFileName(PRINCIPAL.pegaDocumento.FileName),' ', '_', [rfReplaceAll,rfIgnoreCase]);
             if CopyFile(PChar(PRINCIPAL.pegaDocumento.FileName), PChar('\\'+getUser('SERVIDOR')+'\imobiliaria\DOC\'+nomeDoArquivo), True) then
             Begin
                  sql := unUtilitario.getSQL('insert into log (acao, componente, data, id_func, id_conta, obs, ativo ) values (''DOC'', ''IMOVEL_ANEXO'', current_timestamp, '+getUser('CODIGO_USUARIO')+', '+Edit_Codigo.Text+', '''+nomeDoArquivo+''', ''SIM'' )');
                  setLogSQL(Edit_Codigo.Text, 'ANEXAR', Self.Caption+': IMAGEM E VITORIA', 'ANEXO INCLUIDO: '+nomeDoArquivo);
             end
             else
                 unUtilitario.setMensagem('O arquivo não pode ser copiado para o servidor. Verifique se existe o caminho para o servidor e tente novamente: \\'+getUser('SERVIDOR')+'\IMOBILIARIA\DOC\','erro');
        End;
     finally
            sql2.Close;
            sql2.Open;
            Screen.Cursor:=crDefault;
     end;

end;

procedure TCAD_Imovel.BitBtn3Click(Sender: TObject);
var tipoConsulta: String;
begin

     if getTela('SITE_PREFEITURA') = 'NULO' Then
     Begin
          setMensagem('Não foi identificada a configuração do site da PREFEITURA.'+#13+'O sistema irá configurar agora.', 'informa');
          tipoConsulta := InputBox('CONFIGURANDO LINK PREFEITURA','Entre com o site da prefeitura.'+#13+'Obs: com o http://', 'http://');

          if setMensagem('Você confirma esta configuração?'+#13+'Prefeitura = '+tipoConsulta,'confirma') = IDYES then
             setTela('SITE_PREFEITURA',tipoConsulta)
          else
              exit;
     end;

     if getTela('SITE_AGUA') = 'NULO' Then
     Begin
          setMensagem('Não foi identificada a configuração do site da COMPANHIA DE ÁGUA.'+#13+'O sistema irá configurar agora.', 'informa');
          tipoConsulta := InputBox('CONFIGURANDO LINK COMPANHIA DE ÁGUA','Entre com o site da Companhia de Água.'+#13+'Obs: com o http://', 'http://');

          if setMensagem('Você confirma esta configuração?'+#13+'Companhia de Água = '+tipoConsulta,'confirma') = IDYES then
             setTela('SITE_AGUA',tipoConsulta)
          else
              exit;
     end;

     if getTela('SITE_LUZ') = 'NULO' Then
     Begin
          setMensagem('Não foi identificada a configuração do site da COMPANHIA DE LUZ.'+#13+'O sistema irá configurar agora.', 'informa');
          tipoConsulta := InputBox('CONFIGURANDO LINK COMPANHIA DE LUZ','Entre com o site da prefeitura.'+#13+'Obs: com o http://', 'http://');

          if setMensagem('Você confirma esta configuração?'+#13+'Companhia de Luz = '+tipoConsulta,'confirma') = IDYES then
             setTela('SITE_LUZ',tipoConsulta)
          else
              exit;
     end;

       tipoConsulta := InputBox('Selecione o site para consulta: ',
                           '1 - Prefeitura'+#13+
                           '2 - Companhia de Água'+#13+
                           '3 - Companhia de Luz'+#13+#13+
                           'Caso queira indicar mais, ou alterar as suas configurações, entre em contato conosco.','1');

       try
          if StrToInt(tipoConsulta) < 0 then
             Exit

       except
             ShowMessage('Entre somente com números.');
             exit;
       end;

       if tipoConsulta = '1' then
       begin
            PRINCIPAL.SITE(getTela('SITE_PREFEITURA'));
            Exit;
       end;

       if tipoConsulta = '2' then
       begin
            PRINCIPAL.SITE(getTela('SITE_AGUA'));
            Exit;
       end;

       if tipoConsulta = '3' then
       begin
            PRINCIPAL.SITE(getTela('SITE_LUZ'));
            Exit;
       end;

       ShowMessage('Escolha uma opção válida.');


end;

procedure TCAD_Imovel.BitBtn4Click(Sender: TObject);
var sqlAnexoExcluir: TZQuery;
begin
     If MessageDlg('Deseja excluir este arquivo?'+#13+sql2.FieldByName('Arquivo').AsString,mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
          sqlAnexoExcluir := unUtilitario.getSQL('update log set ativo = ''XXX'' where obs = '''+sql2.FieldByName('Arquivo').AsString+''' ');
          FreeAndNil(sqlAnexoExcluir);
     end;

     sql2.Close;
     sql2.Open;
end;

procedure TCAD_Imovel.BitBtn7Click(Sender: TObject);
var
i: integer;
parametros: array[0..1] of string;
begin

     for I := 0 to chaveEmprestimoEntradaImoveis.Count - 1 do
     Begin
          parametros[1] := parametros[1] +' '+ chaveEmprestimoEntradaImoveis.Items.ValueFromIndex[I]+#13;
     end;

     parametros[0] := chaveEmprestimoEntradaPessoa.Text;

     setDocumento('RECIBO_NOVA_CHAVE', '', '',3, 0, 0,  0, parametros);
end;

procedure TCAD_Imovel.btnAbrirnoSiteClick(Sender: TObject);
begin
  inherited;
  if NOT DM_CADASTRO.Z_ImovelID_IMOVEL.isnull then
  Begin
       ShellExecute(0, 'open', PChar('http://'+getConf('EMPRESA_HOMEPAGE')+'/bem-vindo/imovel.php?codigo='+DM_CADASTRO.Z_ImovelID_IMOVEL.AsString), nil, nil, SW_SHOWNORMAL);
  End
  Else
      showmessage('Nenhum imóvel foi selecionado.');
end;

procedure TCAD_Imovel.btnChaveDevolverClick(Sender: TObject);
var varSQL: TZQuery;
i: integer;
imovel, depoimento: String;
begin

     if Length(Trim(chaveEmprestimoEntradaPessoa.Text)) <= 0 then
     Begin
          setMensagem('Escolha uma pessoa para a devolução de chaves!','erro');
          Exit;
     end;

     if Length(Trim(chaveEmprestimoEntradaDepoimento.Text)) <= 0 then
     Begin
          setMensagem('Escreva um depoimento antes de retornar a chave.','erro');
          Exit;
     end;

     depoimento := trim(chaveEmprestimoEntradaDepoimento.Text);

     for I := 0 to chaveEmprestimoEntradaImoveis.Count - 1 do
     Begin
          imovel := IDCampoSTR(chaveEmprestimoEntradaImoveis.Items.ValueFromIndex[i]);

          varSQL := unUtilitario.getSQL('update log set componente = '''+depoimento+''' where acao = ''CHV'' and obs = '''+chaveEmprestimoEntradaPessoa.Text+''' and id_conta = '+imovel);

          varSQL := unUtilitario.getSQL('update imovel set chave = ''SIM'' where id_imovel = '+imovel);
     end;

     chaveEmprestimoEntradaPessoa.Text := '';
     chaveEmprestimoEntradaDepoimento.Text := '';

     setMensagem('Devolução de chaves efetuada com sucesso!','informa');

     tab_ChavesShow(Sender);     

    FreeAndNil(varSQL);

end;

procedure TCAD_Imovel.btnChaveEmprestarClick(Sender: TObject);
var varSQL: TZQuery;
i: integer;
parametros: array[0..1] of string;
sql: String;
begin

     if Length(Trim(chaveEmprestimoSaidaPessoa.Text)) <= 0 then
     Begin
          unUtilitario.setMensagem('Entre com o nome da pessoa!','erro');
          chaveEmprestimoSaidaPessoa.SetFocus;
          exit;
     end;
     chaveEmprestimoSaidaPessoa.Text := Trim(chaveEmprestimoSaidaPessoa.Text);

     if Length(Trim(chaveEmprestimoSaidaDocumento.Text)) <= 0 then
     Begin
          unUtilitario.setMensagem('Entre com o documento da pessoa!','erro');
          chaveEmprestimoSaidaDocumento.SetFocus;
          exit;
     end;

     if (Length(Trim(chaveEmprestimoSaidaTelefone.Text)) <= 0) and (Length(Trim(chaveEmprestimoSaidaTelefone2.Text)) <= 0) then
     Begin
          unUtilitario.setMensagem('Entre com ao menos um telefone de contato!','erro');
          chaveEmprestimoSaidaTelefone.SetFocus;
          exit;
     end;

     chaveEmprestimoSaidaPessoa.Text := Trim(chaveEmprestimoSaidaPessoa.Text);
     chaveEmprestimoSaidaDocumento.Text := Trim(chaveEmprestimoSaidaDocumento.Text);
     chaveEmprestimoSaidaTelefone.Text := Trim(chaveEmprestimoSaidaTelefone.Text);
     chaveEmprestimoSaidaTelefone2.Text := Trim(chaveEmprestimoSaidaTelefone2.Text);
     chaveEmprestimoSaidaEndereco.Text := Trim(chaveEmprestimoSaidaEndereco.Text);

     for I := 0 to SelecaoImovel.Count - 1 do
     Begin
          sql := ' insert into LOG '+
          ' (id_log, acao, componente, obs, data,  id_func, id_conta, ativo) values '+
          ' (null, ''CHV'', '''', '''+chaveEmprestimoSaidaPessoa.Text+' (CPF/RG: '+chaveEmprestimoSaidaDocumento.Text+') END:'+chaveEmprestimoSaidaEndereco.Text+' TEL:'+chaveEmprestimoSaidaTelefone.Text+' TEL:'+chaveEmprestimoSaidaTelefone2.Text+''' , current_timestamp,  '+getUser('CODIGO_USUARIO')+', '+SelecaoImovel.Strings[i]+', ''SIM'') ';

          varSQL :=  unUtilitario.getSQL(sql);

          varSQL := unUtilitario.getSQL('update imovel set chave = ''EMP'' where id_imovel = '+SelecaoImovel.Strings[i]);

          parametros[1] := parametros[1] +' '+ chaveEmprestimoSaidaImoveis.Items[I]+#13;
     end;

     unUtilitario.setMensagem('Registro incluído com sucesso!','informa');

     for I := 0 to SelecaoImovel.Count - 1 do
     Begin
          varSQL := unUtilitario.getSelect('select p.nome, p.email from pessoa_imovel as pi inner join pessoa p on pi.id_pessoa = p.id_pessoa and p.ativo = ''SIM'' and p.email is not null where pi.status = ''PROPRIETARIO'' and pi.id_imovel = '+SelecaoImovel.Strings[I]);
          Begin
                 PRINCIPAL.enviaEmail(0, 'RECADO DO SISTEMA', varSQL.Fields[1].AsString, varSQL.Fields[0].AsString, '', 'REMETENTE: '+getUser('USUARIO')+'<br>'+ 'FOI REALIZADO UMA NOVA RESERVA DAS CHAVES DO SEU IMOVEL PARA UMA POSSÍVEL VISITA'+'<br>');
                 varSQL.Next;
          end;
          varSQL.Close;
          unUtilitario.setMensagem('Cliente foi notificado!', 'informa');
     end;

     parametros[0] := chaveEmprestimoSaidaPessoa.Text+'  (CPF/RG: '+chaveEmprestimoSaidaDocumento.Text+')'+#13+'ENDEREÇO:'+chaveEmprestimoSaidaEndereco.Text+#13+'TEL:'+chaveEmprestimoSaidaTelefone.Text+'  TEL:'+chaveEmprestimoSaidaTelefone2.Text;

     setDocumento('RECIBO_NOVA_CHAVE', '', '',3, 0, 0,  0, parametros);

     chaveEmprestimoSaidaDocumento.Text := '';
     chaveEmprestimoSaidaPessoa.Text := '';
     chaveEmprestimoSaidaTelefone.Text := '';
     chaveEmprestimoSaidaTelefone2.Text := '';
     chaveEmprestimoSaidaEndereco.Text := '';
     chaveEmprestimoSaidaImoveis.Items.Clear;
     chaveEmprestimoSaidaImoveis.Items.Add('IMÓVEIS A EMPRESTAR');
     SelecaoImovel.Clear;

     tab_ChavesShow(Sender);
end;

procedure TCAD_Imovel.btnChavePessoaClick(Sender: TObject);
begin
     PRINCIPAL.CriarForm(TCAD_Pessoa, self, '7');
end;

procedure TCAD_Imovel.btnchavesClick(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 2;
end;

procedure TCAD_Imovel.btnDisplayClick(Sender: TObject);
var
  h: HWND;
  sql: TZQuery;
  codigos: String;
begin

     if getTela('DELAY_DISPLAY') = 'NULO' then
        setTela('DELAY_DISPLAY', '1'); // Minutos

     if getTela('COD_CARACTERISTICA_DISPLAY') = 'NULO' then
     Begin
          sql := unUtilitario.getSelect('select id_caracteristicas from caracteristicas where ativo = ''SIM'' order by id_caracteristicas');
          codigos := '0';
          while not sql.eof do
          Begin
               codigos := codigos + ','+sql.FieldByName('id_caracteristicas').AsString;
               sql.Next;
          end;
          
        setTela('COD_CARACTERISTICA_DISPLAY', codigos); // Códigos das Caracteristicas.
     end;

     if ds.DataSet.Active then
     if not ds.DataSet.FieldByName('ID_IMOVEL').IsNull then
     Begin
          H := FindWindow(nil, celulaNome+' - Display');
          if H <> 0 then
             PostMessage(H, WM_CLOSE, 0, 0);

          WinExec(pchar(ExtractFilePath(ParamStr(0))+'Celula_Display.exe '+ds.DataSet.FieldByName('ID_IMOVEL').AsString+' '+getTela('DELAY_DISPLAY')+' '+getUser('SERVIDOR')+' '+getTela('COD_CARACTERISTICA_DISPLAY')), SW_SHOWMAXIMIZED);
     end
     else
         setMensagem('Selecione um imóvel...','ERRO');
end;

procedure TCAD_Imovel.BtnPrimeiroClick(Sender: TObject);
begin
  inherited;
  IF Tab_Informacoes.Showing THEN
     Tab_InformacoesShow(Sender)
  ELSE
      Tab_Informacoes.Show;

end;

procedure TCAD_Imovel.BtnUltimoClick(Sender: TObject);
begin
  inherited;
  IF Tab_Informacoes.Showing THEN
     Tab_InformacoesShow(Sender)
  ELSE
      Tab_Informacoes.Show;
end;

procedure TCAD_Imovel.Btn_Agenda_CancelarClick(Sender: TObject);
begin
  inherited;
   If DM_Cadastro.Z_Curinga_04.Active Then
        Begin
             DM_Cadastro.Z_Curinga_04.Cancel;
             DM_Cadastro.Z_Curinga_04.CancelUpdates;
             Btn_Agenda_Novo.Enabled := True;
        End;
end;

procedure TCAD_Imovel.Btn_Agenda_GravarClick(Sender: TObject);
begin
  inherited;

  If NovoRegistro = 1 Then
     If MessageDlg('Será necessário gravar as alterações'+#13+'realizadas até agora no registro principal, OK?'+#13+'Verifique os campos obrigatórios antes de prosseguir.', mtConfirmation, [mbYes, mbNo],0) = mrYes Then
        Btn_GravarClick(Sender)
     Else
        ShowMessage('O registro completo não foi salvo.');

  ComboProcessoTipo.Text := Trim(ComboProcessoTipo.Text);
  ComboProcessoSubTipo.Text := Trim(ComboProcessoSubTipo.Text);
                     
  if Length(ComboProcessoTipo.Text) <= 0 Then
  Begin
       setMensagem('Favor entrar com um Tipo de Processo!','erro');
       Exit;
  end;

  if Length(ComboProcessoSubTipo.Text) <= 0 Then
  Begin
       setMensagem('Favor entrar com um Sub-Tipo de Processo!','erro');
       Exit;
  end;

  If NovoRegistro = 0 Then
  Begin
       If DM_Cadastro.Z_Curinga_04.Active Then
          Begin
               Try

                  IF DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA').IsNull THEN
                     DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA').Value := 0;

                  if (DM_Cadastro.Z_Curinga_04.State = dsBrowse)  then
                     DM_Cadastro.Z_Curinga_04.Edit;
                  
                  DM_Cadastro.Z_Curinga_04.FieldByName('FORMA_CONTATO').AsString := ComboProcessoTipo.Text;
                  DM_Cadastro.Z_Curinga_04.FieldByName('FINALIDADE').AsString := ComboProcessoSubTipo.Text;

                  DM_Cadastro.Z_Curinga_04.ApplyUpdates;

                  setLog(DM_Cadastro.Z_Curinga_04.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption+': PROCESSOS', DM_Cadastro.Z_Curinga_04);

                  unMsg.INFORMA(1);
                  Btn_Agenda_Novo.Enabled := True;
               Except
                     on e: Exception do
                     Begin
                        unMsg.ERRO(10);
                        setMensagem(e.Message,'erro');
                     end;

               End;
          End
          Else
          Begin
               DM_Cadastro.Z_Curinga_04.Edit;
               unMsg.ERRO(13);
          end;

              
          Tab_VisitacaoShow(Sender);
  End;
end;

procedure TCAD_Imovel.Btn_Agenda_ExcluirClick(Sender: TObject);
begin
  inherited;
     If MessageDlg('Deseja excluir este endereço?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_Cadastro.Z_Curinga_04.Active Then
              Begin
                   Try
                      DM_Cadastro.Z_Curinga_04.Edit;
                      DM_Cadastro.Z_Curinga_04ATIVO.AsString := 'XXX';
                      DM_Cadastro.Z_Curinga_04.ApplyUpdates;

                      setLog(DM_Cadastro.Z_Curinga_04.Fields[0].AsString, 'EXCLUSÃO', Self.Caption+': PROCESSOS', DM_Cadastro.Z_Curinga_04);

                      unMsg.INFORMA(2);
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_Cadastro.Z_Curinga_04.Edit;
end;

procedure TCAD_Imovel.Btn_Agenda_PessoaClick(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Pessoa, self, '1');
end;

procedure TCAD_Imovel.Tab_VisitacaoShow(Sender: TObject);
Var varSQL: TZQuery;
begin
     If NOT DM_Cadastro.Z_Imovel.Active Then
        exit;

     varSQL := unUtilitario.getSelect('SELECT distinct(PI.finalidade) FROM PESSOA_IMOVEL PI '+
     ' WHERE STATUS = ''AGENDAMENTO'' AND PI.ATIVO <> ''XXX'' ORDER BY PI.finalidade ');

     ComboProcessoSubTipo.Items.Clear;
     ComboProcessoSubTipo.Text := '';
     while not varSQL.Eof do
     Begin
          ComboProcessoSubTipo.Items.Add(varSQL.FieldByName('FINALIDADE').AsString);
          varSQL.Next;
     end;

     varSQL.Close;

     varSQL := unUtilitario.getSelect('SELECT distinct(PI.forma_contato) FROM PESSOA_IMOVEL PI '+
     ' WHERE STATUS = ''AGENDAMENTO'' AND PI.ATIVO <> ''XXX'' ORDER BY PI.finalidade ');

     ComboProcessoTipo.Items.Clear;
     ComboProcessoTipo.Text := '';
     while not varSQL.Eof do
     Begin
          ComboProcessoTipo.Items.Add(varSQL.FieldByName('FORMA_CONTATO').AsString);
          varSQL.Next;
     end;

     varSQL.Close;

     DM_Cadastro.Z_Curinga_04.Close;
     If Trim(Edit_Codigo.Text) <> '' Then
        unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_04,'SELECT pi.*, p.NOME as XPESSOA, P.cpf_cnpj as XCPF, P.foto as XFOTO FROM PESSOA_IMOVEL PI LEFT JOIN PESSOA P ON P.id_pessoa = PI.id_pessoa WHERE STATUS = ''AGENDAMENTO'' AND PI.ATIVO <> ''XXX'' AND ID_IMOVEL = '+Edit_Codigo.Text+' ORDER BY P.nome');

     FreeAndNil(varSQL);
end;

procedure TCAD_Imovel.Btn_Proprietario_NovoClick(Sender: TObject);
begin
  inherited;
       If NOT DM_Cadastro.Z_Curinga_04.Active Then
        DM_Cadastro.Z_Curinga_04.Open;

       DM_Cadastro.Z_Curinga_04.Append;

       Btn_Agenda_Novo.Enabled := False;

       DM_Cadastro.Z_Curinga_04.FieldByName('ATIVO').Value := 'SIM';
       DM_Cadastro.Z_Curinga_04.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;
       DM_Cadastro.Z_Curinga_04.FieldByName('ID_USUARIO').AsString := getUser('CODIGO_USUARIO');

       PRINCIPAL.setID(DM_Cadastro.Z_Curinga_04, 'ID_PESSOA_IMOVEL', 'PESSOA_IMOVEL');

       DM_CADASTRO.DS_Curinga_04.DataSet.FIELDBYNAME('PORCENTAGEM').AsString := '100';

       PRINCIPAL.CriarForm(TCAD_Pessoa, self, '5');
end;

procedure TCAD_Imovel.Btn_Proprietario_CancelarClick(Sender: TObject);
begin
  inherited;
   If DM_Cadastro.Z_Curinga_04.Active Then
        Begin
             DM_Cadastro.Z_Curinga_04.Cancel;
             DM_Cadastro.Z_Curinga_04.CancelUpdates;
             Btn_Proprietario_Novo.Enabled := True;
        End;
end;

procedure TCAD_Imovel.Btn_Proprietario_GravarClick(Sender: TObject);
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
           ShowMessage('O registro completo não foi salvo.');
      End;

  End;

  If NovoRegistro = 0 Then
  Begin
       If DM_Cadastro.Z_Curinga_04.Active Then
          Begin
               Try
                     DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA_TIPO').Value := 3;
                     DM_Cadastro.Z_Curinga_04.FieldByName('DATA').Value := DATE;

                     if DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM').AsCurrency > 100 then
                        DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM').AsCurrency := 100;

                     if DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM').AsCurrency < 0 then
                        DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM').AsCurrency := 0;

                     DM_Cadastro.Z_Curinga_04.FieldByName('STATUS').Value := 'PROPRIETARIO';

                  DM_Cadastro.Z_Curinga_04.ApplyUpdates;

                  setLog(DM_Cadastro.Z_Curinga_04.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption+': PROP.', DM_Cadastro.Z_Curinga_04);

                  unMsg.INFORMA(1);
                  Btn_Proprietario_Novo.Enabled := True;
               Except
                     unMsg.ERRO(10);
               End;
          End
          Else
              unMsg.ERRO(13);

          DM_Cadastro.Z_Curinga_04.Edit;
  End;

  //Btn_Proprietario_Novo.SetFocus;
end;

procedure TCAD_Imovel.Btn_Proprietario_ExcluirClick(Sender: TObject);
begin
  inherited;
     If MessageDlg('Deseja excluir este proprietário(a) do imóvel?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_Cadastro.Z_Curinga_04.Active Then
              Begin
                   Try
                      setLog(DM_Cadastro.Z_Curinga_04.Fields[0].AsString, 'EXCLUSÃO', Self.Caption+': PROP.', DM_Cadastro.Z_Curinga_04);
                      DM_Cadastro.Z_Curinga_04.Delete;
                      DM_Cadastro.Z_Curinga_04.ApplyUpdates;
                      unMsg.INFORMA(2);
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_Cadastro.Z_Curinga_04.Edit;
end;

procedure TCAD_Imovel.DBCheckBox3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  PRINCIPAL.setMensagem('SE ESTÁ RETIRANDO O IMÓVEL DA INTERNET, ESSA ALTERAÇÃO É FEITA IMEDIATAMENTE, ASSIM QUE SALVAR O REGISTRO.');
end;

procedure TCAD_Imovel.DBEdit11Change(Sender: TObject);
begin
  inherited;

  If not DM_Cadastro.Z_Curinga_04.FieldByName('XFOTO').IsNull Then
     unImagem.getImagem(IMG_Proprietario,DM_Cadastro.Z_Curinga_04.FieldByName('XFOTO').AsString);
end;

procedure TCAD_Imovel.DBEdit11DblClick(Sender: TObject);
begin
  inherited;

  if not DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA').IsNull then
  unCamposBusca.buscaIndividual(5,DM_Cadastro.Z_Curinga_04.FieldByName('ID_PESSOA').Value,TCAD_Pessoa,self);

end;

procedure TCAD_Imovel.Tab_PessoasShow(Sender: TObject);
begin
  inherited;

    If NOT DM_Cadastro.Z_Imovel.Active Then
     exit;

  If NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').IsNull Then
  Begin
       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_04,'SELECT pi.*, p.NOME as XPESSOA, P.cpf_cnpj as XCPF, P.foto as XFOTO FROM PESSOA_IMOVEL PI LEFT JOIN PESSOA P ON P.id_pessoa = PI.id_pessoa WHERE STATUS = ''PROPRIETARIO'' AND ID_IMOVEL = '+Edit_Codigo.Text+' ORDER BY P.nome');
       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_05,'SELECT pi.*, p.NOME as XPESSOA, P.cpf_cnpj as XCPF, P.foto as XFOTO FROM PESSOA_IMOVEL PI LEFT JOIN PESSOA P ON P.id_pessoa = PI.id_pessoa WHERE STATUS = ''PESSOAS'' AND ID_IMOVEL = '+Edit_Codigo.Text+' ORDER BY P.nome');
       DM_Cadastro.Z_Pessoa_Tipo.Open;
  End;

  (DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM') as TFloatField).Precision := 2;
  (DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM') as TFloatField).MaxValue := 100;
  (DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM') as TFloatField).MinValue := 0;
  (DM_Cadastro.Z_Curinga_04.FieldByName('PORCENTAGEM') as TFloatField).DisplayFormat := '###,##0.00';

end;

procedure TCAD_Imovel.IMG_ProprietarioDblClick(Sender: TObject);
begin
  inherited;

    Application.CreateForm(TImagem, Imagem);

    If NOT DM_Cadastro.Z_Curinga_04.FieldByName('XFOTO').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_04.FieldByName('XFOTO').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');

     Imagem.ShowModal;
end;

procedure TCAD_Imovel.Label106Click(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Aluguel, Self,'0');
end;

procedure TCAD_Imovel.LabelDataClick(Sender: TObject);
begin
     case StrIndex(LabelData.Caption, ['NÃO procurar por data',
                                      'Procurar por data de CADASTRO',
                                      'Procurar por data de ALTERAÇÃO',
                                      'Procurar Por data de ENTRADA de PROCESSOS',
                                      'Procurar Por data de SAÍDA de PROCESSOS']) of
          1: LabelData.Caption := 'Procurar por data de CADASTRO';
          2: LabelData.Caption := 'Procurar por data de ALTERAÇÃO';
          3: LabelData.Caption := 'Procurar Por data de ENTRADA de PROCESSOS';
          4: LabelData.Caption := 'Procurar Por data de SAÍDA de PROCESSOS';
          5: LabelData.Caption := 'NÃO procurar por data';
     else
         LabelData.Caption := 'Sem valor encontrado!';
     end;
end;

procedure TCAD_Imovel.Btn_Pessoas_NovoClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.Z_Curinga_05.Close;
  DM_Cadastro.Z_Curinga_05.Open;

       DM_Cadastro.Z_Curinga_05.Append;

       Btn_Agenda_Novo.Enabled := False;

       DM_Cadastro.Z_Curinga_05.FieldByName('ATIVO').Value := 'SIM';
       DM_Cadastro.Z_Curinga_05.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;
       DM_Cadastro.Z_Curinga_05.FieldByName('ID_USUARIO').AsString := getUser('CODIGO_USUARIO');
       DM_Cadastro.Z_Curinga_05.FieldByName('DATA').Value := DATE;

       //RETIRAR O * E COLOCAR SOMENTE OS CAMPOS NECESSÁRIOS!
       unCamposBusca.BUSCA(DM_Cadastro.Z_Pessoa_Tipo,'select * from pessoa_tipo WHERE ATIVO = ''SIM''');

       PRINCIPAL.setID(DM_Cadastro.Z_Curinga_05, 'ID_PESSOA_IMOVEL', 'PESSOA_IMOVEL');

       PRINCIPAL.CriarForm(TCAD_Pessoa, self, '6');
end;

procedure TCAD_Imovel.Btn_Pessoas_CancelarClick(Sender: TObject);
begin
  inherited;
   If DM_Cadastro.Z_Curinga_05.Active Then
        Begin
             DM_Cadastro.Z_Curinga_05.Cancel;
             DM_Cadastro.Z_Curinga_05.CancelUpdates;
             Btn_Pessoas_Novo.Enabled := True;
             Btn_Pessoa_Pessoa.Enabled := FALSE;
        End;
end;

procedure TCAD_Imovel.Btn_Pessoas_GravarClick(Sender: TObject);
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
           ShowMessage('O registro completo não foi salvo.');
      End;

  End;

  If NovoRegistro = 0 Then
  Begin
       If DM_Cadastro.Z_Curinga_05.Active Then
          Begin
               Try

{
                  If DM_Cadastro.Z_Curinga_05.FieldByName('ID_PESSOA_IMOVEL').IsNull then
                  Begin
                       unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_02, 'select ID from SP_GEN_PESSOA_IMOVEL_ID');

                       DM_Cadastro.Z_Curinga_05.FieldByName('ID_PESSOA_IMOVEL').Value := DM_Cadastro.Z_Curinga_02.FieldByName('ID').Value;

                       DM_Cadastro.Z_Curinga_02.Close;
                  End;
}

                     If DM_Cadastro.Z_Curinga_05.FieldByName('DATA').IsNull Then
                        DM_Cadastro.Z_Curinga_05.FieldByName('DATA').Value := DATE;

                     DM_Cadastro.Z_Curinga_05.FieldByName('STATUS').Value := 'PESSOAS';

                  DM_Cadastro.Z_Curinga_05.ApplyUpdates;

                  setLog(DM_Cadastro.Z_Curinga_05.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption+': PES. ENVOLVIDAS', DM_Cadastro.Z_Curinga_05);

                  unMsg.INFORMA(1);
                  Btn_Proprietario_Novo.Enabled := True;
               Except
                     unMsg.ERRO(10);
               End;
          End
          Else
              unMsg.ERRO(13);

          DM_Cadastro.Z_Curinga_04.Edit;
  End;

end;

procedure TCAD_Imovel.Btn_Pessoas_ExcluirClick(Sender: TObject);
begin
  inherited;
     If MessageDlg('Deseja excluir este endereço?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_Cadastro.Z_Curinga_04.Active Then
              Begin
                   Try
                      setLog(DM_Cadastro.Z_Curinga_05.Fields[0].AsString, 'EXCLUSÃO', Self.Caption+': PES. ENVOLVIDAS', DM_Cadastro.Z_Curinga_05);
                      DM_Cadastro.Z_Curinga_05.Delete;
                      DM_Cadastro.Z_Curinga_05.ApplyUpdates;
                      unMsg.INFORMA(2);
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_Cadastro.Z_Curinga_05.Edit;
end;

procedure TCAD_Imovel.Btn_Pessoa_PessoaClick(Sender: TObject);
begin
  inherited;
  

   //DBLookupComboBox3.SetFocus;
end;

procedure TCAD_Imovel.IMG_PessoasDblClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TImagem, Imagem);

    If NOT DM_Cadastro.Z_Curinga_05.FieldByName('XFOTO').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_05.FieldByName('XFOTO').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');

  Imagem.ShowModal;
end;

procedure TCAD_Imovel.DBEdit77Change(Sender: TObject);
begin
  inherited;
  If not DM_Cadastro.Z_Curinga_05.FieldByName('XFOTO').IsNull Then
     unImagem.getImagem(IMG_Pessoas,DM_Cadastro.Z_Curinga_05.FieldByName('XFOTO').AsString);
end;

procedure TCAD_Imovel.DBEdit77DblClick(Sender: TObject);
begin
  inherited;

    if not DM_Cadastro.Z_Curinga_05.FieldByName('ID_PESSOA').IsNull then
       unCamposBusca.buscaIndividual(5,DM_Cadastro.Z_Curinga_05.FieldByName('ID_PESSOA').Value,TCAD_Pessoa,self);

end;

procedure TCAD_Imovel.Tab_AnuncioAnotacaoShow(Sender: TObject);
Var varSQL: TZQuery;
begin
  inherited;
  if NOT DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').IsNull then
  begin
     unCamposBusca.BUSCA(DM_Cadastro.Z_Anuncio, 'select * from anuncio where id_imovel = '+IntToStr(DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value)+' order by data_inicio');

     unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_06, 'SELECT distinct(MEIO) FROM ANUNCIO WHERE ATIVO = ''SIM''');

     Combo_Meio.Items.Clear;

     DM_Cadastro.Z_Curinga_06.First;

     While not DM_Cadastro.Z_Curinga_06.Eof Do
     Begin
          Combo_Meio.Items.Add(DM_Cadastro.Z_Curinga_06.FieldByName('MEIO').Value);
          DM_Cadastro.Z_Curinga_06.Next;
     End;

     Combo_Meio.Repaint;

     DM_Cadastro.Z_Curinga_06.Close;

      varSQL := unUtilitario.getSelect('select data, id_func, obs, id_log from log where componente = ''ANUNCIO'' and acao = ''LOG'' and ativo = ''SIM'' and id_conta = '+dm_cadastro.Z_Imovel.FieldByName('id_imovel').AsString+' order by data desc');
      DSAnuncioImovel.DataSet := varSQL;

      GroupBox18.Caption := 'Anúncios do Imóvel (Qtde: '+ IntToStr(varSQL.RecordCount)+' )';

      ajustarAnuncioBloqueia();

  end;
end;

procedure TCAD_Imovel.Btn_Anuncio_GravarClick(Sender: TObject);
begin
  inherited;

  IF DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
  Begin
       unUtilitario.setMensagem('Primeiramente, abra um novo registro.','erro');
       Exit;
  end;

  if Length(EditAnuncCodigo.Text) = 0 Then
  Begin
       unUtilitario.setMensagem('Clique primeiro em adicionar um registro ou edite um já cadastrado!','erro');
       //Btn_Anuncio_Novo.SetFocus;
       Exit;
  End;

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
       If DM_Cadastro.Z_Anuncio.Active Then
          Begin
               Try
               IF DM_Cadastro.Z_Anuncio.FieldByName('MEIO').IsNull THEN
                        DM_Cadastro.Z_Anuncio.FieldByName('MEIO').Value := 'NENHUM';

                 IF DM_Cadastro.Z_Anuncio.FieldByName('VALOR').IsNull THEN
                        DM_Cadastro.Z_Anuncio.FieldByName('VALOR').Value := 0;

                        DM_Cadastro.Z_Anuncio.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;

                  setLog(DM_Cadastro.Z_Anuncio.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption+': ANÚNCIO', DM_Cadastro.Z_Anuncio);

                  DM_Cadastro.Z_Anuncio.ApplyUpdates;
                  unMsg.INFORMA(1);
                  ajustarAnuncioBloqueia();
               Except
                     unMsg.ERRO(10);
               End;
          End
          Else
              unMsg.ERRO(13);

          DM_Cadastro.Z_Anuncio.Edit;
  End;

  
     unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_06, 'SELECT distinct(MEIO) FROM ANUNCIO WHERE ATIVO = ''SIM''');

     Combo_Meio.Items.Clear;
     
     DM_Cadastro.Z_Curinga_06.First;

     While not DM_Cadastro.Z_Curinga_06.Eof Do
     Begin
          Combo_Meio.Items.Add(DM_Cadastro.Z_Curinga_06.FieldByName('MEIO').Value);
          DM_Cadastro.Z_Curinga_06.Next;
     End;

     Combo_Meio.Repaint;

     DM_Cadastro.Z_Curinga_06.Close;
end;

procedure TCAD_Imovel.Btn_Anuncio_NovoClick(Sender: TObject);
begin
  inherited;

       IF DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
       Begin
            unUtilitario.setMensagem('Primeiramente, abra um novo registro.','erro');
            Exit;
       end;

       If NOT DM_Cadastro.Z_Anuncio.Active Then
          DM_Cadastro.Z_Anuncio.Open;

       DM_Cadastro.Z_Anuncio.Append;

       Btn_Anuncio_Novo.Enabled := False;

       PRINCIPAL.setID(DM_Cadastro.Z_Anuncio, 'ID_ANUNCIO', 'ANUNCIO');

       DM_Cadastro.Z_Anuncio.FieldByName('ATIVO').Value := 'SIM';
       DM_Cadastro.Z_Anuncio.FieldByName('DATA_INICIO').Value := DATE;

       ajustarAnuncioLibera();
end;

procedure TCAD_Imovel.Btn_Anuncio_CancelarClick(Sender: TObject);
begin
  inherited;
   If DM_Cadastro.Z_Anuncio.Active Then
        Begin
             DM_Cadastro.Z_Anuncio.Cancel;
             DM_Cadastro.Z_Anuncio.CancelUpdates;
             ajustarAnuncioBloqueia();
        End;
end;

procedure TCAD_Imovel.Btn_Anuncio_ExcluirClick(Sender: TObject);
begin
  inherited;
     If MessageDlg('Deseja excluir este endereço?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
           If DM_Cadastro.Z_Anuncio.Active Then
              Begin
                   Try
                      setLog(DM_Cadastro.Z_Anuncio.Fields[0].AsString, 'EXCLUSÃO', Self.Caption+': ANÚNCIO', DM_Cadastro.Z_Anuncio);
                      DM_Cadastro.Z_Anuncio.Delete;
                      DM_Cadastro.Z_Anuncio.ApplyUpdates;
                      unMsg.INFORMA(2);
                      ajustarAnuncioBloqueia();
                   Except
                         unMsg.ERRO(12);
                   End;
              End
              Else
                  unMsg.ERRO(13);
     End;

     DM_Cadastro.Z_Anuncio.Edit;
end;

procedure TCAD_Imovel.DBEdit30Exit(Sender: TObject);
begin
  inherited;

  if Length(Trim(ds.DataSet.FieldByName('AREA_C').AsString)) <= 0 then
     ds.DataSet.FieldByName('AREA_C').AsString := '0';

  IF NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_L').IsNull) AND NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_C').IsNull) THEN
  BEGIN
       EDIT_AREATITAL_MEDIDA.Text := FloatToStr(DM_Cadastro.Z_Imovel.FieldByName('AREA_L').Value * DM_Cadastro.Z_Imovel.FieldByName('AREA_C').Value);
  END;

end;

procedure TCAD_Imovel.Btn_Agenda_Pessoa2Click(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Pessoa, self, '2');

  //DBEdit1.SetFocus;
end;

procedure TCAD_Imovel.DBEdit31Exit(Sender: TObject);
begin
  inherited;

     if Length(Trim(ds.DataSet.FieldByName('AREA_FATOR').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_FATOR').AsString := '0';

  IF (Length(Trim(EDIT_AREATITAL_MEDIDA.text)) > 0) AND NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_FATOR').IsNull) THEN
  BEGIN
       EDIT_AREATOTAL1_MEDIDA.Text := FloatToStr(StrToFloat(EDIT_AREATITAL_MEDIDA.text) * DM_Cadastro.Z_Imovel.FieldByName('AREA_FATOR').Value);
  END;

end;

procedure TCAD_Imovel.DBEdit32Exit(Sender: TObject);
begin
     if Length(Trim(ds.DataSet.FieldByName('AREA_OUTROS').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_OUTROS').AsString := '0';

end;

procedure TCAD_Imovel.DBEdit35Exit(Sender: TObject);
begin
  inherited;
     if Length(Trim(ds.DataSet.FieldByName('AREA_CONSTRUIDA_FATOR').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_CONSTRUIDA_FATOR').AsString := '0';

  IF NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_CONSTRUIDA').IsNull) AND NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_CONSTRUIDA_FATOR').IsNull) THEN
  BEGIN
       EDIT_AREATOTAL2_MEDIDA.Text := FloatToStr(DM_Cadastro.Z_Imovel.FieldByName('AREA_CONSTRUIDA').Value * DM_Cadastro.Z_Imovel.FieldByName('AREA_CONSTRUIDA_FATOR').Value);
  END;

end;

procedure TCAD_Imovel.DBEdit33Exit(Sender: TObject);
begin
  inherited;
     if Length(Trim(ds.DataSet.FieldByName('AREA_OUTROS_FATOR').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_OUTROS_FATOR').AsString := '0';

  IF NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_OUTROS').IsNull) AND NOT (DM_Cadastro.Z_Imovel.FieldByName('AREA_OUTROS_FATOR').IsNull) THEN
  BEGIN
       EDIT_AREATOTAL3_MEDIDA.Text := FloatToStr(DM_Cadastro.Z_Imovel.FieldByName('AREA_OUTROS').Value * DM_Cadastro.Z_Imovel.FieldByName('AREA_OUTROS_FATOR').Value);
  END;

end;

procedure TCAD_Imovel.DBEdit34Exit(Sender: TObject);
begin
     if Length(Trim(ds.DataSet.FieldByName('AREA_CONSTRUIDA').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_CONSTRUIDA').AsString := '0';

end;

procedure TCAD_Imovel.DBEdit36Exit(Sender: TObject);
begin
  inherited;
     if Length(Trim(ds.DataSet.FieldByName('AREA_DEPRECIACAO').AsString)) <= 0 then
        ds.DataSet.FieldByName('AREA_DEPRECIACAO').AsString := '0';

  IF (Length(Trim(EDIT_AREATOTAL1_MEDIDA.Text)) > 0) AND (EDIT_AREATOTAL2_MEDIDA.Text <> '') AND (EDIT_AREATOTAL3_MEDIDA.Text <> '') THEN
  BEGIN
       EDIT_TOTALSUGERIDO_MEDIDA.Text := FloatToStr((StrToFloat(EDIT_AREATOTAL1_MEDIDA.Text) + StrToFloat(EDIT_AREATOTAL2_MEDIDA.Text) + StrToFloat(EDIT_AREATOTAL3_MEDIDA.Text))-DM_Cadastro.Z_Imovel.FieldByName('AREA_DEPRECIACAO').Value);
  END;
  
end;

procedure TCAD_Imovel.DBEdit3Change(Sender: TObject);
begin
  inherited;
  controleImagem();
end;

procedure TCAD_Imovel.DBEdit55Change(Sender: TObject);
begin
     if DM_Cadastro.Z_Curinga_04.Active then
     Begin
          ComboProcessoTipo.Text := DM_Cadastro.Z_Curinga_04.FieldByName('FORMA_CONTATO').AsString;
          ComboProcessoSubTipo.Text := DM_Cadastro.Z_Curinga_04.FieldByName('FINALIDADE').AsString;
     end;
end;

procedure TCAD_Imovel.DBEdit6Exit(Sender: TObject);
begin
     DM_CADASTRO.DS_Anuncio.DataSet.FieldByName('VALOR').AsString := unUtilitario.getCurrToStr(DM_CADASTRO.DS_Anuncio.DataSet.FieldByName('VALOR').AsCurrency,FALSE);
end;

procedure TCAD_Imovel.DBEdit19Exit(Sender: TObject);
begin
    IF NOT (DM_Cadastro.Z_Imovel.FieldByName('VALOR_REAL').IsNull) AND NOT (DM_Cadastro.Z_Imovel.FieldByName('VALOR_VENDA').IsNull) THEN
  BEGIN
       Lucro.Caption := FloatToStr(((DM_Cadastro.Z_Imovel.FieldByName('VALOR_VENDA').Value * 100)/ DM_Cadastro.Z_Imovel.FieldByName('VALOR_REAL').Value)-100);
  END;

//  DBEdit37.SetFocus;
  //Btn_IPTU_Novo.SetFocus;  
end;

procedure TCAD_Imovel.Tab_MedidasValoresShow(Sender: TObject);
begin
  inherited;
  if NOT DM_Cadastro.Z_ImovelID_IMOVEL.IsNull THEN
  BEGIN
      DBEdit30Exit(Sender);// SOMA TOTAL ÁREA
      DBEdit31Exit(Sender);// SOMA TOTAL FATOR 1
      DBEdit35Exit(Sender);// SOMA TOTAL FATOR 2
      DBEdit33Exit(Sender);// SOMA TOTAL FATOR 3
      DBEdit36Exit(Sender);// SOMA TOTAL GERAL

      If not DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
      begin
           DM_Cadastro.Z_IPTU.Close;
           DM_Cadastro.Z_IPTU.ParamByName('CODIGO').Value := DM_Cadastro.Z_ImovelID_IMOVEL.VALUE;
           DM_Cadastro.Z_IPTU.Open;
           DM_Cadastro.Z_IPTU.Edit;

           DM_Cadastro.Z_IPTU_Parcela.Close;
           DM_Cadastro.Z_IPTU_Parcela.SQL.Clear;
           DM_Cadastro.Z_IPTU_Parcela.SQL.Add('select ce.id_caixa, ce.data_ref, ce.data_pgto, ce.valor from caixa_entrada ce where ce.id_subtipo = 4 and ce.id_imovel = '+DM_Cadastro.Z_ImovelID_IMOVEL.AsString+' order by ce.data_ref desc');
           DM_Cadastro.Z_IPTU_Parcela.Open;
      end;
    END;

end;

procedure TCAD_Imovel.EDIT_TOTALSUGERIDO_MEDIDADblClick(Sender: TObject);
begin
  inherited;
  DBEdit36Exit(Sender);// SOMA TOTAL GERAL
end;

procedure TCAD_Imovel.EstrelaCheiaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
     EstrelaCheia.Width := X;

     if DM_CADASTRO.Z_Imovel.Active AND NOT DM_CADASTRO.Z_ImovelID_PESSOA.IsNull then
     Begin
          DM_CADASTRO.Z_Imovel.Edit;
          DM_CADASTRO.Z_ImovelNOTA.AsInteger := EstrelaCheia.Width;
     end;

     PRINCIPAL.setMensagem('Salve o registro para gravar no banco a alteração de avaliação.');
end;

procedure TCAD_Imovel.EstrelaVaziaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
     EstrelaCheia.Width := X;

     if DM_CADASTRO.Z_Imovel.Active AND NOT DM_CADASTRO.Z_ImovelID_PESSOA.IsNull then
     Begin
          DM_CADASTRO.Z_Imovel.Edit;
          DM_CADASTRO.Z_ImovelNOTA.AsInteger := EstrelaCheia.Width;
     end;

     PRINCIPAL.setMensagem('Salve o registro para gravar no banco a alteração de avaliação.');
end;

{
procedure TCAD_Imovel.DBGrid6ColEnter(Sender: TObject);
begin
  inherited;
  IF NOT DM_Cadastro.Z_IPTU.FieldByName('ID_IMOVEL_IPTU').IsNull THEN
    BEGIN
       DM_Cadastro.Z_IPTU_Parcela.Edit;
       DM_Cadastro.Z_IPTU_Parcela.FieldByName('ID_IMOVEL_IPTU').Value := DM_Cadastro.Z_IPTU.FieldByName('ID_IMOVEL_IPTU').Value;
       DM_Cadastro.Z_IPTU_Parcela.FieldByName('ID_IMOVEL').Value := DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').Value;
    END;

end;
}

procedure TCAD_Imovel.Btn_IPTU_NovoClick(Sender: TObject);
begin
  inherited;

  if DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
     exit;

  DM_Cadastro.Z_IPTU.Open;

  DM_Cadastro.Z_IPTU.Append;
  DM_Cadastro.Z_IPTUID_IMOVEL.Value := DM_Cadastro.Z_ImovelID_IMOVEL.Value;
  DM_Cadastro.Z_IPTUPARCELA_UNICA.AsString := 'SIM';

  unCamposBusca.BUSCA(DM_Cadastro.Z_Curinga_01, 'select ID from SP_GEN_IMOVEL_IPTU_ID');
  DM_Cadastro.Z_IPTUID_IMOVEL_IPTU.Value := DM_Cadastro.Z_Curinga_01.FieldByName('ID').Value;
  DM_Cadastro.Z_IPTUID_IMOVEL.Value := DM_Cadastro.Z_ImovelID_IMOVEL.Value;

  Btn_IPTU_Pessoa1.Enabled := TRUE;
  Btn_IPTU_Pessoa2.Enabled := TRUE;
  Btn_IPTU_Novo.Enabled := FALSE;
  Btn_IPTU_EXCLUIR.Enabled := FALSE;
end;

procedure TCAD_Imovel.DBGrid10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  Var Escolha: String;
  varSQL: TZQuery;
begin

 Escolha := '';

  If Key = VK_MENU Then
  Begin
     Escolha := InputBox('MENU DE OPERAÇÕES DOS ANÚNCIOS','1 - APAGAR Registro;'+#13+'2 - IMPRIMIR Demostrativo;'+#13+'3 - ALTERAR Observação.','');

     if NOT verificaStringInt(escolha) Then
     Begin
          unUtilitario.setMensagem('Entre somente com números!','erro');
          Exit;
     End;

     If (Escolha = '1') Then
     Begin
          If unUtilitario.setMensagem('Deseja EXCLUIR o registro selecionado?', 'confirma') = IDYES Then
          Begin
               if DSAnuncioImovel.DataSet.RecordCount > 0 then
               begin
                    varSQL := unUtilitario.getSQL('update log set ativo = ''XXX'' where id_log = '+DSAnuncioImovel.DataSet.FieldByName('id_log').AsString );
                    varSQL.ApplyUpdates;
                    DSAnuncioImovel.DataSet.Refresh;

                    setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', varSQL.SQL.Text);

                    //LOG - Salvar em log as alterações nas grids
               end;
          End;
              Exit;
     End;

     If (Escolha = '2') Then
     Begin
          if DSAnuncioImovel.DataSet.RecordCount > 0 then
          begin
               DM_RELATORIOS.SQL1.Close;
               DM_RELATORIOS.SQL2.Close;
               DM_RELATORIOS.SQL1.SQL.Clear;
               DM_RELATORIOS.SQL2.SQL.Clear;

               DM_RELATORIOS.SQL1.SQL.Add('select * from anuncio where ATIVO <> ''XXX'' AND id_imovel = '+DM_Cadastro.Z_Imovel.FieldByName('ID_IMOVEL').AsString+' order by MEIO');
               DM_RELATORIOS.DS1.DataSet := DM_RELATORIOS.SQL1;

               DM_RELATORIOS.SQL2.SQL.Add('select lo.*, u.nome from log lo inner join usuario u on u.id_usuario = lo.id_func where lo.ativo = ''SIM'' and lo.acao = ''LOG'' and lo.componente = ''ANUNCIO'' and lo.id_conta = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString+' order by lo.data desc');
               DM_RELATORIOS.DS2.DataSet := DM_RELATORIOS.SQL2;

               DM_RELATORIOS.Rave.SetParam('varImovel',DM_Cadastro.Z_Imovel.FieldByName('XTIPORUA').AsString+' '+DM_Cadastro.Z_Imovel.FieldByName('XNOMERUA').AsString+', '+DM_Cadastro.Z_Imovel.FieldByName('NUMERO').AsString+' '+DM_Cadastro.Z_Imovel.FieldByName('COMPLEMENTO').AsString+', '+DM_Cadastro.Z_Imovel.FieldByName('XBAIRRO').AsString+', '+DM_Cadastro.Z_Imovel.FieldByName('XCIDADE').AsString+' - '+DM_Cadastro.Z_Imovel.FieldByName('XESTADO').AsString);

               DM_RELATORIOS.Rave.Close;
               DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_IMOVEL_ANUNCIADO.rav';
               principal.setRelatorio(DM_RELATORIOS.Rave);
               DM_RELATORIOS.Rave.Open;
                DM_RELATORIOS.Rave.Execute;
          end;
     End;

     If (Escolha = '3') Then
     Begin
          If unUtilitario.setMensagem('Deseja ALTERAR o campo OBS desde registro?', 'confirma') = IDYES Then
          Begin
               if DSAnuncioImovel.DataSet.RecordCount > 0 then
               begin
                    varSQL := unUtilitario.getSQL('update log set OBS = '''+InputBox('Campo Observação do anúncio.','Entre com a nova informação:',DSAnuncioImovel.DataSet.FieldByName('OBS').AsString)+''' where id_log = '+DSAnuncioImovel.DataSet.FieldByName('id_log').AsString );
                    varSQL.ApplyUpdates;
                    DSAnuncioImovel.DataSet.Refresh;

                    setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', varSQL.SQL.Text);
               end;
          End;
              Exit;
     End;

     IF VARSQL <> NIL THEN
        FREEANDNIL(VARSQL);
  End;

end;

procedure TCAD_Imovel.Grid_ImagemCellClick(Column: TColumn);
begin
  inherited;
  controleImagem();
  DM_Cadastro.Z_Curinga_03.Edit;
end;

procedure TCAD_Imovel.Grid_ImagemDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  IF (COLUMN.Title.CAPTION = 'Tipo') THEN
    if (DM_CADASTRO.DS_Curinga_03.DataSet.FieldByName('TIPO').AsString = 'VISTORIA') THEN
      begin
        Grid_Imagem.Canvas.Brush.Color:= clGray;
        Grid_Imagem.Canvas.Font.Color:= clWindowText;
        Grid_Imagem.Canvas.Font.Style := Grid_Imagem.Canvas.Font.Style + [fsBold];
        Grid_Imagem.Canvas.FillRect(Rect);
        Grid_Imagem.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
    ELSE
    if (DM_CADASTRO.DS_Curinga_03.DataSet.FieldByName('TIPO').AsString = 'OUTROS') THEN
      begin
        Grid_Imagem.Canvas.Brush.Color:= clGreen;
        Grid_Imagem.Canvas.Font.Color:= clWindow;
        Grid_Imagem.Canvas.Font.Style := Grid_Imagem.Canvas.Font.Style + [fsBold];
        Grid_Imagem.Canvas.FillRect(Rect);
        Grid_Imagem.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
end;

procedure TCAD_Imovel.chaveEmprestimoImoveisDblClick(Sender: TObject);
var varSQL: TZQuery;
    imovel: String;
begin
   imovel := IDCampoSTR(chaveEmprestimoImoveis.Items[chaveEmprestimoImoveis.ItemIndex]);
                                   
   if imovel = '0' then
   Begin
        unUtilitario.setMensagem('Não foi escolhido nenhum imóvel!','erro');
        exit;
   end;

   varSQL := unUtilitario.getSelect('select l.tipo, l.nome, i.numero, i.complemento, i.id_imovel, '+
   ' (select first 1 log.obs from log where id_conta = '+imovel+' order by data desc) as pessoa from imovel i '+
   ' inner join logradouro l on l.id_logradouro = i.id_logradouro '+
   ' where i.ativo = ''SIM'' and i.id_imovel = '+imovel);

   if varSQL.FieldByName('PESSOA').IsNull then
   Begin
        setmensagem('Não foi encontrado nenhum registro com este imóvel: '+imovel+#13+
        'Verificar se a chave já não foi devolvida.','erro');
     exit;
   end;
   

   chaveEmprestimoEntradaPessoa.Text := varSQL.FieldByName('PESSOA').AsString;

   chaveEmprestimoEntradaImoveis.Items.Clear;

   while not varSQL.eof do
   Begin
          chaveEmprestimoEntradaImoveis.Items.Add(
          varSQL.FieldByName('TIPO').AsString+' '+
          varSQL.FieldByName('NOME').AsString+', '+
          varSQL.FieldByName('NUMERO').AsString+' '+
          varSQL.FieldByName('COMPLEMENTO').AsString+'-'+
          varSQL.FieldByName('ID_IMOVEL').AsString
          );

        varSQL.Next;
   end;

   FreeAndNil(varSQL);

end;

procedure TCAD_Imovel.chaveEmprestimoPessoasDblClick(Sender: TObject);
var varSQL: TZQuery;
    pessoa: String;
begin
   pessoa := chaveEmprestimoPessoas.Items[chaveEmprestimoPessoas.ItemIndex];

   if Length(trim(pessoa)) <= 0 then
   Begin
        unUtilitario.setMensagem('Não foi escolhida nenhuma pessoa!','erro');
        exit;
   end;

   chaveEmprestimoEntradaPessoa.Text := pessoa;

   varSQL := unUtilitario.getSelect('select l.tipo, l.nome, i.numero, i.complemento, i.id_imovel from imovel i '+
   ' inner join logradouro l on l.id_logradouro = i.id_logradouro '+
   ' where i.ativo = ''SIM'' and i.chave = ''EMP'' and i.id_imovel in (select distinct(l.id_conta) from log l where l.acao = ''CHV'' and l.ativo = ''SIM'' and l.obs = '''+pessoa+''' )');

   chaveEmprestimoEntradaImoveis.Items.Clear;

   while not varSQL.eof do
   Begin
          chaveEmprestimoEntradaImoveis.Items.Add(
          varSQL.FieldByName('TIPO').AsString+' '+
          varSQL.FieldByName('NOME').AsString+', '+
          varSQL.FieldByName('NUMERO').AsString+' '+
          varSQL.FieldByName('COMPLEMENTO').AsString+'-'+
          varSQL.FieldByName('ID_IMOVEL').AsString
          );
        varSQL.Next;
   end;

   FreeAndNil(varSQL);
end;

procedure TCAD_Imovel.checkFinanciaClick(Sender: TObject);
var posicao, I: Integer;
    texto, novoTexto: String;
begin

     texto := DM_CADASTRO.Z_Imovel.FieldByName('OBS').AsString;
     posicao := POS('[ACEITA FINANCIAMENTO]',texto);
     novoTexto := '';

     if posicao > 0 then
        texto := StringReplace(trim(texto), '[ACEITA FINANCIAMENTO]', '', [rfReplaceAll, rfIgnoreCase]);

     if checkFinancia.Checked then
        texto := texto + ' [ACEITA FINANCIAMENTO]';

     DM_CADASTRO.Z_Imovel.FieldByName('OBS').AsString := texto;

end;

procedure TCAD_Imovel.controleImagem();
begin


  IF DS.DATASET.FieldByName('ID_IMOVEL').IsNull THEN
     exit;

  ComboBox1.Text := DM_Cadastro.Z_Curinga_03.FieldByName('TIPO').AsString;
  IF DM_Cadastro.Z_Curinga_03.Active THEN
     DM_Cadastro.Z_Curinga_03.Edit;

  If NOT DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').IsNull Then
  Begin
      unImagem.getImagem(Imagem_1,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').Value);

      if verificaCensura(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO1').AsString) then
         Imagem_1.Stretch := False
      else
          Imagem_1.Stretch := True;

  end
  Else
  Begin
      unImagem.getImagem(Imagem_1,'X_Foto.jpg');
      Imagem_1.Stretch := True;
  end;

  If NOT DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').IsNull Then
  Begin
      unImagem.getImagem(Imagem_2,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').Value);
      
      if verificaCensura(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO2').AsString) then
         Imagem_2.Stretch := False
      else
          Imagem_2.Stretch := True;
  end
  Else
  Begin
      unImagem.getImagem(Imagem_2,'X_Foto.jpg');
      Imagem_2.Stretch := True;
  end;

  If NOT DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').IsNull Then
  begin
     unImagem.getImagem(Imagem_3,DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').Value);

     if verificaCensura(DM_Cadastro.Z_Curinga_03.FieldByName('FOTO3').AsString) then
         Imagem_3.Stretch := False
      else
          Imagem_3.Stretch := True;

  end
  Else
  Begin
      unImagem.getImagem(Imagem_3,'X_Foto.jpg');
      Imagem_3.Stretch := True;
  end;

end;

procedure TCAD_Imovel.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
            DBEdit11DblClick(Sender);
end;

procedure TCAD_Imovel.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
            DBEdit77DblClick(Sender);
end;

procedure TCAD_Imovel.DBGrid6DblClick(Sender: TObject);
begin
     if not sql2.FieldByName('Arquivo').IsNull then
        ShellExecute(0, 'open', Pchar('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\DOC\'+sql2.FieldByName('Arquivo').AsString), nil, nil, SW_SHOWNORMAL);

end;

procedure TCAD_Imovel.DBGrid8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var Escolha, idadeImovel, dataSQL: String;
  varSQL, sql: TZQuery;
  montante: Double;
  lista: TStringList;
  I, x: Integer;
begin

     if Length(Edit_Codigo.Text) = 0 then
     Begin
          setMensagem('Selecione um imóvel.','erro');
          exit;
     end;

     lista := TStringList.Create;

     Escolha := '';

  If (Key = VK_MENU) Then
  Begin
     Escolha := InputBox('MENU DE OPERAÇÕES:','1 - APAGAR Registro;'+#13+'2 - IMPRIMIR Relatos Simples;'+#13+'3 - IMPRIMIR Prontuário Detalhado;'+#13+'4 - ALTERAR Comentário.','');

     if NOT verificaStringInt(escolha) Then
     Begin
          unUtilitario.setMensagem('Entre somente com números!','erro');
          Exit;                        
     End;

     If (Escolha = '1') Then
     Begin
          If unUtilitario.setMensagem('Deseja EXCLUIR o registro selecionado?', 'confirma') = IDYES Then
          Begin
               if DSPessoasInteressadas.DataSet.RecordCount > 0 then
               begin
                    varSQL := unUtilitario.getSQL('update log set ativo = ''XXX'' where id_log = '+DSPessoasInteressadas.DataSet.FieldByName('id_pessoa_imovel').AsString );
                    varSQL.ApplyUpdates;
                    DSPessoasInteressadas.DataSet.Refresh;
               end;
          End;
              Exit;
     End;

     If (Escolha = '2') Then
     Begin
          if DSPessoasInteressadas.DataSet.RecordCount > 0 then
          begin
               varSQL := unUtilitario.getSelect('SELECT PI.componente as DEPOIMENTO, PI.DATA as DATA, PI.OBS AS NOME from log pi where pi.id_conta = '+DS.DataSet.FieldByName('ID_IMOVEL').AsString+' and pi.ativo = ''SIM'' and pi.acao = ''CHV''');
               setWord(varSQL,'RELATÓRIO SIMPLIFICADO DE PESSOAS QUE VISITARAM O IMÓVEL DE CÓDIGO '+DS.DataSet.FieldByName('ID_IMOVEL').AsString+#13+'IMÓVEL: '+ds.DataSet.FieldByName('XTIPORUA').AsString+' '+ds.DataSet.FieldByName('XNOMERUA').AsString+', '+ds.DataSet.FieldByName('NUMERO').AsString+' '+ds.DataSet.FieldByName('COMPLEMENTO').AsString+', '+ds.DataSet.FieldByName('XBAIRRO').AsString+' '+ds.DataSet.FieldByName('XCIDADE').AsString+'-'+ds.DataSet.FieldByName('XESTADO').AsString);
          end;
     End;

     If (Escolha = '3') Then //RELATÓRIO COMPLETO
     Begin
          DM_REL.RV_IMPRESSAO.SetParam('txtImovel',Edit_Tipo.Text+' '+Edit_Rua.Text+' '+Edit_Numero.Text+' '+Edit_complemento.Text+', '+Edit_Bairro.Text+' - '+Edit_Cidade.Text+'/'+Edit_UF.Text+' ('+Edit_Cep.Text+')');

          sql := unUtilitario.getSelect('select first 1 c.data as data from contrato c where c.id_imovel = '+DM_CADASTRO.Z_ImovelID_IMOVEL.AsString+' and c.ativo <> ''XXX'' order by c.id_contrato desc');

          if sql.RecordCount = 0 then
          Begin
               dataSQL := '01.01.2000';
          end
          else
          Begin
               dataSQL :=  formataDataSQL(formataDataSQL(sql.FieldByName('DATA').AsString));
          end;

          if NOT DM_CADASTRO.Z_ImovelOUTROS_NOME.IsNull then
             if Length( Trim(DM_CADASTRO.Z_ImovelOUTROS_NOME.AsString)) > 0 then
                idadeImovel := 'Idade do Imóvel: '+IntToStr(YearsBetween(Date,StrToDate(DM_CADASTRO.Z_ImovelOUTROS_NOME.AsString)))+' anos,';

          DM_REL.RV_IMPRESSAO.SetParam('txtImovelDados',DS.DataSet.FieldByName('XTIPO').AsString+' / '+DS.DataSet.FieldByName('XSUBTIPO').AsString+', Status:'+DS.DataSet.FieldByName('STATUS').AsString+', '+idadeImovel+' Código: '+Edit_Codigo.Text+'.');
          Escolha := '';
          if DS.DataSet.FieldByName('VENDA').AsString = 'SIM' then
             Escolha := 'VENDA: '+Edit_ValorVenda.Text;

          if DS.DataSet.FieldByName('ALUGUEL').AsString = 'SIM' then
             Escolha := Escolha + ' ALUGUEL: '+Edit_ValorLocacao.Text+' ('+unValidacao.Extenso(DS.DataSet.FieldByName('VALOR_ALUQUEL').AsFloat)+')';

          if DS.DataSet.FieldByName('OUTROS').AsString = 'SIM' then
             Escolha := Escolha + ' OUTROS: '+Edit_ValorTemporada.Text;

          if DS.DataSet.FieldByName('VALOR_CONDOMINIO').AsCurrency > 0 then
             Escolha := Escolha + ' CONDOMÍNIO: '+Edit_ValorCondominio.Text;

          if Val_IPTU.Text <> 'R$ 0,00' then
             Escolha := Escolha + ' IPTU: '+Val_IPTU.Text;

          DM_REL.RV_IMPRESSAO.SetParam('txtImovelValores',trim(Escolha));


          varSQL := unUtilitario.getSelect('select count(1) from log where componente = ''ANUNCIO'' and acao = ''LOG'' and ativo = ''SIM'' and data >= '''+dataSQL+''' and id_conta = '+Edit_Codigo.Text);
          DM_REL.RV_IMPRESSAO.SetParam('txtQtdeAnuncio',varSQL.Fields[0].AsString);

          DM_REL.RV_IMPRESSAO.SetParam('txtDisponivelInternet',DS.DataSet.FieldByName('INTERNET').AsString);

          varSQL := unUtilitario.getSelect('select * from log where componente = ''ANUNCIO'' and acao = ''LOG'' and ativo = ''SIM'' and data >= '''+dataSQL+''' and id_conta = '+Edit_Codigo.Text);

          if varSQL.RecordCount > 0 then
          Begin
          
          while NOT varSQL.Eof do
          Begin
               x := unUtilitario.IDCampo(varSQL.FieldByName('OBS').AsString);
               if x > 0 then
                  lista.Add(IntToStr(x));
               varSQL.Next;
          end;

          montante := 0;
          for I := 0 to lista.Count - 1 do
          Begin
               varSQL := unUtilitario.getSelect('select VALOR from ANUNCIO where id_anuncio in ('+lista[I]+')');
               montante := montante + varSQL.Fields[0].AsCurrency;
          end;

          if montante > 0 then
             DM_REL.RV_IMPRESSAO.SetParam('txtDespesaAnuncio',unUtilitario.getCurrToStr(montante,true))
          else
              DM_REL.RV_IMPRESSAO.SetParam('txtDespesaAnuncio',unUtilitario.getCurrToStr(0.00,true))

          end
          else
             DM_REL.RV_IMPRESSAO.SetParam('txtDespesaAnuncio',unUtilitario.getCurrToStr(0.00,true));

          varSQL := unUtilitario.getSelect('select cast((MAX(data)-MIN(data)) / count(1) as float) from log where componente = ''ANUNCIO'' and acao = ''LOG'' and ativo = ''SIM'' and data >= '''+dataSQL+''' and id_conta = '+Edit_Codigo.Text);

          DM_REL.RV_IMPRESSAO.SetParam('txtIntervalo',unUtilitario.getCurrToStr(varSQL.Fields[0].AsCurrency+0.5, false)+' dias');
                 
         zqinteressados.Close;
         zqinteressados.ParamByName('pimovel').AsInteger := dm_cadastro.Z_Imovel.FieldByName('id_imovel').AsInteger;
         zqinteressados.Open;

         DM_REL.RV_IMPRESSAO.SetParam('txtQtdeVisitas',IntToStr(zqinteressados.RecordCount));

         varSQL := unUtilitario.getSelect('select count(1) from log where componente = ''PROPOSTA'' and acao = ''LOG'' and ativo = ''SIM'' and data >= '''+dataSQL+''' and id_conta = '+Edit_Codigo.Text);

         DM_REL.RV_IMPRESSAO.SetParam('txtQtdePropostas',varSQL.Fields[0].AsString);

         DM_RELATORIOS.SQL1.SQL.Clear;
         DM_RELATORIOS.SQL2.SQL.Clear;
         DM_RELATORIOS.SQL3.SQL.Clear;

         DM_RELATORIOS.SQL1.SQL.Text := 'select * from anuncio where ativo = ''SIM'' and id_imovel = '+Edit_Codigo.Text+' order by id_anuncio';
         DM_RELATORIOS.SQL2.SQL.Text := 'select * from log where componente = ''PROPOSTA'' and acao = ''LOG'' and ativo = ''SIM'' and id_conta = '+Edit_Codigo.Text+' and data >= '''+dataSQL+''' order by id_log';
         DM_RELATORIOS.SQL3.SQL.Text := 'select * from log where acao = ''CHV'' and ativo = ''SIM'' and id_conta = '+Edit_Codigo.Text+' and data >= '''+dataSQL+''' order by data';

     DM_RELATORIOS.DS1.DataSet := DM_RELATORIOS.SQL1;
     DM_RELATORIOS.DS2.DataSet := DM_RELATORIOS.SQL2;
     DM_RELATORIOS.DS3.DataSet := DM_RELATORIOS.SQL3;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_ANUNCIO_IMOVEL_INDIVIDUAL.rav';

     setRave(1,'',InputBox('- Observação Personalizada -','Escreva uma OBS personalizada para ser impressa junto com o relatório:',''));
     lista.Free;
     End;

     If (Escolha = '4') Then
     Begin
          If unUtilitario.setMensagem('Deseja ALTERAR o campo OBS desde registro?', 'confirma') = IDYES Then
          Begin
               if DSPessoasInteressadas.DataSet.RecordCount > 0 then
               begin
                    varSQL := unUtilitario.getSQL('update log set COMPONENTE = '''+Trim(InputBox('Campo Observação do anúncio.','Entre com a nova informação:',DSPessoasInteressadas.DataSet.FieldByName('NOME').AsString))+''' where id_log = '+DSPessoasInteressadas.DataSet.FieldByName('id_pessoa_imovel').AsString );
                    varSQL.ApplyUpdates;
                    DSPessoasInteressadas.DataSet.Refresh;
               end;
          End;
              Exit;
     End;

     IF VARSQL <> NIL THEN
        FREEANDNIL(VARSQL);
  End;

end;


procedure TCAD_Imovel.DBGrid8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var key: Word;
begin
     key := VK_MENU;

     if Button = mbRight then
        DBGrid8KeyDown(Sender, Key, Shift);

end;

procedure TCAD_Imovel.DBGrid9DblClick(Sender: TObject);
begin
  inherited;
  ajustarAnuncioLibera();
end;

procedure TCAD_Imovel.Btn_IPTU_CANCELARClick(Sender: TObject);
begin
  inherited;

  if DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
     exit;

   If DM_Cadastro.Z_IPTU.Active Then
   Begin
        DM_Cadastro.Z_IPTU.Cancel;
        DM_Cadastro.Z_IPTU.CancelUpdates;
        Btn_IPTU_Pessoa1.Enabled := FALSE;
        Btn_IPTU_Pessoa2.Enabled := FALSE;
        Btn_IPTU_Novo.Enabled := TRUE;
        Btn_IPTU_EXCLUIR.Enabled := TRUE;
   End;
end;

procedure TCAD_Imovel.Btn_IPTU_GRAVARClick(Sender: TObject);
begin
  inherited;

  if DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
     exit;

   if (Length(trim(dbedit40.text)) = 0) then
   begin
        application.messagebox('Coloque o ANO do IPTU!', 'Aviso '+celulaNome, mb_ok);
        dbedit40.SetFocus;
        exit;
   end;

   if (Length(trim(dbedit16.text)) = 0) then
   begin
        application.messagebox('Coloque o VALOR do IPTU!', 'Aviso '+celulaNome, mb_ok);
        dbedit16.SetFocus;
        exit;
   end;

  If NovoRegistro = 1 Then
     If MessageDlg('Será necessário gravar as alterações'+#13+'realizadas até agora no registro principal, OK?'+#13+'Verifique os campos obrigatórios antes de prosseguir.', mtConfirmation, [mbYes, mbNo],0) = mrYes Then
        Btn_GravarClick(Sender)
     Else
         ShowMessage('O registro completo não foi salvo.');

  If NovoRegistro = 0 Then
  Begin
       Try
          DM_Cadastro.Z_IPTU.ApplyUpdates;
          DM_Cadastro.Z_IPTU.Refresh;
          DM_Cadastro.Z_IPTU.Edit;

          setLog(DM_Cadastro.Z_IPTU.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption, DM_Cadastro.Z_IPTU);

          btn_iptu_novo.enabled := true;
          btn_iptu_gravar.enabled := true;
          Btn_IPTU_EXCLUIR.Enabled := true;
          Btn_IPTU_Pessoa1.Enabled := False;
          Btn_IPTU_Pessoa2.Enabled := False;
          unMsg.INFORMA(1);
       Except
             unMsg.ERRO(10);
       End;
  End
  Else
      unMsg.ERRO(13);

end;

procedure TCAD_Imovel.DuplicarImovel();
var i, x, qtde: integer;
    id_imovel: String;
    varSQL1, varSQL2: TZQuery;
begin

     //entrada dos valores
     TRY
        qtde := strtoint(InputBox('Clone do Registro', 'Digite a quantidade de cópias a serem feitas:', '1'));
     EXCEPT
           application.MessageBox('Valor Inválido!', 'Aviso '+celulaNome, mb_ok);
           exit;
     END;

     //validação da entrada dos valores
     if qtde < 1 then
     begin
          application.MessageBox('Valor Inválido!', 'Aviso '+celulaNome, mb_ok);
          exit;
     end;

     //varSQL1 = dm_cadastro.zqaux.open valor antigo
     varSQL1 := unUtilitario.getSelect('select * from imovel where id_imovel = ' + ds.dataset.FieldByName('id_imovel').asstring);

     varSQL2 := unUtilitario.getSelect('select * from imovel where id_imovel = 0');

     for I := 1 to qtde do
     begin
          varSQL2.Append;
          principal.setID(varSQL2, 'ID_IMOVEL', 'IMOVEL');
          id_imovel := varSQL2.FieldByName('ID_IMOVEL').AsString;

          for x := 0 to varSQL1.FieldCount -1 do
          begin
               if UpperCase(varSQL1.fields[x].FieldName) <> 'ID_IMOVEL' then
                  varSQL2.Fields[x].AsString := varSQL1.fields[x].AsString;
          end;

          varSQL2.Post;
          varSQL2.ApplyUpdates;
          CopiarCaracteristicas(id_imovel, varSQL1.FieldByName('ID_IMOVEL').asstring);
          CopiarProprietarios(id_imovel, varSQL1.FieldByName('ID_IMOVEL').asstring);
     end;

     FreeAndNil(varSQL2);
     FreeAndNil(varSQL1);

     application.MessageBox('Procedimento Concluído!', 'Aviso '+celulaNome, mb_ok);

     ds.dataset.Refresh;
end;

procedure TCAD_Imovel.Btn_IPTU_Pessoa1Click(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Pessoa, self, '3');
end;

procedure TCAD_Imovel.Btn_IPTU_Pessoa2Click(Sender: TObject);
begin
  inherited;
  PRINCIPAL.CriarForm(TCAD_Pessoa, self, '4');
end;

procedure TCAD_Imovel.Tab_InformacoesHide(Sender: TObject);
begin
  inherited;

  IF DM_Cadastro.Z_Curinga_02.Active THEN
     DM_Cadastro.Z_Curinga_02.CLOSE;

  IF DM_Cadastro.Z_Curinga_01.Active THEN
     DM_Cadastro.Z_Curinga_01.CLOSE;

  IF DM_Cadastro.Z_Logradouro.Active THEN
     DM_Cadastro.Z_Logradouro.CLOSE;

If NOT Tab_Informacoes.Visible Then
Begin
  IF DM_Cadastro.Z_Imovel_Tipo.Active THEN
     DM_Cadastro.Z_Imovel_Tipo.CLOSE;

  IF DM_Cadastro.Z_Imovel_Subtipo.Active THEN
     DM_Cadastro.Z_Imovel_Subtipo.CLOSE;

  IF QUERY_Captador.Active Then
     QUERY_Captador.Close;
End;
end;

procedure TCAD_Imovel.Tab_CaracteristicaHide(Sender: TObject);
begin
  inherited;
Tab_InformacoesHide(Sender);
SQL2.Close;
SQL2.SQL.Clear;

end;

procedure TCAD_Imovel.Tab_VisitacaoHide(Sender: TObject);
begin
  inherited;
Tab_InformacoesHide(Sender);

end;

procedure TCAD_Imovel.Tab_PessoasHide(Sender: TObject);
begin
  inherited;
Tab_InformacoesHide(Sender);

end;

procedure TCAD_Imovel.Tab_MedidasValoresHide(Sender: TObject);
begin
  inherited;
Tab_InformacoesHide(Sender);
end;

procedure TCAD_Imovel.tab_ChavesShow(Sender: TObject);
Var i: integer;
varSQL: TZQuery;
begin

     chaveEmprestimoSaidaImoveis.Items.Clear;
     chaveEmprestimoEntradaImoveis.Items.Clear;
     chaveEmprestimoPessoas.Items.Clear;
     chaveEmprestimoImoveis.Items.Clear;

     chaveEmprestimoSaidaImoveis.Items.Add('IMÓVEIS A EMPRESTAR');
     chaveEmprestimoSaidaImoveis.Items.Add('selecione os imóveis na aba de pesquisa...');
     chaveEmprestimoEntradaImoveis.Items.Add('IMÓVEIS EMPRESTADOS');
     chaveEmprestimoEntradaImoveis.Items.Add('selecione uma pessoa na caixa abaixo...');
     chaveEmprestimoPessoas.Items.Add('PESSOAS');
     chaveEmprestimoPessoas.Items.Add('nenhuma pessoa atualmente possui chaves emprestadas...');
     chaveEmprestimoImoveis.Items.Add('IMÓVEIS');
     chaveEmprestimoImoveis.Items.Add('nenhum imóvel está em visitação...');

     chaveEmprestimoEntradaPessoa.Text := '';
     chaveEmprestimoEntradaDepoimento.Text := '';

     if SelecaoImovel.Count > 0 then
     Begin
          chaveEmprestimoSaidaImoveis.Items.Clear;
          
          for I := 0 to SelecaoImovel.Count - 1 do
          Begin
               varSQL := unUtilitario.getSelect(
               ' select l.tipo, l.nome as rua, i.numero, i.complemento, b.nome as bairro, valor_aluquel as aluguel from imovel i '+
               ' inner join logradouro l on l.id_logradouro = i.id_logradouro '+
               ' inner join bairro b on b.id_bairro = l.id_bairro where i.chave <> ''EMP'' and i.id_imovel = '+SelecaoImovel.Strings[I]);

              //IMOVEL 
              chaveEmprestimoSaidaImoveis.Items.Add(
              StringReplace(varSQL.FieldByName('TIPO').AsString+' '+
              varSQL.FieldByName('RUA').AsString+', '+
              varSQL.FieldByName('NUMERO').AsString+' '+
              varSQL.FieldByName('COMPLEMENTO').AsString+', '+
              varSQL.FieldByName('BAIRRO').AsString+'. R$'+
              getCurrToStr(varSQL.FieldByName('ALUGUEL').AsCurrency,false),'-','_',[rfReplaceAll])+'-'+
              SelecaoImovel.Strings[I]);
          end;

          btnChaveEmprestar.Enabled := true;
     end
     else
     Begin
          btnChaveEmprestar.Enabled := False;
     end;

     varSQL := unUtilitario.getSelect('select distinct(l.OBS) from log l '+
     ' inner join imovel i on i.id_imovel = l.id_conta and i.chave = ''EMP'' '+
     ' where l.ativo = ''SIM'' and i.ativo = ''SIM'' and l.acao = ''CHV'' and l.componente = '''' order by l.obs');

     if varSQL.RecordCount > 0 then
        chaveEmprestimoPessoas.Items.Clear;

     while not varSQL.Eof do
     Begin
          //PESSOA
          chaveEmprestimoPessoas.Items.Add(varSQL.FieldByName('OBS').AsString);
          varSQL.Next;
     end;

     varSQL.Close;

     varSQL := unUtilitario.getSelect('select l.tipo, l.nome, i.numero, i.complemento, i.id_imovel from imovel i '+
     ' inner join logradouro l on i.id_logradouro = l.id_logradouro '+
     ' where i.ativo = ''SIM'' and i.chave = ''EMP'' order by l.tipo, l.nome ');

     if varSQL.RecordCount > 0 then
        chaveEmprestimoImoveis.Items.Clear;

     while not varSQL.Eof do
     Begin
          //IMOVEL
          chaveEmprestimoImoveis.Items.Add(
          varSQL.FieldByName('TIPO').AsString+' '+
          varSQL.FieldByName('NOME').AsString+', '+
          varSQL.FieldByName('NUMERO').AsString+' '+
          varSQL.FieldByName('COMPLEMENTO').AsString+'-'+
          varSQL.FieldByName('ID_IMOVEL').AsString
          );
          varSQL.Next;
     end;

     varSQL.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_Imovel.Tab_AnuncioAnotacaoHide(Sender: TObject);
begin
  inherited;
Tab_InformacoesHide(Sender);
end;

procedure TCAD_Imovel.Btn_DireitaClick(Sender: TObject);
begin
  inherited;
  IF Tab_Informacoes.Showing THEN
     Tab_InformacoesShow(Sender)
  ELSE
      Tab_Informacoes.Show;
end;

procedure TCAD_Imovel.Btn_EsquerdaClick(Sender: TObject);
begin
  inherited;
  IF Tab_Informacoes.Showing THEN
     Tab_InformacoesShow(Sender)
  ELSE
      Tab_Informacoes.Show;
end;

procedure TCAD_Imovel.Imagem_FRENTE1DblClick(Sender: TObject);
begin
  inherited;
If DM_Cadastro.Z_Curinga_06.Active Then
Begin
  Application.CreateForm(TImagem, Imagem);

  If NOT DM_Cadastro.Z_Curinga_06.FieldByName('FOTO1').IsNull Then
     unImagem.getImagem(Imagem.Imagem ,DM_Cadastro.Z_Curinga_06.FieldByName('FOTO1').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');

  Imagem.ShowModal;
End;

end;

procedure TCAD_Imovel.Imagem_FRENTE2DblClick(Sender: TObject);
begin
  inherited;
If DM_Cadastro.Z_Curinga_06.Active Then
Begin
  Application.CreateForm(TImagem, Imagem);
  
  If NOT DM_Cadastro.Z_Curinga_06.FieldByName('FOTO2').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_06.FieldByName('FOTO2').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');

  Imagem.ShowModal;
End;
end;

procedure TCAD_Imovel.Imagem_FRENTE3DblClick(Sender: TObject);
begin
  inherited;

If DM_Cadastro.Z_Curinga_06.Active Then
Begin
  Application.CreateForm(TImagem, Imagem);
  
  If NOT DM_Cadastro.Z_Curinga_06.FieldByName('FOTO3').IsNull Then
     unImagem.getImagem(Imagem.Imagem,DM_Cadastro.Z_Curinga_06.FieldByName('FOTO3').Value)
     ELSE
     unImagem.getImagem(Imagem.Imagem,'X_Foto.jpg');

  Imagem.ShowModal;
End;
end;

procedure TCAD_Imovel.Tab_OutrosShow(Sender: TObject);
begin
  inherited;
//DBEdit5.SetFocus;
end;

procedure TCAD_Imovel.Tab_HistoricoShow(Sender: TObject);
begin
  inherited;

  if not dm_cadastro.Z_ImovelID_IMOVEL.IsNull then
    begin
         zqinteressados.Close;
         zqinteressados.ParamByName('pimovel').AsInteger := dm_cadastro.Z_Imovel.FieldByName('id_imovel').AsInteger;
         zqinteressados.Open;

         GroupBox13.Caption := 'Empréstimo de Chaves (Qtde: '+ IntToStr(zqinteressados.RecordCount)+' )';
    end;

end;


procedure TCAD_Imovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     inherited;
     CAD_Usuario := nil;

     //Fechar := 1;
     //PRINCIPAL.DestroiForm(FormCriatura, FormCriador, FormCriadorConteudo, Fechar);

     DM_Cadastro.Z_Imovel.Close;
     DM_Cadastro.Z_Logradouro.Close;
     //DM_Cadastro.Z_Curinga_06.Close;  COMPONENTES USADOS POR OUTROS FORMULÁRIOS, COMO O DE CONTRATOS
     //DM_Cadastro.Z_Curinga_01.Close;
     //DM_Cadastro.Z_Curinga_02.Close;
     DM_Cadastro.Z_Curinga_03.Close;
     DM_CADASTRO.ZqAux.Close;
     DM_Cadastro.Z_Imovel_Tipo.Close;
     DM_Cadastro.Z_Imovel_Subtipo.Close;
     //DM_Cadastro.Z_Curinga_04.Close;
     //DM_Cadastro.Z_Curinga_05.Close;

     FreeAndNil(Query);
     FreeAndNil(DSC);
     FreeAndNil(Query_Captador);
     FreeAndNil(DSC_Captador);
     FreeAndNil(SQL);
     FreeAndNil(SQL2);
     FreeAndNil(DataSource);
     FreeAndNil(SelecaoImovel);

     //Action := caFree;

     //FreeAndNil(Cad_Imovel);

     //inherited;

end;

procedure TCAD_Imovel.Tab_AspectosGeraisHide(Sender: TObject);
begin
  inherited;
  Tab_InformacoesHide(Sender);
end;

procedure TCAD_Imovel.Tab_OutrosHide(Sender: TObject);
begin
  inherited;
Tab_InformacoesHide(Sender);
end;

procedure TCAD_Imovel.Tab_HistoricoExit(Sender: TObject);
begin
  inherited;
  zqinteressados.close;
end;

procedure TCAD_Imovel.Tab_HistoricoHide(Sender: TObject);
begin
  inherited;
  Tab_InformacoesHide(Sender);
end;

procedure TCAD_Imovel.Tab_PesquisaHide(Sender: TObject);
begin
  inherited;
  Tab_InformacoesHide(Sender);
end;

procedure TCAD_Imovel.Tab_PesquisaShow(Sender: TObject);
Var varSQL: TZQuery;
begin
  inherited;
  varSQL := unUtilitario.getSelect('SELECT distinct(STATUS) FROM imovel WHERE ATIVO <> ''XXX'' order by status');

  comboStatus.Items.Clear;
  comboStatus.Items.Add('');

  while not varSQL.eof do
  Begin
       comboStatus.Items.Add(varSQL.Fields[0].AsString);
       varSQL.Next;
  end;
  //varSQL.Close;
  
  varSQL := unUtilitario.getSelect('select itip.nome || ''/'' || isub.nome ||''-''||isub.id_imovel_subtipo from imovel_subtipo isub left join imovel_tipo itip on itip.id_imovel_tipo = isub.id_imovel_tipo  where isub.padrao <> ''XXX'' and itip.ativo = ''SIM'' order by itip.nome, isub.nome');

  comboTipo.Items.Clear;
  comboTipo.Items.Add('');

  while not varSQL.eof do
  Begin
       comboTipo.Items.Add(varSQL.Fields[0].AsString);
       varSQL.Next;
  end;
  //varSQL.Close;

  FreeAndNil(varSQL);
end;

procedure TCAD_Imovel.Btn_IPTU_EXCLUIRClick(Sender: TObject);
begin

     if DM_Cadastro.Z_ImovelID_IMOVEL.IsNull then
        exit;

     If MessageDlg('Deseja excluir este ano do IPTU?',mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
     Begin
          Try
             setLog(DM_Cadastro.Z_IPTU.Fields[0].AsString, 'EXCLUSÃO', Self.Caption, DM_Cadastro.Z_IPTU);
             DM_Cadastro.Z_IPTU.Delete;
             DM_Cadastro.Z_IPTU.ApplyUpdates;
          Except
                DM_Cadastro.Z_IPTU.Cancel;
                DM_Cadastro.Z_IPTU.CancelUpdates;
                ShowMessage('Problemas ao Excluir o registro de IPTU!');
          End;
     End;

end;

procedure TCAD_Imovel.Btn_ImprimirClick(Sender: TObject);
Var
   Escolha, nomeArquivo, texto: String;
   varSQL, varSQL2: TZQuery;
   ar: array of string;
   html: AnsiString;
   i, x: integer;
   Registros: TStringList;
   Arquivo: TextFile;
begin
     // inherited;
     //Impressão da consulta

     If SelecaoImovel.Count = 0 Then
     Begin
          unUtilitario.setMensagem('Primeiramente, selecione os imóveis. (Tecla ALT)','erro');
          exit;
     end;

     if DM_CADASTRO.Z_Imovel.FieldByName('id_imovel').IsNull then
     begin
          application.MessageBox('Não existe nenhum registro selecionado!', 'Aviso '+celulaNome,mb_ok);
          exit;
     end;

     Escolha := InputBox('Escolha do tipo de relatório','1 - Completo COM FOTO.'+#13+'14 - Completo SEM FOTO.'#13+'2 - Resumido'+#13+'3 - Resumido (c/ características) '+#13+'4 - Super Resumido' + #13 +'11 - Super Resumido (Controle)'+ #13+ '12 - Imóveis por Bairro' + #13+ '13 - Anuncio de Imóveis' + #13 + ' ----------- ' + #13 + '5 - Vistoria'+#13+'6 - Documentos do Word'+#13+'7 - Fotos dos Imóveis'+ #13 + ' ----------- ' + #13 +'8 - Relação Relógio de Luz'+#13+'9 - Relação Relógio de Água'+#13+'10 - Relação de IPTU`s (Controle)' , '1');

     if escolha = '8' then
     Begin
          nomeArquivo := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_Relatorio_Simples_Luz.txt';
          AssignFile(Arquivo, nomeArquivo);
          Rewrite(Arquivo);

          //Gera Relatório
          Writeln(Arquivo,'RELATÓRIO SIMPLIFICADO RELÓGIO DE LUZ. '+DateTimeToStr(Date()+Time()));
          Writeln(Arquivo,' ');
          Writeln(Arquivo,' ');

          //Dados da Pessoa
          varSQL :=  getSelect('select i.complemento,i.num_luz, i.numero, l.*, p.nome as locador, pes.nome as locatario, c.nome as cidade, b.nome as bairro, u.sigla as uf from imovel i '+
          ' inner join logradouro l on i.id_logradouro = l.id_logradouro '+
          ' inner join cidade c on l.id_cidade = c.id_cidade '+
          ' inner join bairro b on l.id_bairro = b.id_bairro '+
          ' inner join uf u on u.id_sigla = l.id_sigla '+
          ' inner join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' '+
          ' inner join pessoa p on p.id_pessoa = pi.id_pessoa '+
          ' inner join contrato con on con.id_imovel = i.id_imovel and con.ativo = ''SIM'' '+
          ' inner join pessoa_contrato pc on pc.id_contrato = con.id_contrato and (pc.tipo like ''LOCAT_RIO'' or pc.tipo like ''INQUILINO'') '+
          ' inner join pessoa pes on pes.id_pessoa = pc.id_pessoa '+
          ' where i.num_luz is not null and i.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') '+
          ' order by pes.nome');

          while not varSQL.Eof do
          Begin
               Writeln(Arquivo,'------');
               Writeln(Arquivo,#9+varSQL.FieldByName('NUM_LUZ').AsString);
               Writeln(Arquivo,#9+'IMÓVEL: '+varSQL.FieldByName('COMPLEMENTO').AsString+' '+varSQL.FieldByName('TIPO').AsString+' '+varSQL.FieldByName('NOME').AsString+' '+varSQL.FieldByName('NUMERO').AsString+', '+varSQL.FieldByName('BAIRRO').AsString+' '+varSQL.FieldByName('CIDADE').AsString+'-'+varSQL.FieldByName('UF').AsString+' '+varSQL.FieldByName('CEP').AsString);
               Writeln(Arquivo,#9+'INQUILINO: '+varSQL.FieldByName('LOCATARIO').AsString);
               Writeln(Arquivo,#9+'PROPRIETÁRIO: '+varSQL.FieldByName('LOCADOR').AsString);

               Writeln(Arquivo,' ');
               varSQL.Next;
          end;

          CloseFile(Arquivo);

          WinExec(pchar('notepad "'+nomeArquivo+'"'), SW_SHOW);
     end;


     if escolha = '9' then
     Begin
          nomeArquivo := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_Relatorio_Simples_Agua.txt';
          AssignFile(Arquivo, nomeArquivo);
          Rewrite(Arquivo);

          //Gera Relatório
          Writeln(Arquivo,'RELATÓRIO SIMPLIFICADO RELÓGIO DE ÁGUA. '+DateTimeToStr(Date()+Time()));
          Writeln(Arquivo,' ');
          Writeln(Arquivo,' ');

          //Dados da Pessoa
          varSQL :=  getSelect('select i.complemento,i.NUM_AGUA, i.numero, l.*, p.nome as locador, pes.nome as locatario, c.nome as cidade, b.nome as bairro, u.sigla as uf from imovel i '+
          ' inner join logradouro l on i.id_logradouro = l.id_logradouro '+
          ' inner join cidade c on l.id_cidade = c.id_cidade '+
          ' inner join bairro b on l.id_bairro = b.id_bairro '+
          ' inner join uf u on u.id_sigla = l.id_sigla '+
          ' inner join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' '+
          ' inner join pessoa p on p.id_pessoa = pi.id_pessoa '+
          ' inner join contrato con on con.id_imovel = i.id_imovel and con.ativo = ''SIM'' '+
          ' inner join pessoa_contrato pc on pc.id_contrato = con.id_contrato and (pc.tipo like ''LOCAT_RIO'' or pc.tipo like ''INQUILINO'') '+
          ' inner join pessoa pes on pes.id_pessoa = pc.id_pessoa '+
          ' where i.NUM_AGUA is not null and i.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') '+
          ' order by pes.nome');

          while not varSQL.Eof do
          Begin
               Writeln(Arquivo,'------');
               Writeln(Arquivo,#9+varSQL.FieldByName('NUM_AGUA').AsString);
               Writeln(Arquivo,#9+'IMÓVEL: '+varSQL.FieldByName('COMPLEMENTO').AsString+' '+varSQL.FieldByName('TIPO').AsString+' '+varSQL.FieldByName('NOME').AsString+' '+varSQL.FieldByName('NUMERO').AsString+', '+varSQL.FieldByName('BAIRRO').AsString+' '+varSQL.FieldByName('CIDADE').AsString+'-'+varSQL.FieldByName('UF').AsString+' '+varSQL.FieldByName('CEP').AsString);
               Writeln(Arquivo,#9+'INQUILINO: '+varSQL.FieldByName('LOCATARIO').AsString);
               Writeln(Arquivo,#9+'PROPRIETÁRIO: '+varSQL.FieldByName('LOCADOR').AsString);

               Writeln(Arquivo,' ');
               varSQL.Next;
          end;

          CloseFile(Arquivo);

          WinExec(pchar('notepad "'+nomeArquivo+'"'), SW_SHOW);
     end;


     if escolha = '10' then
     Begin
          nomeArquivo := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_Relatorio_Simples_IPTU.txt';
          AssignFile(Arquivo, nomeArquivo);
          Rewrite(Arquivo);

          //Gera Relatório
          Writeln(Arquivo,'RELATÓRIO SIMPLIFICADO DE IPTU (CONTROLE CADASTRADO NO FORM DE IMÓVEIS). '+DateTimeToStr(Date()+Time()));
          Writeln(Arquivo,' ');
          Writeln(Arquivo,' ');

          //Dados da Pessoa
          varSQL :=  getSelect('select i.complemento,ii.num_controle, ii.ano, ii.valor_total_iptu, i.numero, l.*, c.nome as cidade, b.nome as bairro, u.sigla as uf from imovel i '+
          ' inner join logradouro l on i.id_logradouro = l.id_logradouro '+
          ' inner join cidade c on l.id_cidade = c.id_cidade '+
          ' inner join bairro b on l.id_bairro = b.id_bairro '+
          ' inner join uf u on u.id_sigla = l.id_sigla '+
          ' left join imovel_iptu ii on ii.id_imovel = i.id_imovel '+
          ' where i.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') '+
          ' order by l.nome, I.numero ');

          while not varSQL.Eof do
          Begin
               if varSQL.FieldByName('ano').IsNull then
                  texto := '0000'
               else
                   texto := varSQL.FieldByName('ano').AsString;

               Writeln(Arquivo,'------');
               Writeln(Arquivo,#9+'#'+varSQL.FieldByName('num_controle').AsString);
               Writeln(Arquivo,#9+'IMÓVEL: '+varSQL.FieldByName('NOME').AsString+' '+varSQL.FieldByName('NUMERO').AsString+' '+varSQL.FieldByName('COMPLEMENTO').AsString+', '+varSQL.FieldByName('BAIRRO').AsString+' '+varSQL.FieldByName('CIDADE').AsString+'-'+varSQL.FieldByName('UF').AsString);
               Writeln(Arquivo,#9+'IPTU VALOR e ANO: '+ unUtilitario.getCurrToStr(varSQL.FieldByName('valor_total_iptu').AsCurrency, true)+' / '+texto+'  :  NOVOS VALORES: _______________ / _______________');
               varSQL.Next;
          end;

          CloseFile(Arquivo);

          WinExec(pchar('notepad "'+nomeArquivo+'"'), SW_SHOW);
     end;



        if Escolha = '1' Then
        begin

             DM_REL.RV_IMPRESSAO.Close;
             DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_IMOVEL_COMPLETO.rav';

             principal.setLogo(DM_REL.RV_IMPRESSAO);
             
             DM_REL.RV_IMPRESSAO.Open;

             //PESSOAS
             DM_REL.zquery1.close;
             DM_REL.zquery1.sql.clear;
             DM_REL.zquery1.SQL.Add('select '+
' pi.id_pessoa, '+
' pe.nome,'+
' pe.email, '+
' COALESCE(pe.email,pe.yahoo, pe.msn) as email, '+
' pt.nome as TIPO, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 1) as TELEFONE, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 3) as CELULAR, '+
' (select first 1 skip 0 lg.nome || '', '' || ed.numero || '' - '' || ba.nome || '' - '' || cid.nome || '' ( '' || u.sigla || '' ) '' '+
' from endereco ed '+
' left join pessoa pe on pe.id_pessoa = ed.id_pessoa '+
' left join logradouro lg on lg.id_logradouro = ed.id_logradouro '+
' left join bairro ba on ba.id_bairro = lg.id_bairro '+
' left join cidade cid on cid.id_cidade = lg.id_cidade '+
' left join uf u on u.id_sigla = lg.id_sigla '+
' where PE.id_pessoa = pi.id_pessoa) as ENDERECO, '+
' pi.id_imovel '+
' from pessoa_imovel pi '+
' left join imovel im on im.id_imovel = pi.id_imovel '+
' left  join pessoa pe on pe.id_pessoa = pi.id_pessoa '+
' left join pessoa_tipo pt on pt.id_pessoa_tipo = pi.id_pessoa_tipo '+
' where pi.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by pi.id_imovel');

             DM_REL.zquery1.Active;

             //IMOVEL
             DM_REL.ZQUERY2.Close;
             DM_REL.zquery2.SQL.Clear;
             DM_REL.zquery2.SQL.Add('select '+
             ' (select first 1 ic.foto1 from imovel_caracteristica ic where ic.id_imovel = im.id_imovel and ic.id_caracteristica = 60) as foto1, '+
             ' (select first 1 ic.foto2 from imovel_caracteristica ic where ic.id_imovel = im.id_imovel and ic.id_caracteristica = 60) as foto2, '+
             ' (select first 1 ic.foto3 from imovel_caracteristica ic where ic.id_imovel = im.id_imovel and ic.id_caracteristica = 60) as foto3, '+
             ' im.id_imovel, ''('' || (select nome from imovel_tipo where id_imovel_tipo = im.id_imovel_tipo) || '' / '' || (select nome from imovel_subtipo where id_imovel_subtipo = im.id_imovel_subtipo) || '') '' || LG.TIPO as TIPO, '+
             ' lg.nome as ENDERECO, im.numero, ba.nome AS BAIRRO, cid.nome AS CIDADE, u.sigla, im.complemento, im.valor_venda, im.valor_aluquel, im.area_l, im.area_c, '+
             'im.area_construida from imovel im left join logradouro lg on lg.id_logradouro = im.id_logradouro left join bairro ba on ba.id_bairro = lg.id_bairro '+
             'left join cidade cid on cid.id_cidade = lg.id_cidade left join uf u on u.id_sigla = lg.id_sigla where id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by ba.nome, lg.nome');
             DM_REL.zquery2.sql.text;

             DM_REL.zquery2.open;

             while not DM_REL.zquery2.Eof do
             Begin
                  if DM_REL.zquery2.FieldByName('FOTO1').AsString <> 'X_Foto.jpg' then
                     PRINCIPAL.ConvertJPG_BMP(DM_REL.zquery2.FieldByName('FOTO1').AsString);

                  if DM_REL.zquery2.FieldByName('FOTO2').AsString <> 'X_Foto.jpg' then
                     PRINCIPAL.ConvertJPG_BMP(DM_REL.zquery2.FieldByName('FOTO2').AsString);

                  if DM_REL.zquery2.FieldByName('FOTO3').AsString <> 'X_Foto.jpg' then
                     PRINCIPAL.ConvertJPG_BMP(DM_REL.zquery2.FieldByName('FOTO3').AsString);

                  DM_REL.zquery2.Next;
             end;

             //DM_REL.RV_IMPRESSAO.SetParam('venda', FormatFloat('#,##0.00', StrToFloat(dm_rel.zquery2.FieldByName('valor_venda').AsString)));
             //DM_REL.RV_IMPRESSAO.SetParam('aluguel', FormatFloat('#,##0.00', StrToFloat(dm_rel.zquery2.FieldByName('valor_aluquel').AsString)));

             //CARACTERÍSTICAS
             DM_REL.ZQUERY3.Close;
             DM_REL.zquery3.SQL.Clear;
             DM_REL.zquery3.SQL.Add('select ic.tipo, ic.quantidade, ca.nome, ic.obs, ic.id_imovel from imovel_caracteristica ic left join caracteristicas ca on ca.id_caracteristicas = ic.id_caracteristica where ca.nome <> ''FACHADA'' and ic.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by ic.id_imovel,ic.tipo,ca.nome ');
             DM_REL.zquery3.SQL.Text;
             DM_REL.zquery3.open;

             //ANÚNCIO
             dm_rel.ZQUERY4.Close;
             dm_rel.zquery4.SQL.Clear;
             //dm_rel.zquery4.SQL.Add('SELECT first 1 skip 0 (select first 1 skip 0 (descricao) from anuncio where id_Imovel = ' + DM_Cadastro.Z_Imovel.fieldbyname('id_imovel').asstring + ') as DESCRICAO1, (select first 1 skip 1 (descricao) from anuncio where id_Imovel = ' + DM_Cadastro.Z_Imovel.fieldbyname('id_imovel').asstring + ') as DESCRICAO2 from  anuncio where id_imovel = ' + DM_Cadastro.Z_Imovel.fieldbyname('id_imovel').asstring + ' ');
             dm_rel.zquery4.SQL.Add('select descricao, meio, obs, id_imovel from anuncio where ativo = ''SIM'' and id_Imovel in ('+alinhaStringlist(SelecaoImovel)+')');
             DM_REL.zquery4.SQL.Text;
             dm_rel.zquery4.Active;

             //PESSOAS OUTRAS!
             dm_rel.ZQUERY5.Close;
             dm_rel.ZQUERY5.SQL.Clear;
             DM_REL.zquery5.SQL.Add('select '+
' pi.id_pessoa, '+
' pe.nome,'+
' COALESCE(pe.email,pe.yahoo, pe.msn) as email,'+
' pi.tipo as TIPO, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 1) as TELEFONE, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 3) as CELULAR, '+
' (select first 1 skip 0 lg.tipo || '' '' || lg.nome || '', '' || ed.numero || '' - '' || ba.nome || '' - '' || cid.nome || '' ( '' || u.sigla || '' ) '' '+
' from endereco ed '+
' left join pessoa pe on pe.id_pessoa = ed.id_pessoa '+
' left join logradouro lg on lg.id_logradouro = ed.id_logradouro '+
' left join bairro ba on ba.id_bairro = lg.id_bairro '+
' left join cidade cid on cid.id_cidade = lg.id_cidade '+
' left join uf u on u.id_sigla = lg.id_sigla '+
' where PE.id_pessoa = pi.id_pessoa) as ENDERECO, '+
' pi.id_imovel, '+
' PI.id_contrato '+
' from pessoa_contrato pi '+
' left join imovel im on im.id_imovel = pi.id_imovel '+
' left  join pessoa pe on pe.id_pessoa = pi.id_pessoa '+
' where pi.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by pi.id_imovel');
             dm_rel.ZQUERY5.Open;

             DM_REL.RV_IMPRESSAO.SetParam('caminhoIMG', ExtractFilePath(ParamStr(0))+'\REL\img\');

             DM_REL.RV_IMPRESSAO.Execute;

             dm_rel.ZQUERY1.Close;
             dm_rel.ZQUERY2.Close;
             dm_rel.ZQUERY3.Close;
             dm_rel.ZQUERY4.Close;
             dm_rel.ZQUERY5.Close;
        end;


        if Escolha = '14' Then
        begin

             DM_REL.RV_IMPRESSAO.Close;
             DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_IMOVEL_COMPLETO.rav';

             principal.setLogo(DM_REL.RV_IMPRESSAO);
             
             DM_REL.RV_IMPRESSAO.Open;

             //PESSOAS
             DM_REL.zquery1.close;
             DM_REL.zquery1.sql.clear;
             DM_REL.zquery1.SQL.Add('select '+
' pi.id_pessoa, '+
' pe.nome,'+
' pe.email, '+
' COALESCE(pe.email,pe.yahoo, pe.msn) as email, '+
' pt.nome as TIPO, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 1) as TELEFONE, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 3) as CELULAR, '+
' (select first 1 skip 0 lg.nome || '', '' || ed.numero || '' - '' || ba.nome || '' - '' || cid.nome || '' ( '' || u.sigla || '' ) '' '+
' from endereco ed '+
' left join pessoa pe on pe.id_pessoa = ed.id_pessoa '+
' left join logradouro lg on lg.id_logradouro = ed.id_logradouro '+
' left join bairro ba on ba.id_bairro = lg.id_bairro '+
' left join cidade cid on cid.id_cidade = lg.id_cidade '+
' left join uf u on u.id_sigla = lg.id_sigla '+
' where PE.id_pessoa = pi.id_pessoa) as ENDERECO, '+
' pi.id_imovel '+
' from pessoa_imovel pi '+
' left join imovel im on im.id_imovel = pi.id_imovel '+
' left  join pessoa pe on pe.id_pessoa = pi.id_pessoa '+
' left join pessoa_tipo pt on pt.id_pessoa_tipo = pi.id_pessoa_tipo '+
' where pi.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by pi.id_imovel');

             DM_REL.zquery1.Active;

             //IMOVEL
             DM_REL.ZQUERY2.Close;
             DM_REL.zquery2.SQL.Clear;
             DM_REL.zquery2.SQL.Add('select '+
             ' '''' as foto1, '+
             ' '''' as foto2, '+
             ' '''' as foto3, '+
             ' im.id_imovel, ''('' || (select nome from imovel_tipo where id_imovel_tipo = im.id_imovel_tipo) || '' / '' || (select nome from imovel_subtipo where id_imovel_subtipo = im.id_imovel_subtipo) || '') '' || LG.TIPO as TIPO, '+
             ' lg.nome as ENDERECO, im.numero, ba.nome AS BAIRRO, cid.nome AS CIDADE, u.sigla, im.complemento, im.valor_venda, im.valor_aluquel, im.area_l, im.area_c, '+
             'im.area_construida from imovel im left join logradouro lg on lg.id_logradouro = im.id_logradouro left join bairro ba on ba.id_bairro = lg.id_bairro '+
             'left join cidade cid on cid.id_cidade = lg.id_cidade left join uf u on u.id_sigla = lg.id_sigla where id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by ba.nome, lg.nome');
             DM_REL.zquery2.open;

             //CARACTERÍSTICAS
             DM_REL.ZQUERY3.Close;
             DM_REL.zquery3.SQL.Clear;
             DM_REL.zquery3.SQL.Add('select ic.tipo, ic.quantidade, ca.nome, ic.obs, ic.id_imovel from imovel_caracteristica ic left join caracteristicas ca on ca.id_caracteristicas = ic.id_caracteristica where ca.nome <> ''FACHADA'' and ic.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by ic.id_imovel,ic.tipo,ca.nome ');
             DM_REL.zquery3.SQL.Text;
             DM_REL.zquery3.open;

             //ANÚNCIO
             dm_rel.ZQUERY4.Close;
             dm_rel.zquery4.SQL.Clear;
             //dm_rel.zquery4.SQL.Add('SELECT first 1 skip 0 (select first 1 skip 0 (descricao) from anuncio where id_Imovel = ' + DM_Cadastro.Z_Imovel.fieldbyname('id_imovel').asstring + ') as DESCRICAO1, (select first 1 skip 1 (descricao) from anuncio where id_Imovel = ' + DM_Cadastro.Z_Imovel.fieldbyname('id_imovel').asstring + ') as DESCRICAO2 from  anuncio where id_imovel = ' + DM_Cadastro.Z_Imovel.fieldbyname('id_imovel').asstring + ' ');
             dm_rel.zquery4.SQL.Add('select descricao, meio, obs, id_imovel from anuncio where ativo = ''SIM'' and id_Imovel in ('+alinhaStringlist(SelecaoImovel)+')');
             DM_REL.zquery4.SQL.Text;
             dm_rel.zquery4.Active;

             //PESSOAS OUTRAS!
             dm_rel.ZQUERY5.Close;
             dm_rel.ZQUERY5.SQL.Clear;
             DM_REL.zquery5.SQL.Add('select '+
' pi.id_pessoa, '+
' pe.nome,'+
' COALESCE(pe.email,pe.yahoo, pe.msn) as email,'+
' pi.tipo as TIPO, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 1) as TELEFONE, '+
' (select first 1 skip 0 te.numero from TELEFONE te inner join pessoa on te.id_pessoa = pe.id_pessoa where te.id_endereco_tipo = 3) as CELULAR, '+
' (select first 1 skip 0 lg.tipo || '' '' || lg.nome || '', '' || ed.numero || '' - '' || ba.nome || '' - '' || cid.nome || '' ( '' || u.sigla || '' ) '' '+
' from endereco ed '+
' left join pessoa pe on pe.id_pessoa = ed.id_pessoa '+
' left join logradouro lg on lg.id_logradouro = ed.id_logradouro '+
' left join bairro ba on ba.id_bairro = lg.id_bairro '+
' left join cidade cid on cid.id_cidade = lg.id_cidade '+
' left join uf u on u.id_sigla = lg.id_sigla '+
' where PE.id_pessoa = pi.id_pessoa) as ENDERECO, '+
' pi.id_imovel, '+
' PI.id_contrato '+
' from pessoa_contrato pi '+
' left join imovel im on im.id_imovel = pi.id_imovel '+
' left  join pessoa pe on pe.id_pessoa = pi.id_pessoa '+
' where pi.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') order by pi.id_imovel');
             dm_rel.ZQUERY5.Open;

             DM_REL.RV_IMPRESSAO.SetParam('caminhoIMG', '');

             DM_REL.RV_IMPRESSAO.Execute;

             dm_rel.ZQUERY1.Close;
             dm_rel.ZQUERY2.Close;
             dm_rel.ZQUERY3.Close;
             dm_rel.ZQUERY4.Close;
             dm_rel.ZQUERY5.Close;
        end;



        if Escolha = '2' Then
          Begin
               Pesquisar(alinhaStringlist(SelecaoImovel));
               DM_REL.RV_IMPRESSAO.Close;
               DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_IMOVEL.rav';
               principal.setLogo(dm_rel.RV_IMPRESSAO);
               DM_REL.RV_IMPRESSAO.Open;

               DM_REL.RV_IMPRESSAO.Execute;

               DM_REL.ZQUERY1.Close;
          End;

        if Escolha = '3' Then
        Begin
             varSQL := unUtilitario.getSelect('select ic.id_imovel, c.nome, ic.quantidade, ic.obs FROM imovel_caracteristica IC inner join caracteristicas c on c.id_caracteristicas = ic.ID_CARACTERISTICA WHERE IC.id_imovel IN ('+alinhaStringlist(SelecaoImovel)+') order by IC.id_imovel');

             if varSQL.RecordCount = 0 then
             Begin
                  unUtilitario.setMensagem('Não foi encontrado nenhuma característica para os imóveis selecionados.','erro');
                  exit;
             end;

             DM_REL.RV_Query.DataSet := varSQL;

             Pesquisar(alinhaStringlist(SelecaoImovel));
             DM_REL.RV_IMOVEL.DataSet := TZQuery(DS.DataSet);

             DM_REL.RV_IMPRESSAO.Close;
             DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_IMOVEL_C_CARACTERISTICAS.rav';
             principal.setLogo(dm_rel.RV_IMPRESSAO);
             DM_REL.RV_IMPRESSAO.SetParam('empresa',getConf('EMPRESA_FANTASIA'));
             DM_REL.RV_IMPRESSAO.Open;

             DM_REL.RV_IMPRESSAO.Execute;

             DM_REL.ZQUERY1.Close;
             DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;
             varSQL.Close;
             FreeAndNil(varSQL);
        End;

        if Escolha = '4' Then
          Begin
               Pesquisar(alinhaStringlist(SelecaoImovel));
               //ver erro que está dando aqui?
               DM_REL.RV_IMPRESSAO.Close;
               DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_IMOVEL_SUPERRESUMO.rav';
               principal.setLogo(dm_rel.RV_IMPRESSAO);
               DM_REL.RV_IMPRESSAO.Open;

               DM_REL.ZQUERY1.SQL.Clear;
               //DM_REL.ZQUERY1.SQL.ADD('SELECT id_imovel from imovel');
               DM_REL.ZQUERY1.SQL.Add('select IC.quantidade, C.nome, IC.obs, IC.id_imovel from imovel_caracteristica IC left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica');

               DM_REL.ZQUERY1.Active;

               DM_REL.RV_IMPRESSAO.Execute;

               DM_REL.ZQUERY1.Close;
          End;

        if Escolha = '11' Then
          Begin
               Pesquisar(alinhaStringlist(SelecaoImovel));
               DM_REL.RV_IMPRESSAO.Close;
               DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_IMOVEL_SUPERRESUMO_CADASTRO.rav';
               PRINCIPAL.setLogo(dm_rel.RV_IMPRESSAO);
               DM_REL.RV_IMPRESSAO.Open;

               DM_REL.ZQUERY1.SQL.Clear;
               DM_REL.ZQUERY1.SQL.Add('select IC.quantidade, C.nome, IC.obs, IC.id_imovel from imovel_caracteristica IC left join caracteristicas C on C.id_caracteristicas = IC.id_caracteristica');
               DM_REL.ZQUERY1.Active;

               DM_REL.RV_IMPRESSAO.Execute;

               DM_REL.ZQUERY1.Close;
          End;
//------------------------------------------------------------------------------
//---Teste para criação relatório bairro x imóveis---
       if Escolha = '12' then begin

          DM_RELATORIOS.Rave.Close;
          DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_BAIRRO_IMOVEL.rav';
          principal.setLogo(DM_RELATORIOS.Rave);
          DM_RELATORIOS.Rave.Open;

          DM_RELATORIOS.ZQuery_Bairro_Imovel.SQL.Clear;
          DM_RELATORIOS.ZQuery_Bairro_Imovel.SQL.Add('select imov.id_imovel, imov.id_logradouro, ' +
          'imovetip.nome, logra.tipo as Tipo, logra.nome as NomeRua, logra.cep, imov.numero as Numero, imov.complemento, ba.id_bairro, ' +
          'ba.nome as NomeBairro, cid.nome as NomeCidade, u.nome as Estado, imov.ocupado, imovesubtip.nome as SubTipo ' +
          'from imovel imov ' +
          'inner join imovel_tipo imovetip on imovetip.id_imovel_tipo = imov.id_imovel_tipo ' +
          'inner join imovel_subtipo imovesubtip on imovesubtip.id_imovel_subtipo = imov.id_imovel_subtipo ' +
          'inner join logradouro logra on logra.id_logradouro = imov.id_logradouro ' +
          'inner join bairro ba on ba.id_bairro = logra.id_bairro ' +
          'inner join cidade cid on cid.id_cidade = logra.id_cidade ' +
          'inner join uf u on u.id_sigla = logra.id_sigla ' +
          'where imov.id_imovel in ('+alinhaStringlist(SelecaoImovel)+')' +
          'and imov.ocupado = ''Nao''  '+
          'order by ba.nome, logra.nome, imov.numero ');

          DM_RELATORIOS.ZQuery_Bairro_Imovel.Active;
          DM_RELATORIOS.Rave.Execute;

          DM_RELATORIOS.ZQuery_Bairro_Imovel.Close;
       end;
//------------------------------------------------------------------------------
//---Teste para criação relatório anuncio de imóveis---
       if Escolha = '13' then begin

          DM_RELATORIOS.Rave.Close;
          DM_RELATORIOS.Rave.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_ANUNCIO_IMOVEL.rav';
          principal.setLogo(DM_RELATORIOS.Rave);
          DM_RELATORIOS.Rave.Open;

          DM_RELATORIOS.ZQuery_Anuncio_Imovel.Close;
          DM_RELATORIOS.ZQuery_Anuncio_Imovel.SQL.Clear;
          DM_RELATORIOS.ZQuery_Anuncio_Imovel.SQL.Add('select '+
          '(select first 1 ic.foto1 from imovel_caracteristica ic where ic.id_imovel = imov.id_imovel and ic.id_caracteristica = 60) as foto1, '+
          'imov.id_imovel, imov.id_logradouro, imov.dormitorios, ' +
          'imovetip.nome, logra.tipo as Tipo, logra.nome as NomeRua, logra.cep, imov.numero as Numero, imov.complemento, ba.id_bairro, ' +
          'ba.nome as NomeBairro, cid.nome as NomeCidade, u.nome as Estado, imov.ocupado, imovesubtip.nome as SubTipo, anunc.descricao ' +
          'from imovel imov ' +
          'inner join imovel_tipo imovetip on imovetip.id_imovel_tipo = imov.id_imovel_tipo ' +
          'inner join imovel_subtipo imovesubtip on imovesubtip.id_imovel_subtipo = imov.id_imovel_subtipo ' +
          'inner join anuncio anunc on anunc.id_imovel = imov.id_imovel ' +
          'inner join logradouro logra on logra.id_logradouro = imov.id_logradouro ' +
          'inner join bairro ba on ba.id_bairro = logra.id_bairro ' +
          'inner join cidade cid on cid.id_cidade = logra.id_cidade ' +
          'inner join uf u on u.id_sigla = logra.id_sigla ' +
          'where imov.id_imovel in ('+alinhaStringlist(SelecaoImovel)+') ' +
          'and imov.ocupado = ''Nao''  ' +
          'and anunc.meio = ''INTERNET'' ' +
          'and anunc.ativo = ''SIM'' ' +
          'order by imovetip.nome, imov.dormitorios ');

          DM_RELATORIOS.ZQuery_Anuncio_Imovel.Open;

             while not DM_RELATORIOS.ZQuery_Anuncio_Imovel.Eof do
             begin
                if DM_RELATORIOS.ZQuery_Anuncio_Imovel.FieldByName('FOTO1').AsString <> 'X_Foto.jpg' then
                   PRINCIPAL.ConvertJPG_BMP(DM_RELATORIOS.ZQuery_Anuncio_Imovel.FieldByName('FOTO1').AsString);

                   DM_RELATORIOS.ZQuery_Anuncio_Imovel.Next;
             end;

             DM_RELATORIOS.Rave.SetParam('caminhoIMG', ExtractFilePath(ParamStr(0))+'\REL\img\');

             DM_RELATORIOS.Rave.Execute;

             DM_RELATORIOS.ZQuery_Anuncio_Imovel.Close;
       end;
//------------------------------------------------------------------------------
        if escolha = '5' then
          begin
            if DM_CADASTRO.Z_Imovel.FieldByName('id_imovel').IsNull then
              begin
                application.MessageBox('Não existe nenhum registro selecionado!', 'Aviso '+celulaNome,mb_ok);
                exit;
              end;
              // caracteristicas do imóvel
              dm_rel.ZQUERY1.Close;
              DM_REL.ZQUERY1.SQL.Clear;
              DM_REL.ZQUERY1.SQL.ADD('select ic.*, c.nome from imovel_caracteristica ic left join caracteristicas c on c.id_caracteristicas = ic.id_caracteristica and ic.tipo = ''VISTORIA'' where ic.id_imovel = ' + ds.DataSet.FieldByName('id_imovel').AsString);
              DM_REL.ZQUERY1.Active;

              // dados do imóvel
              dm_rel.ZQUERY2.close;
              dm_rel.zquery2.sql.Clear;
              dm_rel.ZQUERY2.SQL.Add('select im.id_imovel, im.status, imt.nome as tipo, ims.nome as subtipo, (lg.tipo || '' '' || lg.nome) as rua, im.numero, lg.cep, '+'cid.nome as cidade, estado.sigla, br.nome as bairro '+' from imovel im left join imovel_subtipo ims on ims.id_imovel_subtipo = im.id_imovel_subtipo '+' left join imovel_tipo imt on imt.id_imovel_tipo = im.id_imovel_tipo left join logradouro lg on lg.id_logradouro = im.id_logradouro '+'left join cidade cid on cid.id_cidade = lg.id_cidade left join bairro br on br.id_bairro = lg.id_bairro left join uf estado on estado.id_sigla = lg.id_sigla '+'where ims.id_imovel_tipo = imt.id_imovel_tipo '+'and im.id_imovel = ' + ds.DataSet.FieldByName('id_imovel').AsString + ' ');
              dm_rel.zquery2.Active;

            if InputBox('Módulo de Vistoria', '1- Modelo Pronto '+#13+'2- Modelo a ser Preenchido', '1') = '1' then
              begin
                DM_REL.RV_IMPRESSAO.Close;
                DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_VISTORIA_PREENCHIDO.rav';
                principal.setLogo(dm_rel.RV_IMPRESSAO);
                DM_REL.RV_IMPRESSAO.Open;

                DM_REL.RV_IMPRESSAO.Execute;
                DM_REL.ZQUERY1.Close;
              end

            else 
              begin
                DM_REL.RV_IMPRESSAO.Close;
                DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_VISTORIA_EMBRANCO.rav';
                principal.setLogo(dm_rel.RV_IMPRESSAO);
                DM_REL.RV_IMPRESSAO.Open;

                DM_REL.RV_IMPRESSAO.Execute;
                DM_REL.ZQUERY1.Close;
              end;
          end;

          if escolha = '6' then
          begin
               if DM_CADASTRO.Z_Imovel.FieldByName('id_imovel').IsNull then
               begin
                    application.MessageBox('Não existe nenhum registro selecionado!', 'Aviso '+celulaNome,mb_ok);
                    exit;
               end;

               varSQL := unUtilitario.getSelect('select first 1 id_contrato from contrato where id_imovel = '+ds.DataSet.FieldByName('id_imovel').AsString+' and ativo = ''SIM'' order by vencimento desc');

               if varSQL.RecordCount > 0 then
                  unWord.setDocumento('GERAL_COM_DOCUMENTO', '', '',4, 0, ds.DataSet.FieldByName('id_imovel').AsInteger,  varSQL.fieldbyname('id_contrato').asinteger, ar)
               Else
               Begin
                   PRINCIPAL.setMensagem('Não foi encontrado nenhum contrato para esta conta...');
                   unWord.setDocumento('GERAL_COM_DOCUMENTO', '', '',4, 0, ds.DataSet.FieldByName('id_imovel').AsInteger,  0, ar);
               end;     
          end;

          if escolha = '7' then
          begin
               if SelecaoImovel.count <= 0 then
               begin
                    application.MessageBox('Não existe nenhum registro selecionado!', 'Aviso '+celulaNome,mb_ok);
                    exit;
               end;

               Registros := TStringList.Create();
                         
               VARSQL := unUtilitario.getSelect('SELECT L.tipo, L.nome, I.numero, I.complemento, B.nome AS BAIRRO, C.nome AS CIDADE, U.sigla, I.id_imovel FROM IMOVEL I '+
               ' LEFT JOIN LOGRADOURO L ON L.id_logradouro = I.id_logradouro '+
               ' LEFT JOIN BAIRRO B ON B.id_bairro = L.id_bairro '+
               ' LEFT JOIN CIDADE C ON C.id_cidade = L.id_cidade '+
               ' LEFT JOIN UF U ON U.id_sigla = L.id_sigla' +
               ' where I.id_imovel in (' +alinhaStringlist(SelecaoImovel) +') and I.id_imovel in (SELECT id_imovel FROM IMOVEL_CARACTERISTICA WHERE TIPO = ''NORMAL'' AND FOTO1 <> ''X_Foto.jpg'') order by C.nome, B.nome, L.nome, I.numero' );

               x := 0;
               while not varSQL.Eof do
               Begin

                    html := html+'<br><div align="center"><h3>'+
                    //VARSQL.FieldByName('TIPO').AsString+' '+
                    VARSQL.FieldByName('NOME').AsString+', '+
                    VARSQL.FieldByName('NUMERO').AsString+' '+
                    VARSQL.FieldByName('COMPLEMENTO').AsString+' - '+
                    VARSQL.FieldByName('BAIRRO').AsString+'<br>'+
                    VARSQL.FieldByName('CIDADE').AsString+'-'+
                    VARSQL.FieldByName('SIGLA').AsString+' CÓDIGO: '+
                    VARSQL.FieldByName('ID_IMOVEL').AsString+
                    '</h3></div><br>';

                    varSQL2 := unUtilitario.getSelect('SELECT FIRST 1 FOTO1 FROM IMOVEL_CARACTERISTICA WHERE ID_CARACTERISTICA = 60 AND TIPO = ''NORMAL'' AND FOTO1 <> ''X_Foto.jpg'' AND ID_IMOVEL = '+VARSQL.FieldByName('ID_IMOVEL').AsString);

                    Registros.Clear;
                    if varSQL2.RecordCount > 0 then
                       Registros.Add(varSQL2.FieldByName('FOTO1').AsString);

                    varSQL2 := unUtilitario.getSelect(' SELECT FIRST 5 FOTO1 FROM IMOVEL_CARACTERISTICA WHERE ID_CARACTERISTICA <> 60 AND TIPO = ''NORMAL'' AND FOTO1 <> ''X_Foto.jpg'' AND ID_IMOVEL = '+VARSQL.FieldByName('ID_IMOVEL').AsString);

                    html := html+'<table style="text-align: left; width: 100%;" border="0" cellpadding="2" cellspacing="2"> <tbody>';

                    while NOT varSQL2.Eof do
                    Begin
                         Registros.Add(varSQL2.FieldByName('FOTO1').AsString);
                         varSQL2.Next;
                    end;

                    for i := 0 to Registros.Count-1 do
                    Begin

                         if i MOD 2 = 0 then
                         BEGIN
                              html := html + '<tr><td style="vertical-align: top; text-align: center;"><img width="300" height="225" border="0" src="file:///\\'+getUser('SERVIDOR') + '\IMOBILIARIA\IMG\IMOVEL\'+Registros.Strings[i]+'"></td>';

                              if i = Registros.Count-1 then
                                 html := html + '<td style="vertical-align: top; text-align: center;">&nbsp;</td></tr>';
                         END
                         else
                         BEGIN
                              html := html + '<td style="vertical-align: top; text-align: center;"><img width="300" height="225" border="0" src="file:///\\'+getUser('SERVIDOR') + '\IMOBILIARIA\IMG\IMOVEL\'+Registros.Strings[i]+'"></td></tr>';
                         END;

                    end;

                    if x < varSQL.RecordCount-1 then
                       html := html+'</tbody></table><br class="quebrapagina">';
                    x := x+1;
                    varSQL.Next;
               end;

               setHtml('IMAGENS DOS IMÓVEIS', html);
               FreeAndNil(varSQL);
               FreeAndNil(varSQL2);
          end;

        DM_REL.RV_IMPRESSAO.Close;
        FreeAndNil(varSQL);
end;

procedure TCAD_Imovel.Grid_BuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = VK_RETURN then
        Grid_BuscaDblClick(Sender);

     If Key = VK_MENU Then
          PopupMenu.Popup(Grid_Busca.Left+10,Grid_Busca.Top+10);

end;

procedure TCAD_Imovel.Grid_BuscaDblClick(Sender: TObject);
begin
     If DS.DataSet.Active Then
     Begin
          DS.DataSet.Edit;
          Tab_Cadastro.Show;
     End;

     Tab_Informacoes.Show;
     Tab_InformacoesShow(Sender);

end;

procedure TCAD_Imovel.Grid_BuscaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  IF (COLUMN.Title.CAPTION = 'Código') THEN
    if (DS.DataSet.FieldByName('CHAVE').AsString = 'SIM') THEN
      begin
        Grid_Busca.Canvas.Brush.Color:= clMoneyGreen;
        Grid_Busca.Canvas.Font.Color:= clWindowText;
        Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
        Grid_Busca.Canvas.FillRect(Rect);
        Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
    ELSE if (DS.DataSet.FieldByName('CHAVE').AsString = 'EMP') THEN
      begin
        Grid_Busca.Canvas.Brush.Color:= clMaroon;
        Grid_Busca.Canvas.Font.Color:= clWindow;
        Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
        Grid_Busca.Canvas.FillRect(Rect);
        Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end
    ELSE if (DS.DataSet.FieldByName('CHAVE').AsString = 'NAO') THEN
      BEGIN
        Grid_Busca.Canvas.Brush.Color:= clGray;
        Grid_Busca.Canvas.Font.Color:= clWindow;
        Grid_Busca.Canvas.Font.Style := Grid_Busca.Canvas.Font.Style + [fsBold];
        Grid_Busca.Canvas.FillRect(Rect);
        Grid_Busca.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      END;
end;

procedure TCAD_Imovel.Look_TipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If Key = VK_RETURN then
 Look_TipoCloseUp(Sender);
 
  inherited;

end;

procedure TCAD_Imovel.Memo_AnuncioChange(Sender: TObject);
begin
  inherited;

  LabelCountCaracteres.Caption := IntToStr(Length(Memo_Anuncio.Lines.Text))+' Caracteres.';
  
end;

procedure TCAD_Imovel.verificarCaracteristica;
begin
  if (DM_CADASTRO.DS_Curinga_03.DataSet.FieldByName('id_movel_caracteristica').IsNull) AND (Length(Trim(Look_Caracteristica.SelectedItem)) = 0) then
    begin
      application.messagebox('Não existe nenhuma característica selecionada!', 'Aviso Célula Digial', mb_ok);
      Abort;
    end;
end;

procedure TCAD_Imovel.VerImovel1Click(Sender: TObject);
var Escolha: String;
i: integer;
begin
     Escolha := '';

     For i := 0 to SelecaoImovel.Count - 1 Do
         Escolha := Escolha + #13 + SelecaoImovel.Strings[i];

     ShowMessage('REGISTROS SELECIONADOS: '+ #13 + Escolha);

end;

procedure TCAD_Imovel.VernoClulaDisplay1Click(Sender: TObject);
begin
  inherited;
  btnDisplayClick(Sender);
end;

function TCAD_Imovel.ConverterJPegParaBmp(Arquivo: String): String;
var
  JPeg: TJPegImage;
  Bmp: TBitmap;
begin
  JPeg := TJPegImage.Create;
  try
    JPeg.LoadFromFile(Arquivo);
    Bmp := TBitmap.Create;
    try
      Bmp.Assign(JPeg);
      Bmp.SaveToFile(ChangeFileExt(Arquivo, '.bmp'));
    finally
      FreeAndNil(Bmp);
    end;
  finally
    FreeAndNil(JPeg);
  end;

  result := ChangeFileExt(Arquivo, '.bmp');
end;

procedure TCAD_Imovel.CopiarCaracteristicas(id_imovel, id_matriz: String);
var x: integer;
    varSQL1, varSQL2: TZQuery;
begin
     // CLONANDO AS CARACTERÍSTICAS NORMAIS //

     varSQL1 := unUtilitario.getSelect('select * from imovel_caracteristica where TIPO = ''NORMAL'' and id_imovel = ' + id_matriz);

     varSQL2 := unUtilitario.getSelect('select * from imovel_caracteristica where id_movel_caracteristica = 0');

  if varSQL1.RecordCount > 0 then
  begin
       while not varSQL1.Eof do
       begin
            varSQL2.Append;

            for x := 0 to varSQL1.FieldCount - 1 do
                if
                  (UpperCase(varSQL1.fields[x].FieldName) <> 'ID_MOVEL_CARACTERISTICA') AND
                  (UpperCase(varSQL1.fields[x].FieldName) <> 'ID_IMOVEL_CARACTERISTICA')
                then
                    varSQL2.Fields[x].Value := varSQL1.fields[x].Value;


            varSQL2.FieldByName('ID_IMOVEL').AsString := id_imovel;
            varSQL2.FieldByName('DATA').AsDateTime := Date();
            PRINCIPAL.setID(varSQL2, 'ID_MOVEL_CARACTERISTICA', 'IMOVEL_CARACTERISTICA');
            
            varSQL2.Post;
            varSQL2.ApplyUpdates;

            varSQL1.Next;
       end;
  end;

  FreeAndNil(varSQL2);
  FreeAndNil(varSQL1);
end;

procedure TCAD_Imovel.CopiarProprietarios(id_imovel, id_matriz: String);
var x: integer;
    varSQL1, varSQL2: TZQuery;
begin
     // CLONANDO AS CARACTERÍSTICAS NORMAIS //

     varSQL1 := unUtilitario.getSelect('select * from pessoa_imovel where STATUS = ''PROPRIETARIO'' and id_imovel = ' + id_matriz);

     varSQL2 := unUtilitario.getSelect('select * from pessoa_imovel where ID_PESSOA_IMOVEL = 0');

  if varSQL1.RecordCount > 0 then
  begin
       while not varSQL1.Eof do
       begin
            varSQL2.Append;

            for x := 0 to varSQL1.FieldCount - 1 do
                if (UpperCase(varSQL1.fields[x].FieldName) <> 'ID_PESSOA_IMOVEL') then
                    varSQL2.Fields[x].Value := varSQL1.fields[x].Value;


            varSQL2.FieldByName('ID_IMOVEL').AsString := id_imovel;
            varSQL2.FieldByName('DATA').AsDateTime := Date();
            PRINCIPAL.setID(varSQL2, 'ID_PESSOA_IMOVEL', 'PESSOA_IMOVEL');
            
            varSQL2.Post;
            varSQL2.ApplyUpdates;

            varSQL1.Next;
       end;
  end;

  FreeAndNil(varSQL2);
  FreeAndNil(varSQL1);
end;


end.
