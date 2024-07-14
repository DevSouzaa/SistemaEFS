unit NFe.Transporte;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeTransporte = class
  private
    FIDNFe: Integer;
    FModFrete: string;
    FTransporta_CNPJCPF: string;
    FTransporta_XNome: string;
    FTransporta_IE: string;
    FTransporta_XEnder: string;
    FTransporta_XMun: string;
    FTransporta_UF: string;
    FRetTransp_VServ: Double;
    FRetTransp_VBCRet: Double;
    FRetTransp_PICMSRet: Double;
    FRetTransp_VICMSRet: Double;
    FRetTransp_CFOP: string;
    FRetTransp_cMunFG: Integer;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property ModFrete: string read FModFrete write FModFrete;
    property Transporta_CNPJCPF: string read FTransporta_CNPJCPF write FTransporta_CNPJCPF;
    property Transporta_XNome: string read FTransporta_XNome write FTransporta_XNome;
    property Transporta_IE: string read FTransporta_IE write FTransporta_IE;
    property Transporta_XEnder: string read FTransporta_XEnder write FTransporta_XEnder;
    property Transporta_XMun: string read FTransporta_XMun write FTransporta_XMun;
    property Transporta_UF: string read FTransporta_UF write FTransporta_UF;
    property RetTransp_VServ: Double read FRetTransp_VServ write FRetTransp_VServ;
    property RetTransp_VBCRet: Double read FRetTransp_VBCRet write FRetTransp_VBCRet;
    property RetTransp_PICMSRet: Double read FRetTransp_PICMSRet write FRetTransp_PICMSRet;
    property RetTransp_VICMSRet: Double read FRetTransp_VICMSRet write FRetTransp_VICMSRet;
    property RetTransp_CFOP: string read FRetTransp_CFOP write FRetTransp_CFOP;
    property RetTransp_cMunFG: Integer read FRetTransp_cMunFG write FRetTransp_cMunFG;
  end;

implementation

end.

