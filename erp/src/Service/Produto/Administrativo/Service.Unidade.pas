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
    function ObterTodos: TList<IUnidade>;
    function ObterPorId(AID: Integer): IUnidade;
    function ObterPorNome(ANome: string): TList<IUnidade>;
    procedure Inserir(Unidade: IUnidade);
    procedure Atualizar(Unidade: IUnidade);
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

function TServiceUnidade.ObterTodos: TList<IUnidade>;
begin
  Result := FRepositorioUnidade.ObterTodos;
end;

function TServiceUnidade.ObterPorId(AID: Integer): IUnidade;
begin
  Result := FRepositorioUnidade.ObterPorId(AID);
end;

function TServiceUnidade.ObterPorNome(ANome: string): TList<IUnidade>;
begin
  Result := FRepositorioUnidade.ObterPorNome(ANome);
end;

procedure TServiceUnidade.Inserir(Unidade: IUnidade);
begin
  FRepositorioUnidade.Inserir(Unidade);
end;

procedure TServiceUnidade.Atualizar(Unidade: IUnidade);
begin
  FRepositorioUnidade.Atualizar(Unidade);
end;

procedure TServiceUnidade.Deletar(AID: Integer);
begin
  FRepositorioUnidade.Deletar(AID);
end;

end.

