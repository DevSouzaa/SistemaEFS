unit Controller.Grupo;

interface

uses
  System.Generics.Collections, Service.Grupo, Model.Grupo;

type
  TControllerGrupo = class
  private
    FServiceGrupo: TServiceGrupo;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterTodos: TList<IGrupo>;
    function ObterPorId(AID: Integer): IGrupo;
    function ObterPorNome(ANome: string): TList<IGrupo>;
    procedure Inserir(Grupo: IGrupo);
    procedure Atualizar(Grupo: IGrupo);
    procedure Deletar(AID: Integer);
  end;

implementation

constructor TControllerGrupo.Create;
begin
  FServiceGrupo := TServiceGrupo.Create;
end;

destructor TControllerGrupo.Destroy;
begin
  FServiceGrupo.Free;
  inherited;
end;

function TControllerGrupo.ObterTodos: TList<IGrupo>;
begin
  Result := FServiceGrupo.ObterTodos;
end;

function TControllerGrupo.ObterPorId(AID: Integer): IGrupo;
begin
  Result := FServiceGrupo.ObterPorId(AID);
end;

function TControllerGrupo.ObterPorNome(ANome: string): TList<IGrupo>;
begin
  Result := FServiceGrupo.ObterPorNome(ANome);
end;

procedure TControllerGrupo.Inserir(Grupo: IGrupo);
begin
  FServiceGrupo.Inserir(Grupo);
end;

procedure TControllerGrupo.Atualizar(Grupo: IGrupo);
begin
  FServiceGrupo.Atualizar(Grupo);
end;

procedure TControllerGrupo.Deletar(AID: Integer);
begin
  FServiceGrupo.Deletar(AID);
end;

end.

