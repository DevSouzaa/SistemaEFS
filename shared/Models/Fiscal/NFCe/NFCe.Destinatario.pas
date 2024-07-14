unit NFCe.Destinatario;

interface

uses
  System.SysUtils, System.Classes;

type
  TNFCeDestinatario = class
  private
    FCNPJCPF: string;
    FISUF: string;
    FxNome: string;
    FindIEDest: string;
    FenderDest_fone: string;
    FenderDest_CEP: string;
    FenderDest_xLgr: string;
    FenderDest_nro: string;
    FenderDest_xCpl: string;
    FenderDest_xBairro: string;
    FenderDest_cMun: Integer;
    FenderDest_xMun: string;
    FenderDest_UF: string;
    FenderDest_cPais: Integer;
    FenderDest_xPais: string;
  public
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property ISUF: string read FISUF write FISUF;
    property xNome: string read FxNome write FxNome;
    property indIEDest: string read FindIEDest write FindIEDest;
    property enderDest_fone: string read FenderDest_fone write FenderDest_fone;
    property enderDest_CEP: string read FenderDest_CEP write FenderDest_CEP;
    property enderDest_xLgr: string read FenderDest_xLgr write FenderDest_xLgr;
    property enderDest_nro: string read FenderDest_nro write FenderDest_nro;
    property enderDest_xCpl: string read FenderDest_xCpl write FenderDest_xCpl;
    property enderDest_xBairro: string read FenderDest_xBairro write FenderDest_xBairro;
    property enderDest_cMun: Integer read FenderDest_cMun write FenderDest_cMun;
    property enderDest_xMun: string read FenderDest_xMun write FenderDest_xMun;
    property enderDest_UF: string read FenderDest_UF write FenderDest_UF;
    property enderDest_cPais: Integer read FenderDest_cPais write FenderDest_cPais;
    property enderDest_xPais: string read FenderDest_xPais write FenderDest_xPais;
  end;

implementation

end.

