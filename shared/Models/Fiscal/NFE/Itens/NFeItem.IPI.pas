unit NFeItem.IPI;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFeItemIPI = class
  private
    FIDNFeItem: Integer;
    FIPI_CST: string;
    FIPI_CLENQ: string;
    FIPI_CNPJPROD: string;
    FIPI_CSELO: string;
    FIPI_QSELO: Double;
    FIPI_CENQ: string;
    FIPI_VBC: Double;
    FIPI_QUNID: Double;
    FIPI_VUNID: Double;
    FIPI_PIPI: Double;
    FIPI_VIPI: Double;
  public
    property IDNFeItem: Integer read FIDNFeItem write FIDNFeItem;
    property IPI_CST: string read FIPI_CST write FIPI_CST;
    property IPI_CLENQ: string read FIPI_CLENQ write FIPI_CLENQ;
    property IPI_CNPJPROD: string read FIPI_CNPJPROD write FIPI_CNPJPROD;
    property IPI_CSELO: string read FIPI_CSELO write FIPI_CSELO;
    property IPI_QSELO: Double read FIPI_QSELO write FIPI_QSELO;
    property IPI_CENQ: string read FIPI_CENQ write FIPI_CENQ;
    property IPI_VBC: Double read FIPI_VBC write FIPI_VBC;
    property IPI_QUNID: Double read FIPI_QUNID write FIPI_QUNID;
    property IPI_VUNID: Double read FIPI_VUNID write FIPI_VUNID;
    property IPI_PIPI: Double read FIPI_PIPI write FIPI_PIPI;
    property IPI_VIPI: Double read FIPI_VIPI write FIPI_VIPI;
  end;

implementation

end.

