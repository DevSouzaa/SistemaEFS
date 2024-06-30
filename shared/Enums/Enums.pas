unit Enums;

interface

type
  // Tipo de Documento Fiscal
  TTipoDocumentoFiscal = (tdNFe, tdNFCe, tdCTe, tdCCE, tdMDFE);

  // Status
  TStatus = (tsAtivo, tsInativo, tsAberto, tsFechado);

  // Evento Ação DFe
  TEventoAcaoDFe = (evCancelar, evInutilizar);

  // Tipo de Movimento
  TTipoMovimento = (tmVenda, tmPreVenda, tmOrcamento, tmNFe, tmNFeAvulsa);

  // Estoque
  TEstoque = (teCompra, teVenda, teDevolucao);

  // Tipo de Documento Fiscal
  TTipoDocFiscal = (tfNFe, tfNFCe, tfCTe, tfCCE, tfMDFE);

  // Tipo de Operação Fiscal
  TTipoOperacaoFiscal = (toCancelar, toCorrecao, toImprimirDanfe, toInutilizarNumeroDFe);

  // Ação DataSet
  TAcaoDataSet = (tpIncluir, tpEditar, tpSelecionar, tpOutros, tpFornecedorNfe);

  // Movimento Tributos
  TMovimentoTributos = (mtVenda, mtCompra);

  // Módulo
  TModulo = (mdRetaguarda, mdPDV);

  // Modelo DFe
  TModeloDFe = (mdNFe, mdNFCe, mdCTe, mdCCE, mdMDFE);

  // Fiscal ou Não Fiscal
  TFiscalNaoFiscal = (fnFiscal, fnNaoFiscal);

  TAcaoUser = (AcUInserir, AcUAlterar, AcUExcluir, AcUListar);

  // Funções de Conversão
  function TipoDocumentoFiscalToStr(const t: TTipoDocumentoFiscal): string;
  function StatusToStr(const t: TStatus): string;
  function EventoAcaoDFeToStr(const t: TEventoAcaoDFe): string;
  function TipoMovimentoToStr(const t: TTipoMovimento): string;
  function EstoqueToInt(const t: TEstoque): integer;
  function TipoDocFiscalToStr(const t: TTipoDocFiscal): string;
  function AcaoDataSetToStr(const t: TAcaoDataSet): string;
  function MovimentoTributosToInt(const t: TMovimentoTributos): integer;
  function ModuloToStr(const t: TModulo): string;
  function ModeloDFeToInt(const t: TModeloDFe): integer;
  function EmiteFiscalToStr(const t: TFiscalNaoFiscal): string;
  function AcaoUserToStr(const t: TAcaoUser): string;

implementation

function TipoDocumentoFiscalToStr(const t: TTipoDocumentoFiscal): string;
begin
  case t of
    tdNFe: Result := 'NFE';
    tdNFCe: Result := 'NFCE';
    tdCTe: Result := 'CTE';
    tdCCE: Result := 'CCE';
    tdMDFE: Result := 'MDFE';
  end;
end;

function StatusToStr(const t: TStatus): string;
begin
  case t of
    tsAtivo: Result := 'ATIVO';
    tsInativo: Result := 'INATIVO';
    tsAberto: Result := 'ABERTO';
    tsFechado: Result := 'FECHADO';
  end;
end;

function EventoAcaoDFeToStr(const t: TEventoAcaoDFe): string;
begin
  case t of
    evCancelar: Result := 'CANCELADA';
    evInutilizar: Result := 'INUTILIZADA';
  end;
end;

function TipoMovimentoToStr(const t: TTipoMovimento): string;
begin
  case t of
    tmVenda: Result := 'VENDA';
    tmPreVenda: Result := 'PREVENDA';
    tmOrcamento: Result := 'ORCAMENTO';
    tmNFe: Result := 'NFE';
    tmNFeAvulsa: Result := 'NFE_AVULSA';
  end;
end;

function EstoqueToInt(const t: TEstoque): integer;
begin
  case t of
    teCompra: Result := 1;
    teVenda: Result := 2;
    teDevolucao: Result := 3;
  end;
end;

function TipoDocFiscalToStr(const t: TTipoDocFiscal): string;
begin
  case t of
    tfNFe: Result := 'NFE';
    tfNFCe: Result := 'NFCE';
    tfCTe: Result := 'CTE';
    tfCCE: Result := 'CCE';
    tfMDFE: Result := 'MDFE';
  end;
end;

function AcaoDataSetToStr(const t: TAcaoDataSet): string;
begin
  case t of
    tpIncluir: Result := 'Incluir';
    tpEditar: Result := 'Editar';
    tpSelecionar: Result := 'Selecionar';
    tpOutros: Result := 'Outros';
    tpFornecedorNfe: Result := 'BuscaFornecedor';
  end;
end;

function MovimentoTributosToInt(const t: TMovimentoTributos): integer;
begin
  case t of
    mtVenda: Result := 1;
    mtCompra: Result := 2;
  end;
end;

function ModuloToStr(const t: TModulo): string;
begin
  case t of
    mdRetaguarda: Result := 'RETAGUARDA';
    mdPDV: Result := 'PDV';
  end;
end;

function ModeloDFeToInt(const t: TModeloDFe): integer;
begin
  case t of
    mdNFe: Result := 55;
    mdNFCe: Result := 65;
    mdCTe: Result := 57;
    mdCCE: Result := 58;
    mdMDFE: Result := 58; // Usar o valor correto
  end;
end;

function EmiteFiscalToStr(const t: TFiscalNaoFiscal): string;
begin
  case t of
    fnFiscal: Result := 'SIM_FISCAL';
    fnNaoFiscal: Result := 'NAO_FISCAL';
  end;
end;

function AcaoUserToStr(const t: TAcaoUser): string;
begin
  case t of
    AcUInserir: Result := 'Inserir';
    AcUAlterar: Result := 'Alterar';
    AcUExcluir: Result := 'Excluir';
    AcUListar: Result := 'Listar';
  end;
end;



end.

