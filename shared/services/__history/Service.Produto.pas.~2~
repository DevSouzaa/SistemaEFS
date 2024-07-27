unit Service.Produto;

interface

uses
  ProdutoSimplificado, ProdutoCompleto, Repositorio.Produto, Generics.Collections;

type
  TServiceProduto = class
  private
    FRepositorioProduto: TRepositorioProduto;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterPorId(Id: Integer): TProdutoCompleto;
    function ObterPorNome(Nome: string): TList<TProdutoSimplificado>;
    function ObterTodos: TList<TProdutoSimplificado>;
    function Inserir(Produto: TProdutoCompleto): Boolean;
    function Atualizar(Produto: TProdutoCompleto): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

constructor TServiceProduto.Create;
begin
  FRepositorioProduto := TRepositorioProduto.Create;
end;

destructor TServiceProduto.Destroy;
begin
  FRepositorioProduto.Free;
  inherited;
end;

function TServiceProduto.ObterPorId(Id: Integer): TProdutoCompleto;
begin
  Result := FRepositorioProduto.ObterPorId(Id);
end;

function TServiceProduto.ObterPorNome(Nome: string): TList<TProdutoSimplificado>;
begin
  Result := FRepositorioProduto.ObterPorNome(Nome);
end;

function TServiceProduto.ObterTodos: TList<TProdutoSimplificado>;
begin
  Result := FRepositorioProduto.ObterTodos;
end;

function TServiceProduto.Inserir(Produto: TProdutoCompleto): Boolean;
begin
  Result := FRepositorioProduto.Inserir(Produto);
end;

function TServiceProduto.Atualizar(Produto: TProdutoCompleto): Boolean;
begin
  Result := FRepositorioProduto.Atualizar(Produto);
end;

function TServiceProduto.Deletar(Id: Integer): Boolean;
begin
  Result := FRepositorioProduto.Deletar(Id);
end;

end.

end.
