unit ProdutoSimplificado;

interface

type
  TProdutoSimplificado = class
  private
    FIdProduto: Integer;
    FDescricao: string;
    FNCM: string;
    FValorVenda: Double;
    FEstoque: Double;
  public
    property IdProduto: Integer read FIdProduto write FIdProduto;
    property Descricao: string read FDescricao write FDescricao;
    property NCM: string read FNCM write FNCM;
    property ValorVenda: Double read FValorVenda write FValorVenda;
    property Estoque: Double read FEstoque write FEstoque;
  end;


implementation

end.

