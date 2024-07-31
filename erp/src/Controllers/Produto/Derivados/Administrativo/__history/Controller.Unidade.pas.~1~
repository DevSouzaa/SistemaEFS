unit Controller.Unidade;

interface

uses
  System.Generics.Collections, Service.Unidade, Model.Unidade;

type
  TControllerUnidade = class
  private
    FServiceUnidade: TServiceUnidade;
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

constructor TControllerUnidade.Create;
begin
  FServiceUnidade := TServiceUnidade.Create;
end;

destructor TControllerUnidade.Destroy;
begin
  FServiceUnidade.Free;
  inherited;
end;

function TControllerUnidade.ObterTodos: TList<TUnidade>;
begin
  Result := FServiceUnidade.ObterTodos;
end;

function TControllerUnidade.ObterPorId(AID: Integer): TUnidade;
begin
  Result := FServiceUnidade.ObterPorId(AID);
end;

function TControllerUnidade.ObterPorNome(ANome: string): TList<TUnidade>;
begin
  Result := FServiceUnidade.ObterPorNome(ANome);
end;

procedure TControllerUnidade.Inserir(Unidade: TUnidade);
begin
  FServiceUnidade.Inserir(Unidade);
end;

procedure TControllerUnidade.Atualizar(Unidade: TUnidade);
begin
  FServiceUnidade.Atualizar(Unidade);
end;

procedure TControllerUnidade.Deletar(AID: Integer);
begin
  FServiceUnidade.Deletar(AID);
end;

end.

