unit Service.Marca;

interface

uses
  System.Generics.Collections, Repositorio.Marca, Model.Marca;

type
  TServiceMarca = class
  private
    FRepositorioMarca: TRepositorioMarca;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterTodos: TList<TMarca>;
    function ObterPorId(AID: Integer): TMarca;
    function ObterPorNome(ANome: string): TList<TMarca>;
    procedure Inserir(Marca: TMarca);
    procedure Atualizar(Marca: TMarca);
    procedure Deletar(AID: Integer);
  end;

implementation

constructor TServiceMarca.Create;
begin
  FRepositorioMarca := TRepositorioMarca.Create;
end;

destructor TServiceMarca.Destroy;
begin
  FRepositorioMarca.Free;
  inherited;
end;

function TServiceMarca.ObterTodos: TList<TMarca>;
begin
  Result := FRepositorioMarca.ObterTodos;
end;

function TServiceMarca.ObterPorId(AID: Integer): TMarca;
begin
  Result := FRepositorioMarca.ObterPorId(AID);
end;

function TServiceMarca.ObterPorNome(ANome: string): TList<TMarca>;
begin
  Result := FRepositorioMarca.ObterPorNome(ANome);
end;

procedure TServiceMarca.Inserir(Marca: TMarca);
begin
  FRepositorioMarca.Inserir(Marca);
end;

procedure TServiceMarca.Atualizar(Marca: TMarca);
begin
  FRepositorioMarca.Atualizar(Marca);
end;

procedure TServiceMarca.Deletar(AID: Integer);
begin
  FRepositorioMarca.Deletar(AID);
end;

end.

