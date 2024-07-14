unit NFe.Totalizadores;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeTotalizadores = class
  private
    FIDNFe: Integer;
    FICMSTot_VBC: Double;
    FICMSTot_VICMS: Double;
    FICMSTot_VBCST: Double;
    FICMSTot_VST: Double;
    FICMSTot_VProd: Double;
    FICMSTot_VFrete: Double;
    FICMSTot_VSeg: Double;
    FICMSTot_VDesc: Double;
    FICMSTot_VII: Double;
    FICMSTot_VIPI: Double;
    FICMSTot_VPIS: Double;
    FICMSTot_VCOFINS: Double;
    FICMSTot_VOutro: Double;
    FICMSTot_VNF: Double;
    FICMSTot_VTotTrib: Double;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property ICMSTot_VBC: Double read FICMSTot_VBC write FICMSTot_VBC;
    property ICMSTot_VICMS: Double read FICMSTot_VICMS write FICMSTot_VICMS;
    property ICMSTot_VBCST: Double read FICMSTot_VBCST write FICMSTot_VBCST;
    property ICMSTot_VST: Double read FICMSTot_VST write FICMSTot_VST;
    property ICMSTot_VProd: Double read FICMSTot_VProd write FICMSTot_VProd;
    property ICMSTot_VFrete: Double read FICMSTot_VFrete write FICMSTot_VFrete;
    property ICMSTot_VSeg: Double read FICMSTot_VSeg write FICMSTot_VSeg;
    property ICMSTot_VDesc: Double read FICMSTot_VDesc write FICMSTot_VDesc;
    property ICMSTot_VII: Double read FICMSTot_VII write FICMSTot_VII;
    property ICMSTot_VIPI: Double read FICMSTot_VIPI write FICMSTot_VIPI;
    property ICMSTot_VPIS: Double read FICMSTot_VPIS write FICMSTot_VPIS;
    property ICMSTot_VCOFINS: Double read FICMSTot_VCOFINS write FICMSTot_VCOFINS;
    property ICMSTot_VOutro: Double read FICMSTot_VOutro write FICMSTot_VOutro;
    property ICMSTot_VNF: Double read FICMSTot_VNF write FICMSTot_VNF;
    property ICMSTot_VTotTrib: Double read FICMSTot_VTotTrib write FICMSTot_VTotTrib;
  end;

implementation

end.

