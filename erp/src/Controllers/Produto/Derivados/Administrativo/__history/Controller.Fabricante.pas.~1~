unit Controller.Fabricante;

interface

uses
  System.Generics.Collections, Service.Fabricante, Model.Fabricante;

type
  TControllerFabricante = class
  private
    FServiceFabricante: TServiceFabricante;
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

constructor TControllerFabricante.Create;
begin
  FServiceFabricante := TServiceFabricante.Create;
end;

destructor TControllerFabricante.Destroy;
begin
  FServiceFabricante.Free;
  inherited;
end;

function TControllerFabricante.ObterTodos: TList<TFabricante>;
begin
  Result := FServiceFabricante.ObterTodos;
end;

function TControllerFabricante.ObterPorId(AID: Integer): TFabricante;
begin
  Result := FServiceFabricante.ObterPorId(AID);
end;

function TControllerFabricante.ObterPorNome(ANome: string): TList<TFabricante>;
begin
  Result := FServiceFabricante.ObterPorNome(ANome);
end;

procedure TControllerFabricante.Inserir(Fabricante: TFabricante);
begin
  FServiceFabricante.Inserir(Fabricante);
end;

procedure TControllerFabricante.Atualizar(Fabricante: TFabricante);
begin
  FServiceFabricante.Atualizar(Fabricante);
end;

procedure TControllerFabricante.Deletar(AID: Integer);
begin
  FServiceFabricante.Deletar(AID);
end;

end.

