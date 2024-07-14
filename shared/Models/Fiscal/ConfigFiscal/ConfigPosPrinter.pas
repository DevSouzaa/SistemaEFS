unit ConfigPosPrinter;

interface

type
  TConfigPosPrinter = class
  private
    FCodigo: Integer;
    FModelo: Integer;
    FPorta: string;
    FPaginaDeCodigo: Integer;
    FColunas: Integer;
    FEspacoLinhas: Integer;
    FLinhasEntreCupons: Integer;
    FCortarPapel: Boolean;
    FParamsString: string;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Modelo: Integer read FModelo write FModelo;
    property Porta: string read FPorta write FPorta;
    property PaginaDeCodigo: Integer read FPaginaDeCodigo write FPaginaDeCodigo;
    property Colunas: Integer read FColunas write FColunas;
    property EspacoLinhas: Integer read FEspacoLinhas write FEspacoLinhas;
    property LinhasEntreCupons: Integer read FLinhasEntreCupons write FLinhasEntreCupons;
    property CortarPapel: Boolean read FCortarPapel write FCortarPapel;
    property ParamsString: string read FParamsString write FParamsString;
  end;

implementation

end.

