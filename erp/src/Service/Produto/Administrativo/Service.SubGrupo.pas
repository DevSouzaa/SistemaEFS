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
    function ObterTodos: TList<ISubGrupo>;
    function ObterPorId(AID: Integer): ISubGrupo;
    function ObterPorNome(ANome: string): TList<ISubGrupo>;
    procedure Inserir(SubGrupo: ISubGrupo);
    procedure Atualizar(SubGrupo: ISubGrupo);
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

function TServiceSubGrupo.ObterTodos: TList<ISubGrupo>;
begin
  Result := FRepositorioSubGrupo.ObterTodos;
end;

function TServiceSubGrupo.ObterPorId(AID: Integer): ISubGrupo;
begin
  Result := FRepositorioSubGrupo.ObterPorId(AID);
end;

function TServiceSubGrupo.ObterPorNome(ANome: string): TList<ISubGrupo>;
begin
  Result := FRepositorioSubGrupo.ObterPorNome(ANome);
end;

procedure TServiceSubGrupo.Inserir(SubGrupo: ISubGrupo);
begin
  FRepositorioSubGrupo.Inserir(SubGrupo);
end;

procedure TServiceSubGrupo.Atualizar(SubGrupo: ISubGrupo);
begin
  FRepositorioSubGrupo.Atualizar(SubGrupo);
end;

procedure TServiceSubGrupo.Deletar(AID: Integer);
begin
  FRepositorioSubGrupo.Deletar(AID);
end;

end.

