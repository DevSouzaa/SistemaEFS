unit NFe.Compra;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeCompra = class
  private
    FIDNFe: Integer;
    FXNemp: string;
    FXPED: string;
    FXCont: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property XNemp: string read FXNemp write FXNemp;
    property XPED: string read FXPED write FXPED;
    property XCont: string read FXCont write FXCont;
  end;

implementation

end.

