unit ConfigProxy;

interface

type
  TConfigProxy = class
  private
    FCodigo: Integer;
    FHost: string;
    FPorta: string;
    FUser: string;
    FPass: string;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Host: string read FHost write FHost;
    property Porta: string read FPorta write FPorta;
    property User: string read FUser write FUser;
    property Pass: string read FPass write FPass;
  end;

implementation

end.

