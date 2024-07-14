unit NFe.Avulsa;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeAvulsa = class
  private
    FIDNFe: Integer;
    FCNPJ: string;
    FXOrgao: string;
    FMatr: string;
    FXAgente: string;
    FFone: string;
    FUF: string;
    FNDar: string;
    FDEmi: TDateTime;
    FVDar: Double;
    FRepEmi: string;
    FDPag: TDateTime;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property CNPJ: string read FCNPJ write FCNPJ;
    property XOrgao: string read FXOrgao write FXOrgao;
    property Matr: string read FMatr write FMatr;
    property XAgente: string read FXAgente write FXAgente;
    property Fone: string read FFone write FFone;
    property UF: string read FUF write FUF;
    property NDar: string read FNDar write FNDar;
    property DEmi: TDateTime read FDEmi write FDEmi;
    property VDar: Double read FVDar write FVDar;
    property RepEmi: string read FRepEmi write FRepEmi;
    property DPag: TDateTime read FDPag write FDPag;
  end;

implementation

end.

