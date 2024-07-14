//Cores do sistema
//
//Da escura a clara
//
//#001a31 (RGB) => $00311a00 (BGR)
//#09243C (RGB) => $003C2409 (BGR)
//#0e2941 (RGB) => $0041290e (BGR)
//#1b3851 (RGB) => $0051381b (BGR)
//#294661 (RGB) => $00614629 (BGR)
//#365571 (RGB) => $00715536 (BGR)
//

unit UFuncoes;

interface
uses

  IdHashMessageDigest,
  UMenssagem,
  Vcl.Graphics,

  System.SysUtils,

  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.StdCtrls;

  const

    CorEscuroMax: TColor = $00311a00;
    CorEscura:    TColor = $003C2409;
    CorEscura2:   TColor = $0041290e;
    CorMedia:     TColor = $0051381b;
    CorClara2:    TColor = $00614629;
    CorClara:     TColor = $00715536;

    VerdeBotao:     TColor = $001FC050;
    VerdeFocoBotao: TColor = $007CF3B5;

    AmareloBotao:     TColor = $002DE3E8;
    AmareloFocoBotao: TColor = clYellow;

Function fnc_CriarMensagem(TituloJanela, TituloMSG, MSG, Icone, Tipo: String): boolean;


implementation

Function fnc_CriarMensagem(TituloJanela, TituloMSG, MSG, Icone, Tipo: String): boolean;
begin
  Result := False;

  ViewMenssagem := TViewMenssagem.Create(nil);
  ViewMenssagem.sTituloJanela := TituloJanela;
  ViewMenssagem.sTituloMsg := TituloMSG;
  ViewMenssagem.sMSG := MSG;
  ViewMenssagem.sCaminhoIcone := Icone;

  ViewMenssagem.sTipo := Tipo;

  ViewMenssagem.ShowModal;
  Result := ViewMenssagem.bRespostaMsg;

end;

end.
