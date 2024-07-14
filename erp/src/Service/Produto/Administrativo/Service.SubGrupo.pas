unit Service.SubGrupo;

interface

uses
  System.Generics.Collections, Repositorio.SubGrupo, Model.SubGrupo;

type
  TServiceSubGrupo = class
  private
    FRepositorioSubGrupo: TRepositorioSubGrupo;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterTodos: TList<TSubGrupo>;
    function ObterPorId(AID: Integer): TSubGrupo;
    function ObterPorNome(ANome: string): TList<TSubGrupo>;
    procedure Inserir(SubGrupo: TSubGrupo);
    procedure Atualizar(SubGrupo: TSubGrupo);
    procedure Deletar(AID: Integer);
  end;

implementation

constructor TServiceSubGrupo.Create;
begin
  FRepositorioSubGrupo := TRepositorioSubGrupo.Create;
end;

destructor TServiceSubGrupo.Destroy;
begin
  FRepositorioSubGrupo.Free;
  inherited;
end;

function TServiceSubGrupo.ObterTodos: TList<TSubGrupo>;
begin
  Result := FRepositorioSubGrupo.ObterTodos;
end;

function TServiceSubGrupo.ObterPorId(AID: Integer): TSubGrupo;
begin
  Result := FRepositorioSubGrupo.ObterPorId(AID);
end;

function TServiceSubGrupo.ObterPorNome(ANome: string): TList<TSubGrupo>;
begin
  Result := FRepositorioSubGrupo.ObterPorNome(ANome);
end;

procedure TServiceSubGrupo.Inserir(SubGrupo: TSubGrupo);
begin
  FRepositorioSubGrupo.Inserir(SubGrupo);
end;

procedure TServiceSubGrupo.Atualizar(SubGrupo: TSubGrupo);
begin
  FRepositorioSubGrupo.Atualizar(SubGrupo);
end;

procedure TServiceSubGrupo.Deletar(AID: Integer);
begin
  FRepositorioSubGrupo.Deletar(AID);
end;

end.

