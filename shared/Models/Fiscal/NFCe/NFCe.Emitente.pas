unit NFCe.Emitente;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCeEmitente = class
  private
    FCNPJCPF: string;
    FIE: string;
    FxNome: string;
    FxFant: string;
    FenderEmit_fone: string;
    FenderEmit_CEP: string;
    FenderEmit_xLgr: string;
    FenderEmit_nro: string;
    FenderEmit_xCpl: string;
    FenderEmit_xBairro: string;
    FenderEmit_cMun: Integer;
    FenderEmit_xMun: string;
    FenderEmit_UF: string;
    FenderEmit_cPais: Integer;
    FenderEmit_xPais: string;
    FIEST: string;
    FCRT: string;
  public
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property IE: string read FIE write FIE;
    property xNome: string read FxNome write FxNome;
    property xFant: string read FxFant write FxFant;
    property enderEmit_fone: string read FenderEmit_fone write FenderEmit_fone;
    property enderEmit_CEP: string read FenderEmit_CEP write FenderEmit_CEP;
    property enderEmit_xLgr: string read FenderEmit_xLgr write FenderEmit_xLgr;
    property enderEmit_nro: string read FenderEmit_nro write FenderEmit_nro;
    property enderEmit_xCpl: string read FenderEmit_xCpl write FenderEmit_xCpl;
    property enderEmit_xBairro: string read FenderEmit_xBairro write FenderEmit_xBairro;
    property enderEmit_cMun: Integer read FenderEmit_cMun write FenderEmit_cMun;
    property enderEmit_xMun: string read FenderEmit_xMun write FenderEmit_xMun;
    property enderEmit_UF: string read FenderEmit_UF write FenderEmit_UF;
    property enderEmit_cPais: Integer read FenderEmit_cPais write FenderEmit_cPais;
    property enderEmit_xPais: string read FenderEmit_xPais write FenderEmit_xPais;
    property IEST: string read FIEST write FIEST;
    property CRT: string read FCRT write FCRT;
  end;

implementation

end.

