unit NFe.Destinatario;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeDestinatario = class
  private
    FIDNFe: Integer;
    FCNPJCPF: string;
    FIE: string;
    FISUF: string;
    FXNome: string;
    FEnderDest_Fone: string;
    FEnderDest_CEP: string;
    FEnderDest_xLgr: string;
    FEnderDest_nro: string;
    FEnderDest_xCpl: string;
    FEnderDest_xBairro: string;
    FEnderDest_cMun: Integer;
    FEnderDest_xMun: string;
    FEnderDest_UF: string;
    FEnderDest_cPais: Integer;
    FEnderDest_xPais: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property IE: string read FIE write FIE;
    property ISUF: string read FISUF write FISUF;
    property XNome: string read FXNome write FXNome;
    property EnderDest_Fone: string read FEnderDest_Fone write FEnderDest_Fone;
    property EnderDest_CEP: string read FEnderDest_CEP write FEnderDest_CEP;
    property EnderDest_xLgr: string read FEnderDest_xLgr write FEnderDest_xLgr;
    property EnderDest_nro: string read FEnderDest_nro write FEnderDest_nro;
    property EnderDest_xCpl: string read FEnderDest_xCpl write FEnderDest_xCpl;
    property EnderDest_xBairro: string read FEnderDest_xBairro write FEnderDest_xBairro;
    property EnderDest_cMun: Integer read FEnderDest_cMun write FEnderDest_cMun;
    property EnderDest_xMun: string read FEnderDest_xMun write FEnderDest_xMun;
    property EnderDest_UF: string read FEnderDest_UF write FEnderDest_UF;
    property EnderDest_cPais: Integer read FEnderDest_cPais write FEnderDest_cPais;
    property EnderDest_xPais: string read FEnderDest_xPais write FEnderDest_xPais;
  end;

implementation

end.

