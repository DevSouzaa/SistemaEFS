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
    function ObterTodos: TList<ISubGrupo>;
    function ObterPorId(AID: Integer): ISubGrupo;
    function ObterPorNome(ANome: string): TList<ISubGrupo>;
    procedure Inserir(SubGrupo: ISubGrupo);
    procedure Atualizar(SubGrupo: ISubGrupo);
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

function TControllerSubGrupo.ObterTodos: TList<ISubGrupo>;
begin
  Result := FServiceSubGrupo.ObterTodos;
end;

function TControllerSubGrupo.ObterPorId(AID: Integer): ISubGrupo;
begin
  Result := FServiceSubGrupo.ObterPorId(AID);
end;

function TControllerSubGrupo.ObterPorNome(ANome: string): TList<ISubGrupo>;
begin
  Result := FServiceSubGrupo.ObterPorNome(ANome);
end;

procedure TControllerSubGrupo.Inserir(SubGrupo: ISubGrupo);
begin
  FServiceSubGrupo.Inserir(SubGrupo);
end;

procedure TControllerSubGrupo.Atualizar(SubGrupo: ISubGrupo);
begin
  FServiceSubGrupo.Atualizar(SubGrupo);
end;

procedure TControllerSubGrupo.Deletar(AID: Integer);
begin
  FServiceSubGrupo.Deletar(AID);
end;

end.

