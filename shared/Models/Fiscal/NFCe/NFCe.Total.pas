unit NFCe.Total;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCeTotal = class
  private
    FICMSTot_vBC: Double;
    FICMSTot_vICMS: Double;
    FICMSTot_vBCST: Double;
    FICMSTot_vST: Double;
    FICMSTot_vProd: Double;
    FICMSTot_vFrete: Double;
    FICMSTot_vSeg: Double;
    FICMSTot_vDesc: Double;
    FICMSTot_vII: Double;
    FICMSTot_vIPI: Double;
    FICMSTot_vPIS: Double;
    FICMSTot_vCOFINS: Double;
    FICMSTot_vOutro: Double;
    FICMSTot_vNF: Double;
    FICMSTot_vFCPUFDest: Double;
    FICMSTot_vICMSUFDest: Double;
    FICMSTot_vICMSUFRemet: Double;
    FISSQNtot_vServ: Double;
    FISSQNtot_vBC: Double;
    FISSQNtot_vISS: Double;
    FISSQNtot_vPIS: Double;
    FISSQNtot_vCOFINS: Double;
    FretTrib_vRetPIS: Double;
    FretTrib_vRetCOFINS: Double;
    FretTrib_vRetCSLL: Double;
    FretTrib_vBCIRRF: Double;
    FretTrib_vIRRF: Double;
    FretTrib_vBCRetPrev: Double;
    FretTrib_vRetPrev: Double;
  public
    property ICMSTot_vBC: Double read FICMSTot_vBC write FICMSTot_vBC;
    property ICMSTot_vICMS: Double read FICMSTot_vICMS write FICMSTot_vICMS;
    property ICMSTot_vBCST: Double read FICMSTot_vBCST write FICMSTot_vBCST;
    property ICMSTot_vST: Double read FICMSTot_vST write FICMSTot_vST;
    property ICMSTot_vProd: Double read FICMSTot_vProd write FICMSTot_vProd;
    property ICMSTot_vFrete: Double read FICMSTot_vFrete write FICMSTot_vFrete;
    property ICMSTot_vSeg: Double read FICMSTot_vSeg write FICMSTot_vSeg;
    property ICMSTot_vDesc: Double read FICMSTot_vDesc write FICMSTot_vDesc;
    property ICMSTot_vII: Double read FICMSTot_vII write FICMSTot_vII;
    property ICMSTot_vIPI: Double read FICMSTot_vIPI write FICMSTot_vIPI;
    property ICMSTot_vPIS: Double read FICMSTot_vPIS write FICMSTot_vPIS;
    property ICMSTot_vCOFINS: Double read FICMSTot_vCOFINS write FICMSTot_vCOFINS;
    property ICMSTot_vOutro: Double read FICMSTot_vOutro write FICMSTot_vOutro;
    property ICMSTot_vNF: Double read FICMSTot_vNF write FICMSTot_vNF;
    property ICMSTot_vFCPUFDest: Double read FICMSTot_vFCPUFDest write FICMSTot_vFCPUFDest;
    property ICMSTot_vICMSUFDest: Double read FICMSTot_vICMSUFDest write FICMSTot_vICMSUFDest;
    property ICMSTot_vICMSUFRemet: Double read FICMSTot_vICMSUFRemet write FICMSTot_vICMSUFRemet;
    property ISSQNtot_vServ: Double read FISSQNtot_vServ write FISSQNtot_vServ;
    property ISSQNtot_vBC: Double read FISSQNtot_vBC write FISSQNtot_vBC;
    property ISSQNtot_vISS: Double read FISSQNtot_vISS write FISSQNtot_vISS;
    property ISSQNtot_vPIS: Double read FISSQNtot_vPIS write FISSQNtot_vPIS;
    property ISSQNtot_vCOFINS: Double read FISSQNtot_vCOFINS write FISSQNtot_vCOFINS;
    property retTrib_vRetPIS: Double read FretTrib_vRetPIS write FretTrib_vRetPIS;
    property retTrib_vRetCOFINS: Double read FretTrib_vRetCOFINS write FretTrib_vRetCOFINS;
    property retTrib_vRetCSLL: Double read FretTrib_vRetCSLL write FretTrib_vRetCSLL;
    property retTrib_vBCIRRF: Double read FretTrib_vBCIRRF write FretTrib_vBCIRRF;
    property retTrib_vIRRF: Double read FretTrib_vIRRF write FretTrib_vIRRF;
    property retTrib_vBCRetPrev: Double read FretTrib_vBCRetPrev write FretTrib_vBCRetPrev;
    property retTrib_vRetPrev: Double read FretTrib_vRetPrev write FretTrib_vRetPrev;
  end;

implementation

end.

