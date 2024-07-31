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
    function ObterTodos: TList<IFabricante>;
    function ObterPorId(AID: Integer): IFabricante;
    function ObterPorNome(ANome: string): TList<IFabricante>;
    procedure Inserir(Fabricante: IFabricante);
    procedure Atualizar(Fabricante: IFabricante);
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

function TControllerFabricante.ObterTodos: TList<IFabricante>;
begin
  Result := FServiceFabricante.ObterTodos;
end;

function TControllerFabricante.ObterPorId(AID: Integer): IFabricante;
begin
  Result := FServiceFabricante.ObterPorId(AID);
end;

function TControllerFabricante.ObterPorNome(ANome: string): TList<IFabricante>;
begin
  Result := FServiceFabricante.ObterPorNome(ANome);
end;

procedure TControllerFabricante.Inserir(Fabricante: IFabricante);
begin
  FServiceFabricante.Inserir(Fabricante);
end;

procedure TControllerFabricante.Atualizar(Fabricante: IFabricante);
begin
  FServiceFabricante.Atualizar(Fabricante);
end;

procedure TControllerFabricante.Deletar(AID: Integer);
begin
  FServiceFabricante.Deletar(AID);
end;

end.

