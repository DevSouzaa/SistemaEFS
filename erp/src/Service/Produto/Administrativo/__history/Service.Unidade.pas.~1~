unit Service.Unidade;

interface

uses
  System.Generics.Collections, Repositorio.Unidade, Model.Unidade;

type
  TServiceUnidade = class
  private
    FRepositorioUnidade: TRepositorioUnidade;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterTodos: TList<TUnidade>;
    function ObterPorId(AID: Integer): TUnidade;
    function ObterPorNome(ANome: string): TList<TUnidade>;
    procedure Inserir(Unidade: TUnidade);
    procedure Atualizar(Unidade: TUnidade);
    procedure Deletar(AID: Integer);
  end;

implementation

constructor TServiceUnidade.Create;
begin
  FRepositorioUnidade := TRepositorioUnidade.Create;
end;

destructor TServiceUnidade.Destroy;
begin
  FRepositorioUnidade.Free;
  inherited;
end;

function TServiceUnidade.ObterTodos: TList<TUnidade>;
begin
  Result := FRepositorioUnidade.ObterTodos;
end;

function TServiceUnidade.ObterPorId(AID: Integer): TUnidade;
begin
  Result := FRepositorioUnidade.ObterPorId(AID);
end;

function TServiceUnidade.ObterPorNome(ANome: string): TList<TUnidade>;
begin
  Result := FRepositorioUnidade.ObterPorNome(ANome);
end;

procedure TServiceUnidade.Inserir(Unidade: TUnidade);
begin
  FRepositorioUnidade.Inserir(Unidade);
end;

procedure TServiceUnidade.Atualizar(Unidade: TUnidade);
begin
  FRepositorioUnidade.Atualizar(Unidade);
end;

procedure TServiceUnidade.Deletar(AID: Integer);
begin
  FRepositorioUnidade.Deletar(AID);
end;

end.

