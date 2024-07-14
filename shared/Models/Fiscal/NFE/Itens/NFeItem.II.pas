unit NFeItem.II;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFeItemII = class
  private
    FIDNFeItem: Integer;
    FII_VBC: Double;
    FII_VDESPADU: Double;
    FII_VII: Double;
    FII_VIOF: Double;
  public
    property IDNFeItem: Integer read FIDNFeItem write FIDNFeItem;
    property II_VBC: Double read FII_VBC write FII_VBC;
    property II_VDESPADU: Double read FII_VDESPADU write FII_VDESPADU;
    property II_VII: Double read FII_VII write FII_VII;
    property II_VIOF: Double read FII_VIOF write FII_VIOF;
  end;

implementation

end.

