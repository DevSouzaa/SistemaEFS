unit Service.Grupo;

interface

uses
  System.Generics.Collections, Repositorio.Grupo, Model.Grupo;

type
  TServiceGrupo = class
  private
    FRepositorioGrupo: TRepositorioGrupo;
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

constructor TServiceGrupo.Create;
begin
  FRepositorioGrupo := TRepositorioGrupo.Create;
end;

destructor TServiceGrupo.Destroy;
begin
  FRepositorioGrupo.Free;
  inherited;
end;

function TServiceGrupo.ObterTodos: TList<IGrupo>;
begin
  Result := FRepositorioGrupo.ObterTodos;
end;

function TServiceGrupo.ObterPorId(AID: Integer): IGrupo;
begin
  Result := FRepositorioGrupo.ObterPorId(AID);
end;

function TServiceGrupo.ObterPorNome(ANome: string): TList<IGrupo>;
begin
  Result := FRepositorioGrupo.ObterPorNome(ANome);
end;

procedure TServiceGrupo.Inserir(Grupo: IGrupo);
begin
  FRepositorioGrupo.Inserir(Grupo);
end;

procedure TServiceGrupo.Atualizar(Grupo: IGrupo);
begin
  FRepositorioGrupo.Atualizar(Grupo);
end;

procedure TServiceGrupo.Deletar(AID: Integer);
begin
  FRepositorioGrupo.Deletar(AID);
end;

end.

