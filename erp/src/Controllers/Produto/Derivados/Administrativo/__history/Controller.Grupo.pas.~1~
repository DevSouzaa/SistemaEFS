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
    function ObterTodos: TList<TGrupo>;
    function ObterPorId(AID: Integer): TGrupo;
    function ObterPorNome(ANome: string): TList<TGrupo>;
    procedure Inserir(Grupo: TGrupo);
    procedure Atualizar(Grupo: TGrupo);
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

function TControllerGrupo.ObterTodos: TList<TGrupo>;
begin
  Result := FServiceGrupo.ObterTodos;
end;

function TControllerGrupo.ObterPorId(AID: Integer): TGrupo;
begin
  Result := FServiceGrupo.ObterPorId(AID);
end;

function TControllerGrupo.ObterPorNome(ANome: string): TList<TGrupo>;
begin
  Result := FServiceGrupo.ObterPorNome(ANome);
end;

procedure TControllerGrupo.Inserir(Grupo: TGrupo);
begin
  FServiceGrupo.Inserir(Grupo);
end;

procedure TControllerGrupo.Atualizar(Grupo: TGrupo);
begin
  FServiceGrupo.Atualizar(Grupo);
end;

procedure TControllerGrupo.Deletar(AID: Integer);
begin
  FServiceGrupo.Deletar(AID);
end;

end.

