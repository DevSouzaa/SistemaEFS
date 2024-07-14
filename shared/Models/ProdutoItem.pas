unit ProdutoItem;

interface
uses
  SysUtils, Classes;

type
  TProdutoItem = class
  private
    FIdProdutoItem: Integer;
    FIdProduto: Integer;
    FValorCustoInicial: Double;
    FValorCustoEntrada: Double;
    FValorVendaVista: Double;
    FValorVendaPrazo: Double;
    FValorAtacado: Double;
    FEstoqueMinimo: Double;
    FEstoqueMaximo: Double;
    FICMSCompra: Double;
    FReducaoBaseCalculoICMS: Double;
    FMVACompra: Double;
    FICMSSTCompra: Double;
    FValorCustoOperacional: Double;
    FReducaoBaseCalculoICMSST: Double;
    FValorICMSST: Double;
    FIPICompra: Double;
    FFreteCompra: Double;
    FValorFreteCompra: Double;
    FValorOutrosCustos: Double;
    FValorPrecoCaixa: Double;
    FPesoCaixa: Double;
    FQuantidadeCaixa: Double;
    FPercentualICMSCompra: Double;
    FPercentualICMSSTCompra: Double;
    FAliquotaPISCompra: Double;
    FValorFreteCompraVenda: Double;
    FPercentualReducaoBaseCalculoICMSCompra: Double;
    FPercentualReducaoBaseCalculoICMSSTCompra: Double;
    FAliquotaCOFINSCompra: Double;
    FAliquotaIPICompra: Double;
    FValorICMSSTCompra: Double;
    FPercentualFreteCompra: Double;
    FPercentualOutrosCompra: Double;
    FIdPISConfins: Integer;
    FIdTributacao: Integer;
    FIdFilial: Integer;
    FValorPercentualMargemLucro: Double;
    FValorLucro: Double;
    FEstoque: Double;
    FPercentualICMSVenda: Double;
    FPercentualFreteVenda: Double;
    FPercentualPISVenda: Double;
    FPercentualCOFINSVenda: Double;
    FDespesaOperacionalVenda: Double;
    FPercentualComissaoVendaAVista: Double;
    FPercentualComissaoVendaPrazo: Double;
    FPercentualOutrosVenda: Double;
    FDescontoPrecoCompra: Double;
    FValorCustoVenda: Double;
  public
    property IdProdutoItem: Integer read FIdProdutoItem write FIdProdutoItem;
    property IdProduto: Integer read FIdProduto write FIdProduto;
    property ValorCustoInicial: Double read FValorCustoInicial write FValorCustoInicial;
    property ValorCustoEntrada: Double read FValorCustoEntrada write FValorCustoEntrada;
    property ValorVendaVista: Double read FValorVendaVista write FValorVendaVista;
    property ValorVendaPrazo: Double read FValorVendaPrazo write FValorVendaPrazo;
    property ValorAtacado: Double read FValorAtacado write FValorAtacado;
    property EstoqueMinimo: Double read FEstoqueMinimo write FEstoqueMinimo;
    property EstoqueMaximo: Double read FEstoqueMaximo write FEstoqueMaximo;
    property ICMSCompra: Double read FICMSCompra write FICMSCompra;
    property ReducaoBaseCalculoICMS: Double read FReducaoBaseCalculoICMS write FReducaoBaseCalculoICMS;
    property MVACompra: Double read FMVACompra write FMVACompra;
    property ICMSSTCompra: Double read FICMSSTCompra write FICMSSTCompra;
    property ValorCustoOperacional: Double read FValorCustoOperacional write FValorCustoOperacional;
    property ReducaoBaseCalculoICMSST: Double read FReducaoBaseCalculoICMSST write FReducaoBaseCalculoICMSST;
    property ValorICMSST: Double read FValorICMSST write FValorICMSST;
    property IPICompra: Double read FIPICompra write FIPICompra;
    property FreteCompra: Double read FFreteCompra write FFreteCompra;
    property ValorFreteCompra: Double read FValorFreteCompra write FValorFreteCompra;
    property ValorOutrosCustos: Double read FValorOutrosCustos write FValorOutrosCustos;
    property ValorPrecoCaixa: Double read FValorPrecoCaixa write FValorPrecoCaixa;
    property PesoCaixa: Double read FPesoCaixa write FPesoCaixa;
    property QuantidadeCaixa: Double read FQuantidadeCaixa write FQuantidadeCaixa;
    property PercentualICMSCompra: Double read FPercentualICMSCompra write FPercentualICMSCompra;
    property PercentualICMSSTCompra: Double read FPercentualICMSSTCompra write FPercentualICMSSTCompra;
    property AliquotaPISCompra: Double read FAliquotaPISCompra write FAliquotaPISCompra;
    property ValorFreteCompraVenda: Double read FValorFreteCompraVenda write FValorFreteCompraVenda;
    property PercentualReducaoBaseCalculoICMSCompra: Double read FPercentualReducaoBaseCalculoICMSCompra write FPercentualReducaoBaseCalculoICMSCompra;
    property PercentualReducaoBaseCalculoICMSSTCompra: Double read FPercentualReducaoBaseCalculoICMSSTCompra write FPercentualReducaoBaseCalculoICMSSTCompra;
    property AliquotaCOFINSCompra: Double read FAliquotaCOFINSCompra write FAliquotaCOFINSCompra;
    property AliquotaIPICompra: Double read FAliquotaIPICompra write FAliquotaIPICompra;
    property ValorICMSSTCompra: Double read FValorICMSSTCompra write FValorICMSSTCompra;
    property PercentualFreteCompra: Double read FPercentualFreteCompra write FPercentualFreteCompra;
    property PercentualOutrosCompra: Double read FPercentualOutrosCompra write FPercentualOutrosCompra;
    property IdPISConfins: Integer read FIdPISConfins write FIdPISConfins;
    property IdTributacao: Integer read FIdTributacao write FIdTributacao;
    property IdFilial: Integer read FIdFilial write FIdFilial;
    property ValorPercentualMargemLucro: Double read FValorPercentualMargemLucro write FValorPercentualMargemLucro;
    property ValorLucro: Double read FValorLucro write FValorLucro;
    property Estoque: Double read FEstoque write FEstoque;
    property PercentualICMSVenda: Double read FPercentualICMSVenda write FPercentualICMSVenda;
    property PercentualFreteVenda: Double read FPercentualFreteVenda write FPercentualFreteVenda;
    property PercentualPISVenda: Double read FPercentualPISVenda write FPercentualPISVenda;
    property PercentualCOFINSVenda: Double read FPercentualCOFINSVenda write FPercentualCOFINSVenda;
    property DespesaOperacionalVenda: Double read FDespesaOperacionalVenda write FDespesaOperacionalVenda;
    property PercentualComissaoVendaAVista: Double read FPercentualComissaoVendaAVista write FPercentualComissaoVendaAVista;
    property PercentualComissaoVendaPrazo: Double read FPercentualComissaoVendaPrazo write FPercentualComissaoVendaPrazo;
    property PercentualOutrosVenda: Double read FPercentualOutrosVenda write FPercentualOutrosVenda;
    property DescontoPrecoCompra: Double read FDescontoPrecoCompra write FDescontoPrecoCompra;
    property ValorCustoVenda: Double read FValorCustoVenda write FValorCustoVenda;
  end;

implementation


end.
