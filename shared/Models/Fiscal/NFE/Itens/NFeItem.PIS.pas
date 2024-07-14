unit NFeItem.PIS;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFeItemPIS = class
  private
    FIDNFeItem: Integer;
    FPIS_CST: Integer;
    FPIS_VBC: Double;
    FPIS_PPIS: Double;
    FPIS_VPIS: Double;
    FPIS_QBCPROD: Double;
    FPIS_VALIQPROD: Double;
    FPISST_VBC: Double;
    FPISST_PPIS: Double;
    FPISST_QBCPROD: Double;
    FPISST_VALIQPROD: Double;
    FPISST_VPIS: Double;
    FPISST_INDSOMAPISST: string;
  public
    property IDNFeItem: Integer          read FIDNFeItem write FIDNFeItem;
    property PIS_CST: Integer            read FPIS_CST write FPIS_CST;
    property PIS_VBC: Double             read FPIS_VBC write FPIS_VBC;
    property PIS_PPIS: Double            read FPIS_PPIS write FPIS_PPIS;
    property PIS_VPIS: Double            read FPIS_VPIS write FPIS_VPIS;
    property PIS_QBCPROD: Double         read FPIS_QBCPROD write FPIS_QBCPROD;
    property PIS_VALIQPROD: Double       read FPIS_VALIQPROD write FPIS_VALIQPROD;
    property PISST_VBC: Double           read FPISST_VBC write FPISST_VBC;
    property PISST_PPIS: Double          read FPISST_PPIS write FPISST_PPIS;
    property PISST_QBCPROD: Double       read FPISST_QBCPROD write FPISST_QBCPROD;
    property PISST_VALIQPROD: Double     read FPISST_VALIQPROD write FPISST_VALIQPROD;
    property PISST_VPIS: Double          read FPISST_VPIS write FPISST_VPIS;
    property PISST_INDSOMAPISST: string  read FPISST_INDSOMAPISST write FPISST_INDSOMAPISST;
  end;

implementation

end.
