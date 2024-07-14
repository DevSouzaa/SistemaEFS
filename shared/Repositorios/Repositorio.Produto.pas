unit Repositorio.Produto;

interface

uses
  ProdutoSimplificado, ProdutoCompleto, ProdutoItem, Generics.Collections, FireDAC.Comp.Client, RepositorioBase, System.SysUtils, System.Classes, FireDAC.Stan.Param, Data.DB;

type
  TRepositorioProduto = class(TRepositorioBase)
  public
    function ObterPorId(Id: Integer): TProdutoCompleto;
    function ObterPorNome(Nome: string): TList<TProdutoSimplificado>;
    function ObterTodos: TList<TProdutoSimplificado>;
    function Inserir(Produto: TProdutoCompleto): Boolean;
    function Atualizar(Produto: TProdutoCompleto): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

{ TRepositorioProduto }

function TRepositorioProduto.ObterPorId(Id: Integer): TProdutoCompleto;
var
  Query: TFDQuery;
  Produto: TProdutoCompleto;
begin
  Produto := TProdutoCompleto.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM PRODUTOS WHERE IDPRODUTO = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.Open;

    if not Query.Eof then
    begin
      Produto.IdProduto := Query.FieldByName('IDPRODUTO').AsInteger;
      Produto.IdEmpresa := Query.FieldByName('IDEMPRESA').AsInteger;
      Produto.Descricao := Query.FieldByName('DESCRICAO').AsString;
      Produto.IdSubgrupo := Query.FieldByName('IDSUBGRUPO').AsInteger;
      Produto.IdMarca := Query.FieldByName('IDMARCA').AsInteger;
      Produto.IdFabricante := Query.FieldByName('IDFABRICANTE').AsInteger;
      Produto.IdFornecedor := Query.FieldByName('IDFORNECEDOR').AsInteger;
      Produto.IdUnidade := Query.FieldByName('IDUNIDADE').AsInteger;
      Produto.Referencia := Query.FieldByName('REFERENCIA').AsString;
      Produto.CodBarras := Query.FieldByName('CODBARRAS').AsString;
      Produto.PermiteDesconto := Query.FieldByName('PERMITEDESCONTO').AsString;
      Produto.DescMaximo := Query.FieldByName('DESCMAXIMO').AsFloat;
      Produto.PagarComissao := Query.FieldByName('PAGARCOMISSAO').AsString;
      Produto.ComissaoAVista := Query.FieldByName('COMISSAOAVISTA').AsFloat;
      Produto.NCM := Query.FieldByName('NCM').AsString;
      Produto.DataHoraCadastro := Query.FieldByName('DATAHORACADASTRO').AsDateTime;
      Produto.DataHoraAlteracao := Query.FieldByName('DATAHORAALTERACAO').AsDateTime;
      Produto.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Produto.IdOrigem := Query.FieldByName('IDORIGEM').AsInteger;
      Produto.DescCompra := Query.FieldByName('DESCCOMPRA').AsFloat;
      Produto.IdLocalizacao := Query.FieldByName('IDLOCALIZACAO').AsInteger;
      Produto.IdLocalizacaoImpressao := Query.FieldByName('IDLOCALIZACAOIMPRESSAO').AsInteger;
      Produto.InfAdicionais := Query.FieldByName('INFADICIONAIS').AsString;
      Produto.Aplicacao := Query.FieldByName('APLICACAO').AsString;
      Produto.PossuiDerivados := Query.FieldByName('POSSUIDERIVADOS').AsString;
      Produto.CSTPisCofinsEntrada := Query.FieldByName('CSTPISCOFINSENTRADA').AsInteger;
      Produto.CSTPisCofinsSaida := Query.FieldByName('CSTPISCOFINSSAIDA').AsInteger;
      Produto.CEST := Query.FieldByName('CEST').AsString;
      Produto.IdUsuarioCadastro := Query.FieldByName('IDUSUARIOCADASTRO').AsInteger;
      Produto.IdUsuarioAlteracao := Query.FieldByName('IDUSUARIOALTERACAO').AsInteger;
      Produto.IdSetor := Query.FieldByName('IDSETOR').AsInteger;
      Produto.CodBarrasCxa := Query.FieldByName('CODBARRASCXA').AsString;
      Produto.Referencia2 := Query.FieldByName('REFERENCIA2').AsString;
      Produto.Referencia3 := Query.FieldByName('REFERENCIA3').AsString;
      Produto.IdANP := Query.FieldByName('IDANP').AsInteger;
      Produto.ComissaoAPrazo := Query.FieldByName('COMISSAOAPRAZO').AsFloat;
      Produto.PesoUni := Query.FieldByName('PESOUNI').AsFloat;
      Produto.IdGrupo := Query.FieldByName('IDGRUPO').AsInteger;
      Produto.ProdutoBalanca := Query.FieldByName('PRODUTOBALANCA').AsString;
      Produto.IdOrigemMercadoria := Query.FieldByName('IDORIGEMMERCADORIA').AsInteger;
      Produto.IdEmbalagem := Query.FieldByName('IDEMBALAGEM').AsInteger;
      Produto.DescricaoNCM := Query.FieldByName('DESCRICAONCM').AsString;
      Produto.VendeFracionado := Query.FieldByName('VENDEFRACIONADO').AsBoolean;
      Produto.PrecoLivre := Query.FieldByName('PRECOLIVRE').AsString;
      Produto.PesoBruto := Query.FieldByName('PESOBRUTO').AsFloat;
      Produto.Fotos := Query.FieldByName('FOTO1').AsString;

      // Carregar item do produto
      Query.SQL.Text := 'SELECT * FROM PRODUTOSITENS WHERE IDPRODUTO = :ID';
      Query.ParamByName('ID').AsInteger := Id;
      Query.Open;

      if not Query.Eof then
      begin
        Produto.Item.IdProdutoItem := Query.FieldByName('IDPRODUTOITEM').AsInteger;
        Produto.Item.IdProduto := Query.FieldByName('IDPRODUTO').AsInteger;
        Produto.Item.ValorCustoInicial := Query.FieldByName('VLRCUSTOINICIAL').AsFloat;
        Produto.Item.ValorCustoEntrada := Query.FieldByName('VLRCUSTOENTRADA').AsFloat;
        Produto.Item.ValorVendaVista := Query.FieldByName('VLRVENDAVISTA').AsFloat;
        Produto.Item.ValorVendaPrazo := Query.FieldByName('VLRVENDAPRAZO').AsFloat;
        Produto.Item.ValorAtacado := Query.FieldByName('VLRATACADO').AsFloat;
        Produto.Item.EstoqueMinimo := Query.FieldByName('ESTOQUEMINIMO').AsFloat;
        Produto.Item.EstoqueMaximo := Query.FieldByName('ESTOQUEMAXIMO').AsFloat;
        Produto.Item.ICMSCompra := Query.FieldByName('ICMSCOMPRA').AsFloat;
        Produto.Item.ReducaoBaseCalculoICMS := Query.FieldByName('REDUCAOBASECALCULOICMS').AsFloat;
        Produto.Item.MVACompra := Query.FieldByName('MVACOMPRA').AsFloat;
        Produto.Item.ICMSSTCompra := Query.FieldByName('ICMSSTCOMPRA').AsFloat;
        Produto.Item.ValorCustoOperacional := Query.FieldByName('VLRCUSTOOPERACIONAL').AsFloat;
        Produto.Item.ReducaoBaseCalculoICMSST := Query.FieldByName('REDUCAOBASECALCULOICMSST').AsFloat;
        Produto.Item.ValorICMSST := Query.FieldByName('VLRICMSST').AsFloat;
        Produto.Item.IPICompra := Query.FieldByName('IPICOMPRA').AsFloat;
        Produto.Item.FreteCompra := Query.FieldByName('FRETECOMPRA').AsFloat;
        Produto.Item.ValorFreteCompra := Query.FieldByName('VLRFRETECOMPRA').AsFloat;
        Produto.Item.ValorOutrosCustos := Query.FieldByName('VLROUTROSCUSTOS').AsFloat;
        Produto.Item.ValorPrecoCaixa := Query.FieldByName('VLRPRECOCAIXA').AsFloat;
        Produto.Item.PesoCaixa := Query.FieldByName('PESOCAIXA').AsFloat;
        Produto.Item.QuantidadeCaixa := Query.FieldByName('QTDCAIXA').AsFloat;
        Produto.Item.PercentualICMSCompra := Query.FieldByName('PERCICMSCOMPRA').AsFloat;
        Produto.Item.PercentualICMSSTCompra := Query.FieldByName('PERCICMSSTCOMPRA').AsFloat;
        Produto.Item.AliquotaPISCompra := Query.FieldByName('ALIQPISCOMPRA').AsFloat;
        Produto.Item.ValorFreteCompraVenda := Query.FieldByName('VALORFRETECOMPRA').AsFloat;
        Produto.Item.PercentualReducaoBaseCalculoICMSCompra := Query.FieldByName('PERCREDBASECALCULOICMSCOMPRA').AsFloat;
        Produto.Item.PercentualReducaoBaseCalculoICMSSTCompra := Query.FieldByName('PERCREDBASECALCULOICMSSTCOMPRA').AsFloat;
        Produto.Item.AliquotaCOFINSCompra := Query.FieldByName('ALIQCOFINSCOMPRA').AsFloat;
        Produto.Item.AliquotaIPICompra := Query.FieldByName('ALIQIPICOMPRA').AsFloat;
        Produto.Item.ValorICMSSTCompra := Query.FieldByName('VALORICMSSTCOMPRA').AsFloat;
        Produto.Item.PercentualFreteCompra := Query.FieldByName('PERCFRETECOMPRA').AsFloat;
        Produto.Item.PercentualOutrosCompra := Query.FieldByName('PERCOUTROSCOMPRA').AsFloat;
        Produto.Item.IdPISConfins := Query.FieldByName('IDPISCOFINS').AsInteger;
        Produto.Item.IdTributacao := Query.FieldByName('IDTRIBUTACAO').AsInteger;
        Produto.Item.IdFilial := Query.FieldByName('IDFILIAL').AsInteger;
        Produto.Item.ValorPercentualMargemLucro := Query.FieldByName('VLRPERCMARGEMLUCRO').AsFloat;
        Produto.Item.ValorLucro := Query.FieldByName('VLRLUCRO').AsFloat;
        Produto.Item.Estoque := Query.FieldByName('ESTOQUE').AsFloat;
        Produto.Item.PercentualICMSVenda := Query.FieldByName('PERC_ICMS_VENDA').AsFloat;
        Produto.Item.PercentualFreteVenda := Query.FieldByName('PERC_FRETE_VENDA').AsFloat;
        Produto.Item.PercentualPISVenda := Query.FieldByName('PERC_PIS_VENDA').AsFloat;
        Produto.Item.PercentualCOFINSVenda := Query.FieldByName('PERC_COFINS_VENDA').AsFloat;
        Produto.Item.DespesaOperacionalVenda := Query.FieldByName('DESP_OPER_VENDA').AsFloat;
        Produto.Item.PercentualComissaoVendaAVista := Query.FieldByName('PERC_COMISSAO_VENDA_AVISTA').AsFloat;
        Produto.Item.PercentualComissaoVendaPrazo := Query.FieldByName('PERC_COMISSAO_VENDA_PRAZO').AsFloat;
        Produto.Item.PercentualOutrosVenda := Query.FieldByName('PERC_OUTROS_VENDA').AsFloat;
        Produto.Item.DescontoPrecoCompra := Query.FieldByName('DESCONTO_PRECO_COMPRA').AsFloat;
        Produto.Item.ValorCustoVenda := Query.FieldByName('VALOR_CUSTO_VENDA').AsFloat;
      end;

      Result := Produto;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioProduto.ObterPorNome(Nome: string): TList<TProdutoSimplificado>;
var
  Query: TFDQuery;
  Produtos: TList<TProdutoSimplificado>;
  Produto: TProdutoSimplificado;
begin
  Produtos := TList<TProdutoSimplificado>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT p.IDPRODUTO, p.DESCRICAO, p.NCM, pi.VLRVENDAVISTA, pi.ESTOQUE ' +
                      'FROM PRODUTOS p ' +
                      'LEFT JOIN PRODUTOSITENS pi ON p.IDPRODUTO = pi.IDPRODUTO ' +
                      'WHERE p.DESCRICAO LIKE :NOME';
    Query.ParamByName('NOME').AsString := '%' + Nome + '%';
    Query.Open;

    while not Query.Eof do
    begin
      Produto := TProdutoSimplificado.Create;
      Produto.IdProduto  := Query.FieldByName('IDPRODUTO').AsInteger;
      Produto.Descricao  := Query.FieldByName('DESCRICAO').AsString;
      Produto.NCM        := Query.FieldByName('NCM').AsString;
      Produto.ValorVenda := Query.FieldByName('VLRVENDAVISTA').AsFloat;
      Produto.Estoque    := Query.FieldByName('ESTOQUE').AsFloat;
      Produtos.Add(Produto);
      Query.Next;
    end;
    Result := Produtos;
  finally
    Query.Free;
  end;
end;

function TRepositorioProduto.ObterTodos: TList<TProdutoSimplificado>;
var
  Query: TFDQuery;
  Produtos: TList<TProdutoSimplificado>;
  Produto: TProdutoSimplificado;
begin
  Produtos := TList<TProdutoSimplificado>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT p.IDPRODUTO, p.DESCRICAO, p.NCM, pi.VLRVENDAVISTA, pi.ESTOQUE ' +
                      'FROM PRODUTOS p ' +
                      'LEFT JOIN PRODUTOSITENS pi ON p.IDPRODUTO = pi.IDPRODUTO';
    Query.Open;

    while not Query.Eof do
    begin
      Produto := TProdutoSimplificado.Create;
      Produto.IdProduto  := Query.FieldByName('IDPRODUTO').AsInteger;
      Produto.Descricao  := Query.FieldByName('DESCRICAO').AsString;
      Produto.NCM        := Query.FieldByName('NCM').AsString;
      Produto.ValorVenda := Query.FieldByName('VLRVENDAVISTA').AsFloat;
      Produto.Estoque    := Query.FieldByName('ESTOQUE').AsFloat;
      Produtos.Add(Produto);
      Query.Next;
    end;
    Result := Produtos;
  finally
    Query.Free;
  end;
end;

function TRepositorioProduto.Inserir(Produto: TProdutoCompleto): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO PRODUTOS (IDPRODUTO, IDEMPRESA, DESCRICAO, IDSUBGRUPO, IDMARCA, IDFABRICANTE, ' +
                      'IDFORNECEDOR, IDUNIDADE, REFERENCIA, CODBARRAS, PERMITEDESCONTO, DESCMAXIMO, PAGARCOMISSAO, ' +
                      'COMISSAOAVISTA, NCM, DATAHORACADASTRO, DATAHORAALTERACAO, ATIVO, IDORIGEM, DESCCOMPRA, ' +
                      'IDLOCALIZACAO, IDLOCALIZACAOIMPRESSAO, INFADICIONAIS, APLICACAO, POSSUIDERIVADOS, ' +
                      'CSTPISCOFINSENTRADA, CSTPISCOFINSSAIDA, CEST, IDUSUARIOCADASTRO, IDUSUARIOALTERACAO, ' +
                      'IDSETOR, CODBARRASCXA, REFERENCIA2, REFERENCIA3, IDANP, COMISSAOAPRAZO, PESOUNI, IDGRUPO, ' +
                      'PRODUTOBALANCA, IDORIGEMMERCADORIA, IDEMBALAGEM, DESCRICAONCM, VENDEFRACIONADO, PRECOLIVRE, ' +
                      'PESOBRUTO, FOTO1) ' +
                      'VALUES (:IDPRODUTO, :IDEMPRESA, :DESCRICAO, :IDSUBGRUPO, :IDMARCA, :IDFABRICANTE, :IDFORNECEDOR, ' +
                      ':IDUNIDADE, :REFERENCIA, :CODBARRAS, :PERMITEDESCONTO, :DESCMAXIMO, :PAGARCOMISSAO, ' +
                      ':COMISSAOAVISTA, :NCM, :DATAHORACADASTRO, :DATAHORAALTERACAO, :ATIVO, :IDORIGEM, :DESCCOMPRA, ' +
                      ':IDLOCALIZACAO, :IDLOCALIZACAOIMPRESSAO, :INFADICIONAIS, :APLICACAO, :POSSUIDERIVADOS, ' +
                      ':CSTPISCOFINSENTRADA, :CSTPISCOFINSSAIDA, :CEST, :IDUSUARIOCADASTRO, :IDUSUARIOALTERACAO, ' +
                      ':IDSETOR, :CODBARRASCXA, :REFERENCIA2, :REFERENCIA3, :IDANP, :COMISSAOAPRAZO, :PESOUNI, :IDGRUPO, ' +
                      ':PRODUTOBALANCA, :IDORIGEMMERCADORIA, :IDEMBALAGEM, :DESCRICAONCM, :VENDEFRACIONADO, :PRECOLIVRE, ' +
                      ':PESOBRUTO, :FOTO1)';
    Query.ParamByName('IDPRODUTO').AsInteger := Produto.IdProduto;
    Query.ParamByName('IDEMPRESA').AsInteger := Produto.IdEmpresa;
    Query.ParamByName('DESCRICAO').AsString := Produto.Descricao;
    Query.ParamByName('IDSUBGRUPO').AsInteger := Produto.IdSubgrupo;
    Query.ParamByName('IDMARCA').AsInteger := Produto.IdMarca;
    Query.ParamByName('IDFABRICANTE').AsInteger := Produto.IdFabricante;
    Query.ParamByName('IDFORNECEDOR').AsInteger := Produto.IdFornecedor;
    Query.ParamByName('IDUNIDADE').AsInteger := Produto.IdUnidade;
    Query.ParamByName('REFERENCIA').AsString := Produto.Referencia;
    Query.ParamByName('CODBARRAS').AsString := Produto.CodBarras;
    Query.ParamByName('PERMITEDESCONTO').AsString := Produto.PermiteDesconto;
    Query.ParamByName('DESCMAXIMO').AsFloat := Produto.DescMaximo;
    Query.ParamByName('PAGARCOMISSAO').AsString := Produto.PagarComissao;
    Query.ParamByName('COMISSAOAVISTA').AsFloat := Produto.ComissaoAVista;
    Query.ParamByName('NCM').AsString := Produto.NCM;
    Query.ParamByName('DATAHORACADASTRO').AsDateTime := Produto.DataHoraCadastro;
    Query.ParamByName('DATAHORAALTERACAO').AsDateTime := Produto.DataHoraAlteracao;
    Query.ParamByName('ATIVO').AsBoolean := Produto.Ativo;
    Query.ParamByName('IDORIGEM').AsInteger := Produto.IdOrigem;
    Query.ParamByName('DESCCOMPRA').AsFloat := Produto.DescCompra;
    Query.ParamByName('IDLOCALIZACAO').AsInteger := Produto.IdLocalizacao;
    Query.ParamByName('IDLOCALIZACAOIMPRESSAO').AsInteger := Produto.IdLocalizacaoImpressao;
    Query.ParamByName('INFADICIONAIS').AsString := Produto.InfAdicionais;
    Query.ParamByName('APLICACAO').AsString := Produto.Aplicacao;
    Query.ParamByName('POSSUIDERIVADOS').AsString := Produto.PossuiDerivados;
    Query.ParamByName('CSTPISCOFINSENTRADA').AsInteger := Produto.CSTPisCofinsEntrada;
    Query.ParamByName('CSTPISCOFINSSAIDA').AsInteger := Produto.CSTPisCofinsSaida;
    Query.ParamByName('CEST').AsString := Produto.CEST;
    Query.ParamByName('IDUSUARIOCADASTRO').AsInteger := Produto.IdUsuarioCadastro;
    Query.ParamByName('IDUSUARIOALTERACAO').AsInteger := Produto.IdUsuarioAlteracao;
    Query.ParamByName('IDSETOR').AsInteger := Produto.IdSetor;
    Query.ParamByName('CODBARRASCXA').AsString := Produto.CodBarrasCxa;
    Query.ParamByName('REFERENCIA2').AsString := Produto.Referencia2;
    Query.ParamByName('REFERENCIA3').AsString := Produto.Referencia3;
    Query.ParamByName('IDANP').AsInteger := Produto.IdANP;
    Query.ParamByName('COMISSAOAPRAZO').AsFloat := Produto.ComissaoAPrazo;
    Query.ParamByName('PESOUNI').AsFloat := Produto.PesoUni;
    Query.ParamByName('IDGRUPO').AsInteger := Produto.IdGrupo;
    Query.ParamByName('PRODUTOBALANCA').AsString := Produto.ProdutoBalanca;
    Query.ParamByName('IDORIGEMMERCADORIA').AsInteger := Produto.IdOrigemMercadoria;
    Query.ParamByName('IDEMBALAGEM').AsInteger := Produto.IdEmbalagem;
    Query.ParamByName('DESCRICAONCM').AsString := Produto.DescricaoNCM;
    Query.ParamByName('VENDEFRACIONADO').AsBoolean := Produto.VendeFracionado;
    Query.ParamByName('PRECOLIVRE').AsString := Produto.PrecoLivre;
    Query.ParamByName('PESOBRUTO').AsFloat := Produto.PesoBruto;
    Query.ParamByName('FOTO1').AsString := Produto.Fotos;
    Query.ExecSQL;

    // Inserir item do produto
    Query.SQL.Text := 'INSERT INTO PRODUTOSITENS (IDPRODUTOITEM, IDPRODUTO, VLRCUSTOINICIAL, VLRCUSTOENTRADA, VLRVENDAVISTA, ' +
                      'VLRVENDAPRAZO, VLRATACADO, ESTOQUEMINIMO, ESTOQUEMAXIMO, ICMSCOMPRA, REDUCAOBASECALCULOICMS, ' +
                      'MVACOMPRA, ICMSSTCOMPRA, VLRCUSTOOPERACIONAL, REDUCAOBASECALCULOICMSST, VLRICMSST, IPICOMPRA, ' +
                      'FRETECOMPRA, VLRFRETECOMPRA, VLROUTROSCUSTOS, VLRPRECOCAIXA, PESOCAIXA, QTDCAIXA, PERCICMSCOMPRA, ' +
                      'PERCICMSSTCOMPRA, ALIQPISCOMPRA, VALORFRETECOMPRA, PERCREDBASECALCULOICMSCOMPRA, ' +
                      'PERCREDBASECALCULOICMSSTCOMPRA, ALIQCOFINSCOMPRA, ALIQIPICOMPRA, VALORICMSSTCOMPRA, PERCFRETECOMPRA, ' +
                      'PERCOUTROSCOMPRA, IDPISCOFINS, IDTRIBUTACAO, IDFILIAL, VLRPERCMARGEMLUCRO, VLRLUCRO, ESTOQUE, ' +
                      'PERC_ICMS_VENDA, PERC_FRETE_VENDA, PERC_PIS_VENDA, PERC_COFINS_VENDA, DESP_OPER_VENDA, ' +
                      'PERC_COMISSAO_VENDA_AVISTA, PERC_COMISSAO_VENDA_PRAZO, PERC_OUTROS_VENDA, DESCONTO_PRECO_COMPRA, ' +
                      'VALOR_CUSTO_VENDA) ' +
                      'VALUES (:IDPRODUTOITEM, :IDPRODUTO, :VLRCUSTOINICIAL, :VLRCUSTOENTRADA, :VLRVENDAVISTA, :VLRVENDAPRAZO, ' +
                      ':VLRATACADO, :ESTOQUEMINIMO, :ESTOQUEMAXIMO, :ICMSCOMPRA, :REDUCAOBASECALCULOICMS, :MVACOMPRA, ' +
                      ':ICMSSTCOMPRA, :VLRCUSTOOPERACIONAL, :REDUCAOBASECALCULOICMSST, :VLRICMSST, :IPICOMPRA, :FRETECOMPRA, ' +
                      ':VLRFRETECOMPRA, :VLROUTROSCUSTOS, :VLRPRECOCAIXA, :PESOCAIXA, :QTDCAIXA, :PERCICMSCOMPRA, :PERCICMSSTCOMPRA, ' +
                      ':ALIQPISCOMPRA, :VALORFRETECOMPRA, :PERCREDBASECALCULOICMSCOMPRA, :PERCREDBASECALCULOICMSSTCOMPRA, ' +
                      ':ALIQCOFINSCOMPRA, :ALIQIPICOMPRA, :VALORICMSSTCOMPRA, :PERCFRETECOMPRA, :PERCOUTROSCOMPRA, ' +
                      ':IDPISCOFINS, :IDTRIBUTACAO, :IDFILIAL, :VLRPERCMARGEMLUCRO, :VLRLUCRO, :ESTOQUE, :PERC_ICMS_VENDA, ' +
                      ':PERC_FRETE_VENDA, :PERC_PIS_VENDA, :PERC_COFINS_VENDA, :DESP_OPER_VENDA, :PERC_COMISSAO_VENDA_AVISTA, ' +
                      ':PERC_COMISSAO_VENDA_PRAZO, :PERC_OUTROS_VENDA, :DESCONTO_PRECO_COMPRA, :VALOR_CUSTO_VENDA)';
    Query.ParamByName('IDPRODUTOITEM').AsInteger := Produto.Item.IdProdutoItem;
    Query.ParamByName('IDPRODUTO').AsInteger := Produto.Item.IdProduto;
    Query.ParamByName('VLRCUSTOINICIAL').AsFloat := Produto.Item.ValorCustoInicial;
    Query.ParamByName('VLRCUSTOENTRADA').AsFloat := Produto.Item.ValorCustoEntrada;
    Query.ParamByName('VLRVENDAVISTA').AsFloat := Produto.Item.ValorVendaVista;
    Query.ParamByName('VLRVENDAPRAZO').AsFloat := Produto.Item.ValorVendaPrazo;
    Query.ParamByName('VLRATACADO').AsFloat := Produto.Item.ValorAtacado;
    Query.ParamByName('ESTOQUEMINIMO').AsFloat := Produto.Item.EstoqueMinimo;
    Query.ParamByName('ESTOQUEMAXIMO').AsFloat := Produto.Item.EstoqueMaximo;
    Query.ParamByName('ICMSCOMPRA').AsFloat := Produto.Item.ICMSCompra;
    Query.ParamByName('REDUCAOBASECALCULOICMS').AsFloat := Produto.Item.ReducaoBaseCalculoICMS;
    Query.ParamByName('MVACOMPRA').AsFloat := Produto.Item.MVACompra;
    Query.ParamByName('ICMSSTCOMPRA').AsFloat := Produto.Item.ICMSSTCompra;
    Query.ParamByName('VLRCUSTOOPERACIONAL').AsFloat := Produto.Item.ValorCustoOperacional;
    Query.ParamByName('REDUCAOBASECALCULOICMSST').AsFloat := Produto.Item.ReducaoBaseCalculoICMSST;
    Query.ParamByName('VLRICMSST').AsFloat := Produto.Item.ValorICMSST;
    Query.ParamByName('IPICOMPRA').AsFloat := Produto.Item.IPICompra;
    Query.ParamByName('FRETECOMPRA').AsFloat := Produto.Item.FreteCompra;
    Query.ParamByName('VLRFRETECOMPRA').AsFloat := Produto.Item.ValorFreteCompra;
    Query.ParamByName('VLROUTROSCUSTOS').AsFloat := Produto.Item.ValorOutrosCustos;
    Query.ParamByName('VLRPRECOCAIXA').AsFloat := Produto.Item.ValorPrecoCaixa;
    Query.ParamByName('PESOCAIXA').AsFloat := Produto.Item.PesoCaixa;
    Query.ParamByName('QTDCAIXA').AsFloat := Produto.Item.QuantidadeCaixa;
    Query.ParamByName('PERCICMSCOMPRA').AsFloat := Produto.Item.PercentualICMSCompra;
    Query.ParamByName('PERCICMSSTCOMPRA').AsFloat := Produto.Item.PercentualICMSSTCompra;
    Query.ParamByName('ALIQPISCOMPRA').AsFloat := Produto.Item.AliquotaPISCompra;
    Query.ParamByName('VALORFRETECOMPRA').AsFloat := Produto.Item.ValorFreteCompraVenda;
    Query.ParamByName('PERCREDBASECALCULOICMSCOMPRA').AsFloat := Produto.Item.PercentualReducaoBaseCalculoICMSCompra;
    Query.ParamByName('PERCREDBASECALCULOICMSSTCOMPRA').AsFloat := Produto.Item.PercentualReducaoBaseCalculoICMSSTCompra;
    Query.ParamByName('ALIQCOFINSCOMPRA').AsFloat := Produto.Item.AliquotaCOFINSCompra;
    Query.ParamByName('ALIQIPICOMPRA').AsFloat := Produto.Item.AliquotaIPICompra;
    Query.ParamByName('VALORICMSSTCOMPRA').AsFloat := Produto.Item.ValorICMSSTCompra;
    Query.ParamByName('PERCFRETECOMPRA').AsFloat := Produto.Item.PercentualFreteCompra;
    Query.ParamByName('PERCOUTROSCOMPRA').AsFloat := Produto.Item.PercentualOutrosCompra;
    Query.ParamByName('IDPISCOFINS').AsInteger := Produto.Item.IdPISConfins;
    Query.ParamByName('IDTRIBUTACAO').AsInteger := Produto.Item.IdTributacao;
    Query.ParamByName('IDFILIAL').AsInteger := Produto.Item.IdFilial;
    Query.ParamByName('VLRPERCMARGEMLUCRO').AsFloat := Produto.Item.ValorPercentualMargemLucro;
    Query.ParamByName('VLRLUCRO').AsFloat := Produto.Item.ValorLucro;
    Query.ParamByName('ESTOQUE').AsFloat := Produto.Item.Estoque;
    Query.ParamByName('PERC_ICMS_VENDA').AsFloat := Produto.Item.PercentualICMSVenda;
    Query.ParamByName('PERC_FRETE_VENDA').AsFloat := Produto.Item.PercentualFreteVenda;
    Query.ParamByName('PERC_PIS_VENDA').AsFloat := Produto.Item.PercentualPISVenda;
    Query.ParamByName('PERC_COFINS_VENDA').AsFloat := Produto.Item.PercentualCOFINSVenda;
    Query.ParamByName('DESP_OPER_VENDA').AsFloat := Produto.Item.DespesaOperacionalVenda;
    Query.ParamByName('PERC_COMISSAO_VENDA_AVISTA').AsFloat := Produto.Item.PercentualComissaoVendaAVista;
    Query.ParamByName('PERC_COMISSAO_VENDA_PRAZO').AsFloat := Produto.Item.PercentualComissaoVendaPrazo;
    Query.ParamByName('PERC_OUTROS_VENDA').AsFloat := Produto.Item.PercentualOutrosVenda;
    Query.ParamByName('DESCONTO_PRECO_COMPRA').AsFloat := Produto.Item.DescontoPrecoCompra;
    Query.ParamByName('VALOR_CUSTO_VENDA').AsFloat := Produto.Item.ValorCustoVenda;
    Query.ExecSQL;

    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioProduto.Atualizar(Produto: TProdutoCompleto): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE PRODUTOS SET DESCRICAO = :DESCRICAO, IDSUBGRUPO = :IDSUBGRUPO, IDMARCA = :IDMARCA, ' +
                      'IDFABRICANTE = :IDFABRICANTE, IDFORNECEDOR = :IDFORNECEDOR, IDUNIDADE = :IDUNIDADE, ' +
                      'REFERENCIA = :REFERENCIA, CODBARRAS = :CODBARRAS, PERMITEDESCONTO = :PERMITEDESCONTO, ' +
                      'DESCMAXIMO = :DESCMAXIMO, PAGARCOMISSAO = :PAGARCOMISSAO, COMISSAOAVISTA = :COMISSAOAVISTA, ' +
                      'NCM = :NCM, DATAHORAALTERACAO = :DATAHORAALTERACAO, ATIVO = :ATIVO, IDORIGEM = :IDORIGEM, ' +
                      'DESCCOMPRA = :DESCCOMPRA, IDLOCALIZACAO = :IDLOCALIZACAO, IDLOCALIZACAOIMPRESSAO = :IDLOCALIZACAOIMPRESSAO, ' +
                      'INFADICIONAIS = :INFADICIONAIS, APLICACAO = :APLICACAO, POSSUIDERIVADOS = :POSSUIDERIVADOS, ' +
                      'CSTPISCOFINSENTRADA = :CSTPISCOFINSENTRADA, CSTPISCOFINSSAIDA = :CSTPISCOFINSSAIDA, CEST = :CEST, ' +
                      'IDUSUARIOALTERACAO = :IDUSUARIOALTERACAO, IDSETOR = :IDSETOR, CODBARRASCXA = :CODBARRASCXA, ' +
                      'REFERENCIA2 = :REFERENCIA2, REFERENCIA3 = :REFERENCIA3, IDANP = :IDANP, COMISSAOAPRAZO = :COMISSAOAPRAZO, ' +
                      'PESOUNI = :PESOUNI, IDGRUPO = :IDGRUPO, PRODUTOBALANCA = :PRODUTOBALANCA, IDORIGEMMERCADORIA = :IDORIGEMMERCADORIA, ' +
                      'IDEMBALAGEM = :IDEMBALAGEM, DESCRICAONCM = :DESCRICAONCM, VENDEFRACIONADO = :VENDEFRACIONADO, ' +
                      'PRECOLIVRE = :PRECOLIVRE, PESOBRUTO = :PESOBRUTO, FOTO1 = :FOTO1 ' +
                      'WHERE IDPRODUTO = :IDPRODUTO';
    Query.ParamByName('IDPRODUTO').AsInteger := Produto.IdProduto;
    Query.ParamByName('DESCRICAO').AsString := Produto.Descricao;
    Query.ParamByName('IDSUBGRUPO').AsInteger := Produto.IdSubgrupo;
    Query.ParamByName('IDMARCA').AsInteger := Produto.IdMarca;
    Query.ParamByName('IDFABRICANTE').AsInteger := Produto.IdFabricante;
    Query.ParamByName('IDFORNECEDOR').AsInteger := Produto.IdFornecedor;
    Query.ParamByName('IDUNIDADE').AsInteger := Produto.IdUnidade;
    Query.ParamByName('REFERENCIA').AsString := Produto.Referencia;
    Query.ParamByName('CODBARRAS').AsString := Produto.CodBarras;
    Query.ParamByName('PERMITEDESCONTO').AsString := Produto.PermiteDesconto;
    Query.ParamByName('DESCMAXIMO').AsFloat := Produto.DescMaximo;
    Query.ParamByName('PAGARCOMISSAO').AsString := Produto.PagarComissao;
    Query.ParamByName('COMISSAOAVISTA').AsFloat := Produto.ComissaoAVista;
    Query.ParamByName('NCM').AsString := Produto.NCM;
    Query.ParamByName('DATAHORAALTERACAO').AsDateTime := Produto.DataHoraAlteracao;
    Query.ParamByName('ATIVO').AsBoolean := Produto.Ativo;
    Query.ParamByName('IDORIGEM').AsInteger := Produto.IdOrigem;
    Query.ParamByName('DESCCOMPRA').AsFloat := Produto.DescCompra;
    Query.ParamByName('IDLOCALIZACAO').AsInteger := Produto.IdLocalizacao;
    Query.ParamByName('IDLOCALIZACAOIMPRESSAO').AsInteger := Produto.IdLocalizacaoImpressao;
    Query.ParamByName('INFADICIONAIS').AsString := Produto.InfAdicionais;
    Query.ParamByName('APLICACAO').AsString := Produto.Aplicacao;
    Query.ParamByName('POSSUIDERIVADOS').AsString := Produto.PossuiDerivados;
    Query.ParamByName('CSTPISCOFINSENTRADA').AsInteger := Produto.CSTPisCofinsEntrada;
    Query.ParamByName('CSTPISCOFINSSAIDA').AsInteger := Produto.CSTPisCofinsSaida;
    Query.ParamByName('CEST').AsString := Produto.CEST;
    Query.ParamByName('IDUSUARIOALTERACAO').AsInteger := Produto.IdUsuarioAlteracao;
    Query.ParamByName('IDSETOR').AsInteger := Produto.IdSetor;
    Query.ParamByName('CODBARRASCXA').AsString := Produto.CodBarrasCxa;
    Query.ParamByName('REFERENCIA2').AsString := Produto.Referencia2;
    Query.ParamByName('REFERENCIA3').AsString := Produto.Referencia3;
    Query.ParamByName('IDANP').AsInteger := Produto.IdANP;
    Query.ParamByName('COMISSAOAPRAZO').AsFloat := Produto.ComissaoAPrazo;
    Query.ParamByName('PESOUNI').AsFloat := Produto.PesoUni;
    Query.ParamByName('IDGRUPO').AsInteger := Produto.IdGrupo;
    Query.ParamByName('PRODUTOBALANCA').AsString := Produto.ProdutoBalanca;
    Query.ParamByName('IDORIGEMMERCADORIA').AsInteger := Produto.IdOrigemMercadoria;
    Query.ParamByName('IDEMBALAGEM').AsInteger := Produto.IdEmbalagem;
    Query.ParamByName('DESCRICAONCM').AsString := Produto.DescricaoNCM;
    Query.ParamByName('VENDEFRACIONADO').AsBoolean := Produto.VendeFracionado;
    Query.ParamByName('PRECOLIVRE').AsString := Produto.PrecoLivre;
    Query.ParamByName('PESOBRUTO').AsFloat := Produto.PesoBruto;
    Query.ParamByName('FOTO1').AsString := Produto.Fotos;
    Query.ExecSQL;

    // Atualizar item do produto
    Query.SQL.Text := 'UPDATE PRODUTOSITENS SET VLRCUSTOINICIAL = :VLRCUSTOINICIAL, VLRCUSTOENTRADA = :VLRCUSTOENTRADA, ' +
                      'VLRVENDAVISTA = :VLRVENDAVISTA, VLRVENDAPRAZO = :VLRVENDAPRAZO, VLRATACADO = :VLRATACADO, ' +
                      'ESTOQUEMINIMO = :ESTOQUEMINIMO, ESTOQUEMAXIMO = :ESTOQUEMAXIMO, ICMSCOMPRA = :ICMSCOMPRA, ' +
                      'REDUCAOBASECALCULOICMS = :REDUCAOBASECALCULOICMS, MVACOMPRA = :MVACOMPRA, ICMSSTCOMPRA = :ICMSSTCOMPRA, ' +
                      'VLRCUSTOOPERACIONAL = :VLRCUSTOOPERACIONAL, REDUCAOBASECALCULOICMSST = :REDUCAOBASECALCULOICMSST, ' +
                      'VLRICMSST = :VLRICMSST, IPICOMPRA = :IPICOMPRA, FRETECOMPRA = :FRETECOMPRA, VLRFRETECOMPRA = :VLRFRETECOMPRA, ' +
                      'VLROUTROSCUSTOS = :VLROUTROSCUSTOS, VLRPRECOCAIXA = :VLRPRECOCAIXA, PESOCAIXA = :PESOCAIXA, QTDCAIXA = :QTDCAIXA, ' +
                      'PERCICMSCOMPRA = :PERCICMSCOMPRA, PERCICMSSTCOMPRA = :PERCICMSSTCOMPRA, ALIQPISCOMPRA = :ALIQPISCOMPRA, ' +
                      'VALORFRETECOMPRA = :VALORFRETECOMPRA, PERCREDBASECALCULOICMSCOMPRA = :PERCREDBASECALCULOICMSCOMPRA, ' +
                      'PERCREDBASECALCULOICMSSTCOMPRA = :PERCREDBASECALCULOICMSSTCOMPRA, ALIQCOFINSCOMPRA = :ALIQCOFINSCOMPRA, ' +
                      'ALIQIPICOMPRA = :ALIQIPICOMPRA, VALORICMSSTCOMPRA = :VALORICMSSTCOMPRA, PERCFRETECOMPRA = :PERCFRETECOMPRA, ' +
                      'PERCOUTROSCOMPRA = :PERCOUTROSCOMPRA, IDPISCOFINS = :IDPISCOFINS, IDTRIBUTACAO = :IDTRIBUTACAO, ' +
                      'IDFILIAL = :IDFILIAL, VLRPERCMARGEMLUCRO = :VLRPERCMARGEMLUCRO, VLRLUCRO = :VLRLUCRO, ESTOQUE = :ESTOQUE, ' +
                      'PERC_ICMS_VENDA = :PERC_ICMS_VENDA, PERC_FRETE_VENDA = :PERC_FRETE_VENDA, PERC_PIS_VENDA = :PERC_PIS_VENDA, ' +
                      'PERC_COFINS_VENDA = :PERC_COFINS_VENDA, DESP_OPER_VENDA = :DESP_OPER_VENDA, PERC_COMISSAO_VENDA_AVISTA = :PERC_COMISSAO_VENDA_AVISTA, ' +
                      'PERC_COMISSAO_VENDA_PRAZO = :PERC_COMISSAO_VENDA_PRAZO, PERC_OUTROS_VENDA = :PERC_OUTROS_VENDA, ' +
                      'DESCONTO_PRECO_COMPRA = :DESCONTO_PRECO_COMPRA, VALOR_CUSTO_VENDA = :VALOR_CUSTO_VENDA ' +
                      'WHERE IDPRODUTOITEM = :IDPRODUTOITEM';
    Query.ParamByName('IDPRODUTOITEM').AsInteger := Produto.Item.IdProdutoItem;
    Query.ParamByName('VLRCUSTOINICIAL').AsFloat := Produto.Item.ValorCustoInicial;
    Query.ParamByName('VLRCUSTOENTRADA').AsFloat := Produto.Item.ValorCustoEntrada;
    Query.ParamByName('VLRVENDAVISTA').AsFloat := Produto.Item.ValorVendaVista;
    Query.ParamByName('VLRVENDAPRAZO').AsFloat := Produto.Item.ValorVendaPrazo;
    Query.ParamByName('VLRATACADO').AsFloat := Produto.Item.ValorAtacado;
    Query.ParamByName('ESTOQUEMINIMO').AsFloat := Produto.Item.EstoqueMinimo;
    Query.ParamByName('ESTOQUEMAXIMO').AsFloat := Produto.Item.EstoqueMaximo;
    Query.ParamByName('ICMSCOMPRA').AsFloat := Produto.Item.ICMSCompra;
    Query.ParamByName('REDUCAOBASECALCULOICMS').AsFloat := Produto.Item.ReducaoBaseCalculoICMS;
    Query.ParamByName('MVACOMPRA').AsFloat := Produto.Item.MVACompra;
    Query.ParamByName('ICMSSTCOMPRA').AsFloat := Produto.Item.ICMSSTCompra;
    Query.ParamByName('VLRCUSTOOPERACIONAL').AsFloat := Produto.Item.ValorCustoOperacional;
    Query.ParamByName('REDUCAOBASECALCULOICMSST').AsFloat := Produto.Item.ReducaoBaseCalculoICMSST;
    Query.ParamByName('VLRICMSST').AsFloat := Produto.Item.ValorICMSST;
    Query.ParamByName('IPICOMPRA').AsFloat := Produto.Item.IPICompra;
    Query.ParamByName('FRETECOMPRA').AsFloat := Produto.Item.FreteCompra;
    Query.ParamByName('VLRFRETECOMPRA').AsFloat := Produto.Item.ValorFreteCompra;
    Query.ParamByName('VLROUTROSCUSTOS').AsFloat := Produto.Item.ValorOutrosCustos;
    Query.ParamByName('VLRPRECOCAIXA').AsFloat := Produto.Item.ValorPrecoCaixa;
    Query.ParamByName('PESOCAIXA').AsFloat := Produto.Item.PesoCaixa;
    Query.ParamByName('QTDCAIXA').AsFloat := Produto.Item.QuantidadeCaixa;
    Query.ParamByName('PERCICMSCOMPRA').AsFloat := Produto.Item.PercentualICMSCompra;
    Query.ParamByName('PERCICMSSTCOMPRA').AsFloat := Produto.Item.PercentualICMSSTCompra;
    Query.ParamByName('ALIQPISCOMPRA').AsFloat := Produto.Item.AliquotaPISCompra;
    Query.ParamByName('VALORFRETECOMPRA').AsFloat := Produto.Item.ValorFreteCompraVenda;
    Query.ParamByName('PERCREDBASECALCULOICMSCOMPRA').AsFloat := Produto.Item.PercentualReducaoBaseCalculoICMSCompra;
    Query.ParamByName('PERCREDBASECALCULOICMSSTCOMPRA').AsFloat := Produto.Item.PercentualReducaoBaseCalculoICMSSTCompra;
    Query.ParamByName('ALIQCOFINSCOMPRA').AsFloat := Produto.Item.AliquotaCOFINSCompra;
    Query.ParamByName('ALIQIPICOMPRA').AsFloat := Produto.Item.AliquotaIPICompra;
    Query.ParamByName('VALORICMSSTCOMPRA').AsFloat := Produto.Item.ValorICMSSTCompra;
    Query.ParamByName('PERCFRETECOMPRA').AsFloat := Produto.Item.PercentualFreteCompra;
    Query.ParamByName('PERCOUTROSCOMPRA').AsFloat := Produto.Item.PercentualOutrosCompra;
    Query.ParamByName('IDPISCOFINS').AsInteger := Produto.Item.IdPISConfins;
    Query.ParamByName('IDTRIBUTACAO').AsInteger := Produto.Item.IdTributacao;
    Query.ParamByName('IDFILIAL').AsInteger := Produto.Item.IdFilial;
    Query.ParamByName('VLRPERCMARGEMLUCRO').AsFloat := Produto.Item.ValorPercentualMargemLucro;
    Query.ParamByName('VLRLUCRO').AsFloat := Produto.Item.ValorLucro;
    Query.ParamByName('ESTOQUE').AsFloat := Produto.Item.Estoque;
    Query.ParamByName('PERC_ICMS_VENDA').AsFloat := Produto.Item.PercentualICMSVenda;
    Query.ParamByName('PERC_FRETE_VENDA').AsFloat := Produto.Item.PercentualFreteVenda;
    Query.ParamByName('PERC_PIS_VENDA').AsFloat := Produto.Item.PercentualPISVenda;
    Query.ParamByName('PERC_COFINS_VENDA').AsFloat := Produto.Item.PercentualCOFINSVenda;
    Query.ParamByName('DESP_OPER_VENDA').AsFloat := Produto.Item.DespesaOperacionalVenda;
    Query.ParamByName('PERC_COMISSAO_VENDA_AVISTA').AsFloat := Produto.Item.PercentualComissaoVendaAVista;
    Query.ParamByName('PERC_COMISSAO_VENDA_PRAZO').AsFloat := Produto.Item.PercentualComissaoVendaPrazo;
    Query.ParamByName('PERC_OUTROS_VENDA').AsFloat := Produto.Item.PercentualOutrosVenda;
    Query.ParamByName('DESCONTO_PRECO_COMPRA').AsFloat := Produto.Item.DescontoPrecoCompra;
    Query.ParamByName('VALOR_CUSTO_VENDA').AsFloat := Produto.Item.ValorCustoVenda;
    Query.ExecSQL;

    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioProduto.Deletar(Id: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM PRODUTOSITENS WHERE IDPRODUTO = :IDPRODUTO';
    Query.ParamByName('IDPRODUTO').AsInteger := Id;
    Query.ExecSQL;

    Query.SQL.Text := 'DELETE FROM PRODUTOS WHERE IDPRODUTO = :IDPRODUTO';
    Query.ParamByName('IDPRODUTO').AsInteger := Id;
    Query.ExecSQL;

    Result := True;
  finally
    Query.Free;
  end;
end;

end.
