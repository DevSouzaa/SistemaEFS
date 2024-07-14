unit NFCe.Pagamento;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCePagamento = class
  private
    FtPag: string;
    FvPag: Double;
    FxPag: string;
  public
    property tPag: string read FtPag write FtPag;
    property vPag: Double read FvPag write FvPag;
    property xPag: string read FxPag write FxPag;
  end;

implementation

end.

