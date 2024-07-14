unit Controller.SubGrupo;

interface

uses
  System.Generics.Collections, Service.SubGrupo, Model.SubGrupo;

type
  TControllerSubGrupo = class
  private
    FServiceSubGrupo: TServiceSubGrupo;
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

constructor TControllerSubGrupo.Create;
begin
  FServiceSubGrupo := TServiceSubGrupo.Create;
end;

destructor TControllerSubGrupo.Destroy;
begin
  FServiceSubGrupo.Free;
  inherited;
end;

function TControllerSubGrupo.ObterTodos: TList<TSubGrupo>;
begin
  Result := FServiceSubGrupo.ObterTodos;
end;

function TControllerSubGrupo.ObterPorId(AID: Integer): TSubGrupo;
begin
  Result := FServiceSubGrupo.ObterPorId(AID);
end;

function TControllerSubGrupo.ObterPorNome(ANome: string): TList<TSubGrupo>;
begin
  Result := FServiceSubGrupo.ObterPorNome(ANome);
end;

procedure TControllerSubGrupo.Inserir(SubGrupo: TSubGrupo);
begin
  FServiceSubGrupo.Inserir(SubGrupo);
end;

procedure TControllerSubGrupo.Atualizar(SubGrupo: TSubGrupo);
begin
  FServiceSubGrupo.Atualizar(SubGrupo);
end;

procedure TControllerSubGrupo.Deletar(AID: Integer);
begin
  FServiceSubGrupo.Deletar(AID);
end;

end.

