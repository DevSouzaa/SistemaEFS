unit ConfigDanfe;

interface

type
  TConfigDanfe = class
  private
    FCodigo: Integer;
    FTipo: Integer;
    FLogoMarca: string;
    FTipoDanfce: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Tipo: Integer read FTipo write FTipo;
    property LogoMarca: string read FLogoMarca write FLogoMarca;
    property TipoDanfce: Integer read FTipoDanfce write FTipoDanfce;
  end;

implementation

end.

