unit UFuncoes;

interface
uses

  IdHashMessageDigest,
  UMenssagem,

  System.SysUtils,

  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.StdCtrls;


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
