unit NFe.Emitente;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeEmitente = class
  private
    FIDNFe: Integer;
    FCNPJCPF: string;
    FIE: string;
    FXNome: string;
    FXFant: string;
    FEnderEmit_Fone: string;
    FEnderEmit_CEP: Integer;
    FEnderEmit_xLgr: string;
    FEnderEmit_nro: string;
    FEnderEmit_xCpl: string;
    FEnderEmit_xBairro: string;
    FEnderEmit_cMun: Integer;
    FEnderEmit_xMun: string;
    FEnderEmit_UF: string;
    FEnderEmit_cPais: Integer;
    FEnderEmit_xPais: string;
    FIEST: string;
    FIM: string;
    FCNAE: string;
    FCRT: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property IE: string read FIE write FIE;
    property XNome: string read FXNome write FXNome;
    property XFant: string read FXFant write FXFant;
    property EnderEmit_Fone: string read FEnderEmit_Fone write FEnderEmit_Fone;
    property EnderEmit_CEP: Integer read FEnderEmit_CEP write FEnderEmit_CEP;
    property EnderEmit_xLgr: string read FEnderEmit_xLgr write FEnderEmit_xLgr;
    property EnderEmit_nro: string read FEnderEmit_nro write FEnderEmit_nro;
    property EnderEmit_xCpl: string read FEnderEmit_xCpl write FEnderEmit_xCpl;
    property EnderEmit_xBairro: string read FEnderEmit_xBairro write FEnderEmit_xBairro;
    property EnderEmit_cMun: Integer read FEnderEmit_cMun write FEnderEmit_cMun;
    property EnderEmit_xMun: string read FEnderEmit_xMun write FEnderEmit_xMun;
    property EnderEmit_UF: string read FEnderEmit_UF write FEnderEmit_UF;
    property EnderEmit_cPais: Integer read FEnderEmit_cPais write FEnderEmit_cPais;
    property EnderEmit_xPais: string read FEnderEmit_xPais write FEnderEmit_xPais;
    property IEST: string read FIEST write FIEST;
    property IM: string read FIM write FIM;
    property CNAE: string read FCNAE write FCNAE;
    property CRT: string read FCRT write FCRT;
  end;

implementation

end.

