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
    function ObterTodos: TList<iUnidade>;
    function ObterPorId(AID: Integer): iUnidade;
    function ObterPorNome(ANome: string): TList<iUnidade>;
    procedure Inserir(Unidade: iUnidade);
    procedure Atualizar(Unidade: iUnidade);
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

function TControllerUnidade.ObterTodos: TList<iUnidade>;
begin
  Result := FServiceUnidade.ObterTodos;
end;

function TControllerUnidade.ObterPorId(AID: Integer): iUnidade;
begin
  Result := FServiceUnidade.ObterPorId(AID);
end;

function TControllerUnidade.ObterPorNome(ANome: string): TList<iUnidade>;
begin
  Result := FServiceUnidade.ObterPorNome(ANome);
end;

procedure TControllerUnidade.Inserir(Unidade: iUnidade);
begin
  FServiceUnidade.Inserir(Unidade);
end;

procedure TControllerUnidade.Atualizar(Unidade: iUnidade);
begin
  FServiceUnidade.Atualizar(Unidade);
end;

procedure TControllerUnidade.Deletar(AID: Integer);
begin
  FServiceUnidade.Deletar(AID);
end;

end.

