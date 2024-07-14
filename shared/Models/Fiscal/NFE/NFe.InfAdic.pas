unit NFe.InfAdic;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeInfAdic = class
  private
    FIDNFe: Integer;
    FInfCpl: string;
    FInfAdFisco: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property InfCpl: string read FInfCpl write FInfCpl;
    property InfAdFisco: string read FInfAdFisco write FInfAdFisco;
  end;

implementation

end.

