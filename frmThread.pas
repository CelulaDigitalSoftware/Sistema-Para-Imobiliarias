unit frmThread;

interface

uses
  Classes, ZAbstractDataset, ZDataset, ZConnection, Dialogs, SysUtils, Windows, StrUtils, unConfiguracao;

type
  ThreadBanco = class(TThread)
  varSQL1: TZQuery;
  procedure setMsg();
  public
     msg: String;
    { Private declarations }
  protected
    procedure ExportarFoto(caminho: String);
    function formataString(coluna: String): String;
    procedure enviaFoto(id_imovel: integer; foto: String);
    procedure Execute; override;
    function contaNota(nota: string): String;
  end;

implementation

uses unINI, FrmPrincipal, unUtilitario, unImagem, unLog, untfrmproutupdate;

{ ThreadBanco }

procedure ThreadBanco.ExportarFoto(caminho: String);
begin

     //Verificar se é o caso de se conectar toda hora no FTP para mandar uma IMG
     //conectaFTP(ftpImoveisServidor,ftpImoveisUsuario,ftpImoveisSenha);
     //TelaPrincipal.ObjFTP.ChangeDir(getConf('EXPORTACAO_FOTO'));
     msg := 'Exportando: '+FOTO;
     setmsg();
     Synchronize(setmsg);
     PRINCIPAL.ObjFTP.Put(caminho);

end;

procedure ThreadBanco.setMsg();
Begin
  PRINCIPAL.Caption := msg;
End;

procedure ThreadBanco.Execute;
Var
   I: Integer;
   //Arquivos: TStringList;
   imovelEnviado: TStringList;
   varMySQL, varFirebird, varSQL: TZQuery;
   StringList: TStringList;
   caminho: String;
begin

     FreeOnTerminate := True;
  
  If Thread = 'RELEVANTE' then
  Begin
       TRY
          //INFORMAÇÕES
          msg := 'EXPORTANDO INFORMAÇÕES DOS IMÓVEIS. NÃO FECHE O SISTEMA!';
          Synchronize(setMsg);

          varMySQL := TZQuery.Create(PRINCIPAL);
          varMySQL.Connection := PRINCIPAL.MySQL;
          //Arquivos := TStringList.Create;
          imovelEnviado := TStringList.Create;

          varFirebird := unUtilitario.getSelect('SELECT i.id_imovel from imovel i where i.anunciar = ''SIM'' and '+
          ' i.ativo = ''SIM'' and i.internet = ''SIM'' and i.status <> ''ALUGADO'' and '+
          ' i.status <> ''INDISPONIVEL'' and i.status <> ''SEM STATUS'' and i.status <> ''VENDIDO'' and i.status <> '+
          ' ''CANCELADO'' and i.status <> ''OCUPADO'' and i.status <> ''RESERVADO''');

          if varFirebird.RecordCount = 0 then
          Begin
               PRINCIPAL.setMensagem('NÃO FOI ENCONTRADO NENHUM REGISTRO ALTERADO RECENTEMENTE PARA EXPORTAÇÃO...');
               exit;
          end;

          conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);

          //LIMPA DADOS ANTIGOS
          varMySQL.SQL.Add('delete from imovel where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel '+descobreIDSelect(varFirebird, 'ID_IMOVEL'));
          varMySQL.ExecSQL;
          varMySQL.SQL.Clear;
          
          varMySQL.SQL.Add('delete from fotos where id_empresa = '+getConf('EMPRESA_CODIGO')+' and cod_imovel '+descobreIDSelect(varFirebird, 'ID_IMOVEL'));
          varMySQL.ExecSQL;
          varMySQL.SQL.Clear;

          TRY
          varSQL1 := unUtilitario.getSelect('select i.id_imovel, i.nota, 105 as id_usuario, '+getConf('EMPRESA_CODIGO')+' as ID_EMPRESA, i.outros, '+
          ' i.aluguel, i.venda, '+
          'it.nome as TIPO, l.tipo ||'' ''|| l.nome || '' CEP: ''|| l.cep as ENDERECO, i.numero, '+
          'b.nome as BAIRRO, c.nome as CIDADE, u.sigla as ESTADO, i.valor_real, case i.aluguel '+
          'when ''SIM'' then i.valor_aluquel when ''NAO'' then i.valor_venda end as VALOR, i.obs as '+
          'FORMA_PGTO, i.dormitorios, '+
          'CASE when (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 364) is NULL then 0 else (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 364) end as SUITE, '+
          'CASE when (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 259) is NULL then 0 else (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 259) end as BANHEIROS, '+
          'CASE when (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 18)is NULL then 0 else (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 18) end as GARAGEM, 0 as IDADE, '+
          '(select first 1 a.descricao from anuncio a where a.id_imovel = i.id_imovel and a.ativo = ''SIM'' and trim(a.MEIO) = ''INTERNET'' ) as DESCRICAO, i.status as CONDICAO, i.data as DATA, i.chave_quadro as CHAVES, '+
          '''PROP: '' as PROPRIETARIO, ''(00)0000-0000'' AS PROPRIETARIO_TEL, '+
          '''END: '' AS PROPRIETARIO_END, ''DOC: '' AS DOCUMENTOS, cast(i.area_l * i.area_c as numeric(12,2)) as '+
          'AREA_TERRENO, cast(i.area_construida as numeric(12,2)) as AREA_CONSTRUIDA, i.internet as ANUNCIO from '+
          'imovel i LEFT JOIN IMOVEL_TIPO IT ON IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro l on l.id_logradouro = '+
          'i.id_logradouro left join cidade c on c.id_cidade = l.id_cidade left join bairro b on b.id_bairro = l.id_bairro left '+
          'join uf u on u.id_sigla = l.id_sigla WHERE i.id_imovel '+descobreIDSelect(varFirebird, 'ID_IMOVEL'));

          {  BACKUP
          varSQL1 := unUtilitario.getSelect('select i.id_imovel, i.nota, 105 as id_usuario, '+getConf('EMPRESA_CODIGO')+' as ID_EMPRESA,case i.outros '+
          ' when ''SIM'' then ''TEMPORADA'' '+
          ' when ''NAO'' then case i.aluguel when ''SIM'' then ''ALUGUEL'' when ''NAO'' then ''VENDA'' end end as finalidade , '+
          'it.nome as TIPO, l.tipo ||'' ''|| l.nome || '' CEP: ''|| l.cep as ENDERECO, i.numero, '+
          'b.nome as BAIRRO, c.nome as CIDADE, u.sigla as ESTADO, i.valor_real, case i.aluguel '+
          'when ''SIM'' then i.valor_aluquel when ''NAO'' then i.valor_venda end as VALOR, i.obs as '+
          'FORMA_PGTO, i.dormitorios, '+
          'CASE when (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 364) is NULL then 0 else (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 364) end as SUITE, '+
          'CASE when (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 259) is NULL then 0 else (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 259) end as BANHEIROS, '+
          'CASE when (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 18)is NULL then 0 else (select first 1 ica.quantidade from imovel_caracteristica ica '+
          'where ica.id_imovel = i.id_imovel and ica.id_caracteristica = 18) end as GARAGEM, 0 as IDADE, '+
          '(select first 1 a.descricao from anuncio a where a.id_imovel = i.id_imovel and a.ativo = ''SIM'' and trim(a.MEIO) = ''INTERNET'' ) as DESCRICAO, i.status as CONDICAO, i.data as DATA, i.chave_quadro as CHAVES, '+
          '''PROP: '' as PROPRIETARIO, ''(00)0000-0000'' AS PROPRIETARIO_TEL, '+
          '''END: '' AS PROPRIETARIO_END, ''DOC: '' AS DOCUMENTOS, cast(i.area_l * i.area_c as numeric(12,2)) as '+
          'AREA_TERRENO, cast(i.area_construida as numeric(12,2)) as AREA_CONSTRUIDA, i.internet as ANUNCIO from '+
          'imovel i LEFT JOIN IMOVEL_TIPO IT ON IT.id_imovel_tipo = I.id_imovel_tipo left join logradouro l on l.id_logradouro = '+
          'i.id_logradouro left join cidade c on c.id_cidade = l.id_cidade left join bairro b on b.id_bairro = l.id_bairro left '+
          'join uf u on u.id_sigla = l.id_sigla WHERE i.id_imovel '+descobreIDSelect(varFirebird, 'ID_IMOVEL'));
          }

          EXCEPT
                on e: Exception do
                     unUtilitario.setMensagem('ERRO AO SELECIONAR REGISTROS!'+#13+e.Message, 'erro');
          END;

          TRY
              while NOT varSQL1.Eof Do
              Begin
                   varMySQL.SQL.Clear;

                   if varSQL1.FieldByName('outros').AsString = 'SIM' then
                   Begin
                      msg := 'INSERT INTO imovel (COD_IMOVEL, ID_USUARIO, ID_EMPRESA, FINALIDADE, TIPO, ENDERECO, NUMERO,'+' BAIRRO, CIDADE, ESTADO, VALOR_REAL, VALOR, FORMA_PGTO, DORMITORIOS, SUITE, BANHEIROS, GARAGEM, IDADE, DESCRICAO, CONDICAO, CHAVES, PROPRIETARIO, PROPRIETARIO_TEL, PROPRIETARIO_END, DOCUMENTOS, AREA_TERRENO, AREA_CONSTRUIDA, ANUNCIO) '+
                      ' VALUES ('+formataString('ID_IMOVEL')+', 105, '+getConf('EMPRESA_CODIGO')+', ''TEMPORADA'', '''+formataString('TIPO')+''', '''+formataString('ENDERECO')+''', '+formataString('NUMERO')+', '''+formataString('BAIRRO')+''', '''+formataString('CIDADE')+''', '''+formataString('ESTADO')+''', '+formataDinheiroSQL(formataString('VALOR_REAL'))+', '+formataDinheiroSQL(formataString('VALOR'))+', '''+
                      formataString('FORMA_PGTO')+''', '+formataString('DORMITORIOS')+', '+formataString('SUITE')+', '+formataString('BANHEIROS')+', '+formataString('GARAGEM')+', '+formataString('IDADE')+', '''+formataString('DESCRICAO')+''', '''+formataString('CONDICAO')+''', ''Na imobiliaria'', '''+formataString('PROPRIETARIO')+''', '''+formataString('PROPRIETARIO_TEL')+''', '''+formataString('PROPRIETARIO_END')+''', '''+contaNota(formataString('NOTA'))+''', '+formataDinheiroSQL(formataString('AREA_TERRENO'))+', '+formataDinheiroSQL(formataString('AREA_CONSTRUIDA'))+', '''+formataString('ANUNCIO')+''')';
                      varMySQL.SQL.Add(msg);

                      varMySQL.ExecSQL;
                   end;

                   varMySQL.SQL.Clear;

                   if varSQL1.FieldByName('aluguel').AsString = 'SIM' then
                   Begin
                      msg := 'INSERT INTO imovel (COD_IMOVEL, ID_USUARIO, ID_EMPRESA, FINALIDADE, TIPO, ENDERECO, NUMERO,'+' BAIRRO, CIDADE, ESTADO, VALOR_REAL, VALOR, FORMA_PGTO, DORMITORIOS, SUITE, BANHEIROS, GARAGEM, IDADE, DESCRICAO, CONDICAO, CHAVES, PROPRIETARIO, PROPRIETARIO_TEL, PROPRIETARIO_END, DOCUMENTOS, AREA_TERRENO, AREA_CONSTRUIDA, ANUNCIO) '+
                      ' VALUES ('+formataString('ID_IMOVEL')+', 105, '+getConf('EMPRESA_CODIGO')+', ''ALUGUEL'', '''+formataString('TIPO')+''', '''+formataString('ENDERECO')+''', '+formataString('NUMERO')+', '''+formataString('BAIRRO')+''', '''+formataString('CIDADE')+''', '''+formataString('ESTADO')+''', '+formataDinheiroSQL(formataString('VALOR_REAL'))+', '+formataDinheiroSQL(formataString('VALOR'))+', '''+
                      formataString('FORMA_PGTO')+''', '+formataString('DORMITORIOS')+', '+formataString('SUITE')+', '+formataString('BANHEIROS')+', '+formataString('GARAGEM')+', '+formataString('IDADE')+', '''+formataString('DESCRICAO')+''', '''+formataString('CONDICAO')+''', ''Na imobiliaria'', '''+formataString('PROPRIETARIO')+''', '''+formataString('PROPRIETARIO_TEL')+''', '''+formataString('PROPRIETARIO_END')+''', '''+contaNota(formataString('NOTA'))+''', '+formataDinheiroSQL(formataString('AREA_TERRENO'))+', '+formataDinheiroSQL(formataString('AREA_CONSTRUIDA'))+', '''+formataString('ANUNCIO')+''')';
                      varMySQL.SQL.Add(msg);

                      varMySQL.ExecSQL;
                   end;

                   varMySQL.SQL.Clear;

                   if varSQL1.FieldByName('venda').AsString = 'SIM' then
                   Begin
                      msg := 'INSERT INTO imovel (COD_IMOVEL, ID_USUARIO, ID_EMPRESA, FINALIDADE, TIPO, ENDERECO, NUMERO,'+' BAIRRO, CIDADE, ESTADO, VALOR_REAL, VALOR, FORMA_PGTO, DORMITORIOS, SUITE, BANHEIROS, GARAGEM, IDADE, DESCRICAO, CONDICAO, CHAVES, PROPRIETARIO, PROPRIETARIO_TEL, PROPRIETARIO_END, DOCUMENTOS, AREA_TERRENO, AREA_CONSTRUIDA, ANUNCIO) '+
                      ' VALUES ('+formataString('ID_IMOVEL')+', 105, '+getConf('EMPRESA_CODIGO')+', ''VENDA'', '''+formataString('TIPO')+''', '''+formataString('ENDERECO')+''', '+formataString('NUMERO')+', '''+formataString('BAIRRO')+''', '''+formataString('CIDADE')+''', '''+formataString('ESTADO')+''', '+formataDinheiroSQL(formataString('VALOR_REAL'))+', '+formataDinheiroSQL(formataString('VALOR'))+', '''+
                      formataString('FORMA_PGTO')+''', '+formataString('DORMITORIOS')+', '+formataString('SUITE')+', '+formataString('BANHEIROS')+', '+formataString('GARAGEM')+', '+formataString('IDADE')+', '''+formataString('DESCRICAO')+''', '''+formataString('CONDICAO')+''', ''Na imobiliaria'', '''+formataString('PROPRIETARIO')+''', '''+formataString('PROPRIETARIO_TEL')+''', '''+formataString('PROPRIETARIO_END')+''', '''+contaNota(formataString('NOTA'))+''', '+formataDinheiroSQL(formataString('AREA_TERRENO'))+', '+formataDinheiroSQL(formataString('AREA_CONSTRUIDA'))+', '''+formataString('ANUNCIO')+''')';
                      varMySQL.SQL.Add(msg);

                      varMySQL.ExecSQL;
                   end;
                   imovelEnviado.Add(formataString('ID_IMOVEL'));

                   varSQL1.Next;
                   msg := 'EXPORTANDO INFORMAÇÕES DOS IMÓVEIS. NÃO FECHE O SISTEMA!';
                   Synchronize(setMsg);
              End;
          EXCEPT
                on e: Exception do
                     unUtilitario.setMensagem('ERRO AO ENVIAR DADOS PARA INTERNET!'+#13+e.Message+#13+msg, 'erro');
          END;


          //IMAGENS
          msg := 'EXPORTANDO FOTOS!';
          Synchronize(setMsg);
          alinhaImagens();
   
          conectaFTP(ftpImoveisServidor,ftpImoveisUsuario,ftpImoveisSenha);
          caminho := StringReplace(StringReplace(StringReplace(LowerCase(getConf('EMPRESA_HOMEPAGE')), 'http://', '', [rfReplaceAll,rfIgnoreCase]), 'www.', '', [rfReplaceAll,rfIgnoreCase]), 'https://', '', [rfReplaceAll,rfIgnoreCase]);
          caminho := ftpImoveisCaminhoImagem + caminho + '/fotos_imoveis';

          StringList := TStringList.Create;
          PRINCIPAL.ObjFTP.List(StringList, caminho, True);

          if StringList.Count = 0 then
             PRINCIPAL.ObjFTP.MakeDir(caminho);

          PRINCIPAL.ObjFTP.ChangeDir(caminho);

          if FileExists('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\IMG\DIVERSO\LOGOPADRAO.BMP') then
             PRINCIPAL.ObjFTP.Put('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\IMG\DIVERSO\LOGOPADRAO.BMP');

          IF PRINCIPAL.ObjFTP.Connected Then
          begin
               msg := 'EXPORTANDO FOTOS! FAVOR NÃO FECHAR O SISTEMA, ESSE PROCESSO DEMORA ALGUNS MINUTOS.';
               Synchronize(setMsg);

               for i := 0 to imovelEnviado.Count - 1 do
               begin
                    varFirebird.Close;
                    //varFirebird := unUtilitario.getSelect('select foto1, foto2, foto3 from imovel_caracteristica where id_imovel = '+imovelEnviado[i]);
                    varFirebird := unUtilitario.getSelect('select case when foto1 containing ''%'' OR foto1 containing ''$'' then ''X_Foto.jpg'' else foto1 end as foto1, case when foto2 containing ''%'' OR foto2 containing ''$'' then ''X_Foto.jpg'' else foto2 '+'end as foto2, case when foto3 containing ''%'' OR foto3 containing ''$'' then ''X_Foto.jpg'' else foto3 end as foto3 from imovel_caracteristica where id_imovel = '+imovelEnviado[i]);

                    while not varFirebird.Eof do
                    Begin

                         if varFirebird.FieldByName('FOTO1').AsString <> 'X_Foto.jpg' then
                            enviaFoto(StrToInt(imovelEnviado[i]), varFirebird.FieldByName('FOTO1').AsString);

                         if varFirebird.FieldByName('FOTO2').AsString <> 'X_Foto.jpg' then
                            enviaFoto(StrToInt(imovelEnviado[i]), varFirebird.FieldByName('FOTO2').AsString);

                         if varFirebird.FieldByName('FOTO3').AsString <> 'X_Foto.jpg' then
                            enviaFoto(StrToInt(imovelEnviado[i]), varFirebird.FieldByName('FOTO3').AsString);

                         varFirebird.Next;
                    end;

                    varFirebird.Close;
                    varFirebird := unUtilitario.getSQL('update imovel set anunciar = ''NAO'' where id_imovel = '+imovelEnviado[i]);
                    varFirebird.ExecSQL;
                    setLogSQL('SQL UPDATE', 'SQL', 'RASTREAMENTO DE COMANDOS', varFirebird.SQL.Text);

               end;
          end
          else
          begin
               unUtilitario.setMensagem('O SISTEMA NÃO PODE SE CONECTAR AO FTP NESTE MOMENTO (LIMITE DE CONEXÃO POR CLIENTE), TENTE NOVAMENTE MAIS TARDE.','erro');
               Synchronize(setMsg);
               espera(10,'Liberando conexão com o FTP...');
          end;

       FINALLY
          FreeAndNil(varSQL);

          PRINCIPAL.ObjFTP.Disconnect;
          PRINCIPAL.MySQL.Connected := False;
          
          if varSQL1 <> nil Then
          Begin
               varSQL1.Active := False;
               FreeAndNil(varSQL1);
          End;

          if varMySQL <> nil Then
          begin
               varMySQL.Active := False;
               FreeAndNil(varMySQL);
          end;

          if varFirebird <> nil Then
          begin
               varFirebird.Active := False;
               FreeAndNil(varFirebird);
          end;

          PRINCIPAL.ExportarWeb.Enabled := True;

          msg := 'PROCESSO DE EXPORTAÇÃO CONCLUÍDO! PRÓXIMA EXPORTAÇÃO ÀS '+TimeToStr(time() + StrToTime('00:30:00'))+'.  Favor não fechar o sistema do servidor.';
          Synchronize(setMsg);
          PRINCIPAL.imgFerramentas.Visible := True;

          Terminate;
       END;
  end;//FIM EXPORTA RELEVANTE



  If (Thread = 'TWITTER') AND
     (Length(Trim(getConf('EMPRESA_TWITTER'))) > 0) AND
     (Length(msg) > 0)
  Then
  Begin
       msg := StringReplace(msg, '#', 'HASH', [rfReplaceAll,rfIgnoreCase]);
       msg := trim(msg);

     try                    
        try
           StringList := TStringList.Create;
           msg := RemoveAcentos(StringReplace('http://celuladigital.com.br/sistemas/twitter/api/api.php?cliente='+getConf('EMPRESA_TWITTER')+'&msg='+msg, ' ','%20',[rfReplaceAll]));
           PRINCIPAL.objHTTP.Post(msg,StringList);
        except
           on E: exception do
              setMensagem('Erro : ' + e.Message, 'erro');
        end;
     finally
            FreeAndNil(StringList);
    end;

  end;//FIM EXPORTA TWITTER


end;

procedure ThreadBanco.enviaFoto(id_imovel: integer; foto: String);
Var varMySQL: TZQuery;
    diretorio, caminho: String;
Begin
     msg := 'ENVIANDO FOTO '+foto+' À INTERNET... FAVOR NÃO FECHAR O SISTEMA!';
     Synchronize(setMsg);
     diretorio := 'C:\IMG';

     if NOT PRINCIPAL.ObjFTP.Connected then
     Begin
          PRINCIPAL.ObjFTP.Disconnect;
          conectaFTP(ftpImoveisServidor,ftpImoveisUsuario,ftpImoveisSenha);
          caminho := StringReplace(StringReplace(StringReplace(LowerCase(getConf('EMPRESA_HOMEPAGE')), 'http://', '', [rfReplaceAll,rfIgnoreCase]), 'www.', '', [rfReplaceAll,rfIgnoreCase]), 'https://', '', [rfReplaceAll,rfIgnoreCase]);
          caminho := ftpImoveisCaminhoImagem + caminho + '/fotos_imoveis';
          PRINCIPAL.ObjFTP.ChangeDir(caminho);
     end;

     PRINCIPAL.ObjFTP.ExternalIP := '';

     if NOT DirectoryExists(diretorio) Then
        ForceDirectories(diretorio);

     //Mudar o tamanho para não demorar muito e ocupar espaço no servidor
     ResizeImage('\\'+getUser('SERVIDOR')+'\IMOBILIARIA\IMG\IMOVEL\'+UpperCase(foto), 600, diretorio+'\', UpperCase(foto));
     PRINCIPAL.ObjFTP.Put(diretorio+'\'+UpperCase(foto));

     if FileExists(diretorio+'\'+UpperCase(foto)) then
        DeleteFile(pchar(diretorio+'\'+UpperCase(foto)));

     Try
         TRY
            conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);
            varMySQL := TZQuery.Create(PRINCIPAL);
            varMySQL.Connection := PRINCIPAL.MySQL;
            varMySQL.SQL.Add('INSERT INTO fotos (ID_IMOVEL,COD_IMOVEL,ID_EMPRESA,FOTO,FACHADA) VALUES ((select ID_IMOVEL from imovel where imovel.COD_IMOVEL = '+IntToStr(id_imovel)+' and imovel.ID_EMPRESA = '+getConf('EMPRESA_CODIGO')+') , '+IntToStr(id_imovel)+', '+getConf('EMPRESA_CODIGO')+', '''+foto+''', 1)');
            varMySQL.ExecSQL;
         except
               espera(5,'Aguardando conexão do banco remoto...');
               conectaMySQL(mysqlImoveisBanco, mysqlImoveisServidor, mysqlImoveisUsuario, mysqlImoveisSenha);
               varMySQL.SQL.Clear;
               varMySQL.SQL.Add('INSERT INTO fotos (ID_IMOVEL,COD_IMOVEL,ID_EMPRESA,FOTO,FACHADA) VALUES ((select ID_IMOVEL from imovel where imovel.COD_IMOVEL = '+IntToStr(id_imovel)+' and imovel.ID_EMPRESA = '+getConf('EMPRESA_CODIGO')+') , '+IntToStr(id_imovel)+', '+getConf('EMPRESA_CODIGO')+', '''+foto+''', 1)');
               varMySQL.ExecSQL;
         end;
     except
           msg := 'ERRO AO EXPORTAR A FOTO '+foto+'... TENTANDO NOVAMENTE!';
           Synchronize(setMsg);
     end;

     if varMySQL <> nil then
        FreeAndNil(varMySQL);
End;

function ThreadBanco.contaNota(nota: string): String;
var i, total: integer;
Begin

try
     if Length(trim(nota)) <= 0 then
        nota := '0';

     total := Round(StrToInt(nota)/2);

     result := '';
     for I := 1 to total do
         result := result+'#'; //Para contar quantos caracteres tem e ordenar
EXCEPT
      on e: Exception do
         result := '#';
      end;
end;


function ThreadBanco.formataString(coluna: String): String;
var t: String;
Begin
     t := StringReplace(varSQL1.FieldByName(coluna).AsString, '''', '',[rfReplaceAll, rfIgnoreCase]);
     t := StringReplace(t, '\', '',[rfReplaceAll, rfIgnoreCase]);
     t := StringReplace(t, '²', '2',[rfReplaceAll, rfIgnoreCase]);
     t := StringReplace(t, '-', '',[rfReplaceAll, rfIgnoreCase]);
     t := StringReplace(t, '"', '',[rfReplaceAll, rfIgnoreCase]);
     result := t;
End;

end.
