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
    function ObterTodos: TList<IFabricante>;
    function ObterPorId(AID: Integer): IFabricante;
    function ObterPorNome(ANome: string): TList<IFabricante>;
    procedure Inserir(Fabricante: IFabricante);
    procedure Atualizar(Fabricante: IFabricante);
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

function TServiceFabricante.ObterTodos: TList<IFabricante>;
begin
  Result := FRepositorioFabricante.ObterTodos;
end;

function TServiceFabricante.ObterPorId(AID: Integer): IFabricante;
begin
  Result := FRepositorioFabricante.ObterPorId(AID);
end;

function TServiceFabricante.ObterPorNome(ANome: string): TList<IFabricante>;
begin
  Result := FRepositorioFabricante.ObterPorNome(ANome);
end;

procedure TServiceFabricante.Inserir(Fabricante: IFabricante);
begin
  FRepositorioFabricante.Inserir(Fabricante);
end;

procedure TServiceFabricante.Atualizar(Fabricante: IFabricante);
begin
  FRepositorioFabricante.Atualizar(Fabricante);
end;

procedure TServiceFabricante.Deletar(AID: Integer);
begin
  FRepositorioFabricante.Deletar(AID);
end;

end.

