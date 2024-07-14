unit NFCeItem.COFINS;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFCeItemCOFINS = class
  private
    FIDNFCeItem: Integer;
    FCOFINS_CST: Integer;
    FCOFINS_VBC: Double;
    FCOFINS_PCOFINS: Double;
    FCOFINS_VCOFINS: Double;
    FCOFINS_QBCPROD: Double;
    FCOFINS_VALIQPROD: Double;
    FCOFINSST_VBC: Double;
    FCOFINSST_PCOFINS: Double;
    FCOFINSST_QBCPROD: Double;
    FCOFINSST_VALIQPROD: Double;
    FCOFINSST_VCOFINS: Double;
    FCOFINSST_INDSOMACOFINSST: string;
  public
    property IDNFCeItem: Integer read FIDNFCeItem write FIDNFCeItem;
    property COFINS_CST: Integer read FCOFINS_CST write FCOFINS_CST;
    property COFINS_VBC: Double read FCOFINS_VBC write FCOFINS_VBC;
    property COFINS_PCOFINS: Double read FCOFINS_PCOFINS write FCOFINS_PCOFINS;
    property COFINS_VCOFINS: Double read FCOFINS_VCOFINS write FCOFINS_VCOFINS;
    property COFINS_QBCPROD: Double read FCOFINS_QBCPROD write FCOFINS_QBCPROD;
    property COFINS_VALIQPROD: Double read FCOFINS_VALIQPROD write FCOFINS_VALIQPROD;
    property COFINSST_VBC: Double read FCOFINSST_VBC write FCOFINSST_VBC;
    property COFINSST_PCOFINS: Double read FCOFINSST_PCOFINS write FCOFINSST_PCOFINS;
    property COFINSST_QBCPROD: Double read FCOFINSST_QBCPROD write FCOFINSST_QBCPROD;
    property COFINSST_VALIQPROD: Double read FCOFINSST_VALIQPROD write FCOFINSST_VALIQPROD;
    property COFINSST_VCOFINS: Double read FCOFINSST_VCOFINS write FCOFINSST_VCOFINS;
    property COFINSST_INDSOMACOFINSST: string read FCOFINSST_INDSOMACOFINSST write FCOFINSST_INDSOMACOFINSST;
  end;

implementation

end.

