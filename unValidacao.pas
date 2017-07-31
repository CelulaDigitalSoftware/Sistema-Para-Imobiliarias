unit unValidacao;

interface
function cpf(num: string): boolean;
function cnpj(num: string): boolean;
Function Extenso(Valor: double):string;
function formataCPF(CPF : string): string;
function formataCNPJ(CNPJ : string): string;
function validaCNPJ_CPF(cnpj_cpf: string): Boolean;
function getIndiceReajuste(indice: String): Double;
function StringBetween(const strInteira, strinicio, strfim: String): String;

implementation
uses SysUtils, Dialogs, unUtilitario, FrmPrincipal;

const
Centenas: array[1..9] of string[12]=('CEM','DUZENTOS','TREZENTOS', 'QUATROCENTOS', 'QUINHENTOS','SEISCENTOS','SETECENTOS','OITOCENTOS','NOVECENTOS');
Dezenas : array[2..9] of string[10]=('VINTE','TRINTA','QUARENTA','CINQUENTA', 'SESSENTA','SETENTA','OITENTA','NOVENTA');
Dez : array[0..9] of string[10]=('DEZ','ONZE','DOZE','TREZE','QUATORZE', 'QUINZE','DEZESSEIS','DEZESSETE', 'DEZOITO','DEZENOVE');
Unidades: array[1..9] of string[10]=('UM','DOIS','TRES','QUATRO','CINCO', 'SEIS','SETE','OITO','NOVE'); MoedaSingular = 'REAL';
MoedaPlural = 'REAIS';
CentSingular = 'CENTAVO';
CentPlural = 'CENTAVOS';
Zero = 'ZERO';

function getIndiceReajuste(indice: String): Double;
var
   codigoHTML, HTMLfim, resultado, dataEscrita, dataEscritaFinal: String;
   I,J, tamanhoTotal, tamanhoInicial: Integer;
   data: TDateTime;
   meses: array[1..12] of String;
   mesesFormatado: array[1..3] of String;
   dia, mes, ano: Word;
begin
{
IGP/FGV
IGPM/FGV
INPC/IBGE
IPC/FIPE
IPCA/IBGE
SEM INFORMAÇÃO

IGP-DI (FGV)
IGP-M (FGV)
IPC (FIPE)
INPC (IBGE)
IPCA (IBGE)
ICV (Dieese)
SEM INFORMAÇÃO
}

 result := 0.00;

 meses[1]:= 'Jan';
 meses[2]:= 'Fev';
 meses[3]:= 'Mar';
 meses[4]:= 'Abr';
 meses[5]:= 'Mai';
 meses[6]:= 'Jun';
 meses[7]:= 'Jul';
 meses[8]:= 'Ago';
 meses[9]:= 'Set';
 meses[10]:= 'Out';
 meses[11]:= 'Nov';
 meses[12]:= 'Dez';

 if indice = 'IGP-DI (FGV)' then
    HTMLfim := 'ind=igp'
 else
 if indice = 'IGP-M (FGV)' then
    HTMLfim := 'ind=igpm'
 else
 if indice = 'IPC (FIPE)' then
    HTMLfim := 'ind=ipc_fipe'
 else
 if indice = 'INPC (IBGE)' then
    HTMLfim := 'ind=inpc'
 else
 if indice = 'IPCA (IBGE)' then
    HTMLfim := 'ind=ipca'
 else
 if indice = 'ICV (Dieese)' then
    HTMLfim := 'ind=icv'
 else
 Begin
      result := 0.00;
      exit;
 end;

      codigoHTML := FrmPrincipal.PRINCIPAL.objHTTP.Get('http://www.debit.com.br/aluguel10.php');

      codigoHTML := StringBetween(codigoHTML, indice, HTMLfim);

      tamanhoTotal := Length(codigoHTML);

      data := Date();
      DecodeDate(data,ano,mes,dia);
      dataEscrita := meses[mes]+'/'+ IntToStr(ano);

      {for I := 1 to 3 do
      Begin
           DecodeDate(data,ano,mes,dia);
           dataEscrita := meses[mes]+'/'+ IntToStr(ano);
           mesesFormatado[I] := dataEscrita;
           dataEscritaFinal := dataEscritaFinal + IntToStr(I)+'-'+dataEscrita + #13;
           data := IncMonth(data,-1);
      end;

      I := StrToInt(Trim(InputBox('DATA DO REAJUSTE','Informe o número referente ao mês de reajuste:'+#13+dataEscritaFinal, '1')));
      }
      //tamanhoInicial := Pos(mesesFormatado[I], codigoHTML)+Length(mesesFormatado[I]);
      tamanhoInicial := Pos(dataEscrita, codigoHTML)+Length(dataEscrita);
      for I := tamanhoInicial to tamanhoTotal do
      Begin
           if codigoHTML[I] = 'h' then //ta-rig h t
              for J := I to tamanhoTotal do
                  if codigoHTML[J] <> '<' then
                  Begin
                     resultado := resultado + codigoHTML[J];
                  end
                  else
                  begin                       
                      resultado := StringReplace(resultado,'ht''>','',[rfReplaceAll,rfIgnoreCase]);
                      //resultado := StringReplace(resultado,'%','',[rfReplaceAll,rfIgnoreCase]);
                      result := StrToFloat(resultado);

                      //if result < 0 then
                      //   result := 0.0;
                         
                      exit;
                  end;
      end;
end;

function StringBetween(const strInteira, strinicio, strfim: String): String;
var
   Inicio, Fim : String;
begin
     Inicio := Copy(strInteira, Pos(strinicio, strInteira) + Length(strinicio));
     // Pega o Texto Restante, iniciando ao final da variavel Str1;
     Fim := Copy(Inicio, 0, Pos(strfim,Inicio) - 1);
     // Copia o Texto da posição inicial '0' até o Final, que é determinado pela posição inicial da variavel str2 menos '1' para corrigir;
     Result := Fim;
end;

function cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin

num := StringReplace(StringReplace(num,'.','',[rfReplaceAll]),'-','',[rfReplaceAll]);

n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);

if d1>=10 then d1:=0;
   d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
   d2:=11-(d2 mod 11);

if d2>=10 then d2:=0;
   calculado:=inttostr(d1)+inttostr(d2);
   digitado:=num[10]+num[11];

if calculado=digitado then
  cpf:=true
else
  cpf:=false;
  
end;

function validaCNPJ_CPF(cnpj_cpf: string): Boolean;
Begin
     Result := FALSE;
     if Length(cnpj_cpf) > 15 then
        Result := cnpj(cnpj_cpf)
     else
         if Length(cnpj_cpf) > 4 then
            Result := unValidacao.cpf(cnpj_cpf)
         else
             Result := FALSE;
end;

function formataCPF(CPF : string): string;
begin
Result := Copy(CPF,1,3)+'.'+Copy(CPF,4,3)+'.'+Copy(CPF,7,3)+'-'+Copy(CPF,10,2);
end;

function formataCNPJ(CNPJ : string): string;
begin 
Result := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-' +Copy(cnpj,13,2); 
end;

function cnpj(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin

num := StringReplace(StringReplace(StringReplace(num,'.','',[rfReplaceAll]),'-','',[rfReplaceAll]),'/','',[rfReplaceAll]);

n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
n10:=StrToInt(num[10]);
n11:=StrToInt(num[11]);
n12:=StrToInt(num[12]);
d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
d1:=11-(d1 mod 11);

if d1>=10 then d1:=0;
   d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
   d2:=11-(d2 mod 11);

if d2>=10 then d2:=0;
   calculado:=inttostr(d1)+inttostr(d2);
   digitado:=num[13]+num[14];
   
if calculado=digitado then
  cnpj:=true
  else
  cnpj:=false;
  
end;


Function Ext3(Parte:string):string;
var
Base: string; 
digito: integer; 
begin
     Base:='';
     digito:=StrToInt(Parte[1]);
     if digito=0 then
        Base:=''
     else
         Base:=Centenas[digito];

     if (digito = 1) and (Parte > '100') then
        Base:='CENTO';

     Digito:=StrToInt(Parte[2]);

     if digito = 1 then
     begin
          Digito:=StrToInt(Parte[3]);

          if Base <> '' then
             Base:=Base + ' E ';

          Base:=Base + Dez[Digito];
     end
     else
     begin
          if (Base <> '') and (Digito > 0) then
             Base:=Base+' E ';

          if Digito > 1 then
             Base:=Base + Dezenas[digito];

          Digito:=StrToInt(Parte[3]);

          if Digito > 0 then
          begin
               if Base <> '' then
                  Base:=Base+' E ';

               Base:=Base+Unidades[Digito];
          end;
     end;

     Result:=Base;
end;

Function Extenso;
var
ComoTexto: string; 
Parte: string; 
begin 
      Result:='';
      ComoTexto:=FloatToStrF(Abs(Valor),ffFixed,18,2);

      // Acrescenta zeros a esquerda ate 12 digitos
      while length(ComoTexto) < 15 do
            Insert('0',ComoTexto,1);

      // Retira caracteres a esquerda para o máximo de 12 digitos
      while length(ComoTexto) > 15 do
            delete(ComoTexto,1,1);

      // Calcula os bilhões
      Parte:=Ext3(copy(ComoTexto,1,3));

      if StrToInt(copy(ComoTexto,1,3)) = 1 then
         Parte:=Parte + ' BILHAO'
      else
      if Parte <> '' then
         Parte:=Parte + ' BILHOES';

      Result:=Parte;

      // Calcula os nilhões
      Parte:=Ext3(copy(ComoTexto,4,3));
      if Parte <> '' then
      begin
           if Result <> '' then
              Result:=Result+', ';

           if StrToInt(copy(ComoTexto,4,3)) = 1 then
              Parte:=Parte + ' MILHAO'
           else
               Parte:=Parte + ' MILHOES';

           Result:=Result + Parte;
      end;

      // Calcula os nilhares
      Parte:=Ext3(copy(ComoTexto,7,3));

      if Parte <> '' then
      begin
           if Result <> '' then
              Result:=Result + ', ';

           Parte:=Parte + ' MIL';
           Result:=Result + Parte;
      end;

      // Calcula as unidades
      Parte:=Ext3(copy(ComoTexto,10,3));

      if Parte <> '' then
      begin
           if Result <> '' then
              if Frac(Valor) = 0 then
                 Result:=Result + ' E '
              else
                 Result:=Result + ', ';

          Result:=Result + Parte;
      end;

      // Acrescenta o texto da moeda
      if Int(Valor) = 1 then
         Parte:=' ' + MoedaSingular
      else
          Parte:=' ' + MoedaPlural;

      if copy(ComoTexto,7,6) = '000000' then
         Parte:='DE ' + MoedaPlural;

      Result:=Result + Parte;

      // Se o valor for zero, limpa o resultado
      if int(Valor) = 0 then
         Result:='';

         //Calcula os centavos
         Parte:=Ext3('0'+copy(ComoTexto,14,2));
         if Parte <> '' then
         begin
              if Result <> '' then
                 Result:=Result + ' E ';

              if Parte = Unidades[1] then
                 Parte:=Parte + ' '+CentSingular
              else
                  Parte:=Parte + ' '+CentPlural;

              Result:=Result + Parte;
         end;

         // Se o valor for zero, assume a constante ZERO
         if Valor = 0 then
            Result:=Zero;
end;

end.

