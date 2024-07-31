unit Controller.Marca;

interface

uses
  System.Generics.Collections, Service.Marca, Model.Marca;

type
  TControllerMarca = class
  private
    FServiceMarca: TServiceMarca;
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

constructor TControllerMarca.Create;
begin
  FServiceMarca := TServiceMarca.Create;
end;

destructor TControllerMarca.Destroy;
begin
  FServiceMarca.Free;
  inherited;
end;

function TControllerMarca.ObterTodos: TList<TMarca>;
begin
  Result := FServiceMarca.ObterTodos;
end;

function TControllerMarca.ObterPorId(AID: Integer): TMarca;
begin
  Result := FServiceMarca.ObterPorId(AID);
end;

function TControllerMarca.ObterPorNome(ANome: string): TList<TMarca>;
begin
  Result := FServiceMarca.ObterPorNome(ANome);
end;

procedure TControllerMarca.Inserir(Marca: TMarca);
begin
  FServiceMarca.Inserir(Marca);
end;

procedure TControllerMarca.Atualizar(Marca: TMarca);
begin
  FServiceMarca.Atualizar(Marca);
end;

procedure TControllerMarca.Deletar(AID: Integer);
begin
  FServiceMarca.Deletar(AID);
end;

end.

