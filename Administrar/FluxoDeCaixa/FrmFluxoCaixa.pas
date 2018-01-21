unit FrmFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, Buttons, DBCtrls, jpeg,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DB, StrUtils, TeEngine,
  Series, TeeProcs, Chart, TeeFunci, CategoryButtons, dateUtils, OleCtrls,
  SHDocVw, ShellAPI, Mask, Menus;


type
  TCAD_FluxoCaixa = class(TForm)
    CENTRO: TPageControl;
    Tab_1: TTabSheet;
    TOPO: TPanel;
    Grid_Entrada: TDBGrid;
    Image4: TImage;
    DS_CaixaEntrada: TDataSource;
    DS_CaixaSaida: TDataSource;
    tab_5: TTabSheet;
    GroupBox19: TGroupBox;
    ListCategoria: TListView;
    GroupBox20: TGroupBox;
    ListGrupo: TListView;
    ZEntrada: TZQuery;
    ZSaida: TZQuery;
    chkcategoria: TCheckBox;
    chkgrupo: TCheckBox;
    GroupBox21: TGroupBox;
    listsubgrupo: TListView;
    chksubgrupo: TCheckBox;
    Label3: TLabel;
    GroupBox22: TGroupBox;
    Label9: TLabel;
    Label16: TLabel;
    data_ini: TDateTimePicker;
    data_fim: TDateTimePicker;
    TabInformacao: TTabSheet;
    GroupBox24: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox25: TGroupBox;
    GroupBox26: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    GroupBox27: TGroupBox;
    Label25: TLabel;
    LbPeriodo: TLabel;
    Panel2: TPanel;
    lbEntEfetuadas: TLabel;
    lbSaiEfeuadas: TLabel;
    lbEntEsperadas: TLabel;
    lbSaiEsperadas: TLabel;
    lbEntDiferenca: TLabel;
    lbSaiDiferenca: TLabel;
    SaldoEfetuadas: TLabel;
    RFiltros: TGroupBox;
    GerarFiltro: TSpeedButton;
    RadioVencimento: TRadioButton;
    RadioPagamento: TRadioButton;
    PageControl1: TPageControl;
    TabProprietario: TTabSheet;
    TabImovel: TTabSheet;
    EditNomePessoa: TEdit;
    BitBtnBuscaPessoa: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    LabelTotalEntrada: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    LabelTotalSaida: TLabel;
    ZFiltroPessoa: TZQuery;
    ZFiltroImovel: TZQuery;
    ZFiltroStatus: TZQuery;
    DS_FiltroPessoa: TDataSource;
    DS_FiltroImovel: TDataSource;
    DS_FiltroStatus: TDataSource;
    ZFiltroPessoaID_PESSOA: TIntegerField;
    ZFiltroPessoaNOME: TStringField;
    EditNomeImovel: TEdit;
    BitBtnBuscaImovel: TBitBtn;
    DBGrid2: TDBGrid;
    ZFiltroImovelID_IMOVEL: TIntegerField;
    ZFiltroImovelRUA: TStringField;
    ZFiltroImovelNUMERO: TIntegerField;
    ZFiltroImovelCOMPLEMENTO: TStringField;
    ZFiltroImovelVALOR_ALUQUEL: TFloatField;
    ZFiltroImovelBAIRRO: TStringField;
    ZFiltroImovelCIDADE: TStringField;
    ZFiltroImovelPESSOA: TStringField;
    Panel4: TPanel;
    SaldoPrevista: TLabel;
    Label7: TLabel;
    Panel5: TPanel;
    SaldonNaoEfetuadas: TLabel;
    Label8: TLabel;
    Grid_Saida: TDBGrid;
    GroupBox1: TGroupBox;
    chkstatus: TCheckBox;
    listStatus: TListView;
    CheckPessoa: TCheckBox;
    CheckImoveis: TCheckBox;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    editMontante: TEdit;
    Label2: TLabel;
    btnMovimentar: TBitBtn;
    comboOrigem: TComboBox;
    comboDestino: TComboBox;
    Label5: TLabel;
    editOrigem: TEdit;
    editDestino: TEdit;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    ComboEmpresa: TComboBox;
    CheckTudo: TCheckBox;
    ZEntradaVALOR_REAL: TFloatField;
    ZEntradaID_CAIXA: TIntegerField;
    ZEntradaID_CATEGORIA: TIntegerField;
    ZEntradaID_TIPO: TIntegerField;
    ZEntradaID_SUBTIPO: TIntegerField;
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
    ZEntradaCATEGORIA: TStringField;
    ZEntradaGRUPO: TStringField;
    ZEntradaSUBGRUPO: TStringField;
    ZEntradaID_PESSOA_1: TIntegerField;
    ZEntradaID_PESSOA_TIPO: TIntegerField;
    ZEntradaID_USUARIO: TIntegerField;
    ZEntradaID_OCUPACAO: TIntegerField;
    ZEntradaPESSOA_FISICA: TStringField;
    ZEntradaNOME: TStringField;
    ZEntradaNOME_FANTASIA: TStringField;
    ZEntradaCPF_CNPJ: TStringField;
    ZEntradaRG_IE: TStringField;
    ZEntradaRG_EMISSAO: TDateField;
    ZEntradaRG_ORGAO: TStringField;
    ZEntradaIM: TStringField;
    ZEntradaSEXO: TStringField;
    ZEntradaPAI: TStringField;
    ZEntradaMAE: TStringField;
    ZEntradaCONJUGE: TStringField;
    ZEntradaNACIONALIDADE: TStringField;
    ZEntradaESTADO_CIVIL: TStringField;
    ZEntradaEMPRESA: TStringField;
    ZEntradaEMPRESA_CARGO: TStringField;
    ZEntradaEMPRESA_RENDA: TFloatField;
    ZEntradaEMPRESA_TEMPO: TDateField;
    ZEntradaCONSULTA_SPC: TStringField;
    ZEntradaCONSULTA_CERASA: TStringField;
    ZEntradaCONSULTA_TELEFONE: TStringField;
    ZEntradaCONSULTA_OUTROS: TStringField;
    ZEntradaCONSULTA_DADOS: TMemoField;
    ZEntradaCREDITO: TFloatField;
    ZEntradaCREDITO_VAL: TDateField;
    ZEntradaCREDITO_VAL_ATIVO: TStringField;
    ZEntradaNOTA: TSmallintField;
    ZEntradaNASCIMENTO: TDateField;
    ZEntradaCOMISSAO: TFloatField;
    ZEntradaDESCONTO: TFloatField;
    ZEntradaFILHOS: TStringField;
    ZEntradaFOTO: TStringField;
    ZEntradaEMAIL: TStringField;
    ZEntradaMSN: TStringField;
    ZEntradaICQ: TStringField;
    ZEntradaYAHOO: TStringField;
    ZEntradaAIM: TStringField;
    ZEntradaMALADIRETA: TStringField;
    ZEntradaDATA: TDateTimeField;
    ZEntradaOBS: TStringField;
    ZEntradaATIVO_1: TStringField;
    ZEntradaALTERACAO_FUNC: TSmallintField;
    ZEntradaALTERACAO_DATA: TDateField;
    ZEntradaIMPRIMIR: TStringField;
    ZEntradaPESSOA_RESPONSAVEL: TIntegerField;
    ZEntradaSENHA: TStringField;
    ZEntradaID_IMOVEL_1: TIntegerField;
    ZEntradaID_LOGRADOURO: TIntegerField;
    ZEntradaID_IMOVEL_SUBTIPO: TIntegerField;
    ZEntradaID_IMOVEL_TIPO: TIntegerField;
    ZEntradaID_PESSOA_2: TIntegerField;
    ZEntradaNUMERO: TIntegerField;
    ZEntradaCOMPLEMENTO: TStringField;
    ZEntradaSTATUS: TStringField;
    ZEntradaDEPOSITO: TStringField;
    ZEntradaSEGURO_FIANCA: TStringField;
    ZEntradaFIADOR: TStringField;
    ZEntradaVISITACORRETOR: TStringField;              
    ZEntradaOCUPADO: TStringField;
    ZEntradaPLACA: TStringField;
    ZEntradaVENDA: TStringField;
    ZEntradaALUGUEL: TStringField;
    ZEntradaOUTROS: TStringField;
    ZEntradaOUTROS_NOME: TStringField;
    ZEntradaVALOR_REAL_1: TFloatField;
    ZEntradaVALOR_VENDA: TFloatField;
    ZEntradaVALOR_ALUQUEL: TFloatField;
    ZEntradaVALOR_CONDOMINIO: TFloatField;
    ZEntradaVALOR_OUTROS: TFloatField;
    ZEntradaVALOR_OUTROS_NOME: TStringField;
    ZEntradaAREA_L: TFloatField;
    ZEntradaAREA_C: TFloatField;
    ZEntradaAREA_FATOR: TFloatField;
    ZEntradaAREA_OUTROS: TFloatField;
    ZEntradaAREA_OUTROS_FATOR: TFloatField;
    ZEntradaAREA_CONSTRUIDA: TFloatField;
    ZEntradaAREA_CONSTRUIDA_FATOR: TFloatField;
    ZEntradaAREA_DEPRECIACAO: TStringField;
    ZEntradaNUM_LUZ: TStringField;
    ZEntradaNUM_MATRICULA: TStringField;
    ZEntradaNUM_AGUA: TStringField;
    ZEntradaENTRADA_CHAVES: TSmallintField;
    ZEntradaHORARIO_VISITA: TStringField;
    ZEntradaCHAVE_QUADRO: TStringField;
    ZEntradaOBS_1: TStringField;
    ZEntradaDATA_1: TDateField;
    ZEntradaATIVO_2: TStringField;
    ZEntradaALTERACAO_FUNC_1: TIntegerField;
    ZEntradaALTERACAO_DATA_1: TDateField;
    ZEntradaANOTACOES: TMemoField;
    ZEntradaANUNCIAR: TStringField;
    ZEntradaEXCLUSIVO: TStringField;
    ZEntradaLOCAL_PGTO: TStringField;
    ZEntradaFINALIDADE: TStringField;
    ZEntradaNOTA_1: TSmallintField;
    ZEntradaPLACA_DATA: TDateField;
    ZEntradaIMPRIMIR_1: TStringField;
    ZEntradaDORMITORIOS: TSmallintField;
    ZEntradaINTERNET: TStringField;
    ZEntradaCHAVE: TStringField;
    ZEntradaID_CONTRATO_1: TIntegerField;
    ZEntradaID_IMOVEL_2: TIntegerField;
    ZEntradaTIPO_CONTRATO: TStringField;
    ZEntradaVALOR_1: TFloatField;
    ZEntradaVALOR_REAJUSTE: TFloatField;
    ZEntradaVENCIMENTO: TDateField;
    ZEntradaTARIFA: TFloatField;
    ZEntradaVIGENCIA: TSmallintField;
    ZEntradaREPASSE: TStringField;
    ZEntradaCORRESPONDENCIA: TStringField;
    ZEntradaMORADORES: TSmallintField;
    ZEntradaFINALIDADE_1: TStringField;
    ZEntradaMULTA: TFloatField;
    ZEntradaMULTA_APOS: TSmallintField;
    ZEntradaMULTA_MORA: TFloatField;
    ZEntradaMULTA_MORA_APOS: TSmallintField;
    ZEntradaJUROS: TFloatField;
    ZEntradaJUROS_APOS: TSmallintField;
    ZEntradaHONORARIO: TFloatField;
    ZEntradaHONORARIO_APOS: TSmallintField;
    ZEntradaREAJUSTE: TStringField;
    ZEntradaREAJUSTE_APOS: TSmallintField;
    ZEntradaDESCONTO_1: TFloatField;
    ZEntradaDESCONTO_ATE: TSmallintField;
    ZEntradaISENTO_CPMF: TStringField;
    ZEntradaHONORARIO_1ALUGUEL: TStringField;
    ZEntradaHONORARIO_ADMIN: TStringField;
    ZEntradaHONORARIO_REPASSE: TStringField;
    ZEntradaPARCELADO_EM: TSmallintField;
    ZEntradaCOMISSAO_LOCACAO: TFloatField;
    ZEntradaCOMISSAO_CAPTACAO: TFloatField;
    ZEntradaCOMISSAO_DESPESAS: TFloatField;
    ZEntradaCOMISSAO_INDICACAO: TFloatField;
    ZEntradaRENTA_ALUGUEL: TFloatField;
    ZEntradaRENTA_EFETIVADO: TFloatField;
    ZEntradaRENTA_HONOR_ALUGUEL: TFloatField;
    ZEntradaRENTA_HONOR_ADMIN: TFloatField;
    ZEntradaRES_INADIM_OCP: TStringField;
    ZEntradaRES_INADIM_DES: TStringField;
    ZEntradaRES_ANTECIP_OCP: TStringField;
    ZEntradaRES_ANTECIP_DES: TStringField;
    ZEntradaRES_MOTIVO: TStringField;
    ZEntradaFOTO_1: TStringField;
    ZEntradaDATA_2: TDateField;
    ZEntradaATIVO_3: TStringField;
    ZEntradaID_REFERENCIA: TLargeintField;
    ZEntradaALTERACAO_FUNC_2: TIntegerField;
    ZEntradaALTERACAO_DATA_2: TDateTimeField;
    ZEntradaOBS_2: TMemoField;
    ZEntradaINFO_1: TStringField;
    ZEntradaINFO_2: TStringField;
    ZEntradaINFO_3: TStringField;
    ZEntradaINFO_4: TStringField;
    ZEntradaID_USUARIO_1: TIntegerField;
    ZEntradaNOME_1: TStringField;
    ZEntradaSENHA_1: TStringField;
    ZEntradaFUNDO: TStringField;
    ZEntradaATIVO_4: TStringField;
    ZEntradaADMINISTRADOR: TStringField;
    ZEntradaEMAIL_1: TStringField;
    ZEntradaID_CAIXA_1: TIntegerField;
    ZEntradaID_CATEGORIA_1: TIntegerField;
    ZEntradaID_TIPO_1: TIntegerField;
    ZEntradaID_SUBTIPO_1: TIntegerField;
    ZEntradaID_PESSOA_3: TIntegerField;
    ZEntradaID_IMOVEL_3: TIntegerField;
    ZEntradaID_CONTRATO_2: TIntegerField;
    ZEntradaID_FUNCIONARIO_1: TIntegerField;
    ZEntradaID_ENTRADA_1: TIntegerField;
    ZEntradaID_SAIDA_1: TIntegerField;
    ZEntradaDATA_REF_1: TDateField;
    ZEntradaDATA_CAD_1: TDateTimeField;
    ZEntradaDATA_ALT_1: TDateTimeField;
    ZEntradaDATA_PGTO_1: TDateField;
    ZEntradaHORA_PGTO_1: TTimeField;
    ZEntradaDOCUMENTO_1: TStringField;
    ZEntradaOPERACAO_1: TStringField;
    ZEntradaVALOR_2: TFloatField;
    ZEntradaVALOR_JUROS_1: TFloatField;
    ZEntradaVALOR_MULTA_1: TFloatField;
    ZEntradaVALOR_DESCONTO_1: TFloatField;
    ZEntradaPARCELA_1: TIntegerField;
    ZEntradaPENDENTE_1: TStringField;
    ZEntradaANOTACAO_1: TMemoField;
    ZEntradaATIVO_5: TStringField;
    ZEntradaGARANTIDO_1: TStringField;
    ZEntradaRUA: TStringField;
    TabSheet3: TTabSheet;
    CheckUsuarios: TCheckBox;
    EditNomeUsuario: TComboBox;
    TabSaldos: TTabSheet;
    DBGrid3: TDBGrid;
    ZSaldos: TZQuery;
    DS_Saldos: TDataSource;
    ZSaldosID_USUARIO: TIntegerField;
    ZSaldosNOME: TStringField;
    ZSaldosCAIXAENTRADA: TFloatField;
    ZSaldosCAIXASAIDA: TFloatField;
    ZSaldosSALDO: TFloatField;
    ZSaidaVALOR_REAL: TFloatField;
    ZSaidaID_CAIXA: TIntegerField;
    ZSaidaID_CATEGORIA: TIntegerField;
    ZSaidaID_TIPO: TIntegerField;
    ZSaidaID_SUBTIPO: TIntegerField;
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
    ZSaidaCATEGORIA: TStringField;
    ZSaidaGRUPO: TStringField;
    ZSaidaSUBGRUPO: TStringField;
    ZSaidaID_PESSOA_1: TIntegerField;
    ZSaidaID_PESSOA_TIPO: TIntegerField;
    ZSaidaID_USUARIO: TIntegerField;
    ZSaidaID_OCUPACAO: TIntegerField;
    ZSaidaPESSOA_FISICA: TStringField;
    ZSaidaNOME: TStringField;
    ZSaidaNOME_FANTASIA: TStringField;
    ZSaidaCPF_CNPJ: TStringField;
    ZSaidaRG_IE: TStringField;
    ZSaidaRG_EMISSAO: TDateField;
    ZSaidaRG_ORGAO: TStringField;
    ZSaidaIM: TStringField;
    ZSaidaSEXO: TStringField;
    ZSaidaPAI: TStringField;
    ZSaidaMAE: TStringField;
    ZSaidaCONJUGE: TStringField;
    ZSaidaNACIONALIDADE: TStringField;
    ZSaidaESTADO_CIVIL: TStringField;
    ZSaidaEMPRESA: TStringField;
    ZSaidaEMPRESA_CARGO: TStringField;
    ZSaidaEMPRESA_RENDA: TFloatField;
    ZSaidaEMPRESA_TEMPO: TDateField;
    ZSaidaCONSULTA_SPC: TStringField;
    ZSaidaCONSULTA_CERASA: TStringField;
    ZSaidaCONSULTA_TELEFONE: TStringField;
    ZSaidaCONSULTA_OUTROS: TStringField;
    ZSaidaCONSULTA_DADOS: TMemoField;
    ZSaidaCREDITO: TFloatField;
    ZSaidaCREDITO_VAL: TDateField;
    ZSaidaCREDITO_VAL_ATIVO: TStringField;
    ZSaidaNOTA: TSmallintField;
    ZSaidaNASCIMENTO: TDateField;
    ZSaidaCOMISSAO: TFloatField;
    ZSaidaDESCONTO: TFloatField;
    ZSaidaFILHOS: TStringField;
    ZSaidaFOTO: TStringField;
    ZSaidaEMAIL: TStringField;
    ZSaidaMSN: TStringField;
    ZSaidaICQ: TStringField;
    ZSaidaYAHOO: TStringField;
    ZSaidaAIM: TStringField;
    ZSaidaMALADIRETA: TStringField;
    ZSaidaDATA: TDateTimeField;
    ZSaidaOBS: TStringField;
    ZSaidaATIVO_1: TStringField;
    ZSaidaALTERACAO_FUNC: TSmallintField;
    ZSaidaALTERACAO_DATA: TDateField;
    ZSaidaIMPRIMIR: TStringField;
    ZSaidaPESSOA_RESPONSAVEL: TIntegerField;
    ZSaidaSENHA: TStringField;
    ZSaidaID_IMOVEL_1: TIntegerField;
    ZSaidaID_LOGRADOURO: TIntegerField;
    ZSaidaID_IMOVEL_SUBTIPO: TIntegerField;
    ZSaidaID_IMOVEL_TIPO: TIntegerField;
    ZSaidaID_PESSOA_2: TIntegerField;
    ZSaidaNUMERO: TIntegerField;
    ZSaidaCOMPLEMENTO: TStringField;
    ZSaidaSTATUS: TStringField;
    ZSaidaDEPOSITO: TStringField;
    ZSaidaSEGURO_FIANCA: TStringField;
    ZSaidaFIADOR: TStringField;
    ZSaidaVISITACORRETOR: TStringField;
    ZSaidaOCUPADO: TStringField;
    ZSaidaPLACA: TStringField;
    ZSaidaVENDA: TStringField;
    ZSaidaALUGUEL: TStringField;
    ZSaidaOUTROS: TStringField;
    ZSaidaOUTROS_NOME: TStringField;
    ZSaidaVALOR_REAL_1: TFloatField;
    ZSaidaVALOR_VENDA: TFloatField;
    ZSaidaVALOR_ALUQUEL: TFloatField;
    ZSaidaVALOR_CONDOMINIO: TFloatField;
    ZSaidaVALOR_OUTROS: TFloatField;
    ZSaidaVALOR_OUTROS_NOME: TStringField;
    ZSaidaAREA_L: TFloatField;
    ZSaidaAREA_C: TFloatField;
    ZSaidaAREA_FATOR: TFloatField;
    ZSaidaAREA_OUTROS: TFloatField;
    ZSaidaAREA_OUTROS_FATOR: TFloatField;
    ZSaidaAREA_CONSTRUIDA: TFloatField;
    ZSaidaAREA_CONSTRUIDA_FATOR: TFloatField;
    ZSaidaAREA_DEPRECIACAO: TStringField;
    ZSaidaNUM_LUZ: TStringField;
    ZSaidaNUM_MATRICULA: TStringField;
    ZSaidaNUM_AGUA: TStringField;
    ZSaidaENTRADA_CHAVES: TSmallintField;
    ZSaidaHORARIO_VISITA: TStringField;
    ZSaidaCHAVE_QUADRO: TStringField;
    ZSaidaOBS_1: TStringField;
    ZSaidaDATA_1: TDateField;
    ZSaidaATIVO_2: TStringField;
    ZSaidaALTERACAO_FUNC_1: TIntegerField;
    ZSaidaALTERACAO_DATA_1: TDateField;
    ZSaidaANOTACOES: TMemoField;
    ZSaidaANUNCIAR: TStringField;
    ZSaidaEXCLUSIVO: TStringField;
    ZSaidaLOCAL_PGTO: TStringField;
    ZSaidaFINALIDADE: TStringField;
    ZSaidaNOTA_1: TSmallintField;
    ZSaidaPLACA_DATA: TDateField;
    ZSaidaIMPRIMIR_1: TStringField;
    ZSaidaDORMITORIOS: TSmallintField;
    ZSaidaINTERNET: TStringField;
    ZSaidaCHAVE: TStringField;
    ZSaidaID_CONTRATO_1: TIntegerField;
    ZSaidaID_IMOVEL_2: TIntegerField;
    ZSaidaTIPO_CONTRATO: TStringField;
    ZSaidaVALOR_1: TFloatField;
    ZSaidaVALOR_REAJUSTE: TFloatField;
    ZSaidaVENCIMENTO: TDateField;
    ZSaidaTARIFA: TFloatField;
    ZSaidaVIGENCIA: TSmallintField;
    ZSaidaREPASSE: TStringField;
    ZSaidaCORRESPONDENCIA: TStringField;
    ZSaidaMORADORES: TSmallintField;
    ZSaidaFINALIDADE_1: TStringField;
    ZSaidaMULTA: TFloatField;
    ZSaidaMULTA_APOS: TSmallintField;
    ZSaidaMULTA_MORA: TFloatField;
    ZSaidaMULTA_MORA_APOS: TSmallintField;
    ZSaidaJUROS: TFloatField;
    ZSaidaJUROS_APOS: TSmallintField;
    ZSaidaHONORARIO: TFloatField;
    ZSaidaHONORARIO_APOS: TSmallintField;
    ZSaidaREAJUSTE: TStringField;
    ZSaidaREAJUSTE_APOS: TSmallintField;
    ZSaidaDESCONTO_1: TFloatField;
    ZSaidaDESCONTO_ATE: TSmallintField;
    ZSaidaISENTO_CPMF: TStringField;
    ZSaidaHONORARIO_1ALUGUEL: TStringField;
    ZSaidaHONORARIO_ADMIN: TStringField;
    ZSaidaHONORARIO_REPASSE: TStringField;
    ZSaidaPARCELADO_EM: TSmallintField;
    ZSaidaCOMISSAO_LOCACAO: TFloatField;
    ZSaidaCOMISSAO_CAPTACAO: TFloatField;
    ZSaidaCOMISSAO_DESPESAS: TFloatField;
    ZSaidaCOMISSAO_INDICACAO: TFloatField;
    ZSaidaRENTA_ALUGUEL: TFloatField;
    ZSaidaRENTA_EFETIVADO: TFloatField;
    ZSaidaRENTA_HONOR_ALUGUEL: TFloatField;
    ZSaidaRENTA_HONOR_ADMIN: TFloatField;
    ZSaidaRES_INADIM_OCP: TStringField;
    ZSaidaRES_INADIM_DES: TStringField;
    ZSaidaRES_ANTECIP_OCP: TStringField;
    ZSaidaRES_ANTECIP_DES: TStringField;
    ZSaidaRES_MOTIVO: TStringField;
    ZSaidaFOTO_1: TStringField;
    ZSaidaDATA_2: TDateField;
    ZSaidaATIVO_3: TStringField;
    ZSaidaID_REFERENCIA: TLargeintField;
    ZSaidaALTERACAO_FUNC_2: TIntegerField;
    ZSaidaALTERACAO_DATA_2: TDateTimeField;
    ZSaidaOBS_2: TMemoField;
    ZSaidaINFO_1: TStringField;
    ZSaidaINFO_2: TStringField;
    ZSaidaINFO_3: TStringField;
    ZSaidaINFO_4: TStringField;
    ZSaidaID_USUARIO_1: TIntegerField;
    ZSaidaNOME_1: TStringField;
    ZSaidaSENHA_1: TStringField;
    ZSaidaFUNDO: TStringField;
    ZSaidaATIVO_4: TStringField;
    ZSaidaADMINISTRADOR: TStringField;
    ZSaidaEMAIL_1: TStringField;
    ZSaidaID_CAIXA_1: TIntegerField;
    ZSaidaID_CATEGORIA_1: TIntegerField;
    ZSaidaID_TIPO_1: TIntegerField;
    ZSaidaID_SUBTIPO_1: TIntegerField;
    ZSaidaID_PESSOA_3: TIntegerField;
    ZSaidaID_IMOVEL_3: TIntegerField;
    ZSaidaID_CONTRATO_2: TIntegerField;
    ZSaidaID_FUNCIONARIO_1: TIntegerField;
    ZSaidaID_ENTRADA_1: TIntegerField;
    ZSaidaID_SAIDA_1: TIntegerField;
    ZSaidaDATA_REF_1: TDateField;
    ZSaidaDATA_CAD_1: TDateTimeField;
    ZSaidaDATA_ALT_1: TDateTimeField;
    ZSaidaDATA_PGTO_1: TDateField;
    ZSaidaHORA_PGTO_1: TTimeField;
    ZSaidaDOCUMENTO_1: TStringField;
    ZSaidaOPERACAO_1: TStringField;
    ZSaidaVALOR_2: TFloatField;
    ZSaidaVALOR_JUROS_1: TFloatField;
    ZSaidaVALOR_MULTA_1: TFloatField;
    ZSaidaVALOR_DESCONTO_1: TFloatField;
    ZSaidaPARCELA_1: TIntegerField;
    ZSaidaPENDENTE_1: TStringField;
    ZSaidaANOTACAO_1: TMemoField;
    ZSaidaATIVO_5: TStringField;
    ZSaidaGARANTIDO_1: TStringField;
    ZSaidaRUA: TStringField;
    ZSaidaINQUILINO: TStringField;
    ZSaidaVR: TFloatField;
    ZSaidaNOME_INQUILINO: TStringField;
    SelecaoImpressao: TListBox;
    Label10: TLabel;
    editAnotacao: TEdit;
    ZIRRF: TZQuery;
    DS_IRRF: TDataSource;
    ZIRRFid: TIntegerField;
    ZIRRFvalor_inicio: TFloatField;
    ZIRRFvalor_fim: TFloatField;
    ZIRRFaliquota: TFloatField;
    ZIRRFdeducao: TFloatField;
    ZIRRFvigencia_inicio: TDateField;
    ZIRRFvigencia_fim: TDateField;
    ZIRRFtags: TStringField;
    ZIRRFativo: TStringField;
    ZFiltroPessoaICQ: TStringField;
    ZFiltroPessoaAIM: TStringField;
    TabCobranca: TTabSheet;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DBGridPessoa: TDBGrid;
    GroupBox8: TGroupBox;
    DBGridContas: TDBGrid;
    BitBtn6: TBitBtn;
    MemoPessoa: TMemo;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridAnotacoes: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DbTipoStatus: TDBLookupComboBox;
    GroupBox9: TGroupBox;
    CheckContasBoletos: TCheckBox;
    CheckContasGarantidos: TCheckBox;
    CheckContasPagas: TCheckBox;
    CheckContasPendentes: TCheckBox;
    CheckContasContratos: TCheckBox;
    CheckContasImoveis: TCheckBox;
    LbTotais: TLabel;
    ChartFluxo: TChart;
    Series2: TLineSeries;
    BitBtn3: TBitBtn;
    DBMemo3: TDBMemo;
    DBEdit16: TDBEdit;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    CheckContasContratosAtivos: TCheckBox;
    btnValoresNormais: TBitBtn;
    BtnValoresCalculados: TBitBtn;
    BitBtn7: TBitBtn;
    lbEntEfetuadasNormal: TLabel;
    lbSaiEfeuadasNormal: TLabel;
    SaldoEfetuadasNormal: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    lbEntDiferencaNormal: TLabel;
    lbSaiDiferencaNormal: TLabel;
    SaldonNaoEfetuadasNormal: TLabel;
    lbEntEsperadasNormal: TLabel;
    lbSaiEsperadasNormal: TLabel;
    SaldoPrevistaNormal: TLabel;
    CheckContasProprietarios: TCheckBox;
    PopupMenuPessoas: TPopupMenu;
    SelecionarConta1: TMenuItem;
    RemoverConta1: TMenuItem;
    NovaSeleo1: TMenuItem;
    N1: TMenuItem;
    Irparapessoa1: TMenuItem;
    DadosBancrios1: TMenuItem;
    N4: TMenuItem;
    ValorBase1: TMenuItem;
    AdicionarValor1: TMenuItem;
    RetirarValor1: TMenuItem;
    CadastrodeContratos1: TMenuItem;
    GerarCartadeCobranaModeloRelatrio1: TMenuItem;
    TabLogCobranca: TTabSheet;
    Panel6: TPanel;
    BitBtn8: TBitBtn;
    ZlogCobranca: TZQuery;
    gridlogcobranca: TDBGrid;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DS_LogCobranca: TDataSource;
    CheckContasContratosMarcados: TCheckBox;
    CheckContasDeposito: TCheckBox;
    procedure CheckContasDepositoClick(Sender: TObject);
    procedure CheckContasContratosMarcadosMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckContasContratosMarcadosClick(Sender: TObject);
    procedure TabLogCobrancaHide(Sender: TObject);
    procedure TabCobrancaHide(Sender: TObject);
    procedure TabLogCobrancaShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RetirarValor1Click(Sender: TObject);
    procedure GerarCartadeCobranaModeloRelatrio1Click(Sender: TObject);
    procedure AdicionarValor1Click(Sender: TObject);
    procedure CadastrodeContratos1Click(Sender: TObject);
    procedure Irparapessoa1Click(Sender: TObject);
    procedure NovaSeleo1Click(Sender: TObject);
    procedure RemoverConta1Click(Sender: TObject);
    procedure SelecionarConta1Click(Sender: TObject);
    procedure CheckContasPendentesClick(Sender: TObject);
    procedure CheckContasProprietariosClick(Sender: TObject);
    procedure DBGridContasDblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BtnValoresCalculadosClick(Sender: TObject);
    procedure btnValoresNormaisClick(Sender: TObject);
    procedure tab_5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure CheckContasContratosAtivosClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckContasImoveisClick(Sender: TObject);
    procedure CheckContasContratosClick(Sender: TObject);
    procedure CheckContasGarantidosClick(Sender: TObject);
    procedure CheckContasBoletosClick(Sender: TObject);
    procedure CheckContasPagasClick(Sender: TObject);
    procedure CheckContasImoveisMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CheckContasContratosMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CheckContasGarantidosMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckContasPendentesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CheckContasPagasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridPessoaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPessoaColExit(Sender: TObject);
    procedure TabCobrancaShow(Sender: TObject);
    procedure data_fimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure data_iniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelecaoImpressaoDblClick(Sender: TObject);
    procedure MenuInformacaoCategories3Items2Click(Sender: TObject);
    procedure DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TabSaldosHide(Sender: TObject);
    procedure TabSaldosShow(Sender: TObject);
    procedure CheckContasBoletosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TabSheet3Show(Sender: TObject);
    procedure MenuInformacaoCategories2Items9Click(Sender: TObject);
    procedure MenuInformacaoCategories2Items8Click(Sender: TObject);
    procedure MenuInformacaoCategories2Items5Click(Sender: TObject);
    procedure data_fimCloseUp(Sender: TObject);
    procedure data_iniCloseUp(Sender: TObject);
    procedure CheckTudoClick(Sender: TObject);
    procedure btnMovimentarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure comboDestinoChange(Sender: TObject);
    procedure comboOrigemChange(Sender: TObject);
    procedure btnMovimentarClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure MenuInformacaoCategories2Items7Click(Sender: TObject);
    procedure Grid_SaidaDblClick(Sender: TObject);
    procedure Grid_EntradaDblClick(Sender: TObject);

    procedure ContasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckTudoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnPesquisarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ValorSaida_PrevistaMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ValorSaida_RealizadoMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ValorSaida_DiferencaMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure BalancoRealizadasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BalancoPrevistasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ValorEntrada_DiferencaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure ValorEntrada_PrevistaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure ValorEntrada_RealizadoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_SaidaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Grid_EntradaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure chkgrupoClick(Sender: TObject);
    procedure chksubgrupoClick(Sender: TObject);
    procedure GerarFiltroClick(Sender: TObject);
    procedure RadioPropSomenteUmClick(Sender: TObject);
    procedure RadioPropTodosClick(Sender: TObject);
    procedure BitBtnBuscaPessoaClick(Sender: TObject);
    procedure chkcategoriaClick(Sender: TObject);
    procedure RadioImoSomenteUmClick(Sender: TObject);
    procedure RadioImoTodosClick(Sender: TObject);
    procedure MenuInformacaoCategories3Items0Click(Sender: TObject);
    procedure EditNomePessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeImovelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnBuscaImovelClick(Sender: TObject);
    procedure chkstatusClick(Sender: TObject);
    procedure MenuInformacaoCategories2Items0Click(Sender: TObject);
    procedure MenuInformacaoCategories2Items2Click(Sender: TObject);
    procedure MenuInformacaoCategories2Items3Click(Sender: TObject);
    procedure MenuInformacaoCategories3Items1Click(Sender: TObject);
    procedure MenuInformacaoCategories2Items4Click(Sender: TObject);
    procedure MenuInformacaoCategories2Items6Click(Sender: TObject);
    procedure verificaPermissaoTela();
  private

  public
        Contas, rowPessoas: TStringList;
        SQL1, SQL2, SQL3, ZCONTA, ZCONTAENTRADA, ZCONTASAIDA: TZQuery;
        ValorEntradaRealizada, ValorEntradaPrevista, ValorSaidaRealizada, ValorSaidaPrevista: Currency;
        FormCriador: TForm;
        FormCriadorConteudo,Where, Where2, condicao: String;
        DataInicial,DataFinal: TDateTime;
        FormCriatura: TFormClass;
        opcao: Smallint;
        function getWhere(caixa: String; retirar: String): String;
        Function PrimeiroDiaMes (Data : TDateTime; lSabDom : Boolean) : TDateTime;
        Function UltimoDiaMes (Data : TDateTime; lSabDom : Boolean) : TDateTime;
        function getCategoria(Alias: String): String;
        function getGrupo(): String;
        function getSubGrupo(): String;
        function getStatus(caixa: String): String;
        procedure calculaTotais();
        function getNomeCategoria(): String;


  end;

var
  CAD_FluxoCaixa: TCAD_FluxoCaixa;
  Fechar : Smallint;

implementation

uses FrmDM_FINANCEIRO, FrmPrincipal, unCamposBusca, FrmDM_REL, RpRave,
  FrmDM_Cadastro, unINI, unFinanceiro, unUtilitario, FrmCaixas,
  FrmDM_RELATORIOS, unWord, unLog, unMsg, FrmCaixasSimples, unCaixasSimples,
  FrmDM_ADMIN, FrmPessoa;

{$R *.dfm}

Function TCAD_FluxoCaixa.PrimeiroDiaMes (Data : TDateTime; lSabDom : Boolean) : TDateTime;
var
   Ano, Mes, Dia : word;
   DiaDaSemana : Integer;
begin
     DecodeDate (Data, Ano, Mes, Dia);
     Dia := 1;
     if lSabDom Then
     begin
          DiaDaSemana := DayOfWeek (Data);
          if DiaDaSemana = 1 Then
             Dia := 2
          else
          if DiaDaSemana = 7 Then
             Dia := 3;
     end;
     PrimeiroDiaMes := EncodeDate (Ano, Mes, Dia);
end;

procedure TCAD_FluxoCaixa.RadioImoSomenteUmClick(Sender: TObject);
begin
     EditNomeImovel.Enabled := True;
     BitBtnBuscaImovel.Enabled := True;
     ZFiltroImovel.Close;
end;

procedure TCAD_FluxoCaixa.RadioImoTodosClick(Sender: TObject);
begin
     EditNomeImovel.Enabled := False;
     BitBtnBuscaImovel.Enabled := False;
     ZFiltroImovel.Close;
end;

procedure TCAD_FluxoCaixa.RadioPropSomenteUmClick(Sender: TObject);
begin
     EditNomePessoa.Enabled := True;
     BitBtnBuscaPessoa.Enabled := True;
     ZFiltroPessoa.Close;
end;

procedure TCAD_FluxoCaixa.RadioPropTodosClick(Sender: TObject);
begin
     EditNomePessoa.Enabled := False;
     BitBtnBuscaPessoa.Enabled := False;
     ZFiltroPessoa.Close;
end;

procedure TCAD_FluxoCaixa.RemoverConta1Click(Sender: TObject);
begin

     if DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').IsNull then
        Exit;

     rowPessoas.Delete(rowPessoas.IndexOf(DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsString));
end;

procedure TCAD_FluxoCaixa.RetirarValor1Click(Sender: TObject);
var ar: array of string;
      I: Integer;
      sqlConsulta: TZQuery;
begin

     IF unUtilitario.setMensagem('Você deseja enviar um EMAIL para as pessoas selecionadas avisando que existem pendências financeiras?','confirma') = IDYES Then
     Begin
          PRINCIPAL.setMensagem('ENVIANDO NOTIFICAÇÕES DE COBRANÇA! Esta operação pode demorar anguns minutos...');
          
          for I := 0 to rowPessoas.Count - 1 do
          Begin
               sqlConsulta := unUtilitario.getSelect('select YAHOO, EMAIL, NOME from pessoa where id_pessoa = '+rowPessoas[I]);
               sqlConsulta.SQL.Text;

               espera(4,'Enviando email para '+sqlConsulta.FieldByName('nome').AsString+'...');

               if not sqlConsulta.FieldByName('email').IsNull then
                  if Length(Trim(sqlConsulta.FieldByName('email').AsString)) > 0 then
                     PRINCIPAL.enviaEmail(0, 'FINANCEIRO '+getConf('EMPRESA_FANTASIA'), sqlConsulta.FieldByName('email').AsString, sqlConsulta.FieldByName('nome').AsString, '', 'OLÁ '+sqlConsulta.FieldByName('nome').AsString+', VERIFICAMOS QUE CONSTA EM NOSSO SISTEMA DÉBITOS EM SUA LOCAÇÃO. PEDIMOS A VOSSA SENHORIA, A IMEDIATA REGULARIZAÇÃO DO DÉBITO ENTRANDO EM CONTATO CONOSCO.'+' POR SE TRATAR DE UM ENVIO AUTOMÁTICO, CASO JÁ TENHA REALIZADO O PAGAMENTO, POR FAVOR, DESCONSIDERE ESTE AVISO. ATENCIOSAMENTE DEP. FINANCEIRO.');

               if not sqlConsulta.FieldByName('yahoo').IsNull then
                  if Length(Trim(sqlConsulta.FieldByName('yahoo').AsString)) > 0 then
                     PRINCIPAL.enviaEmail(0, 'FINANCEIRO '+getConf('EMPRESA_FANTASIA'), sqlConsulta.FieldByName('yahoo').AsString, sqlConsulta.FieldByName('nome').AsString, '', 'OLÁ '+sqlConsulta.FieldByName('nome').AsString+', VERIFICAMOS QUE CONSTA EM NOSSO SISTEMA DÉBITOS EM SUA LOCAÇÃO. PEDIMOS A VOSSA SENHORIA, A IMEDIATA REGULARIZAÇÃO DO DÉBITO ENTRANDO EM CONTATO CONOSCO.'+' POR SE TRATAR DE UM ENVIO AUTOMÁTICO, CASO JÁ TENHA REALIZADO O PAGAMENTO, POR FAVOR, DESCONSIDERE ESTE AVISO. ATENCIOSAMENTE DEP. FINANCEIRO.');

               sqlConsulta.Close;
          end;

          FreeAndNil(sqlConsulta);
     end;

     PRINCIPAL.setMensagem('PROCESSO CONCLUÍDO!');
end;

function TCAD_FluxoCaixa.getWhere(caixa: String; retirar: String): String;
Var cod: integer;
begin

     if data_ini.date > data_fim.date then
     begin
          unUtilitario.setMensagem('Atenção! A data inicial não pode ser maior que a final!','erro');
          data_ini.SetFocus;
          exit;
     end;

     Result := ' WHERE ';

if NOT CheckTudo.Checked Then
     if RadioVencimento.Checked Then
        Result := Result + ' (C.data_ref >= '''+formataDataSQL(DateToStr(data_ini.date))+''' AND C.data_ref <= '''+formataDataSQL(DateToStr(data_fim.date))+''')'
     else
         Result := Result + ' (C.data_pgto >= '''+formataDataSQL(DateToStr(data_ini.date))+''' AND C.data_pgto <= '''+formataDataSQL(DateToStr(data_fim.date))+''')'
ELSE
     if RadioVencimento.Checked Then
        Result := Result + ' ( C.data_ref <= '''+formataDataSQL(DateToStr(data_fim.date))+''')'
     else
         Result := Result + ' ( C.data_pgto <= '''+formataDataSQL(DateToStr(data_fim.date))+''')';


     Result := Result + ' AND ';

     retirar := UpperCase(' '+retirar);

     if Pos('CHECKCONTASPAGAS', retirar) = 0 then
     Begin
          if CheckContasPagas.State = cbChecked then //PAGAS
             Result := Result + ' C.data_pgto IS NOT NULL AND ';

          if CheckContasPagas.State = cbUnchecked then // NAO PAGAS
             Result := Result + ' C.data_pgto IS NULL AND ';
     end;

     if Pos('CHECKCONTASBOLETOS', retirar) = 0 then
     Begin
          if CheckContasBoletos.State = cbChecked then // BOLETOS SIM
             Result := Result + ' C.OPERACAO LIKE ''%BOLETO_EMITIDO%'' AND ';

          if CheckContasBoletos.State = cbUnchecked then // BOLETOS NAO
             Result := Result + ' C.OPERACAO NOT LIKE ''%BOLETO_EMITIDO%'' AND ';
     end;

     if Pos('CHECKCONTASPENDENTES', retirar) = 0 then
     Begin
          if CheckContasPendentes.State = cbChecked then // PENDENTE SIM
             Result := Result + ' C.PENDENTE = ''SIM'' AND ';

          if CheckContasPendentes.State = cbUnchecked then // PENDENTE NAO
             Result := Result + ' C.PENDENTE = ''NAO'' AND ';
     end;

     if Pos('CHECKCONTASGARANTIDOS', retirar) = 0 then
     Begin
      if CheckContasGarantidos.State = cbChecked then // GARANTIDO SIM
        Result := Result + ' C.GARANTIDO = ''SIM'' AND ';

      if CheckContasGarantidos.State = cbUnchecked then // GARANTIDO NAO
        Result := Result + ' C.GARANTIDO = ''NAO'' AND ';
     end;

     if Pos('CHECKCONTASCONTRATOS', retirar) = 0 then
     Begin
      if CheckContasContratos.State = cbChecked then // CONTRATOS SIM
        Result := Result + ' C.ID_CONTRATO IS NOT NULL AND ';

      if CheckContasContratos.State = cbUnchecked then // CONTRATOS NAO
        Result := Result + ' C.ID_CONTRATO IS NULL AND ';
     end;

     if Pos('CHECKCONTASCONTRATOSATIVOS', retirar) = 0 then //ESTE ENTRA NA VALIDACAO DO CHECKCONTASCONTRATOS
     Begin
          if CheckContasContratosAtivos.State = cbChecked then // CONTRATOS SIM
             Result := Result + ' CONT.ATIVO = ''SIM'' AND ';

          if CheckContasContratosAtivos.State = cbUnchecked then // CONTRATOS NAO
             Result := Result + ' CONT.ATIVO = ''NAO'' AND ';
     end;

     if Pos('CHECKCONTASIMOVEIS', retirar) = 0 then
     Begin
      if CheckContasImoveis.State = cbChecked then // IMOVEL SIM
        Result := Result + ' C.ID_IMOVEL IS NOT NULL AND ';

      if CheckContasImoveis.State = cbUnchecked then // IMOVEL NAO
        Result := Result + ' C.ID_IMOVEL IS NULL AND ';
     end;

     if Pos('CHECKCONTASPROPRIETARIOS', retirar) = 0 then
     Begin
      if CheckContasProprietarios.State = cbChecked then // LOCADOR = PROPRIETARIO
        Result := Result + ' C.ID_PESSOA IN (SELECT X.ID_PESSOA FROM PESSOA_IMOVEL X WHERE X.STATUS = ''PROPRIETARIO'' ) AND ';

      if CheckContasProprietarios.State = cbUnchecked then // LOCATÁRIO = INQUILINO
        Result := Result + ' C.ID_PESSOA IN (SELECT X.ID_PESSOA FROM PESSOA_CONTRATO X WHERE X.TIPO LIKE ''LOCAT_RIO'' or X.TIPO LIKE ''INQUILINO'' ) AND ';
     end;

     if Pos('CHECKCONTASCONTRATOSMARCADOS', retirar) = 0 then
     Begin
      if CheckContasContratosMarcados.State = cbChecked then // CONTRATO MARCADO SIM
        Result := Result + ' CONT.HONORARIO_APOS IN (1, 2) AND ';

      if CheckContasContratosMarcados.State = cbUnchecked then // CONTRATO MARCADO NAO
        Result := Result + ' (CONT.HONORARIO_APOS = 0 OR CONT.HONORARIO_APOS is NULL) AND ';
     end;

     if Pos('CHECKCONTASDEPOSITO', retirar) = 0 then
     Begin
      if CheckContasDeposito.State = cbChecked then // CONTRATO COM DEPOSITO
        Result := Result + ' CONT.HONORARIO_ADMIN = ''SIM'' AND ';

      if CheckContasDeposito.State = cbUnchecked then // CONTRATO SEM DEPOSITO
        Result := Result + ' CONT.HONORARIO_ADMIN = ''NAO'' AND ';
     end;


     if CheckPessoa.Checked Then
     Begin
        if NOT ZFiltroPessoa.Active Then
        Begin
             unUtilitario.setMensagem('Escolha uma Pessoa!','erro');
             Exit;
        End;

        Result := Result + ' C.id_pessoa = '+ZFiltroPessoa.FieldByName('ID_PESSOA').AsString+' AND ';
     End;

     if CheckImoveis.Checked Then
     Begin
        if NOT ZFiltroImovel.Active Then
        Begin
             unUtilitario.setMensagem('Escolha um Imóvel!','erro');
             Exit;
        End;

        Result := Result + ' C.id_imovel = '+ZFiltroImovel.FieldByName('ID_IMOVEL').AsString+' AND ';
     End;

     if CheckUsuarios.Checked Then
     Begin
        if not Length(Trim(EditNomeUsuario.Items.Strings[EditNomeUsuario.ItemIndex])) > 0 Then
        Begin
             unUtilitario.setMensagem('Escolha um Usuário!','erro');
             Exit;
        End;

        Result := Result + ' C.ID_FUNCIONARIO = '+IDCampoSTR(EditNomeUsuario.Items.Strings[EditNomeUsuario.ItemIndex])+' AND ';
     End;

     Result := Result + getCategoria('C');
     Result := Result + ' AND ';

     Result := Result + getGrupo();
     Result := Result + ' AND ';

     Result := Result + getSubGrupo();
     Result := Result + ' AND ';

      for cod := 0 to listStatus.Items.Count - 1 do
          if listStatus.items[cod].Checked = true then
          Begin
               Result := Result + getStatus(caixa);
               Result := Result + ' AND ';
               Break;
          end;

      Result := Result + ' C.ATIVO = ''SIM'' ';
end;

function TCAD_FluxoCaixa.getStatus(caixa: String): String;
Var i: Integer;
begin

     if UpperCase(caixa) = 'ENTRADA' Then
     Begin
     
          result := ' C.ID_CAIXA in (select CXST.id_caixa_ENTRADA from caixa_status CXST where CXST.id_status in (';

          for i := 0 to listStatus.Items.Count - 1 do
              if listStatus.items[i].Checked = true then
                 result := result + IntToStr(unCamposBusca.IDCampo(listStatus.Items[i].Caption))+ ', ';
                                  
          result := result + '0)) ';
          Exit;
     End;

     if UpperCase(caixa) = 'SAIDA' Then
     Begin
     
          result := ' C.ID_CAIXA in (select CXST.id_caixa_SAIDA from caixa_status CXST where CXST.id_status in (';

          for i := 0 to listStatus.Items.Count - 1 do
              if listStatus.items[i].Checked = true then
                 result := result + IntToStr(unCamposBusca.IDCampo(listStatus.Items[i].Caption))+ ', ';

          result := result + '0)) ';
          Exit;
     End;

     //Não retorna nada
     result := ' ';
end;

function TCAD_FluxoCaixa.getCategoria(Alias: String): String;
Var i: Integer;
begin
     result := Alias+'.ID_CATEGORIA IN (';

     for i := 0 to ListCategoria.Items.Count - 1 do
         if ListCategoria.items[i].Checked = true then
            result := result + IntToStr(unCamposBusca.IDCampo(ListCategoria.Items[i].Caption))+ ', ';

     result := result + '0) ';
end;

function TCAD_FluxoCaixa.getNomeCategoria(): String;
Var i: Integer;
begin
     result := ' ';

     for i := 0 to ListCategoria.Items.Count - 1 do
         if ListCategoria.items[i].Checked = true then
            result := result + ListCategoria.Items[i].Caption+', ';

     if Length(trim(result)) = 0 then
        result := 'Nenhuma Categoria.'
     else
         result := trim(result);
end;

function TCAD_FluxoCaixa.getGrupo(): String;
Var i: Integer;
begin
     result := ' C.ID_TIPO IN (';

     for i := 0 to ListGrupo.Items.Count - 1 do
         if ListGrupo.items[i].Checked = true then
            result := result + IntToStr(unCamposBusca.IDCampo(ListGrupo.Items[i].Caption))+ ', ';

     result := result + '0) ';
end;

function TCAD_FluxoCaixa.getSubGrupo(): String;
Var i: Integer;
begin
     result := ' C.ID_SUBTIPO IN (';

     for i := 0 to listsubgrupo.Items.Count - 1 do
         if listsubgrupo.items[i].Checked = true then
            result := result + IntToStr(unCamposBusca.IDCampo(listsubgrupo.Items[i].Caption))+ ', ';

     result := result + '0) ';
end;

procedure TCAD_FluxoCaixa.SelecaoImpressaoDblClick(Sender: TObject);
Var textoSelecao, order, sql, Texto, html, a1, a2, a3: String;
    i,x,y: Smallint;
    Din1, Din2, b1, b2, b3: Double;
    varSQL, varSQL1, varSQL2: TZQuery;
    ArquivoRel: TextFile;
    data: TDateTime;
    meses: TStringList;
    escolhidoPeriodo: Integer;
    escolhidoContas: Integer;
begin
     If SelecaoImpressao.Selected[SelecaoImpressao.ItemIndex] then
        textoSelecao := UpperCase(SelecaoImpressao.Items[SelecaoImpressao.ItemIndex])
     else
     Begin
          setMensagem('Selecione uma opção abaixo clicando 2x sobre ela para gerar o relatório.','erro');
          exit;
     end;

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
     Begin
          setMensagem('Favor usar o filtro na aba anterior para poder gerar os contratos...','erro');
          exit;
     end;


//ELABORAÇÃO DOS RELATÓRIOS
TRY
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('CONTAS INDIVIDUAIS'))) <> NIL THEN
     BEGIN
          case opcao of
               2: textoSelecao := '- Contas Individuais Resumido';
               3: textoSelecao := '- Contas Individuais Super Resumido';
               5: textoSelecao := '- Contas Estornadas';
               6: textoSelecao := '- Total das Categorias com Contas';
               else
                    textoSelecao := '- Contas Individuais';
          end;

          order := Trim(InputBox('Escolha a Ordenação:',
          '1 - Data de Venc. / Pessoa.;'+#13+
          '2 - Data de Pgto. / Pessoa.;'+#13+
          '3 - Data de Pgto. / Data de Venc.;'+#13+
          '4 - Endereço. / Data de Venc.;'+#13+
          '5 - Código.;'+#13+
          '6 - Pessoa. / Data de Venc.;'+#13+
          '7 - Data de Venc. / Parcela.;','1'));
          if not verificaStringInt(order) Then
          begin
               setMensagem('Favor informar um NÚMERO válido!','erro');
               Exit;
          end;

          GerarFiltroClick(Sender);

          if order = '2' then
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by c.data_pgto DESC, p.nome ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by c.data_pgto DESC, p.nome ');
          end
          else
          if order = '3' then
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by c.data_pgto DESC, c.data_ref ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by c.data_pgto DESC, c.data_ref ');
          end
          else
          if order = '4' then
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by L.nome, c.data_ref ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by L.nome, c.data_ref ');
          end
          else
          if order = '5' then
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by c.id_caixa ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by c.id_caixa ');
          end
          else
          if order = '6' then
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by p.nome, c.data_ref DESC ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by p.nome, c.data_ref DESC ');
          end
          else
          if order = '7' then
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by c.data_ref, c.parcela ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by c.data_ref, c.parcela ');
          end
          else
          Begin
               ZEntrada.close;
               ZEntrada.SQL.Add(' order by c.data_ref DESC, p.nome ');
               ZSaida.close;
               ZSaida.SQL.Add(' order by c.data_ref DESC, p.nome ');
          end;

          if opcao = 5 then
          Begin
               ZEntrada.SQL.Text := StringReplace(ZEntrada.SQL.Text, 'WHERE ','WHERE (C.anotacao like ''%ESTORNADA%'') AND ',[rfReplaceAll,rfIgnoreCase]);
          end;

          ZEntrada.Open;
          ZSaida.Open;

          DM_REL.RV_Query.DataSet := ZEntrada;
          DM_REL.RV_Query2.DataSet := ZSaida;

          ZEntrada.First;
          ZSaida.First;

          if CheckPessoa.Checked Then
          Begin
               DM_REL.RV_IMPRESSAO.SetParam('PessoaNome', ZFiltroPessoa.FieldByName('NOME').AsString);
               DM_REL.RV_IMPRESSAO.SetParam('NomeRelatorio', 'RECIBO');
               DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaEntrada', 'Descontos da Imobiliária');
               DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaSaida', 'Pagamentos - '+ZFiltroPessoa.FieldByName('NOME').AsString);
          end
          ELSE
          begin
               DM_REL.RV_IMPRESSAO.SetParam('PessoaNome', 'Assinatura do Responsável');
               DM_REL.RV_IMPRESSAO.SetParam('NomeRelatorio', 'RELATÓRIO '+Trim(textoSelecao));
               DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaEntrada', 'Caixa Entrada');
               DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaSaida', 'Caixa Saída');
          end;

          DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption+' - '+getNomeCategoria());

          DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
          DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
          DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

          DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
          DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
          DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

          DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
          DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
          DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);


          if opcao = 2 then
          Begin
               Texto := UpperCase(Trim(InputBox('Informe o Valor:','Entre com o valor em DINHEIRO e o CAIXA que será recebido.'+#13+'Deixar em Branco ou usar Ex: 100,00 (Caixa Interno)','0,00 ()')));

               if Length(Texto) = 0 then
                  DM_REL.RV_IMPRESSAO.SetParam('varFormaDinheiro', '')
               else
                   DM_REL.RV_IMPRESSAO.SetParam('varFormaDinheiro', 'Dinheiro: R$ '+Texto);


               Texto := UpperCase(Trim(InputBox('Informe o Valor:','Entre com o valor em CHEQUE e o CAIXA que será recebido.'+#13+'Deixar em Branco ou usar Ex: 100,00 (Caixa Externo)','0,00 ()')));

               if Length(Texto) = 0 then
                  DM_REL.RV_IMPRESSAO.SetParam('varFormaCheque', '')
               else
                   DM_REL.RV_IMPRESSAO.SetParam('varFormaCheque', 'Cheque: R$ '+Texto);
          end;

          DM_REL.RV_IMPRESSAO.Close;

         if opcao = 2 then
         Begin
              DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA1.rav';
              setRave(1,'','');
         end
         ELSE            
         if opcao = 4 then
         Begin
              
              DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA3.rav';
              setRave(1,'','');
         end
         ELSE
         if opcao = 3 then
         Begin

              varSQL := unUtilitario.getSelect('select '+
        ' CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') is null THEN 0 ELSE  '+
        ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') '+
        ' END - CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') is null THEN 0 ELSE '+
        ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') '+
        ' END from RDB$DATABASE');

             DM_REL.RV_IMPRESSAO.SetParam('xValorTotal', varSQL.Fields[0].AsString);

              DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA2.rav';
              setRave(1,'RELATÓRIO - CONTAS INDIVIDUAIS SUPER RESUMIDO','');
         end
         else
         if opcao = 6 then
         Begin
              GerarFiltroClick(Sender);
              varSQL := unUtilitario.getSelect('select '+
              ' CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') is null THEN 0 ELSE  '+
              ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') '+
              ' END - CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') is null THEN 0 ELSE '+
              ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') '+
              ' END from RDB$DATABASE');

              DM_REL.RV_IMPRESSAO.SetParam('xValorTotal', varSQL.Fields[0].AsString);

              ZEntrada.Close;
              ZEntrada.SQL.Add(' order by CAT.nome, C.data_ref, C.data_pgto, P.nome ');
              ZEntrada.Open;
              ZEntrada.First;
              DM_REL.RV_Query.DataSet := ZEntrada;

              ZSaida.Close;
              ZSaida.SQL.Add(' order by CAT.nome, C.data_ref, C.data_pgto, P.nome  ');
              ZSaida.Open;
              ZEntrada.First;
              DM_REL.RV_Query2.DataSet := ZSaida;

              DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA4.rav';
              setRave(1,'RELATÓRIO - TOTAL DAS CATEGORIAS COM CONTAS','');
         end
         ELSE
         BEGIN
              DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA1.rav';
              setRave(1,'RELATÓRIO - CONTAS INDIVIDUAIS','');
         end;

         if ((opcao = 2) or (opcao = 4)) and (CheckPessoa.Checked) then
            if setMensagem('Deseja quitar todas as contas do relatório que acabou de visualizar?'+#13+'Contas já quitadas não são alteradas.'+#13+'As contas abertas são quitadas com a data de hoje:'+datetostr(date())+#13+'Deseja quitar: '+#13+IntToStr(ZEntrada.RecordCount)+' contas do Caixa Entrada'+#13+IntToStr(ZSaida.RecordCount)+' contas do Caixa Saída','confirma') = IDYES Then
            Begin
                 varSQL := unUtilitario.getSQL('update caixa_ENTRADA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp where data_pgto is null and id_caixa '+unUtilitario.descobreIDSelect(ZEntrada,'ID_CAIXA'));
                 varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp where data_pgto is null and id_caixa '+unUtilitario.descobreIDSelect(ZSaida,'ID_CAIXA'));

                 //Depois implementart a opção de pagamento com dinheiro e echeque

                 unUtilitario.setMensagem('Ação realizada. Confira as contas e verifique a quitação.','informa');
                 FreeAndNil(VARSQL);
            end;

         opcao := 0;
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Agrupar Valores por Pessoas do Caixa Saída'))) <> NIL THEN
     BEGIN
          
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(
           ' select DISTINCT(P.id_pessoa), p.nome, SUM( (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)) ), count(1), list(extract(month from C.data_ref), '', '') as parcelas, '+
           ' substring(List((select first 1 skip 0 con.HONORARIO_ADMIN from contrato con where con.id_contrato = C.id_contrato), '''') from 1 for 3) as deposito from caixa_saida C '+
           ' LEFT JOIN CAIXA_SIS CAT ON CAT.id_caixa_sis = C.id_categoria'+
           ' LEFT JOIN CAIXA_SIS GRU ON GRU.id_caixa_sis = C.id_tipo'+
           ' LEFT JOIN CAIXA_SIS SUB ON SUB.id_caixa_sis = C.id_subtipo'+
           ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa'+
           ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'+
           ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'+
           ' LEFT JOIN USUARIO USU ON USU.id_usuario = C.id_funcionario'+
           ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'+
           ' '+ getWhere('SAIDA','') +
           ' group by P.id_pessoa, p.nome '+
           ' order by P.nome ');
           DM_REL.ZQUERY1.SQL.Text;
           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_GRUPO_PESSOAS_VALORES.rav';

           setRave(1, textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Caixa Simplificado do Dia'))) <> NIL THEN
     BEGIN
          PRINCIPAL.CriarForm(TCAD_Caixas, Self, '0');
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Caixa do Dia por Usuário'))) <> NIL THEN
     BEGIN

          //BUSCA CONTAS
          sql := ' select ''E'' as caixa, u.nome as usuario, u.id_usuario, ce.id_caixa, p.nome as pessoa, ce.data_ref, ce.data_pgto, ce.data_pgto - ce.data_ref as data_dif, ce.valor, '+
          ' (select result from spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as valor_calc, '+
          ' ce.valor_multa, ce.valor_juros, ce.valor_desconto, '+
          ' cat.nome as categoria, '+
          ' tip.nome as tipo, stip.nome as subtipo from usuario u '+
          ' inner join caixa_entrada ce on ce.id_funcionario = u.id_usuario '+
          ' left join pessoa p on p.id_pessoa = ce.id_pessoa '+
          ' left join caixa_sis cat on cat.id_caixa_sis = ce.id_categoria '+
          ' left join caixa_sis tip on tip.id_caixa_sis = ce.id_tipo '+
          ' left join caixa_sis stip on stip.id_caixa_sis = ce.id_subtipo '+
          ' where id_caixa '+unUtilitario.descobreIDSelect(ZEntrada,'ID_CAIXA')+' union all '+
          ' select ''S'' as caixa, u.nome as usuario, u.id_usuario, ce.id_caixa, p.nome as pessoa, ce.data_ref, ce.data_pgto, ce.data_pgto - ce.data_ref as data_dif, ce.valor - 2* ce.valor as valor, '+
          ' (select result from spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) - 2* '+
          ' (select result from spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as valor_calc, '+
          ' ce.valor_multa, ce.valor_juros, ce.valor_desconto, '+
          ' cat.nome as categoria, '+
          ' tip.nome as tipo, stip.nome as subtipo from usuario u '+
          ' inner join caixa_saida ce on ce.id_funcionario = u.id_usuario '+
          ' left join pessoa p on p.id_pessoa = ce.id_pessoa '+
          ' left join caixa_sis cat on cat.id_caixa_sis = ce.id_categoria '+
          ' left join caixa_sis tip on tip.id_caixa_sis = ce.id_tipo '+
          ' left join caixa_sis stip on stip.id_caixa_sis = ce.id_subtipo '+
          ' where id_caixa '+unUtilitario.descobreIDSelect(ZSaida,'ID_CAIXA')+
          ' order by 2, 14, 15, 16, 1, 5 ';
     

           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(sql);
           DM_REL.ZQUERY1.Open;
           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;


          sql := ' SELECT distinct(u.nome) from usuario u where '+
          ' u.id_usuario in (select ce.id_funcionario from caixa_entrada ce where ce.id_caixa '+unUtilitario.descobreIDSelect(ZEntrada,'ID_CAIXA')+') or '+
          ' u.id_usuario in (select cs.id_funcionario from caixa_saida cs where cs.id_caixa '+unUtilitario.descobreIDSelect(ZSaida,'ID_CAIXA')+') '+
          ' order by u.nome';

           DM_REL.ZQUERY2.Close;
           DM_REL.ZQUERY2.SQL.Clear;
           DM_REL.ZQUERY2.SQL.Add(sql);
           DM_REL.ZQUERY2.Open;
           DM_REL.RV_Query2.DataSet := DM_REL.ZQUERY2;


           DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00');

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_OPERADOR.rav';

           sql := FormatDateTime('ddmmyy-hhnnss', Date+Time);
           setRave(1,'FECHAMENTO DE CAIXA '+sql,'');
           DM_REL.ZQUERY1.Close;

           setLog('CAIXA DO DIA POR USUARIO = '+SaldoEfetuadas.Caption, 'RELATÓRIO', Self.Caption+'-'+LbPeriodo.Caption+'='+sql, DM_REL.ZQUERY1);
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Recibo Simples do Proprietário'))) <> NIL THEN
     BEGIN
          for i := 0 to SelecaoImpressao.Count - 1 Do
              if StrPos(pchar(SelecaoImpressao.Items.Strings[i]), pchar('CONTAS INDIVIDUAIS')) <> NIL Then
              Begin
                 if NOT CheckPessoa.Checked Then
                 Begin
                      setMensagem('Busque uma pessoa na aba anterior (Outros Filtros > Pessoa (procure uma pessoa) > Usar Filtro) para usar este relatório."','informa');
                      Exit;
                 End;

                 opcao := 2;
                 SelecaoImpressao.Selected[i] := true;
                 SelecaoImpressaoDblClick(Sender);
                 Exit;
              end;
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Contas Estornadas'))) <> NIL THEN
     BEGIN
          for i := 0 to SelecaoImpressao.Count - 1 Do
              if StrPos(pchar(SelecaoImpressao.Items.Strings[i]), pchar('CONTAS INDIVIDUAIS')) <> NIL Then
              Begin
                 opcao := 5;
                 SelecaoImpressao.Selected[i] := true;
                 SelecaoImpressaoDblClick(Sender);
                 Exit;
              end;
     END
ELSE
    IF StrPos(pchar(textoSelecao), pchar(UpperCase('Recibo Geral do Proprietário'))) <> NIL THEN
    BEGIN
          for i := 0 to SelecaoImpressao.Count - 1 Do
              if StrPos(pchar(SelecaoImpressao.Items.Strings[i]), pchar('CONTAS INDIVIDUAIS')) <> NIL Then
              Begin
                 if NOT CheckPessoa.Checked Then
                 Begin
                      setMensagem('Busque uma pessoa na aba anterior (Outros Filtros > Pessoa (procure uma pessoa) > Usar Filtro) para usar este relatório."','informa');
                      Exit;
                 End;

                 DM_REL.RV_IMPRESSAO.SetParam('DadosBanco', ZFiltroPessoaICQ.AsString+' ('+ZFiltroPessoaAIM.AsString+')');
                 opcao := 4;
                 SelecaoImpressao.Selected[i] := true;
                 SelecaoImpressaoDblClick(Sender);
                 Exit;
              end;
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('- Resumido'))) <> NIL THEN
     BEGIN
          for i := 0 to SelecaoImpressao.Count - 1 Do
              if StrPos(pchar(SelecaoImpressao.Items.Strings[i]), pchar('CONTAS INDIVIDUAIS')) <> NIL Then
              Begin
                   opcao := 2;
                   SelecaoImpressao.Selected[i] := true;
                   SelecaoImpressaoDblClick(Sender);
                   Exit;
              end;
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Super Resumido'))) <> NIL THEN
     BEGIN
          for i := 0 to SelecaoImpressao.Count - 1 Do
              if StrPos(pchar(SelecaoImpressao.Items.Strings[i]), pchar('CONTAS INDIVIDUAIS')) <> NIL Then
              Begin
                   opcao := 3;
                   SelecaoImpressao.Selected[i] := true;
                   SelecaoImpressaoDblClick(Sender);
                   Exit;
              end;
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('VALORES ENVOLVIDOS'))) <> NIL THEN
     BEGIN
          setMensagem('Em breve um novo relatório estará disponível aqui.','informa');     
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('- Entrada'))) <> NIL THEN
     BEGIN
     
           unUtilitario.setMensagem('BASE ENTRADA'+#13+'Somente contas com vínculos são mostradas.'+#13+'Contas com vínculos são aquelas que possuem o código de outra contra conta/caixa em seu registro.'+
           #13+'Os dados de busca deste relatório são com base no caixa ENTRADA.'+
           #13+'NOTE QUE SE COMPARAR ESTE RELATÓRIO COM O DE SAÍDA, PODERÁ DAR RESULTADOS DIFERENTES, JÁ QUE AS DATAS BASE ESTÃO SENDO BUSCADAS EM DOIS CAIXAS DIFERENTES!','informa');

           Order := trim(InputBox('Opção de Taxa:','1 - Desejo que saia a taxa real da conta;'+#13+'2 - Desejo que saia a taxa do contrato;','1'));

           if Order = '1' then
           Begin
                sql := ' case when c.id_contrato > 0 then '+
                ' case when pi.porcentagem > 0 then '+
                ' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100) '+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) '+
                ' else '+
                ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
                ' end '+
                ' else '+
                ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
                'end as VALORTOTALTAXA, ';
           end
           else
           Begin

                sql := ' case when c.id_contrato > 0 then '+
                ' case when pi.porcentagem > 0 then '+
                  ' (((co.VALOR * co.TARIFA) / 100) * pi.porcentagem) / 100 '+
                ' else '+
                  ' (co.VALOR * co.TARIFA) / 100 '+
                ' end '+
                ' else '+
                 ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
                'end as VALORTOTALTAXA, ';
           end;


           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('select c.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) as VALORTOTALENTRADA, '+
            ' pe.*, '+
            ' ce.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', Ce.data_ref,Ce.data_pgto,Ce.valor,Ce.valor_juros,Ce.valor_multa,Ce.valor_desconto)) as VALORTOTALSAIDA, '+
            ' ps.*, '+
            ' co.*, '+
            ' i.*, '+
            ' l.*, '+
            ' csis.nome, '+ sql +
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100 '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end as CALCULOENTRADA '+
            ' from caixa_entrada c '+
            ' left join caixa_saida ce on ce.id_entrada = c.id_caixa '+
            ' left join pessoa pe on pe.id_pessoa = c.id_pessoa '+
            ' left join pessoa ps on ps.id_pessoa = ce.id_pessoa '+
            ' left join imovel i on i.id_imovel = c.id_imovel '+
            ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
            ' left join caixa_sis csis on csis.id_caixa_sis = c.id_subtipo '+
            ' left join contrato co on co.id_contrato = c.id_contrato '+
            ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
            getWhere('ENTRADA','')+' order by pe.nome');

            DM_REL.ZQUERY1.SQL.Text;

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption + ' (ENTRADA) '+getNomeCategoria());
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00');
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', 'Esta informação não esta ativa nesta opção por não ser mais necessária.');

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_VALORES_ENVOLVIDOS.rav';

           setRave(1,'','');
           DM_REL.ZQUERY1.Close;
           FreeAndNil(varSQL);
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('- Saída'))) <> NIL THEN
     BEGIN

           unUtilitario.setMensagem('BASE SAÍDA'+#13+'Somente contas com vínculos são mostradas, ok?'+#13+'Contas com vínculos são aquelas que possuem o código de outra contra conta/caixa em seu registro.'+
           #13+'Os dados de busca deste relatório são com base no caixa SAÍDA.'+
           #13+'NOTE QUE SE COMPARAR ESTE RELATÓRIO COM O DE ENTRADA, PODERÁ DAR RESULTADOS DIFERENTES, JÁ QUE AS DATAS BASE ESTÃO SENDO BUSCADAS EM DOIS CAIXAS DIFERENTES!','informa');

           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('select ce.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) as VALORTOTALENTRADA, '+
            ' pe.*, '+
            ' c.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) as VALORTOTALSAIDA, '+
            ' ps.*, '+
            ' co.*, '+
            ' i.*, '+
            ' l.*, '+
            ' csis.nome, '+
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) * pi.porcentagem) / 100) '+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' else '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))) '+
            ' end '+
            ' else '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))) '+
            'end as VALORTOTALTAXA, '+
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100 '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            'end as CALCULOENTRADA '+
            ' from caixa_saida c '+
            ' left join caixa_entrada ce on ce.id_caixa = c.id_entrada '+
            ' left join pessoa pe on pe.id_pessoa = ce.id_pessoa '+
            ' left join pessoa ps on ps.id_pessoa = c.id_pessoa '+
            ' left join imovel i on i.id_imovel = c.id_imovel '+
            ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
            ' left join caixa_sis csis on csis.id_caixa_sis = ce.id_subtipo '+
            ' left join contrato co on co.id_contrato = c.id_contrato '+
            ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
              getWhere('SAIDA','')+' order by pe.nome');

           DM_REL.ZQUERY1.Open;

           DM_REL.ZQUERY1.SQL.Text;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption + ' (SAÍDA) '+getNomeCategoria());

           varSQL := unUtilitario.getSelect('select '+
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' (((SELECT sum(RESULT) FROM spvalorcobranca1(1, C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100) '+
            ' else '+
            ' (SELECT sum(RESULT) FROM spvalorcobranca1(1, C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end '+
            ' else '+
            ' (SELECT sum(RESULT) FROM spvalorcobranca1(1, C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            'end as CALCULOENTRADA '+
            ' from caixa_entrada C' +
            ' left join imovel i on i.id_imovel = c.id_imovel '+
            ' left join pessoa ps on ps.id_pessoa = c.id_pessoa '+
            ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
            getWhere('ENTRADA','') + ' and C.id_caixa not in (select CS.id_entrada from caixa_saida cs where cs.ativo <> ''XXX'' and CS.id_entrada is not null) ');

        if varSQL.Fields[0].IsNull then
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00')
        else
            DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', varSQL.Fields[0].AsString);

            DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', 'Entradas sem correspondentes de Saída');

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_VALORES_ENVOLVIDOS.rav';

           setRave(1,'','');
           DM_REL.ZQUERY1.Close;
           FreeAndNil(varSQL);
     END
ELSE
IF StrPos(pchar(textoSelecao), pchar(UpperCase('- Contas Recebidas sem Repasse'))) <> NIL THEN
     BEGIN
          unUtilitario.setMensagem('Contas Recebidas sem Repasse'+#13+'Somente contas com vínculos são mostradas.'+#13+'Contas com vínculos são aquelas que possuem o código de outra contra conta/caixa em seu registro.'+
           #13+'Os dados de busca deste relatório são com base no caixa ENTRADA.'+
           #13+'NOTE QUE SE COMPARAR ESTE RELATÓRIO COM O DE SAÍDA, PODERÁ MOSTRAR RESULTADOS DIFERENTES, JÁ QUE AS DATAS BASE ESTÃO SENDO BUSCADAS EM DOIS CAIXAS DIFERENTES!','informa');

           Order := trim(InputBox('Opção de Taxa:','1 - Desejo que saia a taxa real da conta;'+#13+'2 - Desejo que saia a taxa do contrato;','1'));

           if Order = '1' then
           Begin
                sql := ' case when c.id_contrato > 0 then '+
                ' case when pi.porcentagem > 0 then '+
                ' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100) '+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) '+
                ' else '+
                ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
                ' end '+
                ' else '+
                ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
                'end as VALORTOTALTAXA, ';
           end
           else
           Begin

                sql := ' case when c.id_contrato > 0 then '+
                ' case when pi.porcentagem > 0 then '+
                  ' (((co.VALOR * co.TARIFA) / 100) * pi.porcentagem) / 100 '+
                ' else '+
                  ' (co.VALOR * co.TARIFA) / 100 '+
                ' end '+
                ' else '+
                 ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
                'end as VALORTOTALTAXA, ';
           end;


           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('select c.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) as VALORTOTALENTRADA, '+
            ' pe.*, '+
            ' ce.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', Ce.data_ref,Ce.data_pgto,Ce.valor,Ce.valor_juros,Ce.valor_multa,Ce.valor_desconto)) as VALORTOTALSAIDA, '+
            ' ps.*, '+
            ' co.*, '+
            ' i.*, '+
            ' l.*, '+
            ' csis.nome, '+ sql +
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100 '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end as CALCULOENTRADA '+
            ' from caixa_entrada c '+
            ' left join caixa_saida ce on ce.id_entrada = c.id_caixa '+
            ' left join pessoa pe on pe.id_pessoa = c.id_pessoa '+
            ' left join pessoa ps on ps.id_pessoa = ce.id_pessoa '+
            ' left join imovel i on i.id_imovel = c.id_imovel '+
            ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
            ' left join caixa_sis csis on csis.id_caixa_sis = c.id_subtipo '+
            ' left join contrato co on co.id_contrato = c.id_contrato '+
            ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
            getWhere('ENTRADA','')+' AND CE.DATA_PGTO IS NULL and c.data_pgto is not null order by c.data_pgto , pe.nome');

            DM_REL.ZQUERY1.SQL.Text;

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption + ' (Recebidos sem Repasse) '+getNomeCategoria());
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00');
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', 'Esta informação não esta ativa nesta opção por não ser mais necessária.');

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_VALORES_ENVOLVIDOS.rav';

           setRave(1,'','');
           DM_REL.ZQUERY1.Close;
           FreeAndNil(varSQL);
     END
ELSE
IF StrPos(pchar(textoSelecao), pchar(UpperCase('- Contas Repassadas sem Recebimento'))) <> NIL THEN
     BEGIN

           unUtilitario.setMensagem('BASE SAÍDA'+#13+'Somente contas com vínculos são mostradas, ok?'+#13+'Contas com vínculos são aquelas que possuem o código de outra contra conta/caixa em seu registro.'+
           #13+'Os dados de busca deste relatório são com base no caixa SAÍDA.'+
           #13+'NOTE QUE SE COMPARAR ESTE RELATÓRIO COM O DE ENTRADAS, PODERÁ DAR RESULTADOS DIFERENTES, JÁ QUE AS DATAS BASE ESTÃO SENDO BUSCADAS EM DOIS CAIXAS DIFERENTES!','informa');

           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('select ce.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) as VALORTOTALENTRADA, '+
            ' pe.*, '+
            ' c.*, '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) as VALORTOTALSAIDA, '+
            ' ps.*, '+
            ' co.*, '+
            ' i.*, '+
            ' l.*, '+
            ' csis.nome, '+
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) * pi.porcentagem) / 100) '+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' else '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))) '+
            ' end '+
            ' else '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))) '+
            'end as VALORTOTALTAXA, '+
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,Ce.data_pgto,Ce.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) * pi.porcentagem) / 100 '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,Ce.data_pgto,Ce.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) '+
            ' end '+
            ' else '+
            ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) '+
            'end as CALCULOENTRADA '+
            ' from caixa_saida c '+
            ' inner join caixa_entrada ce on ce.id_caixa = c.id_entrada and ce.ativo = ''SIM'' '+
            ' left join pessoa pe on pe.id_pessoa = ce.id_pessoa '+
            ' left join pessoa ps on ps.id_pessoa = c.id_pessoa '+
            ' left join imovel i on i.id_imovel = c.id_imovel '+
            ' left join logradouro l on l.id_logradouro = i.id_logradouro '+
            ' left join caixa_sis csis on csis.id_caixa_sis = ce.id_subtipo '+
            ' left join contrato co on co.id_contrato = c.id_contrato '+
            ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
              getWhere('SAIDA','')+' AND ce.data_pgto is null and c.data_pgto is not null order by pe.nome, c.data_pgto ');

           DM_REL.ZQUERY1.Open;

           DM_REL.ZQUERY1.SQL.Text;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption + ' (Repassadas sem Recebimento) '+getNomeCategoria());

           varSQL := unUtilitario.getSelect('select '+
            ' case when c.id_contrato > 0 then '+
            ' case when pi.porcentagem > 0 then '+
            ' (((SELECT sum(RESULT) FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100) '+
            ' else '+
            ' (SELECT sum(RESULT) FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            ' end '+
            ' else '+
            ' (SELECT sum(RESULT) FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
            'end as CALCULOENTRADA '+
            ' from caixa_entrada C' +
            ' left join imovel i on i.id_imovel = c.id_imovel '+
            ' left join pessoa ps on ps.id_pessoa = c.id_pessoa '+
            ' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
            getWhere('ENTRADA','') + ' and C.id_caixa not in (select CS.id_entrada from caixa_saida cs where cs.ativo <> ''XXX'' and CS.id_entrada is not null) ');

        if varSQL.Fields[0].IsNull then
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00')
        else
            DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', varSQL.Fields[0].AsString);

            DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', 'Entradas sem correspondentes de Saída');

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_VALORES_ENVOLVIDOS.rav';

           setRave(1,'','');
           DM_REL.ZQUERY1.Close;
           FreeAndNil(varSQL);
     END
ELSE
    IF StrPos(pchar(textoSelecao), pchar(UpperCase('AGRUPAMENTOS'))) <> NIL THEN
     BEGIN
          setMensagem('Em breve um novo relatório estará disponível aqui.','informa');
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Grupo do Caixa Entrada'))) <> NIL THEN
     BEGIN

           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('SELECT CSIS. NOME AS DESCSUBTIPO, SUM((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
           ' FROM CAIXA_ENTRADA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+getWhere('ENTRADA','')+' GROUP BY CSIS.NOME');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA2.rav';

           setRave(1,'AGRUPAMENTOS '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Grupo do Caixa Saída'))) <> NIL THEN
     BEGIN

           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('SELECT CSIS. NOME AS DESCSUBTIPO, SUM((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
           ' FROM CAIXA_SAIDA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+getWhere('SAIDA','')+' GROUP BY CSIS.NOME');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA2.rav';

           setRave(1,'AGRUPAMENTOS '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Subgrupo do Caixa Entrada'))) <> NIL THEN
     BEGIN
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO,'+' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
           ' FROM CAIXA_ENTRADA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('ENTRADA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME ORDER BY CSISS.NOME, CSIS.NOME');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA3.rav';

           setRave(1,'GRUPO E SUBGRUPO DE CONTAS',LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Subgrupo do Caixa Saída'))) <> NIL THEN
     BEGIN

           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add('SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO,'+' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
           ' FROM CAIXA_SAIDA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('SAIDA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME ORDER BY CSISS.NOME, CSIS.NOME');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA3.rav';

           setRave(1,'AGRUPAMENTOS '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Total dos Caixas'))) <> NIL THEN
     BEGIN

           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(
           ' SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO, '+
           ' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR_ENTRADA, 0 as VALOR_SAIDA '+
           ' FROM CAIXA_ENTRADA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('ENTRADA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME '+
           ' UNION ALL '+
           ' SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO, '+
           ' 0 as VALOR_ENTRADA, '+
           ' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR_SAIDA '+
           ' FROM CAIXA_SAIDA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('SAIDA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME '+
           ' ORDER BY 2,4');    

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_GRUPO_SUBGRUPO.rav';

           setRave(1,'AGRUPAMENTOS '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Total dos Grupos'))) <> NIL THEN
     BEGIN

           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(
           ' SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO, '+
           ' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR_ENTRADA, 0 as VALOR_SAIDA '+
           ' FROM CAIXA_ENTRADA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('ENTRADA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME '+
           ' UNION ALL '+
           ' SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO, '+
           ' 0 as VALOR_ENTRADA, '+
           ' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR_SAIDA '+
           ' FROM CAIXA_SAIDA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('SAIDA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME '+
           ' ORDER BY 2,4');    

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_GRUPO_TOTAIS.rav';

           setRave(1,'AGRUPAMENTOS '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
IF StrPos(pchar(textoSelecao), pchar(UpperCase('Total das Categorias com Contas'))) <> NIL THEN
     BEGIN
          for i := 0 to SelecaoImpressao.Count - 1 Do
              if StrPos(pchar(SelecaoImpressao.Items.Strings[i]), pchar('CONTAS INDIVIDUAIS')) <> NIL Then
              Begin
                   opcao := 6;
                   SelecaoImpressao.Selected[i] := true;
                   SelecaoImpressaoDblClick(Sender);
                   Exit;
              end;
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Total das Categorias'))) <> NIL THEN
     BEGIN

           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(
           ' SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO, '+
           ' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR_ENTRADA, 0 as VALOR_SAIDA '+
           ' FROM CAIXA_ENTRADA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_CATEGORIA AND CSISS.TIPO = ''CATEGORIA'' '+getWhere('ENTRADA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME '+
           ' UNION ALL '+
           ' SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO, '+
           ' 0 as VALOR_ENTRADA, '+
           ' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR_SAIDA '+
           ' FROM CAIXA_SAIDA C '+
           ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
           ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_CATEGORIA AND CSISS.TIPO = ''CATEGORIA'' '+getWhere('SAIDA','')+
           ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME '+
           ' ORDER BY 2,4');    

           DM_REL.ZQUERY1.Open;
           DM_REL.ZQUERY1.SQL.Text;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_CATEGORIAS_TOTAIS.rav';

           setRave(1,'AGRUPAMENTOS '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('MOVIMENTAÇÃO FINANCEIRA'))) <> NIL THEN
     BEGIN

         IF (NOT RadioPagamento.Checked) or (CheckContasPagas.State <> cbChecked) then
         Begin
              tab_5.Show;
              unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como PAGAMENTO.'+#13+'Marque CONTAS PAGAS em tipo de contas.','informa');
              exit;
         End;

         DM_REL.ZQUERY1.SQL.Clear;
         DM_REL.ZQUERY1.SQL.Add('SELECT C.NOME, C.DOCUMENTO, C.DATA_pgto, CASE WHEN (SUM(C.VALOR_CREDITO)) > 0 THEN SUM(C.VALOR_CREDITO)  ELSE '+
         ' SUM(C.VALOR_DEBITO) END AS VALOR, C.CRED_DEB FROM V_CONTA_CORRENTE C '+
         getWhere('SAIDA','CHECKCONTASPENDENTES CHECKCONTASCONTRATOSATIVOS') +' GROUP BY C.DATA_pgto, C.NOME, C.DOCUMENTO, C.CRED_DEB ORDER BY C.DATA_pgto');

         DM_REL.ZQUERY1.Open;

         DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

         if CheckTudo.Checked then
         Begin
         varSQL := unUtilitario.getSelect('select null from RDB$DATABASE');
         end
         else
         Begin
         varSQL := unUtilitario.getSelect('select '+
        ' CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') is null THEN 0 ELSE  '+
        ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') '+
        ' END - CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') is null THEN 0 ELSE '+
        ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+' and '+getGrupo()+' and '+getSubGrupo()+') '+
        ' END from RDB$DATABASE');
         end;

         if varSQL.Fields[0].IsNull Then
              DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo','0')
         else
             DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo',varSQL.Fields[0].AsString);

         DM_REL.RV_IMPRESSAO.Close;
         DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA4.rav';

         setRave(1,'MOVIMENTAÇÃO FINANCEIRA',LbPeriodo.Caption+' - '+getNomeCategoria());
         setLog('MOVIMENTAÇÃO FINANCEIRA', 'RELATÓRIO', Self.Caption+'-'+LbPeriodo.Caption+'='+SaldoEfetuadas.Caption, DM_REL.ZQUERY1);

     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Valores Líquidos de Repasses'))) <> NIL THEN
     BEGIN

     IF setMensagem('Como este relatório é complexo. Sendo assim, sua geração pode ser demorada, deseja continuar?','confirma') = idno Then
        exit;
     TRY


     ZEntrada.Close;
     ZSaida.Close;
     
          //IMOVEL
          sql := 'SELECT i.*,'+
' (SELECT FIRST 1 con.vencimento FROM contrato con WHERE con.ativo = ''SIM'' AND con.id_imovel = i.id_imovel ORDER BY con.vencimento DESC) AS VENCIMENTO,'+
' (SELECT FIRST 1 con.data FROM contrato con WHERE con.ativo = ''SIM'' AND con.id_imovel = i.id_imovel ORDER BY con.vencimento DESC) AS data_cont,'+
' (SELECT FIRST 1 con.VALOR FROM contrato con WHERE con.ativo = ''SIM'' AND con.id_imovel = i.id_imovel ORDER BY con.vencimento DESC) AS valorreal,'+
' (SELECT FIRST 1 con.id_contrato FROM contrato con WHERE con.ativo = ''SIM'' AND con.id_imovel = i.id_imovel ORDER BY con.vencimento DESC) AS ID_CONTRATO,'+
' (SELECT FIRST 1 cen.data_ref FROM caixa_entrada cen WHERE cen.id_imovel = i.id_imovel) AS DATA_FINAL,'+
' l.cep, l.tipo AS TIPORUA, l.nome AS RUA, b.nome AS BAIRRO, C.nome AS CIDADE, U.sigla AS UF, IT.nome AS TIPO, ISUB.nome AS SUBTIPO'+
' FROM imovel i'+
' LEFT JOIN logradouro l ON l.id_logradouro = i.id_logradouro'+
' LEFT JOIN cidade c ON c.id_cidade = l.id_cidade'+
' LEFT JOIN bairro b ON b.id_bairro = l.id_bairro'+
' LEFT JOIN uf u ON u.id_sigla = l.id_sigla'+
' LEFT JOIN imovel_tipo it ON it.id_imovel_tipo = i.id_imovel_tipo'+
' LEFT JOIN imovel_subtipo isub ON isub.id_imovel_subtipo = i.id_imovel_subtipo';

  if CheckImoveis.Checked then
  Begin
       sql := sql +
       ' WHERE i.ativo = ''SIM'' AND I.id_imovel IN (SELECT distinct(ID_IMOVEL) FROM caixa_entrada WHERE ativo = ''SIM'' AND id_subtipo = 3 AND ID_IMOVEL = '+ZFiltroImovel.FieldByName('ID_IMOVEL').AsString+' AND DATA_PGTO IS NOT NULL AND data_ref BETWEEN '''+formataDataSQL(DateToStr(data_ini.date))+''' AND '''+formataDataSQL(DateToStr(data_fim.date))+''')'+
       ' ORDER BY l.nome, b.nome, c.nome, u.sigla';
  End
  else
  Begin
       sql := sql +
       ' WHERE i.ativo = ''SIM'' AND I.id_imovel IN (SELECT distinct(ID_IMOVEL) FROM caixa_entrada WHERE ativo = ''SIM'' AND id_subtipo = 3 AND DATA_PGTO IS NOT NULL AND data_ref BETWEEN '''+formataDataSQL(DateToStr(data_ini.date))+''' AND '''+formataDataSQL(DateToStr(data_fim.date))+''')'+
       ' ORDER BY l.nome, b.nome, c.nome, u.sigla';
  end;

  varSQL2 := getSelect(sql);

           if varSQL2.RecordCount = 0 Then
           Begin
             setMensagem('Não foi encontrado nenhum imóvel nas datas escolhidas. Volte e selecione um intervalo maior entre as datas do filtro.','informa');
             exit;
           end;

           DM_REL.ZQUERY1 := varSQL2;
           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           //PROPRIETÁRIO
           varSQL2 := getSelect('select distinct(p.*), pi.status, PI.id_imovel,'+
           ' (select FIRST 1 e.NUMERO from endereco e where e.id_endereco_tipo = 1 and e.id_pessoa = p.id_pessoa) as NUMERO,'+
           ' (select FIRST 1 e.COMPLEMENTO from endereco e where e.id_endereco_tipo = 1 and e.id_pessoa = p.id_pessoa) as COMPLEMENTO,'+
           ' (select FIRST 1 l.NOME from endereco e inner join logradouro l on l.id_logradouro = e.id_logradouro where e.id_endereco_tipo = 1 and e.id_pessoa = p.id_pessoa) as RUA'+
           ' from pessoa p'+
           ' inner join pessoa_imovel pi on pi.id_pessoa = p.id_pessoa and pi.status = ''PROPRIETARIO'''+
           ' where p.ativo = ''SIM'' and pi.id_imovel '+descobreIDSelect(DM_REL.ZQUERY1,'ID_IMOVEL')+' order by p.nome');

           DM_REL.ZQUERY2 := varSQL2;
           DM_REL.RV_Query2.DataSet := DM_REL.ZQUERY2;

           //PESSOAS
           varSQL2 := getSelect('select distinct(p.*), pi.tipo, PI.id_imovel,'+
           ' (select FIRST 1 e.NUMERO from endereco e where e.id_endereco_tipo = 1 and e.id_pessoa = p.id_pessoa) as NUMERO,'+
           ' (select FIRST 1 e.COMPLEMENTO from endereco e where e.id_endereco_tipo = 1 and e.id_pessoa = p.id_pessoa) as COMPLEMENTO,'+
           ' (select FIRST 1 l.NOME from endereco e inner join logradouro l on l.id_logradouro = e.id_logradouro where e.id_endereco_tipo = 1 and e.id_pessoa = p.id_pessoa) as RUA'+
           ' from pessoa p'+
           ' inner join pessoa_contrato pi on pi.id_pessoa = p.id_pessoa'+
           ' where p.ativo = ''SIM'' and pi.id_imovel '+descobreIDSelect(DM_REL.ZQUERY1,'ID_IMOVEL')+' order by pi.tipo, p.nome');

           DM_REL.ZQUERY3 := varSQL2;
           DM_REL.RV_Query3.DataSet := DM_REL.ZQUERY3;

           //CONTAS OUTROS - pode haver problemas na virada do ano...
           varSQL2 := getSelect('select (SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALOR_TOTAL, CE.* from caixa_entrada ce where ce.id_subtipo not in (8,7,4,5,3) and'+' ce.ativo = ''SIM'' and pendente = ''NAO'' and ce.data_ref >= ''1.'+IntToStr(MonthOf(data_ini.Date))+'.'+IntToStr(YearOf(data_ini.Date))+''' and ce.data_ref <= ''1.'+IntToStr(MonthOf(data_fim.date)+1)+'.'+IntToStr(YearOf(data_fim.Date))+''' and ce.data_pgto is not null and ce.id_imovel '+descobreIDSelect(DM_REL.ZQUERY1,'ID_IMOVEL'));
           DM_REL.ZQUERY5 := varSQL2;
           DM_REL.RV_Query5.DataSet := DM_REL.ZQUERY5;

           //CONTAS
           order := 'false';
           data := data_ini.Date;
           DM_REL.ZQUERY1.First;
           DM_REL.TabelaVirtual_Contas.CreateDataSet;
           DM_REL.TabelaVirtual_Contas.Open;
           DM_REL.TabelaVirtual_Contas.EmptyDataSet;
           textoSelecao := '';

           while not DM_REL.ZQUERY1.Eof do
           Begin
                order := 'false';
                data := data_ini.Date;
                x := YearOf(data);
                din1 := 0;
                SQL := '';

                 while order = 'false' do
                 Begin

                      DM_REL.TabelaVirtual_Contas.Append;
                      DM_REL.TabelaVirtual_ContasID_IMOVEL.Value := DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsInteger;

                      //aluguel
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)))from caixa_entrada ce '+'where ce.id_subtipo = 3 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+'''AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString);
                      DM_REL.TabelaVirtual_ContasALUGUEL.AsCurrency := varSQL.Fields[0].AsCurrency;

                      //taxa
                      varSQL := getSelect('select (select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)))'+
                      ' from caixa_entrada ce where ce.id_subtipo = 3 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+
                      ''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+
                      '''AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '''+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+
                      ''' ) - (select sum((SELECT RESULT FROM spvalorcobranca1(1, cs.data_ref, cs.data_pgto,'+
                      ' cs.valor, cs.valor_juros, cs.valor_multa, cs.valor_desconto)) ) from caixa_saida cs where cs.id_subtipo = 3 and cs.ativo = ''SIM'' and '+
                      'extract(month from cs.data_pgto) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from cs.data_pgto) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+
                      '''AS DATE)) and cs.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+') from RDB$database');
                      DM_REL.TabelaVirtual_ContasTAXA.AsCurrency := varSQL.Fields[0].AsCurrency;

                      //condomínio
                      DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency := 0;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_ENTRADA ce '+'where ce.id_subtipo = 5 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency := varSQL.Fields[0].AsCurrency;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_SAIDA ce '+'where ce.id_subtipo = 5 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency := DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency - varSQL.Fields[0].AsCurrency;

                      if(DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency < 0) then
                      DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency := DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency - DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency - DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency;

                      //iptu
                      DM_REL.TabelaVirtual_ContasIPTU.AsCurrency := 0;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_ENTRADA ce '+'where ce.id_subtipo = 4 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasIPTU.AsCurrency := varSQL.Fields[0].AsCurrency;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_SAIDA ce '+'where ce.id_subtipo = 4 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasIPTU.AsCurrency := DM_REL.TabelaVirtual_ContasIPTU.AsCurrency - varSQL.Fields[0].AsCurrency;

                      if(DM_REL.TabelaVirtual_ContasIPTU.AsCurrency < 0) then
                      DM_REL.TabelaVirtual_ContasIPTU.AsCurrency := DM_REL.TabelaVirtual_ContasIPTU.AsCurrency - DM_REL.TabelaVirtual_ContasIPTU.AsCurrency - DM_REL.TabelaVirtual_ContasIPTU.AsCurrency;

                      //energia
                      DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency := 0;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_ENTRADA ce '+'where ce.id_subtipo = 7 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency := varSQL.Fields[0].AsCurrency;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_SAIDA ce '+'where ce.id_subtipo = 7 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency := DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency - varSQL.Fields[0].AsCurrency;

                      if(DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency < 0) then
                      DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency := DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency - DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency - DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency;

                      //gas
                      DM_REL.TabelaVirtual_ContasGAS.AsCurrency := 0;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_ENTRADA ce '+'where ce.id_subtipo = 8 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasGAS.AsCurrency := varSQL.Fields[0].AsCurrency;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_SAIDA ce '+'where ce.id_subtipo = 8 and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasGAS.AsCurrency := DM_REL.TabelaVirtual_ContasGAS.AsCurrency - varSQL.Fields[0].AsCurrency;

                      if(DM_REL.TabelaVirtual_ContasGAS.AsCurrency < 0) then
                      DM_REL.TabelaVirtual_ContasGAS.AsCurrency := DM_REL.TabelaVirtual_ContasGAS.AsCurrency - DM_REL.TabelaVirtual_ContasGAS.AsCurrency - DM_REL.TabelaVirtual_ContasGAS.AsCurrency;

                      //outros
                      DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency := 0;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_ENTRADA ce '+'where ce.id_subtipo not in (8,7,4,5,3) and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency := varSQL.Fields[0].AsCurrency;
                      varSQL := getSelect('select sum((SELECT RESULT FROM spvalorcobranca1(1, ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto))) from caixa_SAIDA ce '+'where ce.id_subtipo not in (8,7,4,5,3) and ce.ativo = ''SIM'' and pendente = ''NAO'' and extract(month from ce.data_ref) = extract(month from cast('''+formataDataSQL(DateToStr(data))+''' as date)) and extract(year from ce.data_ref) = extract(year from CAST('''+formataDataSQL(DateToStr(data))+''' AS DATE)) and ce.data_pgto is not null and ce.id_imovel = '+DM_REL.ZQUERY1.FieldByName('ID_IMOVEL').AsString+' ');
                      DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency := DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency - varSQL.Fields[0].AsCurrency;

                      if(DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency < 0) then
                      DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency := DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency - DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency - DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency;

                      //valor líquido
                      DM_REL.TabelaVirtual_ContasLIQUIDO.AsCurrency := DM_REL.TabelaVirtual_ContasALUGUEL.AsCurrency - (DM_REL.TabelaVirtual_ContasTAXA.AsCurrency + DM_REL.TabelaVirtual_ContasCONDOMINIO.AsCurrency + DM_REL.TabelaVirtual_ContasIPTU.AsCurrency + DM_REL.TabelaVirtual_ContasENERGIA.AsCurrency + DM_REL.TabelaVirtual_ContasGAS.AsCurrency + DM_REL.TabelaVirtual_ContasOUTROS.AsCurrency);

                      //mes
                      DM_REL.TabelaVirtual_ContasMES.AsString := IntToStr(MonthOf(data))+'/'+IntToStr(YearOf(data)-2000);

                      //valores médios
                      if x = YearOf(data) Then
                      Begin
                           din1 := din1 + DM_REL.TabelaVirtual_ContasLIQUIDO.AsCurrency;
                      end
                      else
                      Begin
                           SQL := SQL + IntToStr(x)+' = R$ '+FormatFloat('###,###,###,##0.00',din1)+'   ';
                           x := YearOf(data);
                           din1 := 0;
                           din1 := din1 + DM_REL.TabelaVirtual_ContasLIQUIDO.AsCurrency; 
                      end;

                     if (MonthOf(data) = MonthOf(data_fim.Date)) and (YearOf(data) = YearOf(data_fim.Date)) Then
                     Begin
                          DM_REL.TabelaVirtual_Contas.Post;
                          order := 'true';
                     end
                     else
                     Begin
                          DM_REL.TabelaVirtual_Contas.Post;
                          data := IncMonth(data,1);
                     end;

                 end;

                 SQL := SQL + IntToStr(x)+' = R$ '+FormatFloat('###,###,###,##0.00',din1)+'   ';
                 DM_REL.TabelaVirtual_Contas.Filter := 'ID_IMOVEL = '+DM_REL.TabelaVirtual_ContasID_IMOVEL.AsString;
                 DM_REL.TabelaVirtual_Contas.Filtered := true;

                 //DM_REL.TabelaVirtual_Contas.Last;
                 //DM_REL.TabelaVirtual_Contas.Delete;
                 //DM_REL.TabelaVirtual_Contas.First;

                 if DM_REL.TabelaVirtual_Contas.RecordCount > 0 Then
                 WHILE NOT DM_REL.TabelaVirtual_Contas.Eof DO
                 Begin
                      DM_REL.TabelaVirtual_Contas.Edit;
                      DM_REL.TabelaVirtual_ContasMEDIA.AsString := TRIM(SQL);
                      DM_REL.TabelaVirtual_Contas.Post;
                      DM_REL.TabelaVirtual_Contas.Next;
                 end;

                 DM_REL.TabelaVirtual_Contas.Filtered := false;

                 DM_REL.ZQUERY1.Next;
           end;

           DM_REL.RV_Query4.DataSet := DM_REL.TabelaVirtual_Contas;

           DM_REL.RV_IMPRESSAO.Close;

           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_LIQUIDO.rav';

           setRave(1,'MOVIMENTAÇÃO FINANCEIRA '+textoSelecao,LbPeriodo.Caption+' - '+getNomeCategoria());

     finally
            FreeAndNil(varSQL2);
            DM_REL.ZQUERY1.Close;
            DM_REL.ZQUERY2.Close;
            DM_REL.ZQUERY3.Close;
            DM_REL.ZQUERY4.Close;
            DM_REL.ZQUERY5.Close;
            //DM_REL.TabelaVirtual_Contas.EmptyDataSet;
            DM_REL.TabelaVirtual_Contas.Close;
            DM_REL.RV_Query4.DataSet := DM_REL.ZQUERY4;
     end;
     END
ELSE
IF StrPos(pchar(textoSelecao), pchar(UpperCase('Previsão do Proprietário'))) <> NIL THEN
     BEGIN
           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(' SELECT udf_incmonth(CONT.vencimento,cont.vigencia) as VENCIMENTOCONTRATO, C.*, P.nome as PROPRIETARIO, I.numero, '+
           ' I.complemento, CONT.tarifa, CSAI.*, L.nome AS RUA, PES.NOME AS INQUILINO, '+
           ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, '+
           ' CSAI.valor_desconto)) as VR, CONT.valor - (CONT.valor * (CONT.tarifa / 100)) as valorInquilino, '+
           ' CONT.valor as valorContrato, '+
           ' CONT.valor * (CONT.tarifa / 100) as valorInquilinoOriginal, '+
           ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valor_desconto)) * (CONT.tarifa / 100) as valorInquilinoOriginalReal, '+
           ' CSIS.nome as SUBTIPO '+
           ' FROM CAIXA_SAIDA C '+
           ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa '+
           ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel '+
           ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato '+
           ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro '+
           ' LEFT JOIN CAIXA_ENTRADA CSAI ON CSAI.id_caixa = C.id_ENTRADA '+
           ' LEFT JOIN caixa_sis CSIS on CSIS.id_caixa_sis = c.id_subtipo '+
           ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa '+getWhere('SAIDA','')+
           ' ORDER BY C.DATA_REF, P.NOME ');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           ZEntrada.First;
           ZSaida.First;

           DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('varCalculoRepasse',getConf('REPASSA_MULTA'));

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_PROP2.rav';

           setRave(1,'CONTAS DE PROPRIETÁRIOS',LbPeriodo.Caption+' - '+getNomeCategoria());
     END

ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Contas de Proprietário'))) <> NIL THEN
     BEGIN
           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(' SELECT udf_incmonth(CONT.vencimento,cont.vigencia) as VENCIMENTOCONTRATO, C.*, P.nome as PROPRIETARIO, I.numero, '+
           ' I.complemento, CONT.tarifa, CSAI.*, L.nome AS RUA, PES.NOME AS INQUILINO, '+
           ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, '+
           ' CSAI.valor_desconto)) as VR, CSAI.valor as valorInquilino, '+
           ' CONT.valor as valorContrato, '+
           ' CONT.valor * (CONT.tarifa / 100) as valorInquilinoOriginal, '+
           ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valor_desconto)) * (CONT.tarifa / 100) as valorInquilinoOriginalReal, '+
           ' CSIS.nome as SUBTIPO '+
           ' FROM CAIXA_SAIDA C '+
           ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa '+
           ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel '+
           ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato '+
           ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro '+
           ' LEFT JOIN CAIXA_ENTRADA CSAI ON CSAI.id_caixa = C.id_ENTRADA '+
           ' LEFT JOIN caixa_sis CSIS on CSIS.id_caixa_sis = c.id_subtipo '+
           ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa '+getWhere('SAIDA','')+
           ' ORDER BY C.DATA_REF, P.NOME ');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           ZEntrada.First;
           ZSaida.First;

           DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('varCalculoRepasse',getConf('REPASSA_MULTA'));

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_PROP1.rav';

           setRave(1,'CONTAS DE PROPRIETÁRIOS',LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Fluxo de Caixa'))) <> NIL THEN
     BEGIN //RELATÓRIO EM FORMATO HTML


     setMensagem('Este relátório não está disponível neste momento.','informa');
     exit;

     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Contas de Proprietário'))) <> NIL THEN
     BEGIN
           DM_REL.ZQUERY1.Close;
           DM_REL.ZQUERY1.SQL.Clear;
           DM_REL.ZQUERY1.SQL.Add(' SELECT udf_incmonth(CONT.vencimento,cont.vigencia) as VENCIMENTOCONTRATO, C.*, P.nome as PROPRIETARIO, I.numero, '+
           ' I.complemento, CONT.tarifa, CSAI.*, L.nome AS RUA, PES.NOME AS INQUILINO, '+
           ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, '+
           ' CSAI.valor_desconto)) as VR, CSAI.valor as valorInquilino, '+
           ' CONT.valor as valorContrato, '+
           ' CONT.valor * (CONT.tarifa / 100) as valorInquilinoOriginal, '+
           ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valor_desconto)) * (CONT.tarifa / 100) as valorInquilinoOriginalReal, '+
           ' CSIS.nome as SUBTIPO '+
           ' FROM CAIXA_SAIDA C '+
           ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa '+
           ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel '+
           ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato '+
           ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro '+
           ' LEFT JOIN CAIXA_ENTRADA CSAI ON CSAI.id_caixa = C.id_ENTRADA '+
           ' LEFT JOIN caixa_sis CSIS on CSIS.id_caixa_sis = c.id_subtipo '+
           ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa '+getWhere('SAIDA','')+
           ' ORDER BY C.DATA_REF, P.NOME ');

           DM_REL.ZQUERY1.Open;

           DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

           ZEntrada.First;
           ZSaida.First;

           DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('varCalculoRepasse',getConf('REPASSA_MULTA'));

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_PROP1.rav';

           setRave(1,'CONTAS DE PROPRIETÁRIOS',LbPeriodo.Caption+' - '+getNomeCategoria());
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Contas sem Repasse'))) <> NIL THEN
     BEGIN

          IF (NOT RadioPagamento.Checked) or (CheckContasPagas.State <> cbChecked) then
          Begin
               tab_5.Show;
               unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como PAGAMENTO.'+#13+'Marque CONTAS PAGAS em tipo de contas.','informa');
               exit;
          End;
           
         DM_REL.ZQUERY1.SQL.Clear;
         DM_REL.ZQUERY1.SQL.Add(' SELECT c.id_caixa as id_entrada, CSAI.*, P.nome as PROPRIETARIO, I.numero, I.complemento, CONT.tarifa, C.data_pgto, L.nome AS RUA, PES.NOME AS INQUILINO,'+
         ' case when pi.porcentagem > 0 then '+
         ' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100)'+
         ' else '+
         ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)) '+
         'end as VR, '+
         ' CAST(C.valor AS NUMERIC(15,2)) as valorInquilino  FROM CAIXA_ENTRADA C'+
         ' LEFT JOIN CAIXA_SAIDA CSAI ON CSAI.id_ENTRADA = C.id_CAIXA'+
         ' LEFT JOIN PESSOA P ON P.id_pessoa = CSAI.id_pessoa'+
         ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'+
         ' LEFT JOIN PESSOA_IMOVEL PI ON PI.ID_IMOVEL = I.ID_IMOVEL AND PI.ID_PESSOA = CSAI.id_pessoa '+
         ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'+
         ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'+
         ' LEFT JOIN PESSOA PES ON PES.id_pessoa = C.id_pessoa '+getWhere('SAIDA','')+ ' AND CSAI.DATA_PGTO IS NULL '+
         ' ORDER BY C.DATA_REF, P.NOME');

         DM_REL.ZQUERY1.SQL.Text;
         DM_REL.ZQUERY1.Open;

         DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

         ZEntrada.First;
         ZSaida.First;

         DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption);

         DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

         DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

         DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);
         DM_REL.RV_IMPRESSAO.SetParam('varCalculoRepasse',getConf('REPASSA_MULTA'));
         DM_REL.RV_IMPRESSAO.SetParam('varEmail',getUser('EMAIL'));

         DM_REL.RV_IMPRESSAO.Close;
         DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_PROP1.rav';

         setRave(1,'MOVIMENTAÇÃO FINANCEIRA - Contas sem Repasse','');
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('Cobranças'))) <> NIL THEN
     BEGIN

          IF (NOT RadioVencimento.Checked) or (CheckContasPagas.State <> cbUnchecked) then
          Begin
               tab_5.Show;
               unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como VENCIMENTO.'+#13+'Marque CONTAS NÃO PAGAS em tipo de contas.','informa');
               exit;
          End;

          DM_REL.ZQUERY1.Close;
          DM_REL.ZQUERY1.SQL.Clear;
          DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

          DM_REL.ZQUERY1.SQL.Add('select distinct(CEN.ID_CAIXA) as BLA, Cont.*, P.*, I.*, l.cep, l.tipo||'' ''||l.nome as logradouro, '+
           ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telDDDRes, '+
           ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telNUMRes, '+
           ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telCONTATORes, '+
           ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telDDDCom, '+
           ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telNUMCom, '+
           ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telCONTATOCom, '+
           ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telDDDCel, '+
           ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telNUMCel, '+
           ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telCONTATOCel '+
           ' ,CEN.*, (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', cen.data_ref, cen.data_pgto, cen.valor, cen.valor_juros, cen.valor_multa,'+
           ' cen.valor_desconto)) as VALORREAL '+
           ' from caixa_entrada cen '+
           ' LEFT join contrato cont on cont.id_contrato = cen.id_contrato '+
           ' LEFT join pessoa_contrato pc on pc.id_contrato = cen.id_contrato '+
           ' LEFT join pessoa p on p.id_pessoa = cen.id_pessoa '+
           ' LEFT join imovel i on i.id_imovel = cen.id_imovel '+
           ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
           StringReplace(GetWhere('ENTRADA',''),'C.','CEN.',[rfReplaceAll,rfIgnoreCase])+' AND CEN.ativo = ''SIM'' '+order+' order by P.NOME, CEN.DATA_REF ');

           try
              DM_REL.ZQUERY1.Open;
           except
                 on e: Exception do
                 Begin
                      unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados do banco.'+#13+e.Message,'ERRO');
                      Exit;
                 end;
           end;

           DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', ' LOCAÇÃO '+SQL+' '+LbPeriodo.Caption+' - '+getNomeCategoria());

           DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

           DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
           DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);

           DM_REL.RV_IMPRESSAO.Close;
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_COBRANCA1.rav';

           setRave(1,'','');
     END
ELSE
     IF StrPos(pchar(textoSelecao), pchar(UpperCase('CONTAS SUSPEITAS'))) <> NIL THEN
     BEGIN
          if setMensagem('Deseja gerar o relatório das possíveis inconsistências do financeiro?','confirma') = IDNO Then
             exit;

          Order := ExtractFilePath(ParamStr(0))+'REL\'+getConf('CLIENTE')+'_CONTAS_SUSPEITAS_'+IntToStr(MonthOf(Date()))+'.txt';
          AssignFile(ArquivoRel,Order);
          Rewrite(ArquivoRel);
          Writeln(ArquivoRel,'RELATÓRIO DE CONTAS SUSPEITAS NO SISTEMA - '+DateTimeToStr(Date()+Time()));
          Writeln(ArquivoRel,' ');
          Writeln(ArquivoRel,'EMPRESA: '+getConf('EMPRESA_FANTASIA'));
          Writeln(ArquivoRel,' ');
          Writeln(ArquivoRel,'Código'+#9+#9+'= Problema Encontrado.');

             //Caixa sem ativo
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where CHAR_LENGTH(trim(ativo)) = 0');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA SEM ATIVO SIM/NAO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where CHAR_LENGTH(trim(ativo)) = 0');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA SEM ATIVO SIM/NAO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Caixa sem categoria
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where ativo = ''SIM'' and id_categoria not in (select id_caixa_sis from caixa_sis where tipo = ''CATEGORIA'' and ativo = ''SIM'')');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA SEM CATOGORIA DEFINIDA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where ativo = ''SIM'' and id_categoria not in (select id_caixa_sis from caixa_sis where tipo = ''CATEGORIA'' and ativo = ''SIM'')');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA SEM CATOGORIA DEFINIDA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Caixa sem grupo
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where ativo = ''SIM'' and id_tipo not in (select id_caixa_sis from caixa_sis where tipo = ''GRUPO'' and ativo = ''SIM'')');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA SEM GRUPO DEFINIDO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where ativo = ''SIM'' and id_tipo not in (select id_caixa_sis from caixa_sis where tipo = ''GRUPO'' and ativo = ''SIM'')');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA SEM GRUPO DEFINIDO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Caixa sem subgrupo
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where ativo = ''SIM'' and id_subtipo not in (select id_caixa_sis from caixa_sis where tipo = ''SUBGRUPO'' and ativo = ''SIM'')');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA SEM SUBGRUPO DEFINIDO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where ativo = ''SIM'' and id_subtipo not in (select id_caixa_sis from caixa_sis where tipo = ''SUBGRUPO'' and ativo = ''SIM'')');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA SEM GRUPO DEFINIDO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Caixa sem data de referencia definida
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where ativo = ''SIM'' and data_ref < ''01.01.2001''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA COM DATA DE VENCIMENTO SUSPEITA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where ativo = ''SIM'' and data_ref < ''01.01.2006''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA COM DATA DE VENCIMENTO SUSPEITA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Conta sem pessoa
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where ativo = ''SIM'' and id_pessoa is null');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA SEM CÓDIGO DE PESSOA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where ativo = ''SIM'' and id_pessoa is null');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA SEM CÓDIGO DE PESSOA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             GerarFiltroClick(Sender);
             ZEntrada.SQL.text := ZEntrada.SQL.text + ' order by c.data_pgto desc';
             ZEntrada.SQL.Text := StringReplace(ZEntrada.SQL.Text, 'WHERE ','WHERE (cast(C.data_pgto as date) <> cast(c.data_alt as date)) AND (cast(c.data_alt as date) = '''+unUtilitario.formataDataSQL(DateToStr(DATA_FIM.Date))+''') AND ',[rfReplaceAll,rfIgnoreCase]);
             ZEntrada.Open;
             while not ZEntrada.Eof do
             Begin
                  Writeln(ArquivoRel,ZEntrada.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA = DATA DE QUITAÇÃO DIFERENTE DA DATA DE ALTERAÇÃO, BASE: '+DateToStr(DATA_FIM.Date)+'.');
                  ZEntrada.Next;
             end;
             ZEntrada.Close;

             ZSaida.SQL.text := ZSaida.SQL.text + ' order by c.data_pgto desc';
             ZSaida.SQL.Text := StringReplace(ZSaida.SQL.Text, 'WHERE ','WHERE (cast(C.data_pgto as date) <> cast(c.data_alt as date)) AND (cast(c.data_alt as date) = '''+unUtilitario.formataDataSQL(DateToStr(DATA_FIM.Date))+''') AND ',[rfReplaceAll,rfIgnoreCase]);
             ZSaida.Open;
             while not ZSaida.Eof do
             Begin
                  Writeln(ArquivoRel,ZSaida.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAIDA = DATA DE QUITAÇÃO DIFERENTE DA DATA DE ALTERAÇÃO, BASE: '+DateToStr(DATA_FIM.Date)+'.');
                  ZSaida.Next;
             end;
             ZSaida.Close;

             //Conta com pessoa excluída
             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_entrada where ativo = ''SIM'' and id_pessoa not in (select id_pessoa from pessoa)');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA ENTRADA COM PESSOA EXCLUÍDA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             VarSQL := unUtilitario.getSelect('select id_caixa from caixa_saida where ativo = ''SIM'' and id_pessoa not in (select id_pessoa from pessoa)');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CAIXA').AsString+#9+#9+'= CAIXA SAÍDA COM PESSOA EXCLUÍDA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //CONTRATOS ---------------
             Writeln(ArquivoRel,' ');
             Writeln(ArquivoRel,#9+#9+#9+'CONTRATOS');
             Writeln(ArquivoRel,' ');

             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where valor = 0 and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO COM VALOR 0.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos com data suspeita
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where VENCIMENTO <= ''01.01.2001'' and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO COM DATA DE VENCIMENTO SUSPEITA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos sem valor de taxa
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (tarifa = 0 or tarifa is null) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO DE LOCAÇÃO SEM VALOR DE TAXA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos sem valor de multa
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (multa = 0 or multa is null) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO DE LOCAÇÃO SEM VALOR DE MULTA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos sem valor de juros
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (multa_mora = 0 or multa_mora is null) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO DE LOCAÇÃO SEM VALOR DE JUROS.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos sem valor de repasse
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where (honorario_repasse = 0 or honorario_repasse is null or honorario_repasse > 31) and tipo_contrato = ''LOCAÇÃO'' and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO DE LOCAÇÃO COM VALOR DE REPASSE SUSPEITO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos sem valor de ativo
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where CHAR_LENGTH(trim(ativo)) = 0');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO SEM ATIVO SIM/NAO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos sem finalidade
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where ativo <> ''XXX'' and CHAR_LENGTH(trim(finalidade)) = 0');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO SEM FINALIDADE.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos terminando
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where ativo = ''SIM'' and current_date between (vencimento + (vigencia*22)) and (vencimento + ((vigencia-1)*30))');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO PRÓXIMO DO TÉRMINO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos renovação
             VarSQL := unUtilitario.getSelect('select distinct(id_contrato) from caixa_entrada ce where ( parcela = 12 or parcela = 24 or parcela = 36 or'+' parcela = 48 or parcela = 60 or parcela = 72 or parcela = 84 or parcela = 96 '+'or parcela = 108 or parcela = 120 or parcela = 132 or parcela = 144 ) and ativo = ''SIM'' and data_ref between current_date - 30 and current_date + 30 and not data_ref = (select max(data_ref) from caixa_entrada where id_contrato = ce.id_contrato)');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO PRÓXIMO DE RENOVAÇÃO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos contrato vencido
             VarSQL := unUtilitario.getSelect('select id_contrato from contrato where vencimento + (vigencia*30) <= current_date and ativo = ''SIM''');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO VENCIDO.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos contrato com criada e que não está em sincronia
             VarSQL := unUtilitario.getSelect('select distinct(id_contrato) from contrato c where not (vencimento + (vigencia*30)) between (select max(data_ref - 30) from caixa_entrada where c.id_contrato = id_contrato and ativo = ''SIM'' and id_subtipo = 3) and (select max(data_ref + 30) from'+' caixa_entrada where c.id_contrato = id_contrato and ativo = ''SIM'' and id_subtipo = 3) and ativo = ''SIM'' and tipo_contrato = ''LOCAÇÃO'''); 
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO COM CONTA DE ENTRADA DIFERENTE DO SEU VENCIMENTO REAL.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             //Contratos com valor médio diferente das suas contas
             VarSQL := unUtilitario.getSelect('select c.id_contrato from contrato c where c.ativo = ''SIM'' and not c.valor between (select avg(ce.valor) from caixa_entrada ce where ce.id_subtipo = 3 and ce.ativo = ''SIM'' and ce.data_pgto is null and ce.id_contrato = c.id_contrato) - 100 and'+' (select avg(ce.valor) from caixa_entrada ce where ce.id_subtipo = 3 and ce.ativo = ''SIM'' and ce.data_pgto is null and ce.id_contrato = c.id_contrato) + 100');
             while not VarSQL.Eof do
             Begin
                  Writeln(ArquivoRel,VarSQL.FieldByName('ID_CONTRATO').AsString+#9+#9+'= CONTRATO COM VALOR DIFERENTE DA MÉDIA COBRADA NO CAIXA ENTRADA.');
                  VarSQL.Next;
             end;
             VarSQL.Close;

             Writeln(ArquivoRel,' ');
             Writeln(ArquivoRel,'FIM.');
             Writeln(ArquivoRel,' ');
             
             CloseFile(ArquivoRel);
             WinExec(pchar('NOTEPAD '+Order),SW_SHOW);
             FreeAndNil(VarSQL);
     END
ELSE
    setMensagem('O relatório selecionado ('+textoSelecao+') não foi encontrado...'+#13+'Se você identificou um erro de grafia, favor entrar em contato com a Célula Digital.'+#13+'Se caso realmente não selecionou nenhum relatório, clique 2X sobre o nome para selecioná-lo.','erro');

except
      on e: Exception do
         setMensagem('ERRO AO GERAR RELATÓRIO:'+#13+e.Message,'erro');
end;

end;


procedure TCAD_FluxoCaixa.SelecionarConta1Click(Sender: TObject);
var i: integer;
begin

     if DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').IsNull then
        Exit;

     with DBGridPessoa.DataSource.DataSet do
     begin
          for i := 0 to DBGridPessoa.SelectedRows.Count-1 do
          begin
               GotoBookmark(Pointer(DBGridPessoa.SelectedRows.Items[i]));
               rowPessoas.Add(DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsString);
          end;
     end;

     PRINCIPAL.setMensagem(IntToStr(DBGridPessoa.SelectedRows.Count) + ' Registro(s) Adicionado(s)!' + #13 + IntToStr(rowPessoas.Count) + ' Registro(s) na lista até o momento.');
     DBGridPessoa.SelectedRows.Clear;
end;

procedure TCAD_FluxoCaixa.GerarCartadeCobranaModeloRelatrio1Click(
  Sender: TObject);
begin
     unUtilitario.setMensagem('Ainda em fase de término.','INFORMA');
end;

procedure TCAD_FluxoCaixa.GerarFiltroClick(Sender: TObject);
Var varSQL: TZQuery;
    valor: Double;
    data: TDate;
//X : sTRING;
begin
     //Validação tabs
     if DS_FiltroPessoa.DataSet.Active then
     Begin
        if (CheckPessoa.Checked) and (DS_FiltroPessoa.DataSet.RecordCount = 0) then
           CheckPessoa.Checked := False;
     end
     else
         CheckPessoa.Checked := False;

     if DS_FiltroImovel.DataSet.Active then
     Begin
        if (CheckImoveis.Checked) and (DS_FiltroImovel.DataSet.RecordCount = 0) then
           CheckImoveis.Checked := False;
     end
     else
         CheckImoveis.Checked := False;

     if (CheckUsuarios.Checked) and (Length(Trim(EditNomeUsuario.Text)) = 0) then
        CheckUsuarios.Checked := False;

     if data_ini.date > data_fim.date then
     begin
          unUtilitario.setMensagem('Atenção! A data inicial não pode ser maior que a final!','erro');
          data_ini.SetFocus;
          exit;
     end;

     PRINCIPAL.setMensagem('Aguarde um momento, fazendo busca nos caixas!');

     ZEntrada.Close;
     ZEntrada.SQL.Clear;
     ZEntrada.SQL.Add('SELECT (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,'+
     ' C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)) as '+
     ' VALOR_REAL, C.*, CAT.nome AS CATEGORIA, GRU.nome AS GRUPO, SUB.nome AS SUBGRUPO,'+
     ' P.*, I.*, CONT.*, USU.*, CSAI.*, L.nome AS RUA, PES.NOME AS INQUILINO, (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valor_desconto)) as VR '+
     ' FROM CAIXA_ENTRADA C '+
     ' LEFT JOIN CAIXA_SIS CAT ON CAT.id_caixa_sis = C.id_categoria'+
     ' LEFT JOIN CAIXA_SIS GRU ON GRU.id_caixa_sis = C.id_tipo'+
     ' LEFT JOIN CAIXA_SIS SUB ON SUB.id_caixa_sis = C.id_subtipo'+
     ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa'+
     ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'+
     ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'+
     ' LEFT JOIN USUARIO USU ON USU.id_usuario = C.id_funcionario'+
     ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'+
     ' LEFT JOIN CAIXA_SAIDA CSAI ON CSAI.id_caixa = C.id_SAIDA AND CSAI.ID_TIPO = C.ID_TIPO AND CSAI.ID_SUBTIPO = C.ID_SUBTIPO AND CSAI.ATIVO = ''SIM'' '+
     ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa '+getWhere('ENTRADA',''));
     ZEntrada.SQL.Text;

     ZSaida.Close;
     ZSaida.SQL.Clear;
     ZSaida.SQL.Add('SELECT (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,'+
     ' C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)) as '+
     ' VALOR_REAL, C.*, CAT.nome AS CATEGORIA, GRU.nome AS GRUPO, SUB.nome AS SUBGRUPO,'+
     ' P.*, I.*, CONT.*, USU.*, CSAI.*, L.nome AS RUA, PES.NOME AS INQUILINO, '+
     ' case when (C.id_subtipo in (3, 4)) then '+
     ' case C.garantido WHEN ''SIM'' then '+
     ' (CSAI.valor * pi.porcentagem) / 100 '+
     ' else '+
     ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valor_desconto)) * pi.porcentagem / 100 '+
     ' end '+
     ' else '+
     ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa, CSAI.valor_desconto)) '+
     ' end as VR, '+
     ' (SELECT FIRST 1 P.NOME FROM PESSOA_CONTRATO PC INNER JOIN PESSOA P ON P.id_pessoa = PC.id_pessoa AND PC.id_contrato =C.id_contrato AND (PC.tipo like ''LOCAT_RIO'' or PC.tipo = ''INQUILINO'' or PC.tipo = ''COMPRADOR'' or PC.tipo = ''MORADOR'')) as NOME_INQUILINO '+
     ' FROM CAIXA_SAIDA C'+
     ' LEFT join pessoa_imovel pi on pi.id_pessoa = C.id_pessoa and pi.id_imovel = C.id_imovel and pi.status = ''PROPRIETARIO'' '+
     ' LEFT JOIN CAIXA_SIS CAT ON CAT.id_caixa_sis = C.id_categoria'+
     ' LEFT JOIN CAIXA_SIS GRU ON GRU.id_caixa_sis = C.id_tipo'+
     ' LEFT JOIN CAIXA_SIS SUB ON SUB.id_caixa_sis = C.id_subtipo'+
     ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa'+
     ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'+
     ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'+
     ' LEFT JOIN USUARIO USU ON USU.id_usuario = C.id_funcionario'+
     ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'+
     ' LEFT JOIN CAIXA_ENTRADA CSAI ON CSAI.id_caixa = C.id_ENTRADA AND CSAI.ID_TIPO = C.ID_TIPO AND CSAI.ID_SUBTIPO = C.ID_SUBTIPO AND CSAI.ATIVO = ''SIM'' '+
     ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa '+getWhere('SAIDA',''));
     ZSaida.SQL.Text;

     TRY
        ZSaida.Open;
        ZEntrada.Open;

        calculaTotais();
     EXCEPT
           ON E: Exception DO
              unUtilitario.setMensagem('ERRO AO PROCURAR CONTAS '+#13+e.Message,'erro');
     END;

     varSQL := unUtilitario.getSelect('select ''C'' as TIPO, C.data_ref, SUM((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto))) as valor from caixa_entrada c left join contrato cont on cont.id_contrato = c.id_contrato '+getWhere('ENTRADA','')+
     ' group by C.data_ref union all '+
     ' select ''D'' as TIPO,  C.data_ref, SUM((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto))) as valor from caixa_saida c left join contrato cont on cont.id_contrato = c.id_contrato '+getWhere('SAIDA','')+' group by C.data_ref order by 2, 1');

     valor := 0.00;
     data := -693594;
     ChartFluxo.UndoZoom;
     ChartFluxo.Series[0].Clear;

if varSQL.RecordCount > 0 then
begin
     while not varSQL.Eof do
     Begin
          if data = -693594 then
             data := varSQL.FieldByName('DATA_REF').AsDateTime;

          if data = varSQL.FieldByName('DATA_REF').AsDateTime then
          Begin
             if varSQL.FieldByName('TIPO').AsString = 'C' Then
                valor := varSQL.FieldByName('VALOR').AsCurrency;

             if varSQL.FieldByName('TIPO').AsString = 'D' then
                   valor := valor - varSQL.FieldByName('VALOR').AsCurrency;

             varSQL.Next;
          end
          Else
          Begin
               ChartFluxo.Series[0].AddXY(DayOfTheYear(data),valor,IntToStr(DayOf(data))+'/'+IntToStr(MonthOf(data)));
               valor := 0.00;
               data := -693594;
          End;
     End;
     ChartFluxo.Series[0].AddXY(DayOfTheYear(data),valor,IntToStr(DayOf(data))+'/'+IntToStr(MonthOf(data)));
end;
     
     varSQL.Close;
     FreeAndNil(varSQL);

     PRINCIPAL.setMensagem('Pesquisa concluída!');
     CENTRO.TabIndex := 1;
end;

procedure TCAD_FluxoCaixa.calculaTotais();
Var valorEfetuada, valorPrevista, saldoEfetuadoEnt, saldoEfetuadoSai, saldoPrevistoEnt, saldoPrevistoSai: Double;
    valorEfetuadaNormal, valorPrevistaNormal, saldoEfetuadoEntNormal, saldoEfetuadoSaiNormal, saldoPrevistoEntNormal, saldoPrevistoSaiNormal: Double;
begin

     saldoEfetuadoEnt := 0;
     saldoEfetuadoSai := 0;
     saldoPrevistoEnt := 0;
     saldoPrevistoSai := 0;

     saldoEfetuadoEntNormal := 0;
     saldoEfetuadoSaiNormal := 0;
     saldoPrevistoEntNormal := 0;
     saldoPrevistoSaiNormal := 0;

     lbEntEfetuadasNormal.Top := lbEntEfetuadas.Top;
     lbSaiEfeuadasNormal.Top := lbSaiEfeuadas.Top;
     SaldoEfetuadasNormal.Top := SaldoEfetuadas.Top;

     lbEntDiferencaNormal.Top := lbEntDiferenca.Top;
     lbSaiDiferencaNormal.Top := lbSaiDiferenca.Top;
     SaldonNaoEfetuadasNormal.Top := SaldonNaoEfetuadas.Top;

     lbEntEsperadasNormal.Top := lbEntEsperadas.Top;
     lbSaiEsperadasNormal.Top := lbSaiEsperadas.Top;
     SaldoPrevistaNormal.Top := SaldoPrevista.Top;


     if ZEntrada.Active Then
     begin
          valorEfetuada := 0;
          valorPrevista := 0;
          valorEfetuadaNormal := 0;
          valorPrevistaNormal := 0;

          ZEntrada.First;
          while not ZEntrada.Eof DO
          Begin
               if NOT ZEntrada.FieldByName('DATA_PGTO').IsNull Then
               Begin
                    valorEfetuada := valorEfetuada + ZEntrada.FieldByName('VALOR_REAL').AsCurrency;
                    valorEfetuadaNormal := valorEfetuadaNormal + ZEntrada.FieldByName('VALOR').AsCurrency;
               end;

                  valorPrevista := valorPrevista + ZEntrada.FieldByName('VALOR_REAL').AsCurrency;
                  valorPrevistaNormal := valorPrevistaNormal + ZEntrada.FieldByName('VALOR').AsCurrency;

               ZEntrada.Next;
          End;

          lbEntEfetuadas.Caption := getCurrToStr(valorEfetuada,true);
          lbEntEsperadas.Caption := getCurrToStr(valorPrevista,true);
          lbEntDiferenca.Caption := getCurrToStr(valorPrevista - valorEfetuada,true);
          saldoEfetuadoEnt := valorEfetuada;
          saldoPrevistoEnt := valorPrevista;

          lbEntEfetuadasNormal.Caption := getCurrToStr(valorEfetuadaNormal,true);
          lbEntEsperadasNormal.Caption := getCurrToStr(valorPrevistaNormal,true);
          lbEntDiferencaNormal.Caption := getCurrToStr(valorPrevistaNormal - valorEfetuadaNormal,true);
          saldoEfetuadoEntNormal := valorEfetuadaNormal;
          saldoPrevistoEntNormal := valorPrevistaNormal;
     end;

     if ZSaida.Active Then
     begin
          valorEfetuada := 0;
          valorPrevista := 0;
          valorEfetuadaNormal := 0;
          valorPrevistaNormal := 0;


          ZSaida.First;
          while not ZSaida.Eof DO
          Begin
               if NOT ZSaida.FieldByName('DATA_PGTO').IsNull Then
               Begin
                    valorEfetuada := valorEfetuada + ZSaida.FieldByName('VALOR_REAL').AsCurrency;
                    valorEfetuadaNormal := valorEfetuadaNormal + ZSaida.FieldByName('VALOR').AsCurrency;
               end;

                  valorPrevista := valorPrevista + ZSaida.FieldByName('VALOR_REAL').AsCurrency;
                  valorPrevistaNormal := valorPrevistaNormal + ZSaida.FieldByName('VALOR').AsCurrency;

               ZSaida.Next;
          End;

          lbSaiEfeuadas.Caption := getCurrToStr(valorEfetuada,true);
          lbSaiEsperadas.Caption := getCurrToStr(valorPrevista,true);
          lbSaiDiferenca.Caption := getCurrToStr(valorPrevista - valorEfetuada,true);
          saldoEfetuadoSai := valorEfetuada;
          saldoPrevistoSai := valorPrevista;

          lbSaiEfeuadasNormal.Caption := getCurrToStr(valorEfetuadaNormal,true);
          lbSaiEsperadasNormal.Caption := getCurrToStr(valorPrevistaNormal,true);
          lbSaiDiferencaNormal.Caption := getCurrToStr(valorPrevistaNormal - valorEfetuadaNormal,true);
          saldoEfetuadoSaiNormal := valorEfetuadaNormal;
          saldoPrevistoSaiNormal := valorPrevistaNormal;
     end;

     SaldoEfetuadas.Caption := getCurrToStr(saldoEfetuadoEnt - saldoEfetuadoSai,true);
     SaldoPrevista.Caption := getCurrToStr(saldoPrevistoEnt - saldoPrevistoSai,true);
     SaldonNaoEfetuadas.Caption := getCurrToStr((saldoPrevistoEnt - saldoEfetuadoEnt)-(saldoPrevistoSai - saldoEfetuadoSai),true);

     SaldoEfetuadasNormal.Caption := getCurrToStr(saldoEfetuadoEntNormal - saldoEfetuadoSaiNormal,true);
     SaldoPrevistaNormal.Caption := getCurrToStr(saldoPrevistoEntNormal - saldoPrevistoSaiNormal,true);
     SaldonNaoEfetuadasNormal.Caption := getCurrToStr((saldoPrevistoEntNormal - saldoEfetuadoEntNormal)-(saldoPrevistoSaiNormal - saldoEfetuadoSaiNormal),true);

     if NOT CheckTudo.Checked then
        LbPeriodo.Caption := DateToStr(data_ini.Date)+' ATÉ '+DateToStr(data_fim.Date)
     Else
         LbPeriodo.Caption := 'TODAS AS CONTAS ATÉ '+DateToStr(data_fim.Date);

     LbTotais.Caption := 'Totais de Contas: '+IntToStr(ZEntrada.RecordCount)+' Entradas e '+IntToStr(ZSaida.RecordCount)+' Saídas.';
     LabelTotalSaida.Caption := IntToStr(ZSaida.RecordCount)+' Registro(s) encontrados';
     LabelTotalEntrada.Caption := IntToStr(ZEntrada.RecordCount)+' Registro(s) encontrados';
end;

procedure TCAD_FluxoCaixa.TabCobrancaHide(Sender: TObject);
begin
     DM_CADASTRO.Z_Curinga_01X.Close;
     DM_CADASTRO.Z_Curinga_02X.Close;
     DM_CADASTRO.Z_Curinga_03X.Close;
end;

procedure TCAD_FluxoCaixa.TabCobrancaShow(Sender: TObject);
begin
     DM_CADASTRO.Z_Curinga_01X.Close;
     DM_CADASTRO.Z_Curinga_02X.Close;
     DM_CADASTRO.Z_Curinga_03X.Close;
     
     DM_CADASTRO.Z_Curinga_01X.SQL.Clear;
     DBGridPessoa.DataSource := DM_CADASTRO.DS_Curinga_01X;

     DM_CADASTRO.Z_Curinga_01X.SQL.Add('select distinct(ce.id_pessoa) as codigo, cont.id_contrato, p.nome as pessoa, ce.id_imovel, l.nome as logradouro, i.numero, i.complemento, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telDDDRes, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telNUMRes, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telCONTATORes, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telDDDCom, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telNUMCom, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telCONTATOCom, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telDDDCel, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telNUMCel, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telCONTATOCel, '+
     ' p.email, '+
     ' p.msn, '+
     ' p.yahoo '+
     ' from caixa_entrada ce '+
     ' LEFT join contrato cont on cont.id_contrato = ce.id_contrato '+
     ' LEFT join pessoa_contrato pc on pc.id_contrato = ce.id_contrato '+
     ' LEFT join pessoa p on p.id_pessoa = ce.id_pessoa '+
     ' LEFT join imovel i on i.id_imovel = ce.id_imovel '+
     ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
     StringReplace(GetWhere('ENTRADA',''),'C.','CE.',[rfReplaceAll,rfIgnoreCase])+' and ce.data_pgto is null order by p.nome ');

     DM_CADASTRO.Z_Curinga_01X.SQL.Text;
     try
        DM_CADASTRO.Z_Curinga_01X.Open;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados do banco.'+#13+e.Message,'ERRO');
                Exit;
           end;
     end;

     GroupBox7.Caption := '( 1º ) PESSOAS DEVEDORAS ( Total de '+IntToStr(DM_CADASTRO.Z_Curinga_01X.RecordCount)+' Pessoas)'

end;

procedure TCAD_FluxoCaixa.TabLogCobrancaHide(Sender: TObject);
begin
     ZlogCobranca.Close;
end;

procedure TCAD_FluxoCaixa.TabLogCobrancaShow(Sender: TObject);
var funcionario: String;
begin
     ZlogCobranca.Close;
     ZlogCobranca.SQL.Clear;

     if CheckUsuarios.State = cbChecked then
        funcionario := ' and id_func = '+IDCampoSTR(EditNomeUsuario.Items.Strings[EditNomeUsuario.ItemIndex]);

     ZlogCobranca.SQL.Add('select Data, id_func as Usuario, id_conta as Registro, componente as Origem, obs as acao from log where id_func <> 1 and acao = ''LDC'' '+funcionario+' AND ( cast(data as date) >= '''+formataDataSQL(DateToStr(data_ini.date))+''' AND cast(data as date) <= '''+formataDataSQL(DateToStr(data_fim.date))+''') order by data desc');

     ZlogCobranca.Open;
end;

procedure TCAD_FluxoCaixa.TabSaldosHide(Sender: TObject);
begin
     ZSaldos.Close;
end;

procedure TCAD_FluxoCaixa.TabSaldosShow(Sender: TObject);
Var sql: String;
begin

     sql := 'LEFT JOIN CAIXA_SIS CAT ON CAT.id_caixa_sis = C.id_categoria '+
      ' LEFT JOIN CAIXA_SIS GRU ON GRU.id_caixa_sis = C.id_tipo '+
      ' LEFT JOIN CAIXA_SIS SUB ON SUB.id_caixa_sis = C.id_subtipo '+
      ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa '+
      ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel '+
      ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato '+
      ' LEFT JOIN USUARIO USU ON USU.id_usuario = C.id_funcionario '+
      ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro '+
      ' LEFT JOIN CAIXA_SAIDA CSAI ON CSAI.id_caixa = C.id_SAIDA AND CSAI.ID_TIPO = C.ID_TIPO AND CSAI.ID_SUBTIPO = C.ID_SUBTIPO AND CSAI.ATIVO = ''SIM'' '+
      ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa ';

     ZSaldos.Close;
     ZSaldos.SQL.Clear;
     ZSaldos.SQL.Add('select u.id_usuario, u.nome, (select sum((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto))) '+
     ' from caixa_entrada C '+sql+getWhere('ENTRADA','')+' and c.id_funcionario = u.id_usuario ) as CAIXAENTRADA, '+
     ' (select sum((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto))) '+
     ' from caixa_saida C '+sql+getWhere('SAIDA','')+' and c.id_funcionario = u.id_usuario ) as CAIXASAIDA, '+
     ' (select sum((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto))) '+
     ' from caixa_entrada C '+sql+getWhere('ENTRADA','')+' and c.id_funcionario = u.id_usuario ) -  '+
     ' (select sum((select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto))) '+
     ' from caixa_saida C '+sql+getWhere('SAIDA','')+' and c.id_funcionario = u.id_usuario ) as SALDO '+
     ' from usuario u where u.ativo = ''SIM'' and u.nome <> ''ADMINISTRADOR'' order by u.nome ');

     ZSaldos.SQL.Text;

     ZSaldos.Open;
end;

procedure TCAD_FluxoCaixa.TabSheet2Show(Sender: TObject);
Var varSQL: TZQuery;
begin

     varSQL := unUtilitario.getSelect('select cs.nome ||''-''|| cs.id_caixa_sis from caixa_sis cs where cs.tipo = ''CATEGORIA'' and cs.ativo = ''SIM'' order by cs.nome');

     comboOrigem.Items.Clear;
     while not varSQL.Eof do
     Begin
          comboOrigem.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     end;

     varSQL.Close;

     varSQL := unUtilitario.getSelect('select cs.nome ||''-''|| cs.id_caixa_sis from caixa_sis cs where cs.tipo = ''CATEGORIA'' and cs.ativo = ''SIM'' order by cs.nome');

     comboDestino.Items.Clear;
     while not varSQL.Eof do
     Begin
          comboDestino.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     end;

     varSQL.Close;

     varSQL := unUtilitario.getSelect('SELECT p.nome ||''-''|| p.id_pessoa from pessoa p where p.ativo = ''SIM'' order by p.nome');

     ComboEmpresa.Items.Clear;
     while not varSQL.Eof do
     Begin
          ComboEmpresa.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     end;

     varSQL.Close;

end;

procedure TCAD_FluxoCaixa.TabSheet3Show(Sender: TObject);
var varSQL: TZQuery;
begin
     varSQL := unUtilitario.getSelect('select nome ||''-''||id_usuario as usuarios from usuario where id_usuario <> 1 and ativo = ''SIM'' order by nome');

     EditNomeUsuario.Items.Clear;
     
     while NOT varSQL.Eof do
     Begin
          EditNomeUsuario.Items.Add(varSQL.FieldByName('USUARIOS').AsString);
          varSQL.Next;
     end;

     FreeAndNil(varSQL); 

end;

procedure TCAD_FluxoCaixa.tab_5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

{procedure TCAD_FluxoCaixa.Tab_4Show(Sender: TObject);
Var varSQL: TZQuery;
    varAjuda1: Integer;
begin
     IF (NOT ZEntrada.Active) or (NOT ZSaida.Active) Then
        Exit;

     //FORMAS DE PAGAMENTO
     varSQL := unUtilitario.getSelect('select count(CP.id_caixa_pgto) as QTDE, CS.nome from caixa_pgto CP'+
     ' left join CAIXA_SIS CS on CS.id_caixa_sis = cp.id_forma_pgto group by cs.nome order by QTDE');

     varAjuda1 := 0;
     while NOT varSQL.Eof Do
     Begin
          varAjuda1 := varAjuda1 + varSQL.Fields[0].AsInteger;
          varSQL.Next;
     End;

     varSQL.First;
     WHILE NOT varSQL.Eof DO
     BEGIN
          Series1.Add(getDinhToPorc(varSQL.Fields[0].AsString, IntToStr(varAjuda1)), varSQL.Fields[1].AsString, RGB(Random(256), Random(256), Random(256)));
          varSQL.Next;
     END;

     
end;
}

Function TCAD_FluxoCaixa.UltimoDiaMes (Data : TDateTime; lSabDom : Boolean) : TDateTime;
var
   Ano, Mes, Dia : word;
   AuxData : TDateTime;
   DiaDaSemana : Integer;
begin
     AuxData := PrimeiroDiaMes(IncMonth(Data,1), False) - 1;
     if lSabDom Then
     begin
          DecodeDate (Auxdata, Ano, Mes, Dia);
          DiaDaSemana := DayOfWeek (AuxData);
          if DiaDaSemana = 1 Then
             Dia := Dia - 2
          else
          if DiaDaSemana = 7 Then
             Dec (Dia);
          AuxData := EnCodeDate (Ano, Mes, Dia);
     end;
     UltimoDiaMes := AuxData;
end;

procedure TCAD_FluxoCaixa.verificaPermissaoTela();
begin

 if not verificaPermissao('ADMINISTRAR >> FLUXO DE CAIXA = FORMULARIO') then
    Close;

end;

procedure TCAD_FluxoCaixa.FormCreate(Sender: TObject);
var varSQL: TZQuery;
    listitem: TListItem;
begin

     if not verificaPermissao(Self.Name) Then
        Self.Close;

     centro.ActivePage := Tab_5;

     DS_CaixaEntrada.DataSet := ZEntrada;
     DS_CaixaSaida.DataSet := ZSaida;
     DS_FiltroPessoa.DataSet := ZFiltroPessoa;
     DS_FiltroImovel.DataSet := ZFiltroImovel;
     DS_FiltroStatus.DataSet := ZFiltroStatus;

     data_ini.Date := Date;
     data_fim.Date := Date;

     rowPessoas := TStringList.Create();

     try
        try
           //CATEGORIA
           VARSQL := unUtilitario.getSelect('SELECT id_caixa_sis, nome from caixa_sis where tipo = ''CATEGORIA'' and ativo = ''SIM'' order by nome');

           ListCategoria.Items.Clear;

           while NOT varSQL.Eof do
           Begin
                listitem := ListCategoria.Items.Add;
                listitem.Caption := VARSQL.Fields[1].AsString +'-'+VARSQL.Fields[0].AsString;
                varSQL.Next;
           End;

           //varSQL.Close;

           //GRUPO
           VARSQL := unUtilitario.getSelect('SELECT id_caixa_sis, nome from caixa_sis where tipo = ''GRUPO'' and ativo = ''SIM'' order by nome');

           ListGrupo.Items.Clear;

           while NOT varSQL.Eof do
           Begin
                listitem := ListGrupo.Items.Add;
                listitem.Caption := VARSQL.Fields[1].AsString+'-'+VARSQL.Fields[0].AsString;
                varSQL.Next;
           End;

           //varSQL.Close;

           //SUBGRUPO
           VARSQL := unUtilitario.getSelect('SELECT id_caixa_sis, nome from caixa_sis where tipo = ''SUBGRUPO'' and ativo = ''SIM'' order by nome');

           listsubgrupo.Items.Clear;

           while NOT varSQL.Eof do
           Begin
                listitem := listsubgrupo.Items.Add;
                listitem.Caption := VARSQL.Fields[1].AsString+'-'+VARSQL.Fields[0].AsString;
                varSQL.Next;
           End;

           //varSQL.Close;

           //STATUS
           VARSQL := unUtilitario.getSelect('SELECT id_caixa_sis, nome from caixa_sis where tipo = ''STATUS'' and ativo = ''SIM'' order by nome');

           listStatus.Items.Clear;

           while NOT varSQL.Eof do
           Begin
                listitem := listStatus.Items.Add;
                listitem.Caption := VARSQL.Fields[1].AsString+'-'+VARSQL.Fields[0].AsString;
                varSQL.Next;
           End;

        except
              on e: Exception do
                 unUtilitario.setMensagem('ERRO NA FUNÇÃO tab_5Show:'+#13+E.Message,'erro');
        end;

     finally
            FreeAndNil(varSQL);
     end;

     verificaPermissaoTela();
end;

procedure TCAD_FluxoCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     //PRINCIPAL.DestroiForm(FormCriatura, FormCriador, FormCriadorConteudo, Fechar);
     ZEntrada.Close;
     ZSaida.Close;
     ZFiltroPessoa.Close;
     ZFiltroImovel.Close;
     ZFiltroStatus.Close;
     
     Action := caFree;
end;

procedure TCAD_FluxoCaixa.chkcategoriaClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to ListCategoria.Items.Count - 1 do
    if chkcategoria.State = cbChecked then
      ListCategoria.Items[i].Checked := true
    else
      ListCategoria.Items[i].Checked := false;

end;

procedure TCAD_FluxoCaixa.chkgrupoClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to listgrupo.Items.Count - 1 do
    if chkgrupo.State = cbChecked then
      listgrupo.Items[i].Checked := true
    else
      listgrupo.Items[i].Checked := false;
end;

procedure TCAD_FluxoCaixa.chksubgrupoClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to listsubgrupo.Items.Count - 1 do
    if chksubgrupo.State = cbChecked then
      listsubgrupo.Items[i].Checked := true
    else
      listsubgrupo.Items[i].Checked := false;
end;

procedure TCAD_FluxoCaixa.comboDestinoChange(Sender: TObject);
Var codigo: String;
    varSQL: TZQuery;
begin
     codigo := IntToStr(unCamposBusca.IDCampo(comboDestino.Text));

     if verificaStringInt(codigo) then
     Begin

          varSQL := unUtilitario.getSelect('select '+
          ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) '+
          ' from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto <= '''+formataDataSQL(DateToStr(Date))+''' and c.id_categoria = '+codigo+') '+
          ' - (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) '+
          ' from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto <= '''+formataDataSQL(DateToStr(Date))+''' and c.id_categoria = '+codigo+') from RDB$DATABASE');

          editDestino.Text := unUtilitario.getCurrToStr(varSQL.Fields[0].AsCurrency,FALSE);

          //varSQL.Close;
          FreeAndNil(varSQL);
     end;

end;

procedure TCAD_FluxoCaixa.comboOrigemChange(Sender: TObject);
Var codigo: String;
    varSQL: TZQuery;
begin
     codigo := IntToStr(unCamposBusca.IDCampo(comboOrigem.Text));

     if verificaStringInt(codigo) then
     Begin

          varSQL := unUtilitario.getSelect('select '+
          ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) '+
          ' from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto <= '''+formataDataSQL(DateToStr(Date))+''' and c.id_categoria = '+codigo+') '+
          ' - (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) '+
          ' from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto <= '''+formataDataSQL(DateToStr(Date))+''' and c.id_categoria = '+codigo+') from RDB$DATABASE');

          editOrigem.Text := unUtilitario.getCurrToStr(varSQL.Fields[0].AsCurrency,FALSE);

          //varSQL.Close;
          FreeAndNil(varSQL);
     end;

end;

procedure TCAD_FluxoCaixa.Grid_EntradaDblClick(Sender: TObject);
vAR Formulario: TForm;
    I: INTEGER;
begin

  if NOT ZEntrada.FieldByName('ID_CAIXA').IsNull Then
  Begin
       PRINCIPAL.CriarForm(TCAD_Caixas, Self,'0');

       for I := 0 to Screen.FormCount - 1 do
       begin
            if Screen.Forms[I] is TCAD_Caixas then
            begin
                 Formulario := Screen.Forms[i];
            end;
       end;

       TCAD_Caixas(Formulario).mostraContaEntrada(ZEntrada.FieldByName('ID_CAIXA').AsInteger);
  End;

end;

procedure TCAD_FluxoCaixa.Grid_EntradaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

     If (Column.Field.FieldName = 'ID_CAIXA') then
     begin
          If ZEntrada.FieldByName('DATA_PGTO').IsNull then
          begin
               Grid_Entrada.Canvas.Brush.Color:= clBlack;
               Grid_Entrada.Canvas.Font.Color:= clWhite;
               Grid_Entrada.Canvas.FillRect(Rect);
               Grid_Entrada.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;

          If ZEntrada.FieldByName('PENDENTE').AsString = 'SIM' Then
          Begin
               Grid_Entrada.Canvas.Brush.Color:= clYellow;
               Grid_Entrada.Canvas.Font.Color:= clBlack;
               Grid_Entrada.Canvas.FillRect(Rect);
               Grid_Entrada.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          End;


          If (NOT ZEntrada.FieldByName('DATA_PGTO_1').IsNull) AND (ZEntrada.FieldByName('DATA_PGTO').IsNull) Then
          Begin
               Grid_Entrada.Canvas.Brush.Color:= clRed;
               Grid_Entrada.Canvas.Font.Color:= clWhite;
               Grid_Entrada.Canvas.FillRect(Rect);
               Grid_Entrada.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          End;
     End;

end;

procedure TCAD_FluxoCaixa.Grid_SaidaDblClick(Sender: TObject);
vAR Formulario: TForm;
    I: INTEGER;
begin

  if NOT ZSaida.FieldByName('ID_CAIXA').IsNull Then
  Begin
       PRINCIPAL.CriarForm(TCAD_Caixas, Self,'0');

       for I := 0 to Screen.FormCount - 1 do
       begin
            if Screen.Forms[I] is TCAD_Caixas then
            begin
                 Formulario := Screen.Forms[i];
            end;
       end;

       TCAD_Caixas(Formulario).mostraContaSaida(ZSaida.FieldByName('ID_CAIXA').AsInteger);
  End;
end;

procedure TCAD_FluxoCaixa.Grid_SaidaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

     If (Column.Field.FieldName = 'ID_CAIXA') then
     begin
          If ZSaida.FieldByName('DATA_PGTO').IsNull then
          begin
               Grid_Saida.Canvas.Brush.Color:= clBlack;
               Grid_Saida.Canvas.Font.Color:= clWhite;
               Grid_Saida.Canvas.FillRect(Rect);
               Grid_Saida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
          
          If ZSaida.FieldByName('PENDENTE').AsString = 'SIM' Then
          Begin
               Grid_Saida.Canvas.Brush.Color:= clYellow;
               Grid_Saida.Canvas.Font.Color:= clBlack;
               Grid_Saida.Canvas.FillRect(Rect);
               Grid_Saida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          End;

          If (ZSaida.FieldByName('DATA_PGTO_1').IsNull) AND (NOT ZSaida.FieldByName('DATA_PGTO').IsNull) Then
          Begin
               Grid_Saida.Canvas.Brush.Color:= clRed;
               Grid_Saida.Canvas.Font.Color:= clWhite;
               Grid_Saida.Canvas.FillRect(Rect);
               Grid_Saida.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          End;
     End;
end;

procedure TCAD_FluxoCaixa.ValorEntrada_RealizadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('ENTRADAS REALIZADAS NO PERÍODO - CONTAS RECEBIDAS. (SEM SALDO ANTERIORES)');
end;

procedure TCAD_FluxoCaixa.ValorEntrada_PrevistaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('ENTRADAS PREVISTAS NO PERÍODO - CONTAS À RECEBER.');
end;

procedure TCAD_FluxoCaixa.ValorEntrada_DiferencaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('DIFERÊNÇA ENTRE CONTAS RECEBIDAS E CONTAS À RECEBER.');
end;

procedure TCAD_FluxoCaixa.AdicionarValor1Click(Sender: TObject);
     var ar: array of string;
      I: Integer;
      sqlConsulta: TZQuery;
      arquivo: String;
begin

     //unUtilitario.setMensagem('O sistema irá abrir o arquivo \\'+UpperCase(getUser('SERVIDOR'))+'\IMOBILIARIA\REL\CARTA_COBRANCA.DOC para gerar as cartas.'+#13+'Caso não exista este arquivo no servicor, crie-o com o uso de Tags.'+#13+'OBS 1: Não é .DOCX, o correto é .DOC!'+#13'OBS 2: Marque ABRIR UMA CÓPIA SOMENTE LEITURA, se questionado pelo MS Word.','INFORMA');

     PRINCIPAL.pegaDocumento.Execute;

     IF PRINCIPAL.pegaDocumento.FileName <> '' THEN
     Begin
          arquivo := PRINCIPAL.pegaDocumento.FileName;
          //nomeDocumento := ExtractFileName(PRINCIPAL.pegaDocumento.FileName);
     End
     else
     Begin
          exit;
     end;


     for I := 0 to rowPessoas.Count - 1 do
     Begin
          sqlConsulta := unUtilitario.getSelect('select pc.* from PESSOA_CONTRATO pc left join contrato c on pc.id_contrato = c.id_contrato where c.ativo<>''XXX'' and tipo=''LOCATARIO'' and id_pessoa ='+ rowPessoas[I]);
          sqlConsulta.SQL.Text;
          setDocumento('GERAL_COM_DOCUMENTO', arquivo, '',2, StrToInt(rowPessoas[I]), sqlConsulta.FieldByName('id_imovel').AsInteger, sqlConsulta.FieldByName('id_contrato').AsInteger, ar);
          sqlConsulta.Close;
     end;

     FreeAndNil(sqlConsulta);
end;

procedure TCAD_FluxoCaixa.BalancoPrevistasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('DIFERÊNÇA ENTRE CONTAS PREVISTAS À RECEBER E À PAGAR.');
end;

procedure TCAD_FluxoCaixa.BalancoRealizadasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('DIFERÊNÇA ENTRE CONTAS RECEBIDAS E CONTAS PAGAS. (SEM SALDO ANTERIORES)');
end;

procedure TCAD_FluxoCaixa.BitBtn1Click(Sender: TObject);
begin

     If DM_CADASTRO.DS_Curinga_03X.DataSet.Active Then
     Begin
          Try
             DM_CADASTRO.DS_Curinga_03X.DataSet.Edit;
             DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('DATA_ALT').AsDateTime := Date() + Time();
             DM_CADASTRO.Z_Curinga_03X.ApplyUpdates;
             unMsg.INFORMA(1);
          Except
                on e: Exception do
                Begin
                     unMsg.ERRO(24);
                     unUtilitario.setMensagem('MENSAGEM DE ERRO DO SISTEMA: '+#13+e.Message,'erro');
                end;
          End;
     End
     Else
         unMsg.ERRO(13);

     DM_CADASTRO.DS_Curinga_03X.DataSet.Refresh;
     DM_CADASTRO.DS_Curinga_03X.DataSet.Edit;
     unLog.setLogInterno(DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsString,'LDC', 'BOTAO DE SALVAR REGISTRO', 'Usuário salvou uma nova anotacao para conta '+DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsString+' : '+DbTipoStatus.Text);

end;

procedure TCAD_FluxoCaixa.BitBtn2Click(Sender: TObject);
begin
       If DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').IsNull then
       Begin
            unUtilitario.setMensagem('Selecione uma conta na 2º listagem para incluir uma anotação.','informa');
            exit;
       end;

       DM_FINANCEIRO.ZCaixaTipoStatus.Close;
       DM_FINANCEIRO.ZCaixaTipoStatus.Open;

       If NOT DM_CADASTRO.DS_Curinga_03X.DataSet.Active Then
          DM_CADASTRO.DS_Curinga_03X.DataSet.Open;

       DM_CADASTRO.DS_Curinga_03X.DataSet.Append;

       PRINCIPAL.setID(DM_CADASTRO.Z_Curinga_03X, 'ID_CAIXA_STATUS', 'CAIXA_STATUS');

       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('ID_CAIXA_ENTRADA').AsInteger := DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsInteger;
       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('ID_FUNCIONARIO').AsString := getUser('CODIGO_USUARIO');
       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('OPERADOR').AsString := getUser('USUARIO');
       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('DOCUMENTO').AsString := DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('DOCUMENTO').AsString;
       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('DATA_CAD').AsDateTime := Date() + Time();
       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('DATA_ALT').AsDateTime := Date() + Time();
       DM_CADASTRO.DS_Curinga_03X.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date();

       DbTipoStatus.SetFocus;
       unLog.setLogInterno(DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsString,'LDC', 'BOTAO DE NOVO REGISTRO', 'Usuário abriu uma nova anotacao para conta '+DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsString);

end;

procedure TCAD_FluxoCaixa.BitBtn3Click(Sender: TObject);
begin
     IF DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_PESSOA').IsNull Then
     BEGIN
        unUtilitario.setMensagem('Primeiramente, selecione uma conta!','informa');
        EXIT;
     END;

     unLog.setLogInterno(DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_PESSOA').AsString,'LDC', 'BOTAO DE QUITACAO (COD PESSOA)', 'Usuário clicou no botão de quitar as contas do cliente '+DM_CADASTRO.DS_Curinga_01X.DataSet.FieldByName('PESSOA').AsString);

     Application.CreateForm(TCAD_CaixasSimples, CAD_CaixasSimples);

     unCaixasSimples.setCaixa('ENTRADA');

     CAD_CaixasSimples.ValorBusca.Text := 'PESSOA '+ DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_PESSOA').AsString;
     unCaixasSimples.buscaRegistro(CAD_CaixasSimples.ValorBusca.Text);
     CAD_CaixasSimples.ShowModal;

     DM_CADASTRO.DS_Curinga_01X.DataSet.Refresh;
     DM_CADASTRO.DS_Curinga_02X.DataSet.Refresh;
     DM_CADASTRO.DS_Curinga_03X.DataSet.Refresh;
end;

procedure TCAD_FluxoCaixa.BitBtn5Click(Sender: TObject);
begin
   If DM_CADASTRO.DS_Curinga_03X.DataSet.Active Then
   Begin
        DM_CADASTRO.DS_Curinga_03X.DataSet.Cancel;
        DM_CADASTRO.Z_Curinga_03X.CancelUpdates;
        unLog.setLogInterno(DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsString,'LDC', 'BOTAO DE CANCELAR REGISTRO', 'Usuário cancelou uma nova anotacao para conta '+DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_CAIXA').AsString);

   End;
end;

procedure TCAD_FluxoCaixa.BitBtn6Click(Sender: TObject);
var sql: TZQuery;
begin
     if MemoPessoa.HelpContext > 0 then
     Begin
          sql := unUtilitario.getSQL('UPDATE LOG SET DATA = current_timestamp, ID_FUNC = '+getUser('CODIGO_USUARIO')+', OBS='''+Trim(MemoPessoa.Lines.Text)+''' where ID_LOG = '+IntToStr(MemoPessoa.HelpContext));
     end
     else
     Begin
          sql := unUtilitario.getSQL('INSERT INTO LOG (ID_LOG, ACAO, COMPONENTE, DATA, ID_FUNC, ID_CONTA, OBS, ATIVO) '+
          'VALUES ( null, ''COB'', ''COBRANCA'', current_timestamp, '+getUser('CODIGO_USUARIO')+', '+DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsString+', '''+Trim(MemoPessoa.Lines.Text)+''', ''SIM'')');

          sql := unUtilitario.getSelect('select first 1 id_log, obs from log where ativo=''SIM'' and acao = ''COB'' and id_conta = '+DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsString);
          if sql.RecordCount > 0 then
          Begin
               MemoPessoa.Lines.Clear;
               MemoPessoa.HelpContext := sql.FieldByName('id_log').AsInteger;
               MemoPessoa.Lines.Text := sql.FieldByName('obs').AsString;
          end
          else
          Begin
               MemoPessoa.HelpContext := 0;
          end;
     end;

     PRINCIPAL.setMensagem('Texto Salvo!');
     unLog.setLogInterno(DM_CADASTRO.DS_Curinga_02X.DataSet.FieldByName('ID_PESSOA').AsString,'LDC', 'BOTAO DE SALVAR COMENTARIO', 'Usuário deixou recado para cliente '+DM_CADASTRO.DS_Curinga_01X.DataSet.FieldByName('PESSOA').AsString+' : '+Trim(MemoPessoa.Lines.Text));

end;

procedure TCAD_FluxoCaixa.BitBtn7Click(Sender: TObject);
begin
     ChartFluxo.UndoZoom;
end;

procedure TCAD_FluxoCaixa.BitBtn8Click(Sender: TObject);
begin
     setMensagem('Em desenvolvimento.','informa');
     //testWord();
     //setWord(ZlogCobranca,'- LOG DE COBRANÇA -');
end;

procedure TCAD_FluxoCaixa.BitBtnBuscaImovelClick(Sender: TObject);
begin
     if Length(EditNomeImovel.Text) = 0 Then
     begin
          ZFiltroImovel.Close;
          EditNomeImovel.SetFocus;
          exit;
     end;

     ZFiltroImovel.Close;
     ZFiltroImovel.Params[0].AsString := '%'+EditNomeImovel.Text+'%';
     ZFiltroImovel.Open;

     if ZFiltroImovel.RecordCount <> 1 Then
        PRINCIPAL.setMensagem('Busque até filtrar apenas UM imóvel!')
     else
         PRINCIPAL.setMensagem('OK, IMÓVEL IDENTIFICADO!')
end;

procedure TCAD_FluxoCaixa.BitBtnBuscaPessoaClick(Sender: TObject);
begin

     if Length(EditNomePessoa.Text) = 0 Then
     begin
          ZFiltroPessoa.Close;
          EditNomePessoa.SetFocus;
          exit;
     end;

     ZFiltroPessoa.Close;
     ZFiltroPessoa.Params[0].AsString := '%'+EditNomePessoa.Text+'%';
     ZFiltroPessoa.Open;

     if ZFiltroPessoa.RecordCount <> 1 Then
        PRINCIPAL.setMensagem('Busque até filtrar apenas UM registro!')
     else
         PRINCIPAL.setMensagem('OK, REGISTRO IDENTIFICADO!')

end;

procedure TCAD_FluxoCaixa.btnMovimentarClick(Sender: TObject);
var varSQL: TZQuery;
    valor: Double;
begin

     try
        valor := StrToFloat(editMontante.Text); //Para gerar erro.
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('Informe um valor válido! Ex: 1280,50 ou 10,00'+#13+e.Message,'informa');
                exit;
           end;
     end;


     if unUtilitario.setMensagem('Deseja movimentar R$'+editMontante.Text+' da conta '+comboOrigem.Text+' para a conta '+comboDestino.Text+'?'+#13+'Verifique se existe um GRUPO "31-SERVIÇOS" e SUBGRUPO "35-MOVIMENTAÇÃO" criados!'+#13+'Caso não tenha, entre em contato com a Célula Digital.','confirma') = IDYES then
     Begin

          if Length(trim(editAnotacao.Text)) > 0 then
             editAnotacao.Text := '('+editAnotacao.Text+')';
          

          //RETIRA MONTANTE
          varSQL := unUtilitario.getSQL('INSERT INTO CAIXA_SAIDA (ID_CATEGORIA, ID_SUBTIPO, ID_TIPO, ID_PESSOA, ID_IMOVEL, ID_CONTRATO, ID_FUNCIONARIO, ID_ENTRADA, ID_SAIDA, DATA_REF, DATA_CAD, DATA_ALT, DOCUMENTO,'+' OPERACAO, VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE, ATIVO, GARANTIDO, DATA_PGTO) VALUES '+
          ' ('+IntToStr(unCamposBusca.IDCampo(comboOrigem.Text))+', 35, 31, '+IntToStr(unCamposBusca.IDCampo(ComboEmpresa.Text))+', NULL, NULL, '+getUser('CODIGO_USUARIO')+', NULL, NULL, '''+formataDataSQL(DateToStr(DATE))+''', '''+formataDataSQL(DateToStr(DATE))+''', '''+formataDataSQL(DateToStr(DATE))+''', ''TRANSFERÊNCIA DE DINHEIRO '+editAnotacao.Text+''', ''MOVIMENTAÇÃO DE DINHEIRO ENTRE CATEGORIAS/CONTAS'', '+formataDinheiroSQL(editMontante.Text)+', 0, 0, 0, 1, ''NAO'', ''SIM'', ''SIM'', '''+formataDataSQL(DateToStr(DATE))+''')');

          //CADASTRA MONTANTE
          //cadastraConta('ENTRADA', '0', IntToStr(unCamposBusca.IDCampo(comboDestino.Text)), '35', '31', IntToStr(unCamposBusca.IDCampo(ComboEmpresa.Text)), 'NULL', 'NULL', getUser('CODIGO_USUARIO'), 'NULL', 'NULL', DateToStr(Date), DateToStr(Date), DateToStr(Date), '', '', , '0', '0', '0', '1', 'NAO', 'SIM', 'SIM');
          varSQL := unUtilitario.getSQL('INSERT INTO CAIXA_ENTRADA (ID_CATEGORIA, ID_SUBTIPO, ID_TIPO, ID_PESSOA, ID_IMOVEL, ID_CONTRATO, ID_FUNCIONARIO, ID_ENTRADA, ID_SAIDA, DATA_REF, DATA_CAD, DATA_ALT, DOCUMENTO,'+' OPERACAO, VALOR, VALOR_JUROS, VALOR_MULTA, VALOR_DESCONTO, PARCELA, PENDENTE, ATIVO, GARANTIDO, DATA_PGTO) VALUES '+
          ' ('+IntToStr(unCamposBusca.IDCampo(comboDestino.Text))+', 35, 31, '+IntToStr(unCamposBusca.IDCampo(ComboEmpresa.Text))+', NULL, NULL, '+getUser('CODIGO_USUARIO')+', NULL, NULL, '''+formataDataSQL(DateToStr(DATE))+''', '''+formataDataSQL(DateToStr(DATE))+''', '''+formataDataSQL(DateToStr(DATE))+''', ''TRANSFERÊNCIA DE DINHEIRO '+editAnotacao.Text+''', ''MOVIMENTAÇÃO DE DINHEIRO ENTRE CATEGORIAS/CONTAS'', '+formataDinheiroSQL(editMontante.Text)+', 0, 0, 0, 1, ''NAO'', ''SIM'', ''SIM'', '''+formataDataSQL(DateToStr(DATE))+''')');

          editMontante.Text := '0,00';
          comboOrigem.Text := '';
          editOrigem.Text := '0,00';
          comboDestino.Text := '';
          editDestino.Text := '0,00';
          editAnotacao.Text := '';

          TRY
             varSQL.ApplyUpdates;
             unUtilitario.setMensagem('Conta movimentada com sucesso!','informa');
          EXCEPT
                on e: Exception do
                Begin
                   varSQL.CancelUpdates;
                   unUtilitario.setMensagem('MENSAGEM DE ERRO DO SISTEMA:'+#13+e.Message,'erro');
                end;
          end;

     end;

end;

procedure TCAD_FluxoCaixa.btnMovimentarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('SÃO CRIADAS CONTAS AUTOMATICAMENTE PARA EXPRESSAR ESSA MOVIMENTAÇÃO EM SEU BANCO. ESSAS CONTAS POSSUI O GRUPO 31 E SUBGRUPO 35, E SÃO CHAMADAS DE: TRANSFERÊNCIA DE DINHEIRO.');
end;

procedure TCAD_FluxoCaixa.ValorSaida_DiferencaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('DIFERÊNÇA ENTRE CONTAS PAGAS E CONTAS À PAGAR.');
end;

procedure TCAD_FluxoCaixa.ValorSaida_RealizadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('SAÍDAS REALIZADAS NO PERÍODO - CONTAS PAGAS.');
end;


procedure TCAD_FluxoCaixa.ValorSaida_PrevistaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('SAÍDAS PREVISTAS NO PERÍODO - CONTAS À PAGAR.');
end;

procedure TCAD_FluxoCaixa.BtnPesquisarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('EFETUAR A PESQUISA ENTRE AS DATAS INFORMADAS.');
end;

procedure TCAD_FluxoCaixa.BtnValoresCalculadosClick(Sender: TObject);
begin
     lbEntEfetuadasNormal.Visible := False;
     lbSaiEfeuadasNormal.Visible := False;
     SaldoEfetuadasNormal.Visible := False;

     lbEntEfetuadas.Visible := True;
     lbSaiEfeuadas.Visible := True;
     SaldoEfetuadas.Visible := True;

     lbEntDiferencaNormal.Visible := False;
     lbSaiDiferencaNormal.Visible := False;
     SaldonNaoEfetuadasNormal.Visible := False;

     lbEntDiferenca.Visible := True;
     lbSaiDiferenca.Visible := True;
     SaldonNaoEfetuadas.Visible := True;

     lbEntEsperadasNormal.Visible := False;
     lbSaiEsperadasNormal.Visible := False;
     SaldoPrevistaNormal.Visible := False;

     lbEntEsperadas.Visible := True;
     lbSaiEsperadas.Visible := True;
     SaldoPrevista.Visible := True;
end;

procedure TCAD_FluxoCaixa.btnValoresNormaisClick(Sender: TObject);
begin
     lbEntEfetuadasNormal.Visible := True;
     lbSaiEfeuadasNormal.Visible := True;
     SaldoEfetuadasNormal.Visible := True;

     lbEntEfetuadas.Visible := False;
     lbSaiEfeuadas.Visible := False;
     SaldoEfetuadas.Visible := False;

     lbEntDiferencaNormal.Visible := True;
     lbSaiDiferencaNormal.Visible := True;
     SaldonNaoEfetuadasNormal.Visible := True;

     lbEntDiferenca.Visible := False;
     lbSaiDiferenca.Visible := False;
     SaldonNaoEfetuadas.Visible := False;

     lbEntEsperadasNormal.Visible := True;
     lbSaiEsperadasNormal.Visible := True;
     SaldoPrevistaNormal.Visible := True;

     lbEntEsperadas.Visible := False;
     lbSaiEsperadas.Visible := False;
     SaldoPrevista.Visible := False;
end;

procedure TCAD_FluxoCaixa.CadastrodeContratos1Click(Sender: TObject);
begin
     PRINCIPAL.Cadastro1Click(Sender);
end;

procedure TCAD_FluxoCaixa.chkstatusClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to listStatus.Items.Count - 1 do
    if chkstatus.State = cbChecked then
      listStatus.Items[i].Checked := true
    else
      listStatus.Items[i].Checked := false;
end;

procedure TCAD_FluxoCaixa.CheckTudoClick(Sender: TObject);
begin
     if CheckTudo.State = cbChecked then
          data_ini.Enabled := False
     Else
          data_ini.Enabled := True;
     
end;

procedure TCAD_FluxoCaixa.CheckTudoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('INFORME O TIPO DE BUSCA QUE DESEJA EFETUAR.');
end;

procedure TCAD_FluxoCaixa.CheckContasBoletosClick(Sender: TObject);
begin
     if CheckContasBoletos.State = cbChecked then
        CheckContasBoletos.Caption := 'Contas com Boletos';

     if CheckContasBoletos.State = cbUnchecked then
        CheckContasBoletos.Caption := 'Contas sem Boletos';

     if CheckContasBoletos.State = cbGrayed then
        CheckContasBoletos.Caption := 'Com ou Sem Boletos';
end;

procedure TCAD_FluxoCaixa.CheckContasBoletosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasBoletos.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasContratosAtivosClick(Sender: TObject);
begin
     if CheckContasContratosAtivos.State = cbChecked then
        CheckContasContratosAtivos.Caption := 'Contratos Ativos';

     if CheckContasContratosAtivos.State = cbUnchecked then
        CheckContasContratosAtivos.Caption := 'Contratos Desativados';

     if CheckContasContratosAtivos.State = cbGrayed then
        CheckContasContratosAtivos.Caption := 'Todos os Contratos';
end;

procedure TCAD_FluxoCaixa.CheckContasContratosClick(Sender: TObject);
begin
     if CheckContasContratos.State = cbChecked then
     Begin
        CheckContasContratos.Caption := 'Contas com Contratos';
        CheckContasContratosAtivos.Enabled := True;
     end;

     if CheckContasContratos.State = cbUnchecked then
     Begin
        CheckContasContratos.Caption := 'Contas sem Contratos';
        CheckContasContratosAtivos.State := cbGrayed;
        CheckContasContratosAtivosClick(Sender);
        CheckContasContratosAtivos.Enabled := False;
     end;

     if CheckContasContratos.State = cbGrayed then
     Begin
        CheckContasContratos.Caption := 'Com ou sem Contratos';
        CheckContasContratosAtivos.Enabled := True;
     end;
end;

procedure TCAD_FluxoCaixa.CheckContasContratosMarcadosClick(Sender: TObject);
begin
     if CheckContasContratosMarcados.State = cbChecked then
        CheckContasContratosMarcados.Caption := 'Contrato COM Marca';

     if CheckContasContratosMarcados.State = cbUnchecked then
        CheckContasContratosMarcados.Caption := 'Contrato SEM Marca';

     if CheckContasContratosMarcados.State = cbGrayed then
        CheckContasContratosMarcados.Caption := 'Contrato C/S Marca';
end;

procedure TCAD_FluxoCaixa.CheckContasContratosMarcadosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasContratosMarcados.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasContratosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasContratos.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasDepositoClick(Sender: TObject);
begin
     if CheckContasDeposito.State = cbChecked then
        CheckContasDeposito.Caption := 'Contrato COM Depósito';

     if CheckContasDeposito.State = cbUnchecked then
        CheckContasDeposito.Caption := 'Contrato SEM Depósito';

     if CheckContasDeposito.State = cbGrayed then
        CheckContasDeposito.Caption := 'Contrato C/S Depósito';
end;

procedure TCAD_FluxoCaixa.CheckContasGarantidosClick(Sender: TObject);
begin
     if CheckContasGarantidos.State = cbChecked then
        CheckContasGarantidos.Caption := 'Contas Garantidas';

     if CheckContasGarantidos.State = cbUnchecked then
          CheckContasGarantidos.Caption := 'Contas Não Garantidas';

     if CheckContasGarantidos.State = cbGrayed then
          CheckContasGarantidos.Caption := 'Garantidas ou Não';
end;

procedure TCAD_FluxoCaixa.CheckContasGarantidosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasGarantidos.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasImoveisClick(Sender: TObject);
begin
     if CheckContasImoveis.State = cbChecked then
        CheckContasImoveis.Caption := 'Contas com Imóveis';

     if CheckContasImoveis.State = cbUnchecked then
        CheckContasImoveis.Caption := 'Contas sem Imóveis';

     if CheckContasImoveis.State = cbGrayed then
        CheckContasImoveis.Caption := 'Com ou sem Imóveis';
end;

procedure TCAD_FluxoCaixa.CheckContasImoveisMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasContratosAtivos.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasPagasClick(Sender: TObject);
begin
     if CheckContasPagas.State = cbChecked then
        CheckContasPagas.Caption := 'Contas Pagas';

     if CheckContasPagas.State = cbUnchecked then
          CheckContasPagas.Caption := 'Contas Não Pagas';

     if CheckContasPagas.State = cbGrayed then
          CheckContasPagas.Caption := 'Pagas e Não Pagas';
end;

procedure TCAD_FluxoCaixa.CheckContasPagasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasPagas.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasPendentesClick(Sender: TObject);
begin
     if CheckContasPendentes.State = cbChecked then
        CheckContasPendentes.Caption := 'Contas Pendentes';

     if CheckContasPendentes.State = cbUnchecked then
        CheckContasPendentes.Caption := 'Contas não Pendentes';

     if CheckContasPendentes.State = cbGrayed then
        CheckContasPendentes.Caption := 'Pendentes ou Não';
end;

procedure TCAD_FluxoCaixa.CheckContasPendentesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem(CheckContasPendentes.Hint);
end;

procedure TCAD_FluxoCaixa.CheckContasProprietariosClick(Sender: TObject);
begin
     if CheckContasProprietarios.State = cbChecked then
        CheckContasProprietarios.Caption := 'Somente Locador';

     if CheckContasProprietarios.State = cbUnchecked then
        CheckContasProprietarios.Caption := 'Somente Locatário';

     if CheckContasProprietarios.State = cbGrayed then
        CheckContasProprietarios.Caption := 'Locatário e Locador';
end;

procedure TCAD_FluxoCaixa.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('CAIXA SAÍDA OU CONTAS À PAGAR. VALORES ENVIADOS PELA EMPRESA.');
end;

procedure TCAD_FluxoCaixa.Irparapessoa1Click(Sender: TObject);
begin
  Try
     if not DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').IsNull then
        unCamposBusca.buscaIndividual(2,DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsInteger,TCAD_Pessoa,self);
  except
        unUtilitario.setMensagem('Erro ao buscar a pessoa.'+#13+'Verifique se a pessoa está cadastrada.','erro');
  end;
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items0Click(Sender: TObject);
var modelo: integer;
  varSQL: TZQuery;
begin
     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     modelo := StrToInt(InputBox('Escolha a Ordenação:','1 - Data de Venc. / Pessoa;'+#13+'2 - Data de Pgto / Pessoa;'+#13+'3 - Data de Pgto. / Data de Venc.;'+#13+'4 - Endereço. / Data de Venc.;','1'));

     if (modelo > 4) or (modelo = 0) then
        exit;

     //GerarFiltro(Sender);

     if modelo = 1 then
     Begin
          ZEntrada.close;
          ZEntrada.SQL.Add(' order by c.data_ref DESC, p.nome ');
          ZSaida.close;
          ZSaida.SQL.Add(' order by c.data_ref DESC, p.nome ');
     end
     else
     if modelo = 2 then
     Begin
          ZEntrada.close;
          ZEntrada.SQL.Add(' order by c.data_pgto DESC, p.nome ');
          ZSaida.close;
          ZSaida.SQL.Add(' order by c.data_pgto DESC, p.nome ');
     end
     else
     if modelo = 3 then
     Begin
          ZEntrada.close;
          ZEntrada.SQL.Add(' order by c.data_pgto DESC, c.data_ref ');
          ZSaida.close;
          ZSaida.SQL.Add(' order by c.data_pgto DESC, c.data_ref ');
     end
     else
     if modelo = 4 then
     Begin
          ZEntrada.close;
          ZEntrada.SQL.Add(' order by L.nome, c.data_ref ');
          ZSaida.close;
          ZSaida.SQL.Add(' order by L.nome, c.data_ref ');
     end
     else
     Begin
          ZEntrada.close;
          ZEntrada.SQL.Add(' order by c.data_ref DESC, p.nome ');
          ZSaida.close;
          ZSaida.SQL.Add(' order by c.data_ref DESC, p.nome ');
     end;

     ZEntrada.Open;
     ZSaida.Open;

     DM_REL.RV_Query.DataSet := ZEntrada;
     DM_REL.RV_Query2.DataSet := ZSaida;

     ZEntrada.First;
     ZSaida.First;

     if CheckPessoa.Checked Then
     Begin
      DM_REL.RV_IMPRESSAO.SetParam('PessoaNome', ZFiltroPessoa.FieldByName('NOME').AsString);
      DM_REL.RV_IMPRESSAO.SetParam('NomeRelatorio', 'RECIBO');
      DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaEntrada', 'Descontos');
      DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaSaida', 'Pagamentos - '+ZFiltroPessoa.FieldByName('NOME').AsString);
     end
     ELSE
     begin
      DM_REL.RV_IMPRESSAO.SetParam('PessoaNome', 'Assinatura do Responsável');
      DM_REL.RV_IMPRESSAO.SetParam('NomeRelatorio', 'RELATÓRIO');
      DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaEntrada', 'Caixa Entrada');
      DM_REL.RV_IMPRESSAO.SetParam('NomeCaixaSaida', 'Caixa Saída');
     end;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption+' - '+getNomeCategoria());

     DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);

     DM_REL.RV_IMPRESSAO.Close;

     try
        modelo := StrToInt(InputBox('Escolha um modelo de relatório:','1 - Completo.'+#13+'2 - Resumido (Recibo Prop.).'+#13+'3 - Super Resumido','3'));

        if (modelo > 3) or (modelo = 0) then
           exit;

        if modelo = 1 then
           DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA1.rav';

        if modelo = 2 then
          DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA1.rav';

        if modelo = 3 then
        Begin
             DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA2.rav';

        end;
        setRave(1,'','');

    if (modelo = 2) and (CheckPessoa.Checked) then
    if setMensagem('Deseja quitar todas as contas do relatório que acabou de visualizar?'+#13+'Contas já quitadas não são alteradas.'+#13+'As contas são quiatadas com a data de hoje:'+datetostr(date())+#13+'Deseja quitar: '+#13+IntToStr(ZEntrada.RecordCount)+' contas do Caixa Entrada'+#13+IntToStr(ZSaida.RecordCount)+' contas do Caixa Saída','confirma') = IDYES Then
        Begin
          varSQL := unUtilitario.getSQL('update caixa_ENTRADA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp where id_caixa '+unUtilitario.descobreIDSelect(ZEntrada,'ID_CAIXA'));
          varSQL := unUtilitario.getSQL('update caixa_SAIDA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp where id_caixa '+unUtilitario.descobreIDSelect(ZSaida,'ID_CAIXA'));

          unUtilitario.setMensagem('Ação realizada. Confira as contas e verifique a quitação.','informa');
          FreeAndNil(VARSQL);
        end;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('MENSAGEM DO SISTEMA:'+#13+e.Message, 'erro');
                Exit;
           end;
     end;

end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items2Click(Sender: TObject);
VAR varSQL: TZQuery;
    escolha: integer;
    sql: String;
begin
//VALORES ENVOLVIDOS ENTRADAS

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     unUtilitario.setMensagem('BASE ENTRADA'+#13+'Somente contas com vínculos são mostradas, ok?'+#13+'Contas com vínculos são aquelas que possuem o código de outra contra conta/caixa em seu registro.'+
     #13+'Os dados de busca deste relatório são com base no caixa ENTRADA.'+
     #13+'NOTE QUE SE COMPARAR ESTE RELATÓRIO COM O DE SAÍDA, PODERÁ DAR RESULTADOS DIFERENTES, JÁ QUE AS DATAS BASE ESTÃO SENDO BUSCADAS EM DOIS CAIXAS DIFERENTES!','informa');

     escolha := StrToInt(InputBox('Opção de Taxa:','1 - Desejo que saia a taxa real da conta;'+#13+'2 - Desejo que saia a taxa do contrato;','1'));

     if escolha = 1 then
     Begin
          sql := ' case when c.id_contrato > 0 then '+
          ' case when pi.porcentagem > 0 then '+
          ' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100) '+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) '+
          ' else '+
          ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
          ' end '+
          ' else '+
          ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
          'end as VALORTOTALTAXA, ';
     end
     else
     Begin

          sql := ' case when c.id_contrato > 0 then '+
          ' case when pi.porcentagem > 0 then '+
            ' (((co.VALOR * co.TARIFA) / 100) * pi.porcentagem) / 100 '+
          ' else '+
            ' (co.VALOR * co.TARIFA) / 100 '+
          ' end '+
          ' else '+
           ' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto, C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto))) '+
          'end as VALORTOTALTAXA, ';
     end;
     

     DM_REL.ZQUERY1.Close;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('select c.*, '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) as VALORTOTALENTRADA, '+
' pe.*, '+
' ce.*, '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', Ce.data_ref,Ce.data_pgto,Ce.valor,Ce.valor_juros,Ce.valor_multa,Ce.valor_desconto)) as VALORTOTALSAIDA, '+
' ps.*, '+
' co.*, '+
' i.*, '+
' l.*, '+
' csis.nome, '+ sql +
' case when c.id_contrato > 0 then '+
' case when pi.porcentagem > 0 then '+
' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100 '+
' else '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
' end '+
' else '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
'end as CALCULOENTRADA '+
' from caixa_entrada c '+
' left join caixa_saida ce on ce.id_entrada = c.id_caixa '+
' left join pessoa pe on pe.id_pessoa = c.id_pessoa '+
' left join pessoa ps on ps.id_pessoa = ce.id_pessoa '+
' left join imovel i on i.id_imovel = c.id_imovel '+
' left join logradouro l on l.id_logradouro = i.id_logradouro '+
' left join caixa_sis csis on csis.id_caixa_sis = c.id_subtipo '+
' left join contrato co on co.id_contrato = c.id_contrato '+
' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
  getWhere('ENTRADA','')+' order by pe.nome');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption + ' (ENTRADA) '+getNomeCategoria());
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00');
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', 'Esta informação não esta ativa nesta opção por não ser mais necessária.');

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_VALORES_ENVOLVIDOS.rav';

     setRave(1,'','');
     DM_REL.ZQUERY1.Close;
     FreeAndNil(varSQL);

end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items3Click(Sender: TObject);
VAR varSQL: TZQuery;
begin
//VALORES ENVOLVIDOS SAÍDAS

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     unUtilitario.setMensagem('BASE SAÍDA'+#13+'Somente contas com vínculos são mostradas, ok?'+#13+'Contas com vínculos são aquelas que possuem o código de outra contra conta/caixa em seu registro.'+
     #13+'Os dados de busca deste relatório são com base no caixa SAÍDA.'+
     #13+'NOTE QUE SE COMPARAR ESTE RELATÓRIO COM O DE ENTRADA, PODERÁ DAR RESULTADOS DIFERENTES, JÁ QUE AS DATAS BASE ESTÃO SENDO BUSCADAS EM DOIS CAIXAS DIFERENTES!','informa');


     DM_REL.ZQUERY1.Close;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('select ce.*, '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) as VALORTOTALENTRADA, '+
' pe.*, '+
' c.*, '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) as VALORTOTALSAIDA, '+
' ps.*, '+
' co.*, '+
' i.*, '+
' l.*, '+
' csis.nome, '+
' case when c.id_contrato > 0 then '+
' case when pi.porcentagem > 0 then '+
' (((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto,CE.valor,CE.valor_juros,CE.valor_multa,CE.valor_desconto)) * pi.porcentagem) / 100) '+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
' else '+
' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))) '+
' end '+
' else '+
' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CE.data_ref,CE.data_pgto, CE.valor, CE.valor_juros, CE.valor_multa, CE.valor_desconto))'+' - (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto))) '+
'end as VALORTOTALTAXA, '+
' case when c.id_contrato > 0 then '+
' case when pi.porcentagem > 0 then '+
' ((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100 '+
' else '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
' end '+
' else '+
' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
'end as CALCULOENTRADA '+
' from caixa_saida c '+
' left join caixa_entrada ce on ce.id_caixa = c.id_entrada '+
' left join pessoa pe on pe.id_pessoa = ce.id_pessoa '+
' left join pessoa ps on ps.id_pessoa = c.id_pessoa '+
' left join imovel i on i.id_imovel = c.id_imovel '+
' left join logradouro l on l.id_logradouro = i.id_logradouro '+
' left join caixa_sis csis on csis.id_caixa_sis = ce.id_subtipo '+
' left join contrato co on co.id_contrato = c.id_contrato '+
' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
  getWhere('SAIDA','')+' order by pe.nome');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption + ' (SAÍDA) '+getNomeCategoria());

     varSQL := unUtilitario.getSelect('select '+
' case when c.id_contrato > 0 then '+
' case when pi.porcentagem > 0 then '+
' (((SELECT sum(RESULT) FROM spvalorcobranca1(1, C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) * pi.porcentagem) / 100) '+
' else '+
' (SELECT sum(RESULT) FROM spvalorcobranca1(1, C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
' end '+
' else '+
' (SELECT sum(RESULT) FROM spvalorcobranca1(1, C.data_ref,C.data_pgto,C.valor,C.valor_juros,C.valor_multa,C.valor_desconto)) '+
'end as CALCULOENTRADA '+
' from caixa_entrada C' +
' left join imovel i on i.id_imovel = c.id_imovel '+
' left join pessoa ps on ps.id_pessoa = c.id_pessoa '+
' left join pessoa_imovel pi on pi.id_imovel = i.id_imovel and pi.status = ''PROPRIETARIO'' and pi.id_pessoa = ps.id_pessoa '+
getWhere('ENTRADA','') + ' and C.id_caixa not in (select CS.id_entrada from caixa_saida cs where cs.ativo <> ''XXX'' and CS.id_entrada is not null) ');

  if varSQL.Fields[0].IsNull then
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', '0,00')
  else
      DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', varSQL.Fields[0].AsString);

      DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', 'Entradas sem correspondentes de Saída');

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_2_CAIXA_VALORES_ENVOLVIDOS.rav';

     setRave(1,'','');
     DM_REL.ZQUERY1.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items4Click(Sender: TObject);
begin

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT CSIS. NOME AS DESCSUBTIPO, SUM((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
     ' FROM CAIXA_SAIDA C '+
     ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+getWhere('SAIDA','')+' GROUP BY CSIS.NOME');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA2.rav';

     setRave(1,'SUBGRUPO DE CONTAS',LbPeriodo.Caption+' - '+getNomeCategoria());
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items5Click(Sender: TObject);
begin
//GRUPO e SUBGRUPO

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO,'+' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
     ' FROM CAIXA_SAIDA C '+
     ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
     ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('SAIDA','')+
     ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME ORDER BY CSISS.NOME, CSIS.NOME');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA3.rav';

     setRave(1,'GRUPO E SUBGRUPO DE CONTAS',LbPeriodo.Caption+' - '+getNomeCategoria());
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items6Click(Sender: TObject);
var varSQL: TZQuery;
begin
//CONTA CORRENTE

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     IF (NOT RadioPagamento.Checked) or (CheckContasPagas.State <> cbChecked) then
     Begin
          tab_5.Show;
          unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como PAGAMENTO.'+#13+'Marque CONTAS PAGAS em tipo de contas.','informa');
          exit;
     End;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT C.NOME, C.DOCUMENTO, C.DATA_pgto, CASE WHEN (SUM(C.VALOR_CREDITO)) > 0 THEN SUM(C.VALOR_CREDITO)  ELSE '+
     ' SUM(C.VALOR_DEBITO) END AS VALOR, C.CRED_DEB FROM V_CONTA_CORRENTE C '+
     getWhere('SAIDA','CHECKCONTASPENDENTES CHECKCONTASCONTRATOSATIVOS') +' GROUP BY C.DATA_pgto, C.NOME, C.DOCUMENTO, C.CRED_DEB ORDER BY C.DATA_pgto');

     DM_REL.ZQUERY1.SQL.Text;

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     if NOT CheckTudo.Checked then
     Begin
     varSQL := unUtilitario.getSelect('select '+
    ' CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+') is null THEN 0 ELSE  '+
    ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+') '+
    ' END - CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+') is null THEN 0 ELSE '+
    ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_ini.Date))+''' and '+getCategoria('C')+') '+
    ' END from RDB$DATABASE');
     end
     else
     Begin
     varSQL := unUtilitario.getSelect('select '+
    ' CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_fim.Date))+''' and '+getCategoria('C')+') is null THEN 0 ELSE  '+
    ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_entrada c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_fim.Date))+''' and '+getCategoria('C')+') '+
    ' END - CASE WHEN (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_fim.Date))+''' and '+getCategoria('C')+') is null THEN 0 ELSE  '+
    ' (select sum((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, c.data_pgto, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto))) from caixa_saida c WHERE C.ATIVO <> ''XXX'' and c.data_pgto < '''+formataDataSQL(DateToStr(data_fim.Date))+''' and '+getCategoria('C')+') '+
    ' END  from RDB$DATABASE');
     end;
     
    varSQL.SQL.Text;

     if varSQL.Fields[0].IsNull Then
          DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo','0')
     else
         DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo',varSQL.Fields[0].AsString);

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA4.rav';

     setRave(1,'MOVIMENTAÇÃO FINANCEIRA',LbPeriodo.Caption+' - '+getNomeCategoria());
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items7Click(Sender: TObject);
begin

        IF (NOT RadioPagamento.Checked) or (CheckContasPagas.State <> cbChecked) then
        Begin
             tab_5.Show;
             unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como PAGAMENTO.'+#13+'Marque CONTAS PAGAS em tipo de contas.','informa');
             exit;
        End;

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add(' SELECT  CSAI.*, P.nome as PROPRIETARIO, I.numero, I.complemento, CONT.tarifa, C.data_pgto, L.nome AS RUA, PES.NOME AS INQUILINO,'+
     ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa,'+
     ' C.valor_desconto)) as VR, CAST(C.valor AS NUMERIC(15,2)) as valorInquilino  FROM CAIXA_ENTRADA C'+
     ' LEFT JOIN CAIXA_SAIDA CSAI ON CSAI.id_ENTRADA = C.id_CAIXA AND CSAI.DATA_PGTO IS NULL'+
     ' LEFT JOIN PESSOA P ON P.id_pessoa = CSAI.id_pessoa'+
     ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'+
     ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'+
     ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'+
     ' LEFT JOIN PESSOA PES ON PES.id_pessoa = C.id_pessoa '+getWhere('SAIDA','')+
     ' ORDER BY C.DATA_REF, P.NOME');

     DM_REL.ZQUERY1.SQL.Text;
     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     ZEntrada.First;
     ZSaida.First;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('varCalculoRepasse',getConf('REPASSA_MULTA'));
     DM_REL.RV_IMPRESSAO.SetParam('varEmail',getUser('EMAIL'));

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_PROP1.rav';

     setRave(1,'','');
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items8Click(Sender: TObject);
begin
     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT CSIS. NOME AS DESCSUBTIPO, SUM((SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
     ' FROM CAIXA_ENTRADA C '+
     ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+getWhere('ENTRADA','')+' GROUP BY CSIS.NOME');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA2.rav';

     setRave(1,'SUBGRUPO DE CONTAS',LbPeriodo.Caption+' - '+getNomeCategoria());
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories2Items9Click(Sender: TObject);
begin
     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add('SELECT CSISS.ID_CAIXA_SIS AS ID_TIPO, CSISS.NOME AS DESCTIPO, CSIS.ID_CAIXA_SIS AS ID_SUBTIPO, CSIS.NOME AS DESCSUBTIPO,'+' SUM((SELECT RESULT FROM spvalorcobranca1(1, C.data_ref, C.data_pgto, C.valor, C.valor_juros, C.valor_multa, C.valor_desconto)))  AS VALOR '+
     ' FROM CAIXA_ENTRADA C '+
     ' INNER JOIN CAIXA_SIS CSIS ON CSIS.ID_CAIXA_SIS = C.ID_SUBTIPO  AND CSIS.TIPO = ''SUBGRUPO'' '+
     ' INNER JOIN CAIXA_SIS CSISS ON CSISS.ID_CAIXA_SIS = C.ID_TIPO AND CSISS.TIPO = ''GRUPO'' '+getWhere('ENTRADA','')+
     ' GROUP BY CSISS.ID_CAIXA_SIS,  CSISS.NOME, CSIS.ID_CAIXA_SIS, CSIS.NOME ORDER BY CSISS.NOME, CSIS.NOME');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA3.rav';

     setRave(1,'GRUPO E SUBGRUPO DE CONTAS',LbPeriodo.Caption+' - '+getNomeCategoria());
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories3Items0Click(Sender: TObject);
begin
     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.ZQUERY1.SQL.Add(' SELECT C.*, P.nome as PROPRIETARIO, I.numero, I.complemento, CONT.tarifa, CSAI.data_pgto, L.nome AS RUA, PES.NOME AS INQUILINO,'+
     ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', CSAI.data_ref, CSAI.data_pgto, CSAI.valor, CSAI.valor_juros, CSAI.valor_multa,'+
     ' CSAI.valor_desconto)) as VR, CAST(CSAI.valor AS NUMERIC(15,2)) as valorInquilino  FROM CAIXA_SAIDA C'+
     ' LEFT JOIN PESSOA P ON P.id_pessoa = C.id_pessoa'+
     ' LEFT JOIN IMOVEL I ON I.id_imovel = C.id_imovel'+
     ' LEFT JOIN CONTRATO CONT ON CONT.id_contrato = C.id_contrato'+
     ' LEFT JOIN logradouro L ON L.id_logradouro = I.id_logradouro'+
     ' LEFT JOIN CAIXA_ENTRADA CSAI ON CSAI.id_caixa = C.id_ENTRADA'+
     ' LEFT JOIN PESSOA PES ON PES.id_pessoa = CSAI.id_pessoa'+getWhere('SAIDA','')+
     ' ORDER BY C.DATA_REF, P.NOME');

     DM_REL.ZQUERY1.Open;

     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;

     ZEntrada.First;
     ZSaida.First;

     DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('varCalculoRepasse',getConf('REPASSA_MULTA'));

     DM_REL.RV_IMPRESSAO.Close;
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_PROP1.rav';

     setRave(1,'PREVISÃO PROPRIETÁRIO',LbPeriodo.Caption+' - '+getNomeCategoria());
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories3Items1Click(Sender: TObject);
//Var contaEntrada, contaSaida: String;
    //varSQL: TZQuery;
begin

        IF (NOT RadioVencimento.Checked) or (CheckContasPagas.State <> cbUnchecked) then
        Begin
             tab_5.Show;
             unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como VENCIMENTO.'+#13+'Marque CONTAS NÃO PAGAS em tipo de contas.','informa');
             exit;
        End;

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.Close;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;


    DM_REL.ZQUERY1.SQL.Add('select distinct(CEN.ID_CAIXA) as BLA, C.*, P.*, I.*, l.cep, l.tipo||'' ''||l.nome as logradouro, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telDDDRes, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telNUMRes, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telCONTATORes, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telDDDCom, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telNUMCom, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telCONTATOCom, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telDDDCel, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telNUMCel, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telCONTATOCel '+
     ' ,CEN.*, (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', cen.data_ref, cen.data_pgto, cen.valor, cen.valor_juros, cen.valor_multa,'+
     ' cen.valor_desconto)) as VALORREAL '+
     ' from caixa_entrada cen '+
     ' LEFT join contrato c on c.id_contrato = cen.id_contrato and c.ativo = ''SIM'' ' +
     ' LEFT join pessoa_contrato pc on pc.id_contrato = cen.id_contrato '+
     ' LEFT join pessoa p on p.id_pessoa = cen.id_pessoa '+
     ' LEFT join imovel i on i.id_imovel = cen.id_imovel '+
     ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
     StringReplace(GetWhere('ENTRADA',''),'C.','CEN.',[rfReplaceAll,rfIgnoreCase])+' AND c.ativo = ''SIM'' order by P.NOME, CEN.DATA_REF ');

     try
        DM_REL.ZQUERY1.Open;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados do banco.'+#13+e.Message,'ERRO');
                Exit;
           end;
     end;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption+' - '+getNomeCategoria());

     DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);

     DM_REL.RV_IMPRESSAO.Close;
     //DM_REL.RV_IMPRESSAO.ProjectFile := '\\'+getUser('SERVIDOR')+'\IMOBILIARIA\REL\RV_15_CAIXA_COBRANCA1.rav';
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_COBRANCA1.rav';

     setRave(1,'','');
end;

procedure TCAD_FluxoCaixa.MenuInformacaoCategories3Items2Click(Sender: TObject);
begin

        IF (NOT RadioVencimento.Checked) or (CheckContasPagas.State <> cbUnchecked) then
        Begin
             tab_5.Show;
             unUtilitario.setMensagem('ORIENTAÇÃO:'+#13+'Informe o período como VENCIMENTO.'+#13+'Marque CONTAS NÃO PAGAS em tipo de contas.','informa');
             exit;
        End;

     if (NOT ZEntrada.Active) OR (NOT ZSaida.Active) Then
        Exit;

     DM_REL.ZQUERY1.Close;
     DM_REL.ZQUERY1.SQL.Clear;
     DM_REL.RV_Query.DataSet := DM_REL.ZQUERY1;


    DM_REL.ZQUERY1.SQL.Add('select distinct(CEN.ID_CAIXA) as BLA, C.*, P.*, I.*, l.cep, l.tipo||'' ''||l.nome as logradouro, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telDDDRes, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telNUMRes, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 1) as telCONTATORes, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telDDDCom, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telNUMCom, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 2) as telCONTATOCom, '+
     ' (select first 1 tel.ddd from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telDDDCel, '+
     ' (select first 1 tel.numero from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telNUMCel, '+
     ' (select first 1 tel.contato from telefone tel where tel.id_pessoa = p.id_pessoa and tel.id_endereco_tipo = 3) as telCONTATOCel '+
     ' ,CEN.*, (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', cen.data_ref, cen.data_pgto, cen.valor, cen.valor_juros, cen.valor_multa,'+
     ' cen.valor_desconto)) as VALORREAL '+
     ' from caixa_entrada cen '+
     ' LEFT join contrato c on c.id_contrato = 0 ' +
     ' LEFT join pessoa_contrato pc on pc.id_contrato = cen.id_contrato '+
     ' LEFT join pessoa p on p.id_pessoa = cen.id_pessoa '+
     ' LEFT join imovel i on i.id_imovel = cen.id_imovel '+
     ' LEFT join logradouro l on l.id_logradouro = i.id_logradouro '+
     StringReplace(GetWhere('ENTRADA',''),'C.','CEN.',[rfReplaceAll,rfIgnoreCase])+' and cen.id_contrato is null order by P.NOME, CEN.DATA_REF ');

     try
        DM_REL.ZQUERY1.Open;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados do banco.'+#13+e.Message,'ERRO');
                Exit;
           end;
     end;

     DM_REL.RV_IMPRESSAO.SetParam('xPeriodo', LbPeriodo.Caption+' - '+getNomeCategoria());

     DM_REL.RV_IMPRESSAO.SetParam('xEfetEnt', lbEntEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevEnt', lbEntEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetEnt', lbEntDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSai', lbSaiEfeuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSai', lbSaiEsperadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSai', lbSaiDiferenca.Caption);

     DM_REL.RV_IMPRESSAO.SetParam('xEfetSaldo', SaldoEfetuadas.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xPrevSaldo', SaldoPrevista.Caption);
     DM_REL.RV_IMPRESSAO.SetParam('xNEfetSaldo', SaldonNaoEfetuadas.Caption);

     DM_REL.RV_IMPRESSAO.Close;
     //DM_REL.RV_IMPRESSAO.ProjectFile := '\\'+getUser('SERVIDOR')+'\IMOBILIARIA\REL\RV_15_CAIXA_COBRANCA1.rav';
     DM_REL.RV_IMPRESSAO.ProjectFile := ExtractFilePath(ParamStr(0))+'REL\RV_15_CAIXA_COBRANCA1.rav';

     setRave(1,'','');
end;

procedure TCAD_FluxoCaixa.NovaSeleo1Click(Sender: TObject);
begin
     if unUtilitario.setMensagem('Deseja limpar a sua seleção?'+#13+'Pessoas selecionadas:'+IntToStr(rowPessoas.Count),'confirma') = IDYES then
     Begin
          rowPessoas.Clear;
          unUtilitario.setMensagem('Seleção limpa!','informa');
     end;
end;

procedure TCAD_FluxoCaixa.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('CAIXA ENTRADA OU CONTAS À RECEBER. VALORES RECEBIDOS PELA EMPRESA.');
end;

procedure TCAD_FluxoCaixa.ContasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('SELECIONE A(S) CONTA(S) QUE DESEJA VERIFICAR.');
end;

procedure TCAD_FluxoCaixa.data_fimCloseUp(Sender: TObject);
begin
     if data_ini.date > data_fim.date then
     begin
          data_ini.date := data_fim.date;
          data_ini.SetFocus;
     end;
end;

procedure TCAD_FluxoCaixa.data_fimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     data_fim.date := Date;
     unUtilitario.setMensagem('Não entre com os valores manualmente!'+#13+'Use a caixa de seleção de datas.', 'informa');
end;

procedure TCAD_FluxoCaixa.data_iniCloseUp(Sender: TObject);
begin
     if data_ini.date > data_fim.date then
     begin
          data_fim.date := data_ini.date;
          data_fim.SetFocus;
     end;
end;

procedure TCAD_FluxoCaixa.data_iniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     data_ini.date := Date;
     unUtilitario.setMensagem('Não entre com os valores manualmente!'+#13+'Use a caixa de seleção de datas.', 'informa');
end;

procedure TCAD_FluxoCaixa.DBGrid3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     PRINCIPAL.setMensagem('Orientação: Use o BOTÃO ESQUERDO do mouse para imprimir o relatório individual e o BOTÃO DIREITO para imprimir o relatório geral de saldos. Estes dados são com base no PERÍODO INICIAL informado ao sistema.');
end;

procedure TCAD_FluxoCaixa.DBGridContasDblClick(Sender: TObject);
//var
    //sql: TZQuery;
begin

     if DM_CADASTRO.Z_Curinga_02X.FieldByName('id_caixa').IsNull then
        Exit;


     //Anotação

     DM_CADASTRO.Z_Curinga_03X.Close;
     DM_CADASTRO.Z_Curinga_03X.SQL.Clear;
     DBGridAnotacoes.DataSource := DM_CADASTRO.DS_Curinga_03X;

     DM_CADASTRO.Z_Curinga_03X.SQL.Add('select cst.*, cs.nome, c.documento, cast(cst.anotacao as varchar(255)) as texto, u.nome as operador from caixa_status cst inner join usuario u on u.id_usuario = cst.id_funcionario inner join caixa_sis cs on cst.id_status = cs.id_caixa_sis '+' inner join caixa_entrada c on c.id_caixa = cst.id_caixa_entrada and c.ativo = ''SIM'' and c.pendente = ''NAO'' where cst.id_caixa_entrada =  '+DM_CADASTRO.Z_Curinga_02X.FieldByName('id_caixa').AsString+' order by cst.data_alt desc, cs.nome');

     try
        DM_CADASTRO.Z_Curinga_03X.Open;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados de anotações.'+#13+e.Message,'ERRO');
                Exit;
           end;
     end;

     GroupBox6.Caption := '( 3º ) ANOTAÇÕES DAS CONTAS (Total de '+IntToStr(DM_CADASTRO.Z_Curinga_03X.RecordCount)+' Anotações)';

end;

procedure TCAD_FluxoCaixa.DBGridPessoaColExit(Sender: TObject);
var total, total2: Currency;
    codigos: String;
    sql: TZQuery;
begin

     if DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').IsNull then
        Exit;

     DM_CADASTRO.Z_Curinga_02X.Close;
     DM_CADASTRO.Z_Curinga_02X.SQL.Clear;
     DBGridContas.DataSource := DM_CADASTRO.DS_Curinga_02X;

     DM_CADASTRO.Z_Curinga_02X.SQL.Add(' select categ.nome as categoria, tip.nome as tipo, stip.nome as subtipo ,ce.*, '+
     ' (SELECT RESULT FROM spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', ce.data_ref, ce.data_pgto, ce.valor, ce.valor_juros, ce.valor_multa, ce.valor_desconto)) as VALORREAL '+
     ' from caixa_entrada ce '+
     ' LEFT join contrato cont on cont.id_contrato = ce.id_contrato '+
     ' LEFT join caixa_sis categ on categ.id_caixa_sis = ce.id_categoria '+
     ' LEFT join caixa_sis tip on tip.id_caixa_sis = ce.id_tipo '+
     ' LEFT join caixa_sis stip on stip.id_caixa_sis = ce.id_subtipo '+
     StringReplace(GetWhere('ENTRADA',''),'C.','CE.',[rfReplaceAll,rfIgnoreCase])+' and ce.data_pgto is null and ce.id_pessoa = '+DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsString+' order by ce.data_ref ');

     DM_CADASTRO.Z_Curinga_02X.SQL.Text;
     try
        DM_CADASTRO.Z_Curinga_02X.Open;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados do banco.'+#13+e.Message,'ERRO');
                Exit;
           end;
     end;

     codigos := '';
     total := 0;
     total2 := 0;
     while not DM_CADASTRO.Z_Curinga_02X.Eof do
     Begin
          total := total + DM_CADASTRO.Z_Curinga_02X.FieldByName('VALORREAL').AsCurrency;
          total2 := total2 + DM_CADASTRO.Z_Curinga_02X.FieldByName('VALOR').AsCurrency;
          codigos := codigos + DM_CADASTRO.Z_Curinga_02X.FieldByName('ID_CAIXA').AsString + ', ';
          DM_CADASTRO.Z_Curinga_02X.Next;
     end;

     DM_CADASTRO.Z_Curinga_02X.First;

     GroupBox8.Caption := '( 2º ) CONTAS DA PESSOA SELECIONADA ( Total de '+IntToStr(DM_CADASTRO.Z_Curinga_02X.RecordCount)+'  Contas. Total Base R$ '+CurrToStr(total2)+'  Total Calculado R$ '+CurrToStr(total)+')';

     MemoPessoa.Lines.Clear;
     MemoPessoa.HelpContext := 0;

     if DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsInteger > 0 then
     Begin
        sql := unUtilitario.getSelect('select first 1 id_log, obs from log where ativo=''SIM'' and acao = ''COB'' and id_conta = '+DM_CADASTRO.Z_Curinga_01X.FieldByName('codigo').AsString);
        if sql.RecordCount > 0 then
        Begin
           MemoPessoa.HelpContext := sql.FieldByName('id_log').AsInteger;
           MemoPessoa.Lines.Text := sql.FieldByName('obs').AsString;
        end;
     end;

     //Anotação

     DM_FINANCEIRO.ZCaixaTipoStatus.Close;
     DM_FINANCEIRO.ZCaixaTipoStatus.Open; // Listagem dos tipos

     DM_CADASTRO.Z_Curinga_03X.Close;
     DM_CADASTRO.Z_Curinga_03X.SQL.Clear;
     DBGridAnotacoes.DataSource := DM_CADASTRO.DS_Curinga_03X;

     DM_CADASTRO.Z_Curinga_03X.SQL.Add('select cst.*, cs.nome, c.documento, cast(cst.anotacao as varchar(255)) as texto, u.nome as operador from caixa_status cst inner join usuario u on u.id_usuario = cst.id_funcionario inner join caixa_sis cs on cst.id_status = cs.id_caixa_sis '+' inner join caixa_entrada c on c.id_caixa = cst.id_caixa_entrada and c.ativo = ''SIM'' and c.pendente = ''NAO'' where cst.id_caixa_entrada in ( '+codigos+' 0) order by cst.data_alt desc, cs.nome');
     DM_CADASTRO.Z_Curinga_03X.SQL.Text;

     DM_CADASTRO.UP_Curinga_03X.DeleteSQL.Clear;
     DM_CADASTRO.UP_Curinga_03X.DeleteSQL.Add('DELETE FROM caixa_status WHERE caixa_status.ID_CAIXA_STATUS = :OLD_ID_CAIXA_STATUS');

     DM_CADASTRO.UP_Curinga_03X.InsertSQL.Clear;
     DM_CADASTRO.UP_Curinga_03X.InsertSQL.Add('INSERT INTO caixa_status (caixa_status.ID_CAIXA_STATUS, caixa_status.ID_STATUS, caixa_status.ID_CAIXA_SAIDA, caixa_status.ID_CAIXA_ENTRADA, caixa_status.ID_FUNCIONARIO, '+
     ' caixa_status.DATA_CAD, caixa_status.DATA_ENTRADA, caixa_status.DATA_SAIDA, caixa_status.DATA_ALT, caixa_status.ANOTACAO) '+
     ' VALUES (:ID_CAIXA_STATUS, :ID_STATUS, :ID_CAIXA_SAIDA, :ID_CAIXA_ENTRADA, :ID_FUNCIONARIO, :DATA_CAD, :DATA_ENTRADA, :DATA_SAIDA, :DATA_ALT, :ANOTACAO)');

     DM_CADASTRO.UP_Curinga_03X.ModifySQL.Clear;
     DM_CADASTRO.UP_Curinga_03X.ModifySQL.Add('UPDATE caixa_status SET caixa_status.ID_CAIXA_STATUS = :ID_CAIXA_STATUS, caixa_status.ID_STATUS = :ID_STATUS, caixa_status.ID_CAIXA_SAIDA = :ID_CAIXA_SAIDA, caixa_status.ID_CAIXA_ENTRADA = :ID_CAIXA_ENTRADA, '+
     ' caixa_status.ID_FUNCIONARIO = :ID_FUNCIONARIO, caixa_status.DATA_CAD = :DATA_CAD, caixa_status.DATA_ENTRADA = :DATA_ENTRADA, caixa_status.DATA_SAIDA = :DATA_SAIDA, caixa_status.DATA_ALT = :DATA_ALT, '+
     ' caixa_status.ANOTACAO = :ANOTACAO WHERE caixa_status.ID_CAIXA_STATUS = :OLD_ID_CAIXA_STATUS');

     try
        DM_CADASTRO.Z_Curinga_03X.Open;
     except
           on e: Exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao buscar os dados de anotações.'+#13+e.Message,'ERRO');
                Exit;
           end;
     end;

     GroupBox6.Caption := '( 3º ) ANOTAÇÕES DAS CONTAS (Total de '+IntToStr(DM_CADASTRO.Z_Curinga_03X.RecordCount)+' Anotações)';

end;

procedure TCAD_FluxoCaixa.DBGridPessoaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        DBGridPessoaColExit(Sender);
end;

procedure TCAD_FluxoCaixa.EditNomeImovelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = VK_RETURN then
        BitBtnBuscaImovelClick(Sender);
end;

procedure TCAD_FluxoCaixa.EditNomePessoaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = VK_RETURN then
        BitBtnBuscaPessoaClick(Sender);
end;

end.
