unit NFCe.Retorno;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCeRetorno = class
  private
    FtpAmb: string;
    FverAplic: string;
    FchNFe: string;
    FdhRecbto: TDateTime;
    FnProt: string;
    FdigVal: string;
    FcStat: Integer;
    FxMotivo: string;
  public
    property tpAmb: string read FtpAmb write FtpAmb;
    property verAplic: string read FverAplic write FverAplic;
    property chNFe: string read FchNFe write FchNFe;
    property dhRecbto: TDateTime read FdhRecbto write FdhRecbto;
    property nProt: string read FnProt write FnProt;
    property digVal: string read FdigVal write FdigVal;
    property cStat: Integer read FcStat write FcStat;
    property xMotivo: string read FxMotivo write FxMotivo;
  end;

implementation

end.

