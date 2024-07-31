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
    function ObterTodos: TList<IMarca>;
    function ObterPorId(AID: Integer): IMarca;
    function ObterPorNome(ANome: string): TList<IMarca>;
    procedure Inserir(Marca: IMarca);
    procedure Atualizar(Marca: IMarca);
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

function TServiceMarca.ObterTodos: TList<IMarca>;
begin
  Result := FRepositorioMarca.ObterTodos;
end;

function TServiceMarca.ObterPorId(AID: Integer): IMarca;
begin
  Result := FRepositorioMarca.ObterPorId(AID);
end;

function TServiceMarca.ObterPorNome(ANome: string): TList<IMarca>;
begin
  Result := FRepositorioMarca.ObterPorNome(ANome);
end;

procedure TServiceMarca.Inserir(Marca: IMarca);
begin
  FRepositorioMarca.Inserir(Marca);
end;

procedure TServiceMarca.Atualizar(Marca: IMarca);
begin
  FRepositorioMarca.Atualizar(Marca);
end;

procedure TServiceMarca.Deletar(AID: Integer);
begin
  FRepositorioMarca.Deletar(AID);
end;

end.

