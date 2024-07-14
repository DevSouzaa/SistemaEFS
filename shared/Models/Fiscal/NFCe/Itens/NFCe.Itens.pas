unit NFCe.Itens;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFCeItem = class
  private
    FIDNFCeItem: Integer;
    FIDNFCe: Integer;
    FProd_nItem: Integer;
    FProd_cProd: string;
    FProd_cEAN: string;
    FProd_xProd: string;
    FProd_NCM: string;
    FProd_EXTIPI: string;
    FProd_CFOP: string;
    FProd_uCom: string;
    FProd_qCom: Double;
    FProd_vUnCom: Double;
    FProd_vProd: Double;
    FProd_cEANTrib: string;
    FProd_uTrib: string;
    FProd_qTrib: Double;
    FProd_vUnTrib: Double;
    FProd_vOutro: Double;
    FProd_vFrete: Double;
    FProd_vSeg: Double;
    FProd_vDesc: Double;
    FProd_CEST: string;
    FProd_infAdProd: string;
    FProd_cBarra: string;
    FProd_cBarraTrib: string;
  public
    property IDNFCeItem: Integer read FIDNFCeItem write FIDNFCeItem;
    property IDNFCe: Integer read FIDNFCe write FIDNFCe;
    property Prod_nItem: Integer read FProd_nItem write FProd_nItem;
    property Prod_cProd: string read FProd_cProd write FProd_cProd;
    property Prod_cEAN: string read FProd_cEAN write FProd_cEAN;
    property Prod_xProd: string read FProd_xProd write FProd_xProd;
    property Prod_NCM: string read FProd_NCM write FProd_NCM;
    property Prod_EXTIPI: string read FProd_EXTIPI write FProd_EXTIPI;
    property Prod_CFOP: string read FProd_CFOP write FProd_CFOP;
    property Prod_uCom: string read FProd_uCom write FProd_uCom;
    property Prod_qCom: Double read FProd_qCom write FProd_qCom;
    property Prod_vUnCom: Double read FProd_vUnCom write FProd_vUnCom;
    property Prod_vProd: Double read FProd_vProd write FProd_vProd;
    property Prod_cEANTrib: string read FProd_cEANTrib write FProd_cEANTrib;
    property Prod_uTrib: string read FProd_uTrib write FProd_uTrib;
    property Prod_qTrib: Double read FProd_qTrib write FProd_qTrib;
    property Prod_vUnTrib: Double read FProd_vUnTrib write FProd_vUnTrib;
    property Prod_vOutro: Double read FProd_vOutro write FProd_vOutro;
    property Prod_vFrete: Double read FProd_vFrete write FProd_vFrete;
    property Prod_vSeg: Double read FProd_vSeg write FProd_vSeg;
    property Prod_vDesc: Double read FProd_vDesc write FProd_vDesc;
    property Prod_CEST: string read FProd_CEST write FProd_CEST;
    property Prod_infAdProd: string read FProd_infAdProd write FProd_infAdProd;
    property Prod_cBarra: string read FProd_cBarra write FProd_cBarra;
    property Prod_cBarraTrib: string read FProd_cBarraTrib write FProd_cBarraTrib;
  end;

implementation

end.

