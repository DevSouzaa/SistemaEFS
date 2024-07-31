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
    function ObterTodos: TList<IMarca>;
    function ObterPorId(AID: Integer): IMarca;
    function ObterPorNome(ANome: string): TList<IMarca>;
    procedure Inserir(Marca: IMarca);
    procedure Atualizar(Marca: IMarca);
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

function TControllerMarca.ObterTodos: TList<IMarca>;
begin
  Result := FServiceMarca.ObterTodos;
end;

function TControllerMarca.ObterPorId(AID: Integer): IMarca;
begin
  Result := FServiceMarca.ObterPorId(AID);
end;

function TControllerMarca.ObterPorNome(ANome: string): TList<IMarca>;
begin
  Result := FServiceMarca.ObterPorNome(ANome);
end;

procedure TControllerMarca.Inserir(Marca: IMarca);
begin
  FServiceMarca.Inserir(Marca);
end;

procedure TControllerMarca.Atualizar(Marca: IMarca);
begin
  FServiceMarca.Atualizar(Marca);
end;

procedure TControllerMarca.Deletar(AID: Integer);
begin
  FServiceMarca.Deletar(AID);
end;

end.

