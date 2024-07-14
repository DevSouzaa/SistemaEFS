unit NFe.Exporta;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeExporta = class
  private
    FIDNFe: Integer;
    FUFEmbarq: string;
    FXLocEmbarq: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property UFEmbarq: string read FUFEmbarq write FUFEmbarq;
    property XLocEmbarq: string read FXLocEmbarq write FXLocEmbarq;
  end;

implementation

end.

