unit FrmMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ZDataset, Buttons, Grids, DBGrids,
  DBCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZSqlUpdate, acPNG;

type
  TCAD_Mensagem = class(TForm)
    Abas: TPageControl;
    TabAdmin: TTabSheet;
    TabMensagem: TTabSheet;
    compTexto: TMemo;
    compData: TDateTimePicker;
    Label1: TLabel;
    compBotao: TImage;
    compUrgencia: TTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Btn_Excluir: TBitBtn;
    Btn_Gravar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    ZSql: TZQuery;
    DS: TDataSource;
    DBMemo1: TDBMemo;
    ZUpdate: TZUpdateSQL;
    btn_imprimir: TBitBtn;
    TabMensagemRecebida: TTabSheet;
    Panel2: TPanel;
    btnEcluir: TBitBtn;
    DBMemo2: TDBMemo;
    BitBtn4: TBitBtn;
    DBGrid2: TDBGrid;
    cv: TLabel;
    compAlerta: TCheckBox;
    radioFuncionario: TRadioButton;
    radioPessoa: TRadioButton;
    compPessoa: TComboBox;
    Label2: TLabel;
    campoBuscaEnviadas: TEdit;
    BitBtn2: TBitBtn;
    campoBuscaRecebidas: TEdit;
    BitBtn3: TBitBtn;
    checkTodos: TCheckBox;
    SelecaoPessoas: TListBox;
    Label5: TLabel;
    BtnAdicionaPessoa: TImage;
    Label7: TLabel;
    CheckTodasPessoas: TCheckBox;
    procedure CheckTodasPessoasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure compPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelecaoPessoasDblClick(Sender: TObject);
    procedure BtnAdicionaPessoaClick(Sender: TObject);
    procedure TabMensagemRecebidaHide(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure radioFuncionarioClick(Sender: TObject);
    procedure radioPessoaClick(Sender: TObject);
    procedure btnEcluirClick(Sender: TObject);
    procedure TabMensagemRecebidaShow(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure TabAdminShow(Sender: TObject);
    procedure compBotaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mostraMensagemRecebidaCliente(codigo: integer);
  private
    { Private declarations }
  public
        procedure verMensagem(codigo: Integer);
        procedure mostraMensagemRecebida(codigo: integer);
        var controleJanela: integer;
    { Public declarations }
  end;

var
  CAD_Mensagem: TCAD_Mensagem;

implementation

uses unUtilitario, unINI, FrmPrincipal, unWord;

{$R *.dfm}

procedure TCAD_Mensagem.verMensagem(codigo: Integer);
Var obj: TObject;
begin
     Abas.TabIndex := 2;
     TabMensagemRecebidaShow(obj);
end;

procedure TCAD_Mensagem.BitBtn2Click(Sender: TObject);
begin
     ZSql.Close;
     ZSql.SQL.Clear;

     if Trim(campoBuscaEnviadas.Text) = 'BUSCA' then
        campoBuscaEnviadas.Text := '';

      ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_func = '+getUser('CODIGO_USUARIO')+' and l.campos like ''%'+UpperCase(campoBuscaEnviadas.Text)+'%'' order by l.data desc, l.obs desc');
             
     ZSql.Open;
end;

procedure TCAD_Mensagem.mostraMensagemRecebida(codigo: integer);
begin
     TabMensagemRecebida.Show;

     checkTodos.Checked := true;
     ZSql.Close;
     ZSql.SQL.Clear;

     ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.id_log = '+IntToStr(codigo));
    
     ZSql.Open;

     controleJanela := 1; //Desativar onload das abas.
end;

procedure TCAD_Mensagem.mostraMensagemRecebidaCliente(codigo: integer);
begin
     TabMensagemRecebida.Show;

     checkTodos.Checked := true;
     ZSql.Close;
     ZSql.SQL.Clear;

     ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.id_conta = '+IntToStr(codigo));
    
     ZSql.Open;

     controleJanela := 1; //Desativar onload das abas.
end;

procedure TCAD_Mensagem.BitBtn3Click(Sender: TObject);
begin
     ZSql.Close;
     ZSql.SQL.Clear;

     if Trim(campoBuscaRecebidas.Text) = 'BUSCA' then
        campoBuscaRecebidas.Text := '';
     

     if checkTodos.Checked then
     ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.componente = ''PESSOA'' and l.campos like ''%'+UpperCase(campoBuscaRecebidas.Text)+'%'' order by l.data desc, l.obs desc')
     else
      ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_conta = '+getUser('CODIGO_USUARIO')+' and l.componente = ''FUNCIONARIO'' and l.campos like ''%'+UpperCase(campoBuscaRecebidas.Text)+'%'' order by l.data desc, l.obs desc');

     ZSql.Open;
end;

procedure TCAD_Mensagem.BtnAdicionaPessoaClick(Sender: TObject);
begin
     if unUtilitario.IDCampo(compPessoa.Text) <= 0 then
     Begin
          unUtilitario.setMensagem('Favor selecionar uma pessoa!','informa');
          Exit;
     end;

     SelecaoPessoas.Items.Add(compPessoa.Text);
     compPessoa.Text := '';
end;

procedure TCAD_Mensagem.btnEcluirClick(Sender: TObject);
begin
     ZSql.Edit;
     ZSql.FieldByName('ATIVO').AsString := 'NAO';
     ZSql.post;
     ZSql.ApplyUpdates;
     ZSql.Refresh;
end;

procedure TCAD_Mensagem.Btn_CancelarClick(Sender: TObject);
begin
     ZSql.Cancel;
end;

procedure TCAD_Mensagem.Btn_ExcluirClick(Sender: TObject);
begin
     ZSql.Edit;
     ZSql.FieldByName('ATIVO').AsString := 'NAO';
     ZSql.post;
     ZSql.ApplyUpdates;
     ZSql.Refresh;
end;

procedure TCAD_Mensagem.Btn_GravarClick(Sender: TObject);
begin
     ZSql.Post;
     ZSql.ApplyUpdates;
     PRINCIPAL.setMensagem('A alteração foi salva.');
end;

procedure TCAD_Mensagem.btn_imprimirClick(Sender: TObject);
Var html: String;
begin

     ZSql.First;

     html := '<table style="text-align: left; width: 100%;" border="1" cellpadding="1" cellspacing="1"> '+
     ' <tbody><tr><td style="vertical-align: top;"><b>Código</b><br/> '+
     ' </td><td style="vertical-align: top;"><b>Urgência</b><br/> '+
     ' </td><td style="vertical-align: top;"><b>Data Referência</b><br/> '+
     ' </td><td style="vertical-align: top;"><b>Remetente</b><br/> '+
     ' </td><td style="vertical-align: top;"><b>Destinatário</b><br/> '+
     ' </td><td style="vertical-align: top;"><b>Mensagem</b><br/> '+
     ' </td></tr>';

     while NOT zsql.Eof do
     Begin
          html := html+
' <tr><td style="vertical-align: top;">'+ZSql.FieldByName('ID_LOG').AsString+'<br/> '+
' </td><td style="vertical-align: top;">'+ZSql.FieldByName('OBS').AsString+'<br/> '+
' </td><td style="vertical-align: top;">'+ZSql.FieldByName('DATA').AsString+'<br/> '+
' </td><td style="vertical-align: top;">'+ZSql.FieldByName('REMETENTE').AsString+'<br/> '+
' </td><td style="vertical-align: top;">'+ZSql.FieldByName('DESTINATARIO').AsString+'<br/> '+
' </td><td style="vertical-align: top;">'+ZSql.FieldByName('CAMPOS').AsString+'<br/> '+
' </td></tr>';
  ZSql.Next;
     end;

     html := html+ '</tbody></table>';

     setHtml('MENSAGENS DO(A) '+getUser('USUARIO'), html);
end;

procedure TCAD_Mensagem.CheckTodasPessoasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var I: Integer;
begin
     if CheckTodasPessoas.State = cbChecked then
     Begin
          SelecaoPessoas.Items.Clear;

          for I := 0 to compPessoa.Items.Count - 1 do
              SelecaoPessoas.Items.Add(compPessoa.Items[I]);
     end
     else
     Begin
          SelecaoPessoas.Items.Clear;

     end;

end;

procedure TCAD_Mensagem.compBotaoClick(Sender: TObject);
Var varSQL: TZQuery;
    dataFinal: String;
    destinatario, destino: String;
    i: integer;
begin

     try

     if SelecaoPessoas.Count <= 0 then
     Begin
          unUtilitario.setMensagem('Favor selecionar uma ou mais pessoas para enviar a mensagem.','informa');
          Exit;
     end;

     if Length(Trim(compTexto.Text)) <= 0 then
     Begin
          unUtilitario.setMensagem('Entre com alguma mensagem.','informa');
          Exit;
     end;

      For I := 0 to SelecaoPessoas.Count -1 do
      Begin

     destinatario := unUtilitario.IDCampoSTR(SelecaoPessoas.Items.Strings[i]);

     if radioFuncionario.Checked then
     Begin
          destino := 'FUNCIONARIO';

          if compAlerta.Checked then
          begin
               varSQL := unUtilitario.getSelect('select email, nome  from usuario where ativo = ''SIM'' and id_usuario = '+ IDCampoSTR(compPessoa.Text) );
               PRINCIPAL.enviaEmail(0, 'RECADO DO SISTEMA', varSQL.FieldByName('email').AsString, varSQL.FieldByName('nome').AsString, '', 'REMETENTE: '+getUser('USUARIO')+'<br/>URGÊNCIA (1 À 4):'+IntToStr(compUrgencia.Position)+'<br >RECADO:'+Trim(formataTextoSQL(compTexto.Text)));
          end;
     end
     else
     Begin
          destino := 'PESSOA';
     end;

     varSQL := unUtilitario.getSQL('insert into log '+
     '(acao, componente, campos, data, id_func, id_conta, obs, ativo) values '+
     '(''MSN'', '''+destino+''', '''+formataTextoSQL(UpperCase(compTexto.Lines.Text))+''', '''+formataDataSQL(DateToStr(compData.Date))+''', '+getUser('CODIGO_USUARIO')+', '+destinatario+', '''+IntToStr(compUrgencia.Position)+''', ''SIM'')');

     end;
     FreeAndNil(varSQL);
     except
           ON E: Exception DO
              unUtilitario.setMensagem('ERRO AO ENVIAR!'+#13+e.Message,'erro');
     end;

     compPessoa.Text := '';
     unUtilitario.setMensagem('Mensagem Enviada!','informa');
end;


procedure TCAD_Mensagem.compPessoaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ord(Key) = VK_RETURN then
     Begin
        BtnAdicionaPessoaClick(Sender);
        compPessoa.Text := '';
     end;
end;

procedure TCAD_Mensagem.TabAdminShow(Sender: TObject);
begin
     ZSql.Close;
     ZSql.SQL.Clear;
     ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_func = '+getUser('CODIGO_USUARIO')+' order by l.data desc, l.obs desc');

     ZSql.Open;
end;

procedure TCAD_Mensagem.TabMensagemRecebidaHide(Sender: TObject);
begin
     controleJanela := 0;
end;

procedure TCAD_Mensagem.TabMensagemRecebidaShow(Sender: TObject);
begin

     if controleJanela = 0 then
     Begin
          ZSql.Close;
          ZSql.SQL.Clear;
          ZSql.SQL.Add('select l.*, r.nome as remetente, '+
     ' case l.componente when ''FUNCIONARIO'' then '+
     ' (select nome from usuario where id_usuario = l.id_conta) '+
     ' when ''PESSOA'' then (select nome from pessoa where id_pessoa = l.id_conta) '+
     ' else ''NÃO INFORMADO'' '+
     ' end as destinatario from log l '+
     ' inner join usuario r on r.id_usuario = l.id_func '+
     ' where l.ativo = ''SIM'' and l.acao = ''MSN'' and l.id_conta = '+getUser('CODIGO_USUARIO')+' order by l.data desc, l.obs desc');

       ZSql.Open;
     end;
end;

procedure TCAD_Mensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TCAD_Mensagem.FormCreate(Sender: TObject);
begin
     compData.Date := Date();
     controleJanela := 0;
     radioPessoaClick(Sender);
end;

procedure TCAD_Mensagem.radioFuncionarioClick(Sender: TObject);
vAR varSQL: TZQuery;
begin
     compPessoa.Text := '';

     compPessoa.Items.Clear;
     SelecaoPessoas.Items.Clear;

     varSQL := unUtilitario.getSelect('SELECT NOME ||''-''|| ID_USUARIO FROM USUARIO WHERE ATIVO = ''SIM'' AND NOME <> ''ADMINISTRADOR'' ORDER BY NOME');

     while not varSQL.Eof do
     Begin
          compPessoa.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     End;

     AjustarLargura(compPessoa);
     varSQL.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_Mensagem.radioPessoaClick(Sender: TObject);
Var varSQL: TZQuery;
begin
     compPessoa.Text := '';

     compPessoa.Items.Clear;
     SelecaoPessoas.Items.Clear;

     varSQL := unUtilitario.getSelect('SELECT NOME ||''-''|| ID_PESSOA FROM PESSOA WHERE ATIVO = ''SIM'' ORDER BY NOME');
     while not varSQL.Eof do
     Begin
          compPessoa.Items.Add(varSQL.Fields[0].AsString);
          varSQL.Next;
     End;

     AjustarLargura(compPessoa);
     varSQL.Close;
     FreeAndNil(varSQL);
end;

procedure TCAD_Mensagem.SelecaoPessoasDblClick(Sender: TObject);
Var i: Integer;
begin

     if SelecaoPessoas.Count > 0 then
     begin
          SelecaoPessoas.Items.Delete(SelecaoPessoas.ItemIndex);
     end;
end;

end.
