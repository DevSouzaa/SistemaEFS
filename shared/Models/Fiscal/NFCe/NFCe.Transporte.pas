unit NFCe.Transporte;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCeTransporte = class
  private
    FmodFrete: string;
  public
    property modFrete: string read FmodFrete write FmodFrete;
  end;

implementation

end.

