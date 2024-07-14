unit NFCe.InfAdic;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCeInfAdic = class
  private
    FinfCpl: string;
    FinfAdFisco: string;
    FobsCont_xCampo: string;
    FobsCont_xTexto: string;
    FobsFisco_xCampo: string;
    FobsFisco_xTexto: string;
  public
    property infCpl: string read FinfCpl write FinfCpl;
    property infAdFisco: string read FinfAdFisco write FinfAdFisco;
    property obsCont_xCampo: string read FobsCont_xCampo write FobsCont_xCampo;
    property obsCont_xTexto: string read FobsCont_xTexto write FobsCont_xTexto;
    property obsFisco_xCampo: string read FobsFisco_xCampo write FobsFisco_xCampo;
    property obsFisco_xTexto: string read FobsFisco_xTexto write FobsFisco_xTexto;
  end;

implementation

end.

