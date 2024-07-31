unit Controller.Produto;

interface

uses
  Service.Produto, ProdutoSimplificado, ProdutoCompleto, Generics.Collections;

type
  TControllerProduto = class
  private
    FServiceProduto: TServiceProduto;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterPorId(Id: Integer): TProdutoCompleto;
    function ObterPorNome(Nome: string): TObjectList<TProdutoSimplificado>;
    function ObterTodos: TObjectList<TProdutoSimplificado>;
    function Inserir(Produto: TProdutoCompleto): Boolean;
    function Atualizar(Produto: TProdutoCompleto): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

constructor TControllerProduto.Create;
begin
  FServiceProduto := TServiceProduto.Create;
end;

destructor TControllerProduto.Destroy;
begin
  FServiceProduto.Free;
  inherited;
end;

function TControllerProduto.ObterPorId(Id: Integer): TProdutoCompleto;
begin
  Result := FServiceProduto.ObterPorId(Id);
end;

function TControllerProduto.ObterPorNome(Nome: string): TObjectList<TProdutoSimplificado>;
begin
  Result := FServiceProduto.ObterPorNome(Nome);
end;

function TControllerProduto.ObterTodos: TObjectList<TProdutoSimplificado>;
begin
  Result := FServiceProduto.ObterTodos;
end;

function TControllerProduto.Inserir(Produto: TProdutoCompleto): Boolean;
begin
  Result := FServiceProduto.Inserir(Produto);
end;

function TControllerProduto.Atualizar(Produto: TProdutoCompleto): Boolean;
begin
  Result := FServiceProduto.Atualizar(Produto);
end;

function TControllerProduto.Deletar(Id: Integer): Boolean;
begin
  Result := FServiceProduto.Deletar(Id);
end;

end.

