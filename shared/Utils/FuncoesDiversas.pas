unit FuncoesDiversas;

interface

uses
  JvBaseEdits,
  JvDBControls,
  JvEdit,
  JvExMask,
  JvToolEdit,

  System.Classes,
  System.MaskUtils,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.StdCtrls,

  vcl.Mask;

type
    TFormato = (Valor);

  function SomenteNumero(AStr: string): string;
  function FormataValor(Astr: string): string;
  function FormataValor2(Astr: string): Double;
  function calculaTroco(conta, pago: real): String;
  function ConvertValor(vl: string): double;
  function DescontoPercentual (AValorPrincipal, ATaxa : Double) : Double;
  function AcrescimoPercentual (ATaxa : Double ; ADiasAtraso : Integer = 0 ; AValorPrincipal : Double = 0 ) : Double;
  function Extenso(Valor : Extended; Moeda: Boolean; Tipo : Integer = 0): String;

  procedure Formatar(AObj: TObject; AFormato: TFormato; AExtra: string = '');
  procedure ResetFormat(AObj: TObject);
  function  ValidaCampos(AForm: TForm): boolean;
  function FormataValorEdit(AValue: TObject; AValue2: TObject = nil ;  AtribuirValor : Boolean = false): Currency; Overload;
  function FormataValorEdit(out aTroco : string; AValue: TObject; AValue2: TObject = nil ): Currency; Overload;

  function GerarCodigoBarras(ACodigoProduto, ACor, ATamanho: Integer): string;
  function CalcularDigitoVerificadorGTIN13(ACodigo: string): Integer;

  var
    _ID_ULTIMO_CLIENTE_CADASTRADO: INTEGER;

implementation

uses UMenssagem;

function ConvertValor(vl: string): double;
begin
  vl := StringReplace(vl, ',', '', [rfReplaceAll]);
  vl := StringReplace(vl, '.', '', [rfReplaceAll]);
  vl := StringReplace(vl, 'R$', '', [rfReplaceAll]);

   // Remover separadores de milhar
  vl := StringReplace(vl, '.', '', [rfReplaceAll]);

  // Substituir vírgula por ponto para converter a string para o formato esperado pelo StrToFloat
  vl := StringReplace(vl, ',', '.', [rfReplaceAll]);

  try
     Result := StrToFloat(vl) / 100;
  except
    Result := 0;
  end;
end;

function FormataValorEdit(AValue: TObject; AValue2: TObject = nil ;  AtribuirValor : Boolean = false): Currency;
var
  Edit: TEdit absolute AValue;
  Edit2: TEdit absolute AValue2;
  Edit3: TJvDBCalcEdit absolute AValue2;
  Edit4: TJvEdit absolute AValue2;
  Edit5: TDBEdit absolute AValue2;
begin
  Result := 0;

  if (AValue is TEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    if AtribuirValor then
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue2 is TEdit) and (Edit2.Text <> '') then
  begin
    Edit2.Text := StringReplace(Edit2.Text, 'R$', '', [rfReplaceAll]);
    Edit2.Text := StringReplace(Edit2.Text, ' ', '', [rfReplaceAll]);
    Edit2.Text := StringReplace(Edit2.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit2.Text);
    if AtribuirValor then
    Edit2.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue is TJvDBCalcEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);

    if AtribuirValor then
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue is TJvEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue is TDBEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;
end;

function FormataValorEdit(out aTroco : string; AValue: TObject; AValue2: TObject = nil ): Currency;
var
  Edit: TEdit absolute AValue;
  Edit2: TEdit absolute AValue2;
  Edit3: TJvDBCalcEdit absolute AValue2;
  Edit4: TJvEdit absolute AValue2;
  Edit5: TDBEdit absolute AValue2;
  Troco_, Troco1_ : Double;
begin
  Result := 0;

  if (AValue is TEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    Troco_ := Result;
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue2 is TEdit) or (AValue2 is TDBEdit) and (Edit2.Text <> '') then
  begin
    Edit2.Text := StringReplace(Edit2.Text, 'R$', '', [rfReplaceAll]);
    Edit2.Text := StringReplace(Edit2.Text, ' ', '', [rfReplaceAll]);
    Edit2.Text := StringReplace(Edit2.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit2.Text);
    Troco1_ := Result;
    Edit2.Text := FormatCurr('#,##0.00', Result);
  end;

  if (Edit.Text <> '') and (Edit.Text <> '') then
  begin
    aTroco := FormatCurr('#,##0.00', (Troco_ - Troco1_));
  end;

  if (AValue is TJvDBCalcEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue is TJvEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;

  if (AValue is TDBEdit) and (Edit.Text <> '') then
  begin
    Edit.Text := StringReplace(Edit.Text, 'R$', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, ' ', '', [rfReplaceAll]);
    Edit.Text := StringReplace(Edit.Text, '.', '', [rfReplaceAll]);
    Result := strtoFloat(Edit.Text);
    Edit.Text := FormatCurr('#,##0.00', Result);
  end;
end;

function FormataValor2(Astr: string): Double;
begin
  if Astr = '' then
    Astr := '0';

  // Remove 'R$', pontos (.) e mantém as vírgulas
  Astr := Astr.Replace('R$', '').Replace('.', '');

  try
    // Converte a string para Double e formata conforme o padrão brasileiro
    Result := StrToFloat(Astr);
  except
    // Em caso de erro na conversão, retorna '0,00'
    Result := 0;
  end;
end;

function calculaTroco(conta, pago: real): String;
const      nota: array[1..7] of integer = (100, 50, 20, 10, 5, 2, 1);
       centavos: array[1..5] of integer = (50, 25, 10, 5, 1);
var      troco: real;
    i, vlr, ct: integer;
             s: string;
begin
  if (pago < conta)
     then calculaTroco := 'Pagamento insuficiente, faltam R$ ' +
            FloatToStr(conta - pago)
  else begin
         troco := pago - conta;
         s := 'Troco = R$ ' + FloatToStr(troco);
         s := s + #13#10 + #13#10;
// definindo as notas do troco (parte inteira)
         vlr := trunc(troco);
         i := 1;
         while (vlr <> 0) do
         begin
           ct := vlr div nota[i]; // calculando a qtde de notas
           if (ct <> 0)
              then begin
                     s := s + IntToStr(ct) +
                       ' nota(s) de R$ ' + IntToStr(nota[i]) + #13#10;
                     vlr := vlr mod nota[i]; // sobra
                   end;
           i := i + 1; // próxima nota
         end;

         s := s + #13#10;
// definindo as moedas do troco (parte fracionária)
         vlr := round(frac(troco) * 100);
         i := 1;
         while (vlr <> 0) do
         begin
           ct := vlr div centavos[i]; // calculando a qtde de moedas
           if (ct <> 0)
              then begin
                     s := s + IntToStr(ct) + ' moeda(s) de ' +
                       IntToStr(centavos[i]) + ' centavo(s)' + #13#10;
                     vlr := vlr mod centavos[i]; // sobra
                   end;
           i := i + 1; // próxima moeda
         end;

         calculaTroco := s;
       end;
end;

function SomenteNumero(AStr: string): string;
var
  Lx : integer;
begin
  Result := '';
  for Lx := 0 to Length(AStr) - 1 do
    if (AStr.Chars[Lx] In ['0'..'9']) then
      Result := Result + AStr.Chars[Lx];
end;

function FormataValor(Astr: string): string;
begin

  if Astr = '' then
    Astr := '0';

  try
    Result := FormatFloat('#,##0.00', strtofloat(Astr) / 100);
  except
    Result := FormatFloat('#,##0.00', 0);
  end;
end;

procedure ResetFormat(AObj: TObject);
begin
  if AObj is TDBEdit then
    TDBEdit(AObj).Text := SomenteNumero(TDBEdit(AObj).Text)
  else if AObj is TLabel then
    TLabel(AObj).Caption := SomenteNumero(TLabel(AObj).Caption);
end;

procedure Formatar(AObj: TObject; AFormato: TFormato; AExtra : string = '');
var
  Ltexto: string;
begin
  if AFormato = Valor then
    Ltexto := FormataValor(SomenteNumero(Ltexto))
end;

function ValidaCampos(AForm: TForm): boolean;
begin
//  for var i := 0 to Aform.ComponentCount - 1 do
//  begin
//    if Aform.Components[i] is TEdit then
//    begin
//      if ((AForm.Components[i] as TEdit).Hint <> '') and ((AForm.Components[i] as TEdit).Text = '') then
//      begin
//        TViewMensagens.Mensagem('Campo obrigário ' + (Aform.Components[i] as TEdit).Hint, 'Aviso', 'E', [mbOk]);
//        result := false;
//        if (AForm.Components[i] as TEdit).Enabled = true then
//          (AForm.Components[i] as TEdit).SetFocus;
//        exit;
//      end
//      else
//        result := true;
//    end;
//  end;
end;

procedure OnClickJvDBControls(Sender: TObject);
begin
  if (Sender is TJvDBCalcEdit) then
  begin
    (Sender as TJvDBCalcEdit).DataSource.DataSet.Edit;
    (Sender as TJvDBCalcEdit).SelectAll;
  end;
end;

function DescontoPercentual (AValorPrincipal, ATaxa : Double) : Double;
begin
   Result := (AValorPrincipal * (1 - ATaxa / 100));
end;

function AcrescimoPercentual (ATaxa : Double ; ADiasAtraso : Integer = 0 ; AValorPrincipal : Double = 0 ) : Double;
begin
   if (ADiasAtraso <> 0) and (AValorPrincipal = 0) then
     Result :=  ((ATaxa / 100) * ADiasAtraso) // devolve a tava acumulada pelo número de dias em atraso.
   else
   if (ADiasAtraso <> 0) and (AValorPrincipal <> 0) then
     Result :=  (AValorPrincipal * (ATaxa / 100) * ADiasAtraso) // devolve a o valor já acumulada a taxa pelo número de dias em atraso.
   else
     Result := (AValorPrincipal * (1 + ATaxa / 100));
end;

function GerarCodigoBarras(ACodigoProduto, ACor, ATamanho: Integer): string;
var
  LPrefixo, ACodigoStr, ACorStr, ATamanhoStr, ACodigoParcial: string;
  ADigitoVerificador: Integer;
begin
  // Prefixo é 2
  LPrefixo := '2';

  // Código do produto deve ter 5 dígitos
  ACodigoStr := Format('%.5d', [ACodigoProduto]);

  // Cor deve ter 3 dígitos
  ACorStr := Format('%.3d', [ACor]);

  // Tamanho deve ter 3 dígitos
  ATamanhoStr := Format('%.3d', [ATamanho]);

  // Montar código parcial (até o 12º dígito)
  ACodigoParcial := LPrefixo + ACodigoStr + ACorStr + ATamanhoStr;

  // Calcular o dígito verificador GTIN-13
  ADigitoVerificador := CalcularDigitoVerificadorGTIN13(ACodigoParcial);

  // Montar o código de barras completo
  Result := ACodigoParcial + IntToStr(ADigitoVerificador);
end;

function CalcularDigitoVerificadorGTIN13(ACodigo: string): Integer;
var
  LSoma, LDigito: Integer;
begin
  LSoma := 0;
  for var i := 1 to Length(ACodigo) do
  begin
    LDigito := StrToInt(ACodigo[i]);
    if (i mod 2) = 0 then
      LSoma := LSoma + LDigito * 3
    else
      LSoma := LSoma + LDigito;
  end;
  LSoma := 10 - (LSoma mod 10);
  if LSoma = 10 then
    LSoma := 0;
  Result := LSoma;
end;

// Copiado da internete
function Extenso(Valor : Extended; Moeda: Boolean; Tipo : Integer = 0): String;
var
  Centavos, Centena, Milhar, Milhao, Bilhao, Texto : string;
const
//   Exemplo de Uso
//  procedure TForm1.Button1Click(Sender: TObject);
//  begin
//    // Número por extenso
//    ShowMessage(Extenso(1456.36, False));
//
//    // Número por extenso em reais
//    ShowMessage(Extenso(2755.12, True));
//
//    // Número por extenso com final em dólares
//    ShowMessage(Extenso(5369.83, True, 2));
//  end;


  Unidades: array [1..9] of string = ('um', 'dois', 'três','quatro','cinco',
  'seis', 'sete', 'oito','nove');
  Dez     : array [1..9] of string = ('onze', 'doze', 'treze', 'quatorze',
  'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  Dezenas : array [1..9] of string = ('dez', 'vinte', 'trinta',
  'quarenta', 'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array [1..9] of string = ('cento', 'duzentos', 'trezentos',
  'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
  'novecentos');
  function ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso:String): String;
  begin
    if Expressao then
      Result := CasoVerdadeiro
    else
      Result :=CasoFalso;
  end;
  function MiniExtenso( Valor: ShortString ): string;
  var
    Unidade, Dezena, Centena: String;
  begin
    if (Valor[2] = '1') and (Valor[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(Valor[3])];
      Dezena := '';
    end
    else
    begin
     if Valor[2] <> '0' then
       Dezena := Dezenas[StrToInt(Valor[2])];
     if Valor[3] <> '0' then
       unidade := Unidades[StrToInt(Valor[3])];
    end;
    if (Valor[1] = '1') and (Unidade = '') and (Dezena = '') then
      centena := 'cem'
    else
      if Valor[1] <> '0' then
        Centena := Centenas[StrToInt(Valor[1])]
      else
        Centena := '';

    Result := Centena + ifs( (Centena <> '') and ((Dezena <> '') or
    (Unidade <> '')),' e ', '') + Dezena + ifs( (Dezena <> '') and
    (Unidade <> ''), ' e ','') + Unidade;
  end;
begin
  if Valor = 0 then
  begin
    if Moeda then
      Result := ''
    else
      Result := 'zero';

    Exit;
  end;

  Texto := FormatFloat( '000000000000.00', Valor );
  Centavos := MiniExtenso( '0' + Copy( Texto, 14, 2 ) );
  Centena  := MiniExtenso( Copy( Texto, 10, 3 ) );
  Milhar   := MiniExtenso( Copy( Texto,  7, 3 ) );

  if Milhar <> '' then
    Milhar := Milhar + ' mil';

  Milhao   := MiniExtenso( Copy( Texto,  4, 3 ) );

  if Milhao <> '' then
  begin
    Milhao := Milhao
    + ifs( Copy( Texto, 4,
    3 ) = '001', ' milhão', ' milhões');
  end;

  Bilhao   := MiniExtenso( Copy( Texto,  1, 3 ) );

  if Bilhao <> '' then
  begin
    Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhão',
    ' bilhões');
  end;

  Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
  Centena <> ''),
  ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
  Milhao + Milhar + Centena ) > 0), ', ', ' e '), '') +
  Milhao + ifs( (Milhao <> '') and (Milhar + Centena <> ''),
  ifs((Pos(' e ', Milhao) > 0) or
  (Pos( ' e ', Milhar + Centena ) > 0 ),', ',    ' e '), '') +
  Milhar + ifs( (Milhar <> '') and
  (Centena <> ''), ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
  Centena;

  if Moeda then
  begin
    if Tipo=0 then
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de reais'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de reais'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao +Milhar + Centena ) > 0), ', ', ' e '), '') + Milhao + ifs(
        (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
        Centena + ifs( Int(Valor) = 1, ' real', ' reais');
      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy(
          Texto, 14, 2 )= '01', ' centavo', ' centavos' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01',
          ' centavo', ' centavos' );
      end;
    end
    else
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de dolares americanos'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de dolares americanos'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao + Milhar + Centena ) > 0),', ', ' e '), '') + Milhao +
        ifs( (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0,', ', ' e '),'') + Centena + ifs(
        Int(Valor) = 1, ' dolar americano', ' dolares americanos');

      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy( Texto, 14, 2 )=
          '01', ' cent', ' cents' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01', ' cent', ' ' +
          'cents' );
      end;
    end;
  end;
end;

end.
