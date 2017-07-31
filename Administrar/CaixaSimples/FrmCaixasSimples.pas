unit FrmCaixasSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, DBCtrls, Buttons,
  Mask, Menus, ZDataset, DB, ZAbstractRODataset, ZAbstractDataset, DBClient;

type
  TCAD_CaixasSimples = class(TForm)
    GroupValores: TGroupBox;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    EditValorMulta: TEdit;
    EditValorJuros: TEdit;
    EditDias: TEdit;
    GroupPagamentos: TGroupBox;
    AbasPagamento: TPageControl;
    TabPagamento: TTabSheet;
    GroupBox1: TGroupBox;
    LabelDataVencimento: TLabel;
    BtnPagar: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    LabelDataPagamento: TLabel;
    Label7: TLabel;
    EditValorBase: TEdit;
    EditValorMultaPorc: TEdit;
    EditValorJurosPorc: TEdit;
    Label1: TLabel;
    EditValorDesconto: TEdit;
    EditValorDescontoPorc: TEdit;
    Label8: TLabel;
    EditValorFinal: TEdit;
    EditValorPago: TEdit;
    EditValorTroco: TEdit;
    Label2: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    ValorBusca: TEdit;
    Grid: TDBGrid;
    LabelPagamento: TLabel;
    LabelRecebimento: TLabel;
    RadioMostra: TCheckBox;
    PopupMenu: TPopupMenu;
    Refazer1: TMenuItem;
    AdicionarValor1: TMenuItem;
    N1: TMenuItem;
    RetirarValor1: TMenuItem;
    SelecionarConta1: TMenuItem;
    RemoverConta1: TMenuItem;
    NovaSeleo1: TMenuItem;
    CriarDbito1: TMenuItem;
    N3: TMenuItem;
    RemoverConta2: TMenuItem;
    N5: TMenuItem;
    Imprimir1: TMenuItem;
    Salvar1: TMenuItem;
    ValorBase1: TMenuItem;
    Contas1: TMenuItem;
    ValorDataMenor: TDateTimePicker;
    ValorDataMaior: TDateTimePicker;
    ValorOrdenacao: TComboBox;
    LabelPesquisa: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DSCaixaEntrada: TDataSource;
    DSCaixaSaida: TDataSource;
    Irparapessoa1: TMenuItem;
    elefones1: TMenuItem;
    N4: TMenuItem;
    Irparaestaconta1: TMenuItem;
    DadosBancrios1: TMenuItem;
    RadioCalculado: TCheckBox;
    SpeedButton3: TSpeedButton;
    DBGridCheques: TDBGrid;
    ZPagamentos: TZQuery;
    DSPagamento: TDataSource;
    ZPagamentosID_CAIXA_SIS: TIntegerField;
    ZPagamentosNOME: TStringField;
    ZPagamentosVALOR: TFloatField;
    DBGridPagamentos: TDBGrid;
    DSCheques: TDataSource;
    CDS_Cheques: TClientDataSet;
    CDS_ChequesBANCO: TStringField;
    CDS_ChequesAGENCIA: TStringField;
    CDS_ChequesCC: TStringField;
    CDS_ChequesNUM_CHEQUE: TStringField;
    CDS_ChequesNOME: TStringField;
    CDS_ChequesVALOR: TFloatField;
    CDS_ChequesOBS: TStringField;
    RadioSlip: TCheckBox;
    TabRecados: TTabSheet;
    DSRecados: TDataSource;
    ZRecados: TZQuery;
    memoPendencias: TListBox;
    RadioFeriados: TCheckBox;
    RadioPgtoSemRecebimento: TCheckBox;
    LabelDataBase: TLabel;
    ValorDataBase: TDateTimePicker;
    RadioEmail: TCheckBox;
    comboCategoria: TComboBox;
    labelCategoriaGrupo: TLabel;
    comboGrupo: TComboBox;
    comboSubgrupo: TComboBox;
    RadioMostraJurosMulta: TCheckBox;
    CheckDisponivelPagamento: TCheckBox;
    Label4: TLabel;
    CheckDisponivelPagamentonNOME: TLabel;
    procedure CheckDisponivelPagamentoClick(Sender: TObject);
    procedure RadioCalculadoClick(Sender: TObject);
    procedure RadioSlipClick(Sender: TObject);
    procedure RadioMostraJurosMultaClick(Sender: TObject);
    procedure labelCategoriaGrupoClick(Sender: TObject);
    procedure RadioEmailClick(Sender: TObject);
    procedure GridCellClick(Column: TColumn);
    procedure LabelDataBaseClick(Sender: TObject);
    procedure RadioPgtoSemRecebimentoClick(Sender: TObject);
    procedure RadioFeriadosClick(Sender: TObject);
    procedure memoPendenciasDblClick(Sender: TObject);
    procedure DBGridPagamentosExit(Sender: TObject);
    procedure DBGridChequesExit(Sender: TObject);
    procedure CDS_ChequesNewRecord(DataSet: TDataSet);
    procedure DBGridPagamentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DadosBancrios1Click(Sender: TObject);
    procedure Irparaestaconta1Click(Sender: TObject);
    procedure Irparapessoa1Click(Sender: TObject);
    procedure elefones1Click(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure LabelPesquisaClick(Sender: TObject);
    procedure RemoverConta1Click(Sender: TObject);
    procedure SelecionarConta1Click(Sender: TObject);
    procedure NovaSeleo1Click(Sender: TObject);
    procedure ValorDataMenorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValorDataMaiorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValorOrdenacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValorDataMenorDblClick(Sender: TObject);
    procedure ValorDataMaiorDblClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure EditValorPagoDblClick(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure EditValorDescontoPorcChange(Sender: TObject);
    procedure EditValorDescontoChange(Sender: TObject);
    procedure EditValorJurosPorcChange(Sender: TObject);
    procedure EditValorJurosChange(Sender: TObject);
    procedure EditValorMultaPorcChange(Sender: TObject);
    procedure EditValorMultaChange(Sender: TObject);
    procedure RemoverConta2Click(Sender: TObject);
    procedure CriarDbito1Click(Sender: TObject);
    procedure EditValorMultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorMultaPorcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorJurosPorcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorJurosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorDescontoPorcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure RetirarValor1Click(Sender: TObject);
    procedure AdicionarValor1Click(Sender: TObject);
    procedure EditValorPagoChange(Sender: TObject);
    procedure EditValorFinalDblClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure BtnPagarClick(Sender: TObject);
    procedure EditValorPagoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ValorBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabelPagamentoClick(Sender: TObject);
    procedure LabelRecebimentoClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure TabInformacaoShow(Sender: TObject);
//    procedure TabInformacaoHide(Sender: TObject);
    procedure GridEntradaDblClick(Sender: TObject);
    procedure GridpagamentosDblClick(Sender: TObject);
    procedure RadioBoletoClick(Sender: TObject);
    procedure RadioCupomClick(Sender: TObject);
    procedure RadioReciboClick(Sender: TObject);
    procedure RadioNadaClick(Sender: TObject);
    procedure RadioMostraClick(Sender: TObject);
//    procedure TabInfoHistoricoShow(Sender: TObject);
    procedure EditValorPagoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EditValorFinalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EditDiasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
        varSQLEntrada, varSQLSaida, varSQLDeposito: TZQuery;
        caixaLocal: String;
        whereEntrada, whereSaida: String;
        registroSelecionado, usaCheque: Boolean;
        contaAluguel: Integer;
        procedure verificaPermissaoTela();
        function verificaData(): String;
        procedure limpaDatas();
        function setOrdenacao(): String;
        procedure selecaoAddConta(id_caixa: String);
        procedure selecaoREMConta(id_caixa: String);
        procedure selecaoLIMPA();
        procedure selecaoELABORAR();
        procedure salvaRegistroSelecionado();
        procedure SelecionarContas(escolha: Boolean);
        procedure fazProcura();
        procedure setBuscaExterna(busca: String);
        function verificaBaixas(id_caixa: integer): boolean;
        function somaPagamentos(): Currency;
        function somaCheques(): Currency;
        function somaCadastroCheques(): Currency;
        procedure pagamentoDinheiro(valor: Currency; acrescentar: boolean);
        procedure efetuarPagamentoDinheiroCheque();
        function getContasPagas(caixa: String): String;
        procedure recuperaMensagens();
    { Public declarations }
  end;

var
  CAD_CaixasSimples: TCAD_CaixasSimples;
  rowEntradaConfirmacao, rowSaidaConfirmacao: TStringList;

implementation

uses FrmPrincipal, FrmDM_FINANCEIRO, unCaixasSimples, unUtilitario, unFinanceiro, FrmCaixasItens,
  unINI, FrmDM_RELATORIOS, unCamposBusca, FrmCaixas, FrmPessoa, unLog,
  FrmCheques, FrmMensagem;

{$R *.dfm}

function TCAD_CaixasSimples.getContasPagas(caixa: String): String;
Var i: Smallint;              
begin


  if registroSelecionado then
    result := ' #'+DM_FINANCEIRO.ZCaixaSimples.FieldByName('ID_CAIXA').AsString+' '
  else
  if(caixa = 'ENTRADA') then
  Begin
    if (rowEntrada.Count > 0) then
    Begin
      for I := 0 to rowEntrada.Count - 1 do
        result := result + '#'+rowEntrada[i]+' ';
    end
    Else
      Result := 'Provavelmente houve um erro na rotina getContasPagas() para entrada.';
  end
  else
  Begin
    if (rowSaida.Count > 0) then
    Begin
      for I := 0 to rowSaida.Count - 1 do
        result := result + '#'+rowSaida[i]+' ';
    end
    Else
      Result := 'Provavelmente houve um erro na rotina getContasPagas() para saída.';
  end;

end;

procedure TCAD_CaixasSimples.efetuarPagamentoDinheiroCheque();
Var varSQL, varSQL2: TZQuery;
  token, codigoUsuario, SQL: String;
  contas: TStringList;
  i: integer;
begin
  contas := TStringList.Create;
  Randomize;
  token := IntToStr(1 + Random(999999999));
  ZPagamentos.First;
  codigoUsuario := getUser('CODIGO_USUARIO');
                                                              
  //PAGAMENTOS
  while not ZPagamentos.Eof do
  Begin

    if (ZPagamentos.FieldByName('VALOR').AsCurrency < 0) Then
    Begin
      ZPagamentos.Edit;
      ZPagamentos.FieldByName('VALOR').AsCurrency := ZPagamentos.FieldByName('VALOR').AsCurrency - 2 * ZPagamentos.FieldByName('VALOR').AsCurrency;
      ZPagamentos.Post;
    end;

    if ZPagamentos.FieldByName('VALOR').AsCurrency > 0 then
    Begin
      if(caixaLocal = 'ENTRADA') then
      Begin
        varSQL := unUtilitario.getSQL(UpperCase('INSERT INTO CAIXA_PGTO (ID_CAIXA_ENTRADA, ID_FORMA_PGTO, ID_FUNCIONARIO, ANOTACAO, VALOR, DATA_PGTO) '+
        'VALUES (1, '+ZPagamentos.FieldByName('ID_CAIXA_SIS').AsString+', '+codigoUsuario+','''+getContasPagas(caixaLocal)+''','+unUtilitario.formataDinheiroSQL(ZPagamentos.FieldByName('VALOR').AsString)+', current_date )'));
      end
      else
      Begin
        varSQL := unUtilitario.getSQL(UpperCase('INSERT INTO CAIXA_PGTO (ID_CAIXA_SAIDA, ID_FORMA_PGTO, ID_FUNCIONARIO, ANOTACAO, VALOR, DATA_PGTO) '+
        'VALUES (1, '+ZPagamentos.FieldByName('ID_CAIXA_SIS').AsString+', '+codigoUsuario+','''+getContasPagas(caixaLocal)+''','+unUtilitario.formataDinheiroSQL(ZPagamentos.FieldByName('VALOR').AsString)+', current_date )'));
      End;
    end;

    ZPagamentos.Next;

  end;

  
  //CHEQUES
  if CDS_Cheques.RecordCount > 0 then
  Begin
    CDS_Cheques.First;


    while not CDS_Cheques.Eof do
    Begin
      varSQL := unUtilitario.getSQL(UpperCase('INSERT INTO CHEQUE (BANCO, AGENCIA, CC, NUM_CHEQUE, DATA_ENTRADA, ID_FUNCIONARIO, NOME, VALOR, OBS, DATA_REF, ATIVO, ENDERECO) VALUES '+
      ' ('''+CDS_Cheques.FieldByName('BANCO').AsString+''', '''+CDS_Cheques.FieldByName('AGENCIA').AsString+''', '''+CDS_Cheques.FieldByName('CC').AsString+''', '''+CDS_Cheques.FieldByName('NUM_CHEQUE').AsString+''', CURRENT_DATE, '''+codigoUsuario+''', '''+CDS_Cheques.FieldByName('NOME').AsString+''', '+unUtilitario.formataDinheiroSQL(CDS_Cheques.FieldByName('VALOR').AsString)+', '''+CDS_Cheques.FieldByName('OBS').AsString+''', CURRENT_DATE, ''SIM'', '''+getContasPagas(caixaLocal)+' '+token+' '') '));
      CDS_Cheques.Next;
    end;

    varSQL := unUtilitario.getSelect('select ID_CHEQUE, ENDERECO from CHEQUE where ENDERECO LIKE ''%'+token+'%'' ');

    if  varSQL.RecordCount > 0 then
    Begin
      contas := getCodigosConta(varSQL.FieldByName('ENDERECO').asString);

      while not varSQL.Eof do    
      Begin
        for i := 0 to contas.Count - 1 do
        Begin
             SQL := contas.Strings[i];
             SQL := UpperCase('insert into conta_cheque (id_cheque, id_conta, operacao, id_funcionario, obs) values'+
                                  ' ('+varSQL.FieldByName('ID_CHEQUE').AsString+', '+SQL+', ''ENT'', '''+codigoUsuario+''', ''CRIADO DIRETAMENTE NO CAIXA SIMPLES.'') ');
             varSQL2 := unUtilitario.getSQL(SQL);

        End;

        varSQL.Next;
      end;
    end
    else
      unUtilitario.setMensagem('Houve um erro grave no cadastro de cheques! Chame o suporte técnico antes de continuar 16 3402-0373! (método: efetuarPagamentoDinheiroCheque) ','erro');

  end;
  
  FreeAndNil(varSQL);
  FreeAndNil(contas);
end;


procedure TCAD_CaixasSimples.pagamentoDinheiro(valor: Currency; acrescentar: boolean);
begin
     ZPagamentos.First;

     
     while NOT ZPagamentos.Eof do
     Begin
          if ZPagamentos.FieldByName('NOME').AsString = 'DINHEIRO' then
          Begin
            ZPagamentos.edit;
            
            if acrescentar then
              ZPagamentos.FieldByName('VALOR').AsCurrency := ZPagamentos.FieldByName('VALOR').AsCurrency + valor
            else
              ZPagamentos.FieldByName('VALOR').AsCurrency := valor;
              
          end;

          ZPagamentos.Next;
     end;
end;

function TCAD_CaixasSimples.somaPagamentos(): Currency;
begin
     result := 0;
     ZPagamentos.First;
     
     while NOT ZPagamentos.Eof do
     Begin
          result := result + ZPagamentos.FieldByName('VALOR').AsCurrency;
          ZPagamentos.Next;
     end;
end;

function TCAD_CaixasSimples.somaCheques(): Currency;
begin
     result := 0;
     ZPagamentos.First;
     
     while NOT ZPagamentos.Eof do
     Begin
          if (ZPagamentos.FieldByName('NOME').AsString = 'CHEQUE') or (ZPagamentos.FieldByName('NOME').AsString = 'CHEQUES') then
               result := result + ZPagamentos.FieldByName('VALOR').AsCurrency;
             
          ZPagamentos.Next;
     end;

     if result < 0 then
        result := result * -1;
end;

function TCAD_CaixasSimples.somaCadastroCheques(): Currency;
begin
     result := 0;
     CDS_Cheques.First;
     
     while NOT CDS_Cheques.Eof do
     Begin
        result := result + CDS_Cheques.FieldByName('VALOR').AsCurrency;

        CDS_Cheques.Next;
     end;
end;

procedure TCAD_CaixasSimples.setBuscaExterna(busca: String);
begin
     ValorBusca.Text := busca;
     fazProcura();
end;

procedure TCAD_CaixasSimples.GridCellClick(Column: TColumn);
begin
     //recuperaMensagens();
end;

procedure TCAD_CaixasSimples.GridDblClick(Sender: TObject);
begin
// EDSON para verificar se está tendo problema ao quitar
//     if registroSelecionado then
//     begin
//        unCaixasSimples.setComponentes();
//        registroSelecionado := True;
//     end;

     recuperaMensagens();
end;

procedure TCAD_CaixasSimples.recuperaMensagens();
var texto: String;
Begin
     if DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.IsNull Then
        Exit;

     if DM_FINANCEIRO.DS_CaixaSimples.DataSet.FieldByName('ID_PESSOA').IsNull then
        Exit;

     ZRecados := unUtilitario.getSelect('select l.*, r.nome as remetente, case l.componente when ''FUNCIONARIO'' then (select nome from usuario '+'where id_usuario = l.id_conta) when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) else ''NÃO INFORMADO'' end as destinatario from log l inner'+' join usuario r on r.id_usuario = l.id_func where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_conta = '+DM_FINANCEIRO.DS_CaixaSimples.DataSet.FieldByName('ID_PESSOA').AsString);
     
     TabRecados.caption := 'Recados e Anotações ('+ IntToStr(ZRecados.RecordCount)+')';
     texto := '';
     memoPendencias.Items.Clear;

     while NOT ZRecados.Eof do
     Begin
             memoPendencias.Items.Add('('+ZRecados.FieldByName('DATA').AsString +') de '+ZRecados.FieldByName('REMETENTE').AsString+ ': '+ ZRecados.FieldByName('CAMPOS').AsString+'-'+ZRecados.FieldByName('ID_LOG').AsString);
             texto := texto +#13+ ZRecados.FieldByName('CAMPOS').AsString;
             ZRecados.Next;
     end;

     if ZRecados.RecordCount > 0 then
         unUtilitario.setMensagem(texto,'informa');

     SetHorizontalScrollBar(memoPendencias);
end;

procedure TCAD_CaixasSimples.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   varSQL:TZQuery;
   parcela, pessoa, imovel: String;
begin
  IF (COLUMN.FieldName = 'DATA_REF') THEN
  Begin
    if  DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsDateTime <= Date() THEN
        Grid.Canvas.Font.Color:= clRed
    ELSE
        Grid.Canvas.Font.Color:= clBlack;

     varSQLDeposito.Params[0].AsInteger := DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.AsInteger;
     varSQLDeposito.Open;


     if (caixaLocal = 'SAIDA') and (varSQLDeposito.Fields[0].AsString <> 'NAO') then
        Grid.Canvas.Brush.Color:= clYellow
     else
         Grid.Canvas.Brush.Color:= clWhite;

     varSQLDeposito.Close;

     Grid.Canvas.FillRect(Rect);
     Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  IF (COLUMN.FieldName = 'VALORREAL') THEN
     IF caixaLocal = 'SAIDA' THEN
     Begin

          if DM_FINANCEIRO.ZCaixaSimplesPARCELA.IsNull Then
             parcela := ' is null '
          else
              parcela := ' = '+DM_FINANCEIRO.ZCaixaSimplesPARCELA.AsString;

          if DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.IsNull Then
             pessoa := ' is null '
          else
              pessoa := ' = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString;

          if DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.IsNull Then
             imovel := ' is null '
          else
              imovel := ' = '+DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.AsString;

          {
          varSQL := unUtilitario.getSelect('select first 1 skip 0 c.id_caixa from caixa_entrada c'+
          ' where c.parcela '+parcela+' and' +
          ' c.id_pessoa '+pessoa+' and'+
          ' c.id_imovel '+imovel+' and'+
          ' c.id_subtipo = 3 and'+
          ' c.data_pgto is not null and'+
          ' c.pendente = ''NAO''');
          }

          IF DM_FINANCEIRO.ZCaixaSimplesID_ENTRADA.IsNull Then
          Begin
             varSQL := unUtilitario.getSelect('select first 1 c.id_caixa, C.data_pgto from caixa_entrada c'+
             ' where C.ATIVO <> ''XXX'' AND c.id_caixa = 0');
          End
          Else
          Begin
             varSQL := unUtilitario.getSelect('select first 1 c.id_caixa, C.data_pgto from caixa_entrada c'+
             ' where C.ATIVO <> ''XXX'' AND c.id_caixa = '+DM_FINANCEIRO.ZCaixaSimplesID_ENTRADA.AsString);
          End;
          
          if varSQL.RecordCount > 0 THEN
          begin
               if DM_FINANCEIRO.ZCaixaSimplesGARANTIDO.asString = 'NAO' Then
               begin
                    IF varSQL.FieldByName('data_pgto').IsNull Then
                    Begin
                         Grid.Canvas.Font.Color := clRed;
                         Grid.Canvas.FillRect(Rect);
                         Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End
                    else
                    Begin
                         Grid.Canvas.Font.Color:= clLime;
                         Grid.Canvas.FillRect(Rect);
                         Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
               end
               else
               begin
                    Grid.Canvas.Font.Color:= clLime;
                    Grid.Canvas.FillRect(Rect);
                    Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
               end;
          end
          ELSE
          begin
               Grid.Canvas.Font.Color:= clLime;
               Grid.Canvas.FillRect(Rect);
               Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     End
     Else;

end;

procedure TCAD_CaixasSimples.GridEntradaDblClick(Sender: TObject);
begin
     unCaixasSimples.setCaixa('ENTRADA');
     ValorBusca.Text := 'CÓDIGO '+varSQLEntrada.FieldByName('ID_CAIXA').AsString;
     fazProcura();
end;

procedure TCAD_CaixasSimples.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = VK_RETURN then
     begin
          GridDblClick(Sender);
     end;
end;

procedure TCAD_CaixasSimples.GridpagamentosDblClick(Sender: TObject);
begin
     unCaixasSimples.setCaixa('SAIDA');
     ValorBusca.Text := 'CÓDIGO '+varSQLSaida.FieldByName('ID_CAIXA').AsString;
     fazProcura();
end;

procedure TCAD_CaixasSimples.Imprimir1Click(Sender: TObject);
begin
     imprimirUnica := True;
     BtnPagarClick(Sender);
     imprimirUnica := False;
end;

procedure TCAD_CaixasSimples.Irparaestaconta1Click(Sender: TObject);
begin
     if DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.IsNull Then
        Exit;

     if caixaLocal = 'ENTRADA' then
        unCamposBusca.buscaIndividual(1,DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger,TCAD_Caixas,self)
     else
         unCamposBusca.buscaIndividual(2,DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger,TCAD_Caixas,self);

end;

procedure TCAD_CaixasSimples.Irparapessoa1Click(Sender: TObject);
begin
    if not DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.IsNull then
       unCamposBusca.buscaIndividual(5,DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.Value,TCAD_Pessoa,self);
end;

procedure TCAD_CaixasSimples.labelCategoriaGrupoClick(Sender: TObject);
Var sql: TZQuery;
begin
     if labelCategoriaGrupo.Font.Color = clLime then
     Begin
          labelCategoriaGrupo.Font.Color := clBlack;
          comboCategoria.Enabled := False;
          comboGrupo.Enabled := False;
          comboSubgrupo.Enabled := False;
     end
     Else
     Begin
          labelCategoriaGrupo.Font.Color := clLime;
          comboCategoria.Enabled := True;
          comboGrupo.Enabled := True;
          comboSubgrupo.Enabled := True;

          sql := unUtilitario.getSelect('select nome, id_caixa_sis from caixa_sis where tipo = ''CATEGORIA'' and ativo = ''SIM'' order by nome');
          comboCategoria.Items.Clear;
          comboCategoria.Items.Add('NENHUM');
          while not sql.Eof do
          Begin
               comboCategoria.Items.Add( sql.FieldByName('NOME').AsString+'-'+sql.FieldByName('ID_CAIXA_SIS').AsString );
               sql.Next;
          end;
          sql.Close;

          sql := unUtilitario.getSelect('select nome, id_caixa_sis from caixa_sis where tipo = ''GRUPO'' and ativo = ''SIM'' order by nome');
          comboGrupo.Items.Clear;
          comboGrupo.Items.Add('NENHUM');
          while not sql.Eof do
          Begin
               comboGrupo.Items.Add( sql.FieldByName('NOME').AsString+'-'+sql.FieldByName('ID_CAIXA_SIS').AsString );
               sql.Next;
          end;
          sql.Close;

          sql := unUtilitario.getSelect('select nome, id_caixa_sis from caixa_sis where tipo = ''SUBGRUPO'' and ativo = ''SIM'' order by nome');
          comboSubgrupo.Items.Clear;
          comboSubgrupo.Items.Add('NENHUM');
          while not sql.Eof do
          Begin
               comboSubgrupo.Items.Add( sql.FieldByName('NOME').AsString+'-'+sql.FieldByName('ID_CAIXA_SIS').AsString );
               sql.Next;
          end;
          sql.Close;
          
     end;
end;

procedure TCAD_CaixasSimples.LabelDataBaseClick(Sender: TObject);
begin
     if LabelDataBase.Font.Color = clLime then
     Begin
          LabelDataBase.Font.Color := clBlack;
          ValorDataBase.Enabled := False;
     end
     Else
     Begin
          if verificaPermissaoAdministrador('ALTERAR DATA BASE DE PGTO') then
          begin
               LabelDataBase.Font.Color := clLime;
               ValorDataBase.Enabled := True;
          end;
     end;
end;

procedure TCAD_CaixasSimples.LabelPagamentoClick(Sender: TObject);
begin
     unCaixasSimples.setCaixa('SAIDA');
     CAD_CaixasSimples.ValorBusca.SetFocus;
end;

procedure TCAD_CaixasSimples.LabelPesquisaClick(Sender: TObject);
begin
     if LabelPesquisa.Font.Color = clLime then
     Begin
          LabelPesquisa.Font.Color := clBlack;
          limpaDatas();
          ValorDataMenor.Enabled := False;
          ValorDataMaior.Enabled := False;
     end
     Else
     Begin
          LabelPesquisa.Font.Color := clLime;
          ValorDataMenor.Enabled := True;
          ValorDataMaior.Enabled := True;
     end;
end;

procedure TCAD_CaixasSimples.LabelRecebimentoClick(Sender: TObject);
begin
     unCaixasSimples.setCaixa('ENTRADA');
     CAD_CaixasSimples.ValorBusca.SetFocus;

end;

procedure TCAD_CaixasSimples.RadioBoletoClick(Sender: TObject);
begin
     setTela('CAIXASIMPLES_IMPRESSAO','BOLETO');
end;

procedure TCAD_CaixasSimples.RadioCalculadoClick(Sender: TObject);
begin
     if RadioCalculado.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_CALCULADO','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_CALCULADO','NAO');
end;

procedure TCAD_CaixasSimples.RadioCupomClick(Sender: TObject);
begin
     setTela('CAIXASIMPLES_IMPRESSAO','CUPOM');
end;

procedure TCAD_CaixasSimples.RadioEmailClick(Sender: TObject);
begin
     if RadioEmail.Checked Then
        setTela('CAIXASIMPLES_RECIBO_EMAIL','SIM')
     else
         setTela('CAIXASIMPLES_RECIBO_EMAIL','NAO');
end;

procedure TCAD_CaixasSimples.RadioFeriadosClick(Sender: TObject);
begin
     if RadioFeriados.Checked Then
        setTela('CAIXASIMPLES_FERIADOS','SIM')
     else
         setTela('CAIXASIMPLES_FERIADOS','NAO');
end;

procedure TCAD_CaixasSimples.RadioMostraClick(Sender: TObject);
begin
     if RadioMostra.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_MOSTRA','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_MOSTRA','NAO');
end;

procedure TCAD_CaixasSimples.RadioMostraJurosMultaClick(Sender: TObject);
begin
     if RadioMostraJurosMulta.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_NAOMOSTRAJUROSMULTA','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_NAOMOSTRAJUROSMULTA','NAO');
end;

procedure TCAD_CaixasSimples.RadioNadaClick(Sender: TObject);
begin
     setTela('CAIXASIMPLES_IMPRESSAO','NADA');
end;

procedure TCAD_CaixasSimples.RadioReciboClick(Sender: TObject);
begin
     setTela('CAIXASIMPLES_IMPRESSAO','RECIBO');
end;

procedure TCAD_CaixasSimples.RadioSlipClick(Sender: TObject);
begin
     if RadioSlip.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_SLIP','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_SLIP','NAO');
end;

procedure TCAD_CaixasSimples.RemoverConta1Click(Sender: TObject);
begin
     selecaoREMConta(DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsString);
end;

procedure TCAD_CaixasSimples.RemoverConta2Click(Sender: TObject);
Var escolha: String;
begin

     if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = EXCLUIR') then
        Exit;

     escolha := InputBox('Escolha uma opção:', '1 - Excluir Conta.'+#13+'2 - Colocar como pendente.','');

     try
        if Length(escolha) = 0 then
           exit;

        escolha := IntToStr(StrToInt(escolha));
     except
           unUtilitario.setMensagem('Informe somente números!','erro');
           Exit;
     end;

     if escolha = '1' then
     begin
          if unUtilitario.setMensagem('Deseja remover esta conta?'+#13+DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsString +' Valor: '+DM_FINANCEIRO.ZCaixaSimplesVALOR.AsString ,'confirma') = IDYES then
          begin
               try
                  DM_FINANCEIRO.ZCaixaSimples.Edit;
                  DM_FINANCEIRO.ZCaixaSimplesATIVO.AsString := 'XXX';
                  DM_FINANCEIRO.ZCaixaSimplesDATA_ALT.AsDateTime := Date()+Time();
                  DM_FINANCEIRO.ZCaixaSimplesID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
                  DM_FINANCEIRO.ZCaixaSimplesOPERACAO.AsString := DM_FINANCEIRO.ZCaixaSimplesOPERACAO.AsString + ' EXCLUÍDO PELO CAIXA SIMPLES, MANUALMENTE.';
                  DM_FINANCEIRO.ZCaixaSimples.Post;
                  DM_FINANCEIRO.ZCaixaSimples.ApplyUpdates;

                  setLog(DM_FINANCEIRO.ZCaixaSimples.Fields[0].AsString, 'EXCLUSÃO', Self.Caption, DM_FINANCEIRO.ZCaixaSimples);
               except
                     on e: exception do
                     begin
                        unUtilitario.setMensagem('Erro ao excluir o registro!'+#13+e.Message,'erro');

                        DM_FINANCEIRO.ZCaixaSimples.Close;
                        exit;
                     end;
               end;
          end;
     end;

     if escolha = '2' then
     begin
          if unUtilitario.setMensagem('Deseja colocar esta conta como pendente?'+#13+DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsString +' Valor: '+DM_FINANCEIRO.ZCaixaSimplesVALOR.AsString +#13+ 'Ela não será excluída, somente não será cobrada.','confirma') = IDYES then
          begin
               try
                  DM_FINANCEIRO.ZCaixaSimples.Edit;
                  DM_FINANCEIRO.ZCaixaSimplesPENDENTE.AsString := 'SIM';
                  DM_FINANCEIRO.ZCaixaSimplesDATA_ALT.AsDateTime := Date()+Time();
                  DM_FINANCEIRO.ZCaixaSimplesID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
                  DM_FINANCEIRO.ZCaixaSimplesOPERACAO.AsString := DM_FINANCEIRO.ZCaixaSimplesOPERACAO.AsString + InputBox('Relate o motivo:', 'Dica: Relate brevemente o motivo para esta operação.','');
                  DM_FINANCEIRO.ZCaixaSimples.Post;
                  DM_FINANCEIRO.ZCaixaSimples.ApplyUpdates;

                  setLog(DM_FINANCEIRO.ZCaixaSimples.Fields[0].AsString, 'ALTERAÇÃO', Self.Caption, DM_FINANCEIRO.ZCaixaSimples);
               except
                     on e: exception do
                     begin
                        unUtilitario.setMensagem('Erro ao excluir o registro!'+#13+e.Message,'erro');

                        DM_FINANCEIRO.ZCaixaSimples.Close;
                        exit;
                     end;
               end;
          end;
     end;
     

     DM_FINANCEIRO.ZCaixaSimples.Refresh;
end;

procedure TCAD_CaixasSimples.RetirarValor1Click(Sender: TObject);
Var valor, comentario: string;
begin
     if not verificaPermissaoAdministrador('ENTRAR NA TELA DE RETIRAR VALOR DO CAIXA SIMPLES') then
        EXIT;

     valor := InputBox('Entre com o valor a ser RETIRADO: ', 'Ex: 0,00','0,00');
     comentario := InputBox('COMENTÁRIO a ser ADICIONADO: ', 'Ex: CPFL, SABESP, ACERTOS...','');
     
     try
        If (valor = '0,00') OR (Length(valor) <= 0) OR (getStrToCurr(valor) <= 0) then
           exit;
     except
           unUtilitario.setMensagem('Erro ao inserir valor.'+#13+'O valor deverá ser maior que 0.'+#13+'O valor deve ser formatado 0,00 .','erro');
           exit;
     end;

     try
        DM_FINANCEIRO.ZCaixaSimples.Edit;
        DM_FINANCEIRO.ZCaixaSimplesDOCUMENTO.AsString := DM_FINANCEIRO.ZCaixaSimplesDOCUMENTO.AsString +' '+getCurrToStr(DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency,TRUE) +' - ' + UpperCase(comentario) + ' '+getCurrToStr(StrToCurr(valor),TRUE);
        DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency := DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency - getStrToCurr(valor);
        DM_FINANCEIRO.ZCaixaSimplesDATA_ALT.AsDateTime := Date()+Time();
        DM_FINANCEIRO.ZCaixaSimplesID_FUNCIONARIO.AsString := getUser('CODIGO_USUARIO');
        DM_FINANCEIRO.ZCaixaSimples.Post;
        DM_FINANCEIRO.ZCaixaSimples.ApplyUpdates;
        DM_FINANCEIRO.ZCaixaSimples.Refresh;
        DM_FINANCEIRO.ZCaixaSimples.Edit;
     except
           on e: exception do
           Begin
                DM_FINANCEIRO.ZCaixaSimples.CancelUpdates;
                DM_FINANCEIRO.ZCaixaSimples.Edit;
                unUtilitario.setMensagem('Problemas ao incluir o valor informado.'+#13+e.Message,'erro');
                Exit;
           end;
     end;

     limpaComponentes();
end;

procedure TCAD_CaixasSimples.Salvar1Click(Sender: TObject);
begin
     salvaRegistroSelecionado();
     unUtilitario.setMensagem('Registro Salvo!','informa');
     DM_FINANCEIRO.ZCaixaSimples.Refresh;
end;

procedure TCAD_CaixasSimples.salvaRegistroSelecionado();
Var varSQL: TZQuery;
begin
     try
        varSQL := unUtilitario.getSQL('update caixa_'+caixaLocal+' c set C.DATA_ALT = current_date, C.ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', c.valor_juros = '+formataDinheiroSQL(EditValorJurosPorc.Text)+', c.valor_multa = '+formataDinheiroSQL(EditValorMultaPorc.Text)+', c.valor_desconto ='+formataDinheiroSQL(EditValorDesconto.Text)+' where c.id_caixa = '+DM_FINANCEIRO.ZCaixaSimples.FieldByName('ID_CAIXA').AsString);
        varSQL.ApplyUpdates;

        //setLogSQL(DM_FINANCEIRO.ZCaixaSimples.FieldByName('ID_CAIXA').AsString, 'ALTERAÇÃO', 'CAIXA SIMPLES', varSQL.SQL.Text);

     except
           on e: exception do
           Begin
                unUtilitario.setMensagem('O sistema encontrou um erro ao salvar as alterações!'+#13+e.Message,'erro');
                DM_FINANCEIRO.ZCaixaSimples.CancelUpdates;
                DM_FINANCEIRO.ZCaixaSimples.Close;
                ValorBusca.SetFocus;
                exit;
           end;
     end;
end;

procedure TCAD_CaixasSimples.AdicionarValor1Click(Sender: TObject);
Var valor, comentario: string;
    varSQL: TZQuery;
begin
     if not verificaPermissaoAdministrador('ENTRAR NA TELA DE ADICIONAR VALOR DO CAIXA SIMPLES') then
        exit;

     valor := InputBox('VALOR a ser ADICIONADO: ', 'Ex: 0,00','0,00');
     comentario := InputBox('COMENTÁRIO a ser ADICIONADO: ', 'Ex: CPFL, SABESP, ACERTOS...','');

     try
        If (valor = '0,00') OR (Length(valor) <= 0) OR (getStrToCurr(valor) <= 0) then
           exit;
     except
           unUtilitario.setMensagem('Erro ao inserir valor.'+#13+'O valor deverá ser maior que 0.'+#13+'O valor deve ser formatado 0,00 .','erro');
           exit;
     end;

     try
        varSQL := unUtilitario.getSQL('Elaborar a SQL');
        DM_FINANCEIRO.ZCaixaSimples.Edit;
        DM_FINANCEIRO.ZCaixaSimplesDOCUMENTO.AsString := DM_FINANCEIRO.ZCaixaSimplesDOCUMENTO.AsString +' '+getCurrToStr(DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency,TRUE) +' + ' + UpperCase(comentario) + ' '+getCurrToStr(StrToCurr(valor),TRUE);
        DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency := DM_FINANCEIRO.ZCaixaSimplesVALOR.AsCurrency + getStrToCurr(valor);
        DM_FINANCEIRO.ZCaixaSimples.Post;
        DM_FINANCEIRO.ZCaixaSimples.ApplyUpdates;
        DM_FINANCEIRO.ZCaixaSimples.Refresh;
        DM_FINANCEIRO.ZCaixaSimples.Edit;
     except
           on e: exception do
           Begin
                DM_FINANCEIRO.ZCaixaSimples.CancelUpdates;
                DM_FINANCEIRO.ZCaixaSimples.Edit;
                unUtilitario.setMensagem('Problemas ao incluir o valor informado.'+#13+e.Message,'erro');
                Exit;
           end;
     end;

     limpaComponentes();
end;

function TCAD_CaixasSimples.verificaBaixas(id_caixa: integer): boolean;
var varSQL: TZQuery;
    texto: string;
Begin
     result := TRUE;

     if id_caixa <= 0 then
     Begin
          if rowEntrada.Count > 0 then
             varSQL := unUtilitario.getSelect('select id_caixa, parcela from caixa_ENTRADA where id_caixa in ('+alinhaStringlist(rowEntrada)+') and data_pgto is null');

          if rowSaida.Count > 0 then
             varSQL := unUtilitario.getSelect('select id_caixa, parcela from caixa_SAIDA where id_caixa in ('+alinhaStringlist(rowSaida)+') and data_pgto is null');
     end
     else
     Begin
          varSQL := unUtilitario.getSelect('select id_caixa, parcela from caixa_'+caixaLocal+' where id_caixa = '+IntToStr(id_caixa)+' and data_pgto is null');
     end;

     if varsql.RecordCount > 0 then
     begin
          while not varSQL.Eof do
          Begin
               texto := texto + #13+'Código: '+varSQL.FieldByName('ID_CAIXA').AsString+' Parcela: '+varSQL.FieldByName('PARCELA').AsString;
               varSQL.Next;

          end;
          
          result := FALSE;
          unUtilitario.setMensagem('ATENÇÃO!'+#13+'Algumas contas NÃO foram baixadas!'+texto,'erro');

     end;

     FreeAndNil(varSQL);     
end;


procedure TCAD_CaixasSimples.BtnPagarClick(Sender: TObject);
Var Repasse: Double;
    varSQL: TZQuery;
    Valor: Currency;
    i: integer;
    textoSaida, sql: String;
begin
     If DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.IsNull then
     Begin
          unUtilitario.setMensagem('Primeiro, selecione uma conta!','informa');
          exit;
     end;

     if (getStrToCurr(EditValorPago.Text) < getStrToCurr(EditValorFinal.Text)) AND registroSelecionado then
     Begin
          unUtilitario.setMensagem('Valor menor que o cobrado!'+#13+'Dê um desconto e salve para poder liberar o pagamento.','informa');
          exit;
     end;

     if (somaCheques() > 0) and (CDS_Cheques.RecordCount = 0) then
     Begin
        unUtilitario.setMensagem('Cadastre o cheque!','informa');
        exit;
     end;

     if (somaCadastroCheques() <> somaCheques()) then
     Begin
        unUtilitario.setMensagem('O valor informado para pgto em cheque é diferente do total de cheques cadastrados.','informa');
        exit;                     
     end;

     //VERIFICAR VALORES DA CAIXA DE VALORES
     ZPagamentos.First;
     Valor := 0;
     while not ZPagamentos.Eof do
     Begin
          Valor := Valor + ZPagamentos.FieldByName('VALOR').AsCurrency;
          ZPagamentos.Next;
     end;

     if Valor <> StrToCurr(StringReplace(EditValorFinal.Text,'.','',[rfReplaceAll])) then
     Begin
          unUtilitario.setMensagem('O valor informado em FORMA DE PAGAMENTO é diferente do total. (Valor deve ser igual ao Valor Final)','informa');
          exit;
     end;


     //ALTERA A DATA BASE PARA CÁLCULO DAS CONTAS
     if LabelDataBase.Font.Color = clLime then
        PRINCIPAL.dataBasePGTO := unUtilitario.formataDataSQL(datetostr(ValorDataBase.Date))
     else
         PRINCIPAL.dataBasePGTO := unUtilitario.formataDataSQL(datetostr(Date()));

     //if registroSelecionado then
     //   setEditValorFaltando();

     iF registroSelecionado Then
     Begin
        salvaRegistroSelecionado();
        SelecionarConta1Click(Sender);
     end;

     //TabInformacao.Show;
     selecaoELABORAR();
     imprimir();

     //BAIXA AS CONTAS IMPRESSAS
     baixaContas(DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger);

          If registroSelecionado Then
             verificaBaixas(DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger)
          else
          if NOT verificaBaixas(0) Then
             unUtilitario.setMensagem('Verifique as contas informadas e tente quitar novamente, caso queira.'+#13+'OBS: Verifique também o repasse para os devidos proprietários, e arrume os valores, caso necessário.'+#13+'Se caso este erro continuar, entre em contato com a Célula Digital.','informa');
          
               //QUANDO A PESSOA SELECIONA MANUALMENTE UMA CONTA
             if caixaLocal = 'ENTRADA' Then
                if getConf('REPASSA_MULTA') = '1' Then //DIVIDE A DIFERENÇA
                Begin
                     for I := 0 to rowEntrada.Count - 1 do
                     begin
                         //varSQL := unUtilitario.getSelect('Select (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)) as VALOR_REAL, C.valor, (select first 1 max(cs.id_caixa) from caixa_saida cs where cs.ativo = ''SIM'' and cs.id_entrada = c.id_caixa )'+' as ID_CAIXA_SAIDA, C.id_contrato from caixa_entrada c where C.ativo = ''SIM'' and c.id_tipo = 2 and c.id_subtipo = 3 and c.id_caixa = '+rowEntrada.Strings[i]);
                         varSQL := unUtilitario.getSelect('Select (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)) as VALOR_REAL, C.valor, (select first 1 max(cs.id_caixa) from caixa_saida cs where cs.ativo = ''SIM'' and cs.id_entrada = c.id_caixa )'+' as ID_CAIXA_SAIDA, C.id_contrato from caixa_entrada c where C.ativo = ''SIM'' and c.id_caixa = '+rowEntrada.Strings[i]);
                         //0 VALOR CALCULADO FINAL
                         //1 VALOR REAL
                         //2 ID DA CONTA SAÍDA A ALTERAR
                         if NOT varSQL.Fields[2].IsNull Then
                            if varSQL.Fields[0].AsCurrency > varSQL.Fields[1].AsCurrency Then
                            Begin
                                 Repasse := varSQL.Fields[0].AsCurrency - varSQL.Fields[1].AsCurrency;
                                 varSQL := unUtilitario.getSQL('update caixa_saida set DATA_ALT = current_date, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', DOCUMENTO = DOCUMENTO || '' VALOR BASE: '' || cast(VALOR as numeric(12,2)) ||'' - INQUILINO ('+getCurrToStr(varSQL.Fields[0].AsCurrency,true)+')'', VALOR = VALOR + '+formataDinheiroSQL(FloatToStr(Repasse/2))+' where garantido = ''NAO'' and DATA_PGTO is null AND id_caixa = '+varSQL.Fields[2].AsString);
                                 varSQL.ApplyUpdates;

                                 // JÁ FAZ NO COMANDO GETSQL = setLogSQL(varSQL.Fields[2].AsString, 'ALTERAÇÃO', 'CAIXA SIMPLES', varSQL.SQL.Text);
                            End;
                     end;
                End
                ELSE
                if getConf('REPASSA_MULTA') = '2' Then //USA A TAXA DO CONTRATO
                Begin
                     for I := 0 to rowEntrada.Count - 1 do
                     begin
                         //varSQL := unUtilitario.getSelect('Select (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)) as VALOR_REAL, C.valor, '+'(select first 1 max(cs.id_caixa) from caixa_saida cs where cs.ativo = ''SIM'' and cs.id_entrada = c.id_caixa) as ID_CAIXA_SAIDA, C.id_contrato, (select first 1 cont.tarifa from contrato cont where cont.tarifa <>'+' 0 and cont.id_contrato = c.id_contrato) as taxa_contrato from caixa_entrada c where C.ativo = ''SIM'' and c.id_subtipo = 3 and c.id_caixa = '+rowEntrada.Strings[i]);
                         varSQL := unUtilitario.getSelect('Select (select result from spvalorcobranca1('+getConf('EMPRESA_CALCULO')+', c.data_ref, current_date, c.valor, c.valor_juros, c.valor_multa, c.valor_desconto)) as VALOR_REAL, C.valor, '+'(select first 1 max(cs.id_caixa) from caixa_saida cs where cs.ativo = ''SIM'' and cs.id_entrada = c.id_caixa) as ID_CAIXA_SAIDA, C.id_contrato, (select first 1 cont.tarifa from contrato cont where cont.tarifa <>'+' 0 and cont.id_contrato = c.id_contrato) as taxa_contrato, c.id_subtipo from caixa_entrada c where C.ativo = ''SIM'' and c.id_caixa = '+rowEntrada.Strings[i]);
                         //0 VALOR CALCULADO FINAL
                         //1 VALOR REAL
                         //2 ID DA CONTA SAÍDA A ALTERAR
                         if (NOT varSQL.Fields[2].IsNull) and (NOT varSQL.Fields[3].IsNull) and (NOT varSQL.Fields[4].IsNull) Then
                            if varSQL.Fields[0].AsCurrency > varSQL.Fields[1].AsCurrency Then
                            Begin
                                 Repasse := varSQL.Fields[0].AsCurrency - varSQL.Fields[1].AsCurrency;

                                 PRINCIPAL.setMensagem('REPASSE = VALOR CALC:R$'+varSQL.Fields[0].AsString+' VALOR:R$'+varSQL.Fields[1].AsString+' DIF:R$'+FloatToStr(Repasse));

                                 If (Repasse > 0) Then
                                 begin
                                      //SE É IPTU, REPASSA O VALOR INTEGRAL  (4 = IPTU)
                                      if varSQL.FieldByName('ID_SUBTIPO').AsInteger = 4 then
                                         sql := 'update caixa_saida set DATA_ALT = current_timestamp, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', DOCUMENTO = DOCUMENTO || '' BASE: '' || cast(VALOR as numeric(12,2)) ||'' - INQ ('+getCurrToStr(varSQL.Fields[0].AsCurrency,true)+')'', VALOR = '+formataDinheiroSQL(varSQL.Fields[0].AsString)+' where garantido = ''NAO'' and DATA_PGTO is null and id_caixa = '+varSQL.Fields[2].AsString
                                      else
                                          sql := 'update caixa_saida set DATA_ALT = current_timestamp, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', DOCUMENTO = DOCUMENTO || '' BASE: '' || cast(VALOR as numeric(12,2)) ||'' - INQ ('+getCurrToStr(varSQL.Fields[0].AsCurrency,true)+')'', VALOR = CAST(VALOR + '+formataDinheiroSQL(FloatToStr((Repasse*(100 - varSQL.Fields[4].AsFloat))/100))+' as numeric(12,2)) where garantido = ''NAO'' and DATA_PGTO is null and id_caixa = '+varSQL.Fields[2].AsString;

                                      varSQL := unUtilitario.getSQL(sql);
                                      varSQL.ApplyUpdates;

                                      //setLogSQL(varSQL.Fields[2].AsString, 'ALTERAÇÃO', 'CAIXA SIMPLES', varSQL.SQL.Text);
                                 end
                                 ELSE
                                     setMensagem('Problemas ao realizar o repasse!'+#13+'Verifique os valores e/ou se as contas possuem vinculos.'+#13+'Atualmente o sistema indentificou que o valor cobrado é menor que o valor base.','erro');

                            End;
                     end;

               {
               //ABRE A TELA SE TIVER CHEQUE
               for I := 0 to rowEntrada.Count - 1 do
               begin
                    varSQL := unUtilitario.getSelect('select id_caixa_pgto from caixa_pgto where id_forma_pgto = 14 and ID_CAIXA_ENTRADA = '+rowEntrada.Strings[i]);

                    if varSQL.RecordCount > 0 then
                    Begin
                         usaCheque := true;
                         Break;
                    End;
               end;
               }

                if varSQL <> nil Then
                   FreeAndNil(varSQL);
     end;


     //Possibilita o usuário a mudar a categoria das contas criadas, no caso de cheques.
     if CDS_Cheques.RecordCount > 0 then
     Begin
          textoSaida := '';
          varSQL := unUtilitario.getSelect('select nome, id_caixa_sis from caixa_sis where tipo = ''CATEGORIA'' and ativo = ''SIM'' order by nome');
          for I := 0 to varSQL.RecordCount - 1 do
          Begin
               textoSaida := textoSaida+#13+varSQL.FieldByName('ID_CAIXA_SIS').AsString+'-'+varSQL.FieldByName('NOME').AsString;
               varSQL.Next;
          end;
          varSQL.Close;
      
          textoSaida := InputBox('Alteração de Categoria', 'Como foi identificado uma alteração na forma de Pgto, recomendamos alterar a categoria das contas.'+#13+'ESCOLHA UM CÓDIGO ABAIXO:'+#13+textoSaida,'');

          selecaoELABORAR();

          if verificaStringInt(textoSaida) then
          Begin
               if setMensagem('Deseja alterar as contas pagas para a categoria '+textoSaida+'?','confirma') = mrYes then
               Begin
                    varSQL := unUtilitario.getSQL('update caixa_entrada C set C.id_categoria = '+textoSaida+' '+StringReplace(whereEntrada, 'c.data_pgto is null and','',[rfReplaceAll,rfIgnoreCase]));
                    varSQL := unUtilitario.getSQL('update caixa_saida C set C.id_categoria = '+textoSaida+' '+StringReplace(whereSaida, 'c.data_pgto is null and','',[rfReplaceAll,rfIgnoreCase]));
               end
               else
                   setMensagem('NÃO foi realizada NENHUMA alteração de categoria.','informa');
          end
          else
              setMensagem('NÃO foi realizada NENHUMA alteração de categoria.','informa');

     end;


     RadioPgtoSemRecebimento.State := cbUnchecked;
     setTela('CAIXASIMPLES_PGTO_SEM_RECEB','NAO');

     selecaoLIMPA();
     limpaComponentes();
     registroSelecionado := True;
     SelecionarContas(False);
     limpaDatas();
     ValorBusca.SetFocus;
     fazProcura();

     ZPagamentos.Close;
     ZPagamentos.Open;
     ZPagamentos.Edit;
     CDS_Cheques.Close;
     CDS_Cheques.CreateDataSet;
     CDS_Cheques.Open;
     CDS_Cheques.EmptyDataSet;

end;

procedure TCAD_CaixasSimples.CDS_ChequesNewRecord(DataSet: TDataSet);
begin
  if (NOT DM_FINANCEIRO.DS_CaixaSimples.DataSet.Active) or (DM_FINANCEIRO.DS_CaixaSimples.DataSet.RecordCount = 0) Then
    exit;

  CDS_Cheques.FieldByName('NOME').AsString := DM_FINANCEIRO.DS_CaixaSimples.DataSet.FieldByName('PESSOA').AsString;
  CDS_Cheques.FieldByName('VALOR').AsCurrency := somaCheques();
  CDS_Cheques.FieldByName('OBS').AsString := 'CONTA EM NOME DE '+DM_FINANCEIRO.DS_CaixaSimples.DataSet.FieldByName('PESSOA').AsString;
end;

procedure TCAD_CaixasSimples.CheckDisponivelPagamentoClick(Sender: TObject);
begin
     if CheckDisponivelPagamento.Checked Then
        setTela('CAIXASIMPLES_CONTASPAGAMENTO_MOSTRA','SIM')
     else
         setTela('CAIXASIMPLES_CONTASPAGAMENTO_MOSTRA','NAO');
end;

procedure TCAD_CaixasSimples.RadioPgtoSemRecebimentoClick(Sender: TObject);
begin
     if RadioPgtoSemRecebimento.Checked Then
        setTela('CAIXASIMPLES_PGTO_SEM_RECEB','SIM')
     else
         setTela('CAIXASIMPLES_PGTO_SEM_RECEB','NAO');
end;

procedure TCAD_CaixasSimples.CriarDbito1Click(Sender: TObject);
begin
     if not verificaPermissao('ADMINISTRAR >> CAIXA COMPOSTO = INCLUIR') then
        Exit;

     Application.CreateForm(TCAD_Caixas_Item, CAD_Caixas_Item);
     CAD_Caixas_Item.setInformacao(caixaLocal,DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.AsString,DM_FINANCEIRO.ZCaixaSimplesID_CONTRATO.AsString,DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger, DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsInteger,StrToInt(getUser('CODIGO_USUARIO')),StrToInt(getConf('EMPRESA_CALCULO')));
     CAD_Caixas_Item.CampoDataVenc.Text := DateToStr(DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsDateTime);
     CAD_Caixas_Item.setCaixa(caixaLocal);
     CAD_Caixas_Item.ShowModal;
     DM_FINANCEIRO.ZCaixaSimples.Refresh;
     ValorBusca.SetFocus;
end;

procedure TCAD_CaixasSimples.DadosBancrios1Click(Sender: TObject);
var varSQL: TZQuery;
begin

     if DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.IsNull then
       EXIT;

     varSQL := unUtilitario.getSelect('select p.icq, p.aim from pessoa p where p.id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString);

     unUtilitario.setMensagem('Registro bancário do cliente '+DM_FINANCEIRO.ZCaixaSimplesPESSOA.AsString+':'+#13+
     'Dados: '+varSQL.FieldByName('icq').AsString+#13+
     'Resp. da conta: '+varSQL.FieldByName('aim').AsString,'informa');

     FreeAndNil(varSQL);
end;

procedure TCAD_CaixasSimples.DBEdit1DblClick(Sender: TObject);
begin
     DM_FINANCEIRO.ZCaixaPgto.Edit;
     DM_FINANCEIRO.ZCaixaPgtoDATA_PGTO.Value := Date();
end;

procedure TCAD_CaixasSimples.DBGridChequesExit(Sender: TObject);
begin
  CDS_Cheques.Append;
end;

procedure TCAD_CaixasSimples.DBGridPagamentosExit(Sender: TObject);
begin
  ZPagamentos.First;

  while not ZPagamentos.Eof do
  Begin
    if Length(Trim(ZPagamentos.FieldByName('VALOR').AsString)) <= 0 then
    Begin
      ZPagamentos.Edit;
      ZPagamentos.FieldByName('VALOR').AsCurrency := 0;
    end;
    
    ZPagamentos.Next;
  end;

  EditValorPago.Text := getCurrToStr(somaPagamentos(), false);
end;

procedure TCAD_CaixasSimples.DBGridPagamentosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
        EditValorPago.Text := getCurrToStr(somaPagamentos(), false);
     
end;

procedure TCAD_CaixasSimples.EditDiasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('Diferença entre datas!');
end;

procedure TCAD_CaixasSimples.EditValorDescontoChange(Sender: TObject);
begin
     if EditValorDesconto.Focused then
     begin
          EditValorDescontoPorc.Text := getCurrToStr(getDinhToPorc(EditValorDesconto.Text, EditValorBase.Text),False);

          if Length(EditValorDesconto.Text) = 0 Then
             EditValorDesconto.Text := '0';
     end;
end;

procedure TCAD_CaixasSimples.EditValorDescontoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     If Key = VK_RETURN then
     Begin

          if Length(EditValorDesconto.Text) = 0 Then
             EditValorDesconto.Text := '0';

          EditValorDescontoPorc.Text := CurrToStr(getDinhToPorc(EditValorDesconto.Text, EditValorBase.Text));
          setCalculoTotal();
     end;

end;

procedure TCAD_CaixasSimples.EditValorDescontoPorcChange(Sender: TObject);
begin
     if EditValorDescontoPorc.Focused then
     begin
          EditValorDesconto.Text := getCurrToStr(getPorcToDinh(EditValorDescontoPorc.Text, EditValorBase.Text),false);

          if Length(EditValorDescontoPorc.Text) = 0 Then
             EditValorDescontoPorc.Text := '0';
     end;
end;

procedure TCAD_CaixasSimples.EditValorDescontoPorcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
     Begin

          if Length(EditValorDescontoPorc.Text) = 0 Then
             EditValorDescontoPorc.Text := '0';
             
          EditValorDesconto.Text := getCurrToStr(getPorcToDinh(EditValorDescontoPorc.Text, EditValorBase.Text),FALSE);
          setCalculoTotal();
     end;
end;

procedure TCAD_CaixasSimples.EditValorFinalDblClick(Sender: TObject);
begin
     setCalculoTotal();
end;

procedure TCAD_CaixasSimples.EditValorFinalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('Valor final cobrado!');
end;

procedure TCAD_CaixasSimples.EditValorJurosChange(Sender: TObject);
begin
     if EditValorJuros.Focused then
     begin
          EditValorJurosPorc.Text := CurrToStr(getDinhToPorc(EditValorJuros.Text, EditValorBase.Text));

          if Length(EditValorJuros.Text) = 0 Then
             EditValorJuros.Text := '0';
     end;
end;

procedure TCAD_CaixasSimples.EditValorJurosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
     Begin

          if Length(EditValorJuros.Text) = 0 Then
             EditValorJuros.Text := '0';

          setCalculoTotal();
     end;
end;

procedure TCAD_CaixasSimples.EditValorJurosPorcChange(Sender: TObject);
begin
     if EditValorJurosPorc.Focused then
     BEGIN
          EditValorJuros.Text := getCurrToStr(getPorcToDinh(EditValorJurosPorc.Text, EditValorBase.Text),false);

          if Length(EditValorJurosPorc.Text) = 0 Then
             EditValorJurosPorc.Text := '0';
     END;
end;

procedure TCAD_CaixasSimples.EditValorJurosPorcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
     Begin

          if Length(EditValorJurosPorc.Text) = 0 Then
             EditValorJurosPorc.Text := '0';

          EditValorJuros.Text := getCurrToStr(getPorcToDinh(EditValorJurosPorc.Text, EditValorBase.Text),FALSE);
          setCalculoTotal();
     end;
end;

procedure TCAD_CaixasSimples.EditValorMultaChange(Sender: TObject);
begin
     if EditValorMulta.Focused then
     Begin
          EditValorMultaPorc.Text := getCurrToStr(getDinhToPorc(EditValorMulta.Text, EditValorBase.Text),FALSE);

          if Length(EditValorMulta.Text) = 0 Then
             EditValorMulta.Text := '0';
     End;
end;

procedure TCAD_CaixasSimples.EditValorMultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
     Begin

          if Length(EditValorMulta.Text) = 0 Then
             EditValorMulta.Text := '0';

          setCalculoTotal();
     end;
end;

procedure TCAD_CaixasSimples.EditValorMultaPorcChange(Sender: TObject);
begin
     if EditValorMultaPorc.Focused then
     begin
          EditValorMulta.Text := getCurrToStr(getPorcToDinh(EditValorMultaPorc.Text, EditValorBase.Text),False);

          if Length(EditValorMultaPorc.Text) = 0 Then
             EditValorMultaPorc.Text := '0';
     end;

end;

procedure TCAD_CaixasSimples.EditValorMultaPorcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
     Begin

          if Length(EditValorMultaPorc.Text) = 0 Then
             EditValorMultaPorc.Text := '0';

          EditValorMulta.Text := getCurrToStr(getPorcToDinh(EditValorMultaPorc.Text, EditValorBase.Text),FALSE);
          setCalculoTotal();
     end;
end;

procedure TCAD_CaixasSimples.EditValorPagoChange(Sender: TObject);
begin
     //setCalcularResultados();

     if Length(Trim(EditValorPago.Text)) = 0 then
        EditValorPago.Text := '0,00'
     else
     begin
       EditValorTroco.Text := getCurrToStr(getStrToCurr(EditValorPago.text) - getStrToCurr(EditValorFinal.text),false);
     end;

end;

procedure TCAD_CaixasSimples.EditValorPagoDblClick(Sender: TObject);
begin
     setCalculoTotal();
end;

procedure TCAD_CaixasSimples.EditValorPagoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
     begin
          if EditValorTroco.Text = getCurrToStr(getStrToCurr(EditValorPago.Text) - getStrToCurr(EditValorFinal.Text),false) then
             BtnPagarClick(Sender)
          else
              EditValorTroco.Text := getCurrToStr(getStrToCurr(EditValorPago.Text) - getStrToCurr(EditValorFinal.Text),False);
     end;
end;

procedure TCAD_CaixasSimples.EditValorPagoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     PRINCIPAL.setMensagem('Para alterar o valor, use a MULTA, DESCONTO ou pelo Caixa Composto!');
end;

procedure TCAD_CaixasSimples.elefones1Click(Sender: TObject);
var variavel, Mensagem: String;
    varSQL: TZQuery;
begin
     //http://forum.clubedelphi.net/viewtopic.php?p=79412&sid=f6dafe09a1d255b4c78fc00733aa95de

     if DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.IsNull then
       EXIT;

     variavel := #13;

     varSQL := unUtilitario.getSelect('select et.tipo, t.numero, t.DDD, t.contato from telefone t inner join endereco_tipo et on et.id_endereco_tipo = t.id_endereco_tipo where t.id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString);

     if varSQL.RecordCount = 0 then
        variavel := variavel + 'NENHUM TELEFONE CADASTRADO...';

     while not varSQL.Eof  do
     Begin
          variavel := variavel + varSQL.FieldByName('tipo').AsString +' = ('+varSQL.FieldByName('DDD').AsString+') '+ varSQL.FieldByName('numero').AsString+' '+varSQL.FieldByName('contato').AsString+#13;
          varSQL.Next;
     end;

     unUtilitario.setMensagem('Telefones cadastrados para o cliente '+DM_FINANCEIRO.ZCaixaSimplesPESSOA.AsString+':'+#13+variavel,'informa');

     FreeAndNil(varSQL);
end;

procedure TCAD_CaixasSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
      var I: Integer;
          varSQLseguranca: TZQuery;
begin
     DM_FINANCEIRO.ZCaixaSimples.CancelUpdates;

     if RadioMostra.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_MOSTRA','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_MOSTRA','NAO');

     if RadioSlip.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_SLIP','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_SLIP','NAO');

     if RadioCalculado.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_CALCULADO','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_CALCULADO','NAO');

     if RadioMostraJurosMulta.Checked Then
        setTela('CAIXASIMPLES_IMPRESSAO_NAOMOSTRAJUROSMULTA','SIM')
     else
         setTela('CAIXASIMPLES_IMPRESSAO_NAOMOSTRAJUROSMULTA','NAO');

     DM_RELATORIOS.Rave_System.SystemPrinter.Copies := 1;

     if usaCheque Then
        PRINCIPAL.CriarForm(TCAD_Cheques, Self,'0');

     FreeAndNil(varSQLEntrada);
     FreeAndNil(varSQLSaida);        
     ZPagamentos.Cancel;
     ZPagamentos.Close;
     CDS_Cheques.Cancel;
     CDS_Cheques.Close;


     //CONFIRMANDO PAGAMENTOS
     if rowEntradaConfirmacao.Count > 0 then
        for I := 0 to rowEntradaConfirmacao.Count - 1 do
        Begin
            varSQLseguranca := unUtilitario.getSQL('update caixa_ENTRADA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', operacao = ''QUITACAO DE SEGURANCA. '' where data_pgto IS NULL AND id_caixa = '+rowEntradaConfirmacao.Strings[i]);
            //Sleep(500);
            varSQLseguranca.Close;
            varSQLseguranca.SQL.Clear;
        end;

     if rowSaidaConfirmacao.Count > 0 then
       for I := 0 to rowSaidaConfirmacao.Count - 1 do
       Begin
            varSQLseguranca := unUtilitario.getSQL('update caixa_SAIDA set data_pgto = current_date, hora_pgto = current_time, DATA_ALT = current_timestamp, ID_FUNCIONARIO = '+getUser('CODIGO_USUARIO')+', operacao = ''QUITACAO DE SEGURANCA. ''  where data_pgto IS NULL AND id_caixa = '+rowSaidaConfirmacao.Strings[i]);
            //Sleep(500);
            varSQLseguranca.Close;
            varSQLseguranca.SQL.Clear;
       end;

       if Assigned(varSQLseguranca) then
          FreeAndNil(varSQLseguranca);

     Action := caFree;
end;


procedure TCAD_CaixasSimples.verificaPermissaoTela();
begin

{
ADMINISTRAR >> CAIXA SIMPLES = FORMULARIO
ADMINISTRAR >> CAIXA SIMPLES = VALOR BASE
ADMINISTRAR >> CAIXA SIMPLES = CONTAS
ADMINISTRAR >> CAIXA SIMPLES = QUITAR
}

 if not verificaPermissao('ADMINISTRAR >> CAIXA SIMPLES = FORMULARIO') then
    exit;

 if not verificaPermissao('ADMINISTRAR >> CAIXA SIMPLES = VALOR BASE') then
 Begin
      ValorBase1.Enabled := False;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA SIMPLES = CONTAS') then
 Begin
      Contas1.Enabled := False;
 end;

 if not verificaPermissao('ADMINISTRAR >> CAIXA SIMPLES = QUITAR') then
 Begin
      BtnPagar.Enabled := false;
 end;

end;

procedure TCAD_CaixasSimples.FormCreate(Sender: TObject);
begin

     if NOT usuarioLogadoVerifica() then
        usuarioLogadoColoca();

     SELF.Caption := 'Caixa Simples - '+getConf('EMPRESA_FANTASIA')+'.';
     unCaixasSimples.setCaixa('ENTRADA');
     RadioPgtoSemRecebimento.Visible := False;
     RadioEmail.Visible := False;
     unCaixasSimples.limpaComponentes();
     rowEntrada := TStringList.Create();
     rowEntradaConfirmacao := TStringList.Create();
     rowSaida := TStringList.Create();
     rowSaidaConfirmacao := TStringList.Create();
     imprimirUnica := False;
     limpaDatas();
     LabelPesquisaClick(Sender);
     labelCategoriaGrupoClick(Sender);
     registroSelecionado := true;
     ValorDataBase.Hint := LabelDataBase.Hint;
     LabelDataBase.Font.Color := clBlack;
     contaAluguel := 0;

     varSQLDeposito := TZQuery.Create(SELF);
     varSQLDeposito.Connection := PRINCIPAL.Conexao;
     varSQLDeposito.SQL.Text := 'select deposito from imovel where id_imovel = :CODIGO';

     if getTela('CAIXASIMPLES_IMPRESSAO_SLIP') = 'NAO' Then
        RadioSlip.Checked := False
     else
         RadioSlip.Checked := True;

     if getTela('CAIXASIMPLES_IMPRESSAO_MOSTRA') = 'NAO' Then
        RadioMostra.Checked := False
     else
         RadioMostra.Checked := True;

     if getTela('CAIXASIMPLES_IMPRESSAO_CALCULADO') = 'NAO' Then
        RadioCalculado.Checked := False
     else
         RadioCalculado.Checked := True;

     if getTela('CAIXASIMPLES_PGTO_SEM_RECEB') = 'NAO' Then
        RadioPgtoSemRecebimento.Checked := false
     else
         RadioPgtoSemRecebimento.Checked := true;

     if getTela('CAIXASIMPLES_RECIBO_EMAIL') = 'NAO' Then
        RadioEmail.Checked := false
     else
         RadioEmail.Checked := true;

     if getTela('CAIXASIMPLES_IMPRESSAO_NAOMOSTRAJUROSMULTA') = 'SIM' Then
        RadioMostraJurosMulta.Checked := true
     else
         RadioMostraJurosMulta.Checked := false;

     if getTela('CAIXASIMPLES_CONTASPAGAMENTO_MOSTRA') = 'SIM' Then
        CheckDisponivelPagamento.Checked := true
     else
         CheckDisponivelPagamento.Checked := false;


     try
        if StrToInt(getTela('CAIXASIMPLES_IMPRESSAO_COPIAS')) > 0  Then
           DM_RELATORIOS.Rave_System.SystemPrinter.Copies := strtoint(getTela('CAIXASIMPLES_IMPRESSAO_COPIAS'))
        else
            DM_RELATORIOS.Rave_System.SystemPrinter.Copies := StrToInt(InputBox('Quantidade de Cópias:','Entre com a quantidade de cópias que o sistema deverá imprimir por padrão (nesta máquina).','1'));
     except
           DM_RELATORIOS.Rave_System.SystemPrinter.Copies := 1;
     end;

     //PRINCIPAL.Conexao.AutoCommit := True;

     //memoOrientacao.Text := 'Selecione o caixa e busque a pessoa.';
     Grid := unUtilitario.pegaGrid(Self.Name, Grid);
     ZPagamentos.Open;
     ZPagamentos.Edit;
     CDS_Cheques.CreateDataSet;
     CDS_Cheques.Open;
     CDS_Cheques.EmptyDataSet;

     verificaPermissaoTela();
end;

procedure TCAD_CaixasSimples.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE Then
        close;
end;

procedure TCAD_CaixasSimples.FormShow(Sender: TObject);
begin
     ValorBusca.SetFocus;
     
end;

procedure TCAD_CaixasSimples.ValorBuscaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN then
        fazProcura();
end;

procedure TCAD_CaixasSimples.fazProcura();
begin
     ValorBusca.Color := clSkyBlue;
     ValorBusca.Repaint;
     unCaixasSimples.buscaRegistro(RemoveAcentos(ValorBusca.Text));
     limpaComponentes();

     IF DM_FINANCEIRO.ZCaixaSimples.Active Then
        if DM_FINANCEIRO.ZCaixaSimples.RecordCount > 0 then
           Grid.SetFocus
        Else
            ValorBusca.SetFocus;

     ValorBusca.Color := clWindow;
end;

procedure TCAD_CaixasSimples.ValorDataMaiorDblClick(Sender: TObject);
begin
     limpaDatas();
end;

procedure TCAD_CaixasSimples.ValorDataMaiorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     ValorBuscaKeyDown(Sender, Key, Shift);
end;

procedure TCAD_CaixasSimples.ValorDataMenorDblClick(Sender: TObject);
begin
     limpaDatas();
end;

procedure TCAD_CaixasSimples.ValorDataMenorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     ValorBuscaKeyDown(Sender, Key, Shift);
end;

procedure TCAD_CaixasSimples.ValorOrdenacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     ValorBuscaKeyDown(Sender, Key, Shift);
end;

procedure TCAD_CaixasSimples.limpaDatas();
begin
     ValorDataMenor.Date := Date();
     ValorDataMaior.Date := Date();
     ValorDataBase.Date := Date();
     whereSaida := '';
     whereEntrada := '';
     rowEntrada.Clear;
     rowSaida.Clear;
end;

procedure TCAD_CaixasSimples.memoPendenciasDblClick(Sender: TObject);
Var Formulario: TForm;
    I,ID: INTEGER;
begin

     ID := IDCampo(memoPendencias.Items[memoPendencias.ItemIndex]);

  if ID > 0 Then
  Begin

       with TCAD_Mensagem.Create(Application) do
       try
          mostraMensagemRecebida(ID);
          ShowModal;
       finally
              Free;
       end;
  End;

end;

procedure TCAD_CaixasSimples.NovaSeleo1Click(Sender: TObject);
begin
     if unUtilitario.setMensagem('Deseja limpar a sua seleção?'+#13+'Contas do Caixa Entrada:'+IntToStr(rowEntrada.Count)+#13+'Contas do Caixa Saída:'+IntToStr(rowSaida.Count),'confirma') = IDYES then
        Begin
             selecaoLIMPA();
             limpaComponentes();
             registroSelecionado := True;
             SelecionarContas(False);
             unUtilitario.setMensagem('Seleção limpa!','informa');
        end;
end;

procedure TCAD_CaixasSimples.selecaoADDConta(id_caixa: String);
begin
     SelecionarContas(True);

     if registroSelecionado then
        limpaComponentes();

     //Quando somente um registro está selecionado, ele é TRUE. Quando mais de um registro é selecionado, ele é FALSE
     registroSelecionado := False;

     //memoOrientacao.Text := 'Como está realizando uma seleção de registros, não será possível edita-los individualmente.';

     if caixaLocal = 'ENTRADA' then
     Begin
          rowEntrada.Add(id_caixa);
          EditValorFinal.Text := getCurrToStr(getStrToCurr(EditValorFinal.Text) + DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency,FALSE);
     end
     else
     Begin
          rowSaida.Add(id_caixa);
          EditValorFinal.Text := getCurrToStr(getStrToCurr(EditValorFinal.Text) - DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency, FALSE);
     end;

     CAD_CaixasSimples.pagamentoDinheiro(StrToCurr(StringReplace(EditValorFinal.Text,'.','',[rfReplaceAll])),False);
end;

procedure TCAD_CaixasSimples.selecaoREMConta(id_caixa: String);
begin

try
     if caixaLocal = 'ENTRADA' then
     Begin
          rowEntrada.Delete(rowEntrada.IndexOf(id_caixa));
          EditValorFinal.Text := getCurrToStr(getStrToCurr(EditValorFinal.Text) - DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency, FALSE);
     end
     else
     Begin
          rowSaida.Delete(rowSaida.IndexOf(id_caixa));
          EditValorFinal.Text := getCurrToStr(getStrToCurr(EditValorFinal.Text) + DM_FINANCEIRO.ZCaixaSimplesVALORREAL.AsCurrency, FALSE);
     end;

     CAD_CaixasSimples.pagamentoDinheiro(StrToCurr(StringReplace(EditValorFinal.Text,'.','',[rfReplaceAll])),False);
except
  unUtilitario.setMensagem('Houve um erro! Pode ser que o registro selecionado já não esteja na listagem de seleção.','erro');
end;
end;

procedure TCAD_CaixasSimples.SelecionarConta1Click(Sender: TObject);
var sqlConsulta: TZQuery;
begin
     selecaoADDConta(DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsString);

     if (DM_FINANCEIRO.ZCaixaSimplesID_SUBTIPO.AsInteger = 3) and (contaAluguel = 0) then
        contaAluguel := DM_FINANCEIRO.ZCaixaSimplesID_CAIXA.AsInteger;
           
     if caixaLocal = 'ENTRADA' then
     Begin
          if NOT DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.IsNull then
          Begin
               sqlConsulta := unUtilitario.getSelect('select ID_CAIXA from caixa_SAIDA where ativo = ''SIM'' and pendente = ''NAO'' and id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString+' and data_pgto is null and id_imovel = '+DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.AsString+' and data_ref = '''+unUtilitario.formataDataSQL(DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsString)+''' ');

               if sqlConsulta.RecordCount > 0 then
               while not sqlConsulta.Eof do
               Begin
                    rowSaida.Add(sqlConsulta.FieldByName('ID_CAIXA').AsString);
                    sqlConsulta.Next;
               end;

               sqlConsulta.Close;
               FreeAndNil(sqlConsulta);
          end
          else
          begin
               sqlConsulta := unUtilitario.getSelect('select ID_CAIXA from caixa_SAIDA where ativo = ''SIM'' and pendente = ''NAO'' and id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString+' and data_pgto is null and id_imovel is null and data_ref = '''+unUtilitario.formataDataSQL(DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsString)+''' ');

               if sqlConsulta.RecordCount > 0 then
               while not sqlConsulta.Eof do
               Begin
                    rowSaida.Add(sqlConsulta.FieldByName('ID_CAIXA').AsString);
                    sqlConsulta.Next;
               end;

               sqlConsulta.Close;
               FreeAndNil(sqlConsulta);
          end;
     end
     else
     Begin
          if NOT DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.IsNull then
          Begin
               sqlConsulta := unUtilitario.getSelect('select ID_CAIXA from caixa_entrada where ativo = ''SIM'' and pendente = ''NAO'' and id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString+' and data_pgto is null and id_imovel = '+DM_FINANCEIRO.ZCaixaSimplesID_IMOVEL.AsString+' and data_ref = '''+unUtilitario.formataDataSQL(DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsString)+''' ');

               if sqlConsulta.RecordCount > 0 then
               while not sqlConsulta.Eof do
               Begin
                    rowEntrada.Add(sqlConsulta.FieldByName('ID_CAIXA').AsString);
                    sqlConsulta.Next;
               end;

               sqlConsulta.Close;
               FreeAndNil(sqlConsulta);
          end
          else
          begin
               sqlConsulta := unUtilitario.getSelect('select ID_CAIXA from caixa_entrada where ativo = ''SIM'' and pendente = ''NAO'' and id_pessoa = '+DM_FINANCEIRO.ZCaixaSimplesID_PESSOA.AsString+' and data_pgto is null and id_imovel is null and data_ref = '''+unUtilitario.formataDataSQL(DM_FINANCEIRO.ZCaixaSimplesDATA_REF.AsString)+''' ');

               if sqlConsulta.RecordCount > 0 then
               while not sqlConsulta.Eof do
               Begin
                    rowEntrada.Add(sqlConsulta.FieldByName('ID_CAIXA').AsString);
                    sqlConsulta.Next;
               end;

               sqlConsulta.Close;
               FreeAndNil(sqlConsulta);
          end;
     end;

     recuperaMensagens();
end;

procedure TCAD_CaixasSimples.selecaoLIMPA();
begin
     rowEntrada.Clear;
     rowSaida.Clear;
     contaAluguel := 0;
end;

procedure TCAD_CaixasSimples.selecaoELABORAR();
var i: Integer;
begin
     if (rowEntrada.Count > 0) OR (rowSaida.Count > 0) then
     Begin
          if (rowEntrada.Count > 0) then
          Begin
               whereEntrada := '';
               for I := 0 to rowEntrada.Count - 1 do
                   whereEntrada := whereEntrada + ', '+ rowEntrada[i];

               whereEntrada := ' where c.id_caixa in (0 '+whereEntrada+') ';
          end
          Else
              whereEntrada := ' where c.id_caixa = 0';
                 
          if (rowSaida.Count > 0) then
          begin
               whereSaida := '';
               for I := 0 to rowSaida.Count - 1 do
                   whereSaida := whereSaida + ', '+ rowSaida[i];

               whereSaida := ' where c.id_caixa in (0 '+whereSaida+') ';
          end
          Else
              whereSaida := ' where c.id_caixa = 0';
     end;
end;

function TCAD_CaixasSimples.setOrdenacao(): String;
begin
     if UpperCase(ValorOrdenacao.Text) = 'CÓDIGO' then
        result := ' ce.id_caixa '
     else
     if UpperCase(ValorOrdenacao.Text) = 'IMÓVEL' then
        result := ' l.nome '
     else
     if UpperCase(ValorOrdenacao.Text) = 'PESSOA' then
        result := ' p.nome '
     else
     if UpperCase(ValorOrdenacao.Text) = 'PARCELAS' then
        result := ' ce.parcela '
     else
     if UpperCase(ValorOrdenacao.Text) = 'VALOR' then
        result := ' ce.valor '
     else
     if UpperCase(ValorOrdenacao.Text) = 'VENCIMENTO' then
        result := ' ce.data_ref '
     else
         result := ' ce.data_ref ';
end;

procedure TCAD_CaixasSimples.SpeedButton1Click(Sender: TObject);
begin
     Salvar1Click(Sender);
end;

procedure TCAD_CaixasSimples.SpeedButton2Click(Sender: TObject);
begin
     Imprimir1Click(Sender);
end;

procedure TCAD_CaixasSimples.SpeedButton3Click(Sender: TObject);
begin
     unUtilitario.salvaGrid(Self.Name,Grid);
     close;
end;

function TCAD_CaixasSimples.verificaData(): String;
Begin
     if ValorDataMenor.Enabled OR ValorDataMaior.Enabled then
        result := ' (ce.data_ref >= '''+ unUtilitario.formataDataSQL(DateToStr(ValorDataMenor.Date)) +''' and ce.data_ref <= '''+ unUtilitario.formataDataSQL(DateToStr(ValorDataMaior.Date)) +''') AND '
     Else
         result := ' ';
end;

procedure TCAD_CaixasSimples.SelecionarContas(escolha: Boolean);
begin
     if escolha then
     Begin
          EditValorMulta.Enabled:= False;
          EditValorMultaPorc.Enabled:= False;
          EditValorJuros.Enabled:= False;
          EditValorJurosPorc.Enabled:= False;
          EditValorDesconto.Enabled:= False;
          EditValorDescontoPorc.Enabled:= False;
          EditValorPago.Enabled:= True; //Para facilitar o troco
     end
     else
     Begin
          EditValorMulta.Enabled:= True;
          EditValorMultaPorc.Enabled:= True;
          EditValorJuros.Enabled:= True;
          EditValorJurosPorc.Enabled:= True;
          EditValorDesconto.Enabled:= True;
          EditValorDescontoPorc.Enabled:= True;
          EditValorPago.Enabled:= True;  //Para facilitar o troco
     end;

end;

end.
