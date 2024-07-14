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
    function ObterTodos: TList<TGrupo>;
    function ObterPorId(AID: Integer): TGrupo;
    function ObterPorNome(ANome: string): TList<TGrupo>;
    procedure Inserir(Grupo: TGrupo);
    procedure Atualizar(Grupo: TGrupo);
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

function TServiceGrupo.ObterTodos: TList<TGrupo>;
begin
  Result := FRepositorioGrupo.ObterTodos;
end;

function TServiceGrupo.ObterPorId(AID: Integer): TGrupo;
begin
  Result := FRepositorioGrupo.ObterPorId(AID);
end;

function TServiceGrupo.ObterPorNome(ANome: string): TList<TGrupo>;
begin
  Result := FRepositorioGrupo.ObterPorNome(ANome);
end;

procedure TServiceGrupo.Inserir(Grupo: TGrupo);
begin
  FRepositorioGrupo.Inserir(Grupo);
end;

procedure TServiceGrupo.Atualizar(Grupo: TGrupo);
begin
  FRepositorioGrupo.Atualizar(Grupo);
end;

procedure TServiceGrupo.Deletar(AID: Integer);
begin
  FRepositorioGrupo.Deletar(AID);
end;

end.

