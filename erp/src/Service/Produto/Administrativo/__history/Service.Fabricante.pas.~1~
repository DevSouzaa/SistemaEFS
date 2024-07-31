unit Service.Fabricante;

interface

uses
  System.Generics.Collections, Repositorio.Fabricante, Model.Fabricante;

type
  TServiceFabricante = class
  private
    FRepositorioFabricante: TRepositorioFabricante;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterTodos: TList<TFabricante>;
    function ObterPorId(AID: Integer): TFabricante;
    function ObterPorNome(ANome: string): TList<TFabricante>;
    procedure Inserir(Fabricante: TFabricante);
    procedure Atualizar(Fabricante: TFabricante);
    procedure Deletar(AID: Integer);
  end;

implementation

constructor TServiceFabricante.Create;
begin
  FRepositorioFabricante := TRepositorioFabricante.Create;
end;

destructor TServiceFabricante.Destroy;
begin
  FRepositorioFabricante.Free;
  inherited;
end;

function TServiceFabricante.ObterTodos: TList<TFabricante>;
begin
  Result := FRepositorioFabricante.ObterTodos;
end;

function TServiceFabricante.ObterPorId(AID: Integer): TFabricante;
begin
  Result := FRepositorioFabricante.ObterPorId(AID);
end;

function TServiceFabricante.ObterPorNome(ANome: string): TList<TFabricante>;
begin
  Result := FRepositorioFabricante.ObterPorNome(ANome);
end;

procedure TServiceFabricante.Inserir(Fabricante: TFabricante);
begin
  FRepositorioFabricante.Inserir(Fabricante);
end;

procedure TServiceFabricante.Atualizar(Fabricante: TFabricante);
begin
  FRepositorioFabricante.Atualizar(Fabricante);
end;

procedure TServiceFabricante.Deletar(AID: Integer);
begin
  FRepositorioFabricante.Deletar(AID);
end;

end.

