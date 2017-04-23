unit unMsg;

interface

uses Dialogs, SysUtils;

Procedure ERRO(X: integer);
Procedure INFORMA(X: integer);

implementation

uses FrmPrincipal, unUtilitario;

Procedure ERRO(X: integer);
Begin

     Case X of
          1: setMensagem('Entre com um valor.', 'erro');
          2: setMensagem('Entre com um Campo.', 'erro');
          3: setMensagem('Entre com um valor exato.', 'erro');
          4: setMensagem('Dados incompletos.', 'erro');
          5: setMensagem('Op��o de pesquisa n�o encontrada.', 'erro');
          6: setMensagem('Escolha uma op��o para a pesquisa.', 'erro');
          7: setMensagem('Consulta inv�lida.', 'erro');
          8: setMensagem('C�digo n�o encontrado.', 'erro');
          9: setMensagem('Valor inv�lido.', 'erro');
          10: setMensagem('Problemas ao inserir o registro PRINCIPAL!'+#13+'Revise as informa��es do mesmo em busca de erros.'+#13+'Caso continue gerando esta mensagem, use a op��o CANCELAR e tente SALVAR novamente.', 'erro');
          11: setMensagem('Problemas ao Excluir!', 'erro');
          12: setMensagem('Este registro possui depend�ncias!', 'erro');
          13: setMensagem('A tabela n�o est� ativa. Cancele o registro e tente novamente.', 'erro');
          14: setMensagem('Limite num�rio da empresa foi alcan�ado.', 'erro');
          15: setMensagem('Problemas ao realizar pesquisa.', 'erro');
          16: setMensagem('J� existe um arquivo para este registro no servidor e ele ser� sobreposto.', 'erro');
          17: setMensagem('Registro padr�o. N�o pode ser exclu�do.', 'erro');
          18: setMensagem('Esta informa��o j� existe OU falta salvar o formul�rio principal antes de continuar.', 'erro');
          19: PRINCIPAL.setMensagem('Desculpe a demora... Problemas ao encontrar a imagem. Verifique se a imagem existe OU verifique o caminho do servidor.');
          20: setMensagem('O formul�rio para retorno n�o foi encontrado.', 'erro');
          21: setMensagem('Erro ao retornar os dados.', 'erro');
          22: setMensagem('Registro sem imagem.', 'erro');
          23: setMensagem('O sistema identificou um erro.'+#13+'=> Se voc� estava no meio de alguma opera��o, as informa��es nas quais'+#13+'voc� estava trabalhando podem ter sito perdidas.'+#13+#13'=> Criamos um relat�rio de erros que voc� pode nos'+#13+'enviar posteriormente usando a Central de Erros.', 'erro');
          24: setMensagem('Erro ao salvar o registro. Cancele a entrada e tente novamente.', 'erro');
          25: setMensagem('Erro ao salvar o registro de imagem. Cancele a entrada e tente novamente.', 'erro');
     Else
         setMensagem('N�mero do erro n�o catalogado.', 'erro');
     End;
End;

Procedure INFORMA(X: integer);
Begin

     Case X of
          1: PRINCIPAL.setMensagem('O registro foi salvo com sucesso!');
          2: PRINCIPAL.setMensagem('O registro foi exclu�do com sucesso!');
     Else
         setMensagem('N�mero do erro n�o catalogado.', 'erro');
     End;
End;

end.
