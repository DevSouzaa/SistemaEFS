unit ProdutoCompleto;

interface
uses
  ProdutoItem;

type
  TProdutoCompleto = class
  private
    FIdProduto: Integer;
    FIdEmpresa: Integer;
    FDescricao: string;
    FIdSubgrupo: Integer;
    FIdMarca: Integer;
    FIdFabricante: Integer;
    FIdFornecedor: Integer;
    FIdUnidade: Integer;
    FReferencia: string;
    FCodBarras: string;
    FPermiteDesconto: string;
    FDescMaximo: Double;
    FPagarComissao: string;
    FComissaoAVista: Double;
    FNCM: string;
    FDataHoraCadastro: TDateTime;
    FDataHoraAlteracao: TDateTime;
    FAtivo: Boolean;
    FIdOrigem: Integer;
    FDescCompra: Double;
    FIdLocalizacao: Integer;
    FIdLocalizacaoImpressao: Integer;
    FInfAdicionais: string;
    FAplicacao: string;
    FPossuiDerivados: string;
    FCSTPisCofinsEntrada: Integer;
    FCSTPisCofinsSaida: Integer;
    FCEST: string;
    FIdUsuarioCadastro: Integer;
    FIdUsuarioAlteracao: Integer;
    FIdSetor: Integer;
    FCodBarrasCxa: string;
    FReferencia2: string;
    FReferencia3: string;
    FIdANP: Integer;
    FComissaoAPrazo: Double;
    FPesoUni: Double;
    FIdGrupo: Integer;
    FProdutoBalanca: string;
    FIdOrigemMercadoria: Integer;
    FIdEmbalagem: Integer;
    FDescricaoNCM: string;
    FVendeFracionado: Boolean;
    FPrecoLivre: string;
    FPesoBruto: Double;
    FFotos: String; // TBytes
    FItem: TProdutoItem;
  public
    property IdProduto: Integer read FIdProduto write FIdProduto;
    property IdEmpresa: Integer read FIdEmpresa write FIdEmpresa;
    property Descricao: string read FDescricao write FDescricao;
    property IdSubgrupo: Integer read FIdSubgrupo write FIdSubgrupo;
    property IdMarca: Integer read FIdMarca write FIdMarca;
    property IdFabricante: Integer read FIdFabricante write FIdFabricante;
    property IdFornecedor: Integer read FIdFornecedor write FIdFornecedor;
    property IdUnidade: Integer read FIdUnidade write FIdUnidade;
    property Referencia: string read FReferencia write FReferencia;
    property CodBarras: string read FCodBarras write FCodBarras;
    property PermiteDesconto: string read FPermiteDesconto write FPermiteDesconto;
    property DescMaximo: Double read FDescMaximo write FDescMaximo;
    property PagarComissao: string read FPagarComissao write FPagarComissao;
    property ComissaoAVista: Double read FComissaoAVista write FComissaoAVista;
    property NCM: string read FNCM write FNCM;
    property DataHoraCadastro: TDateTime read FDataHoraCadastro write FDataHoraCadastro;
    property DataHoraAlteracao: TDateTime read FDataHoraAlteracao write FDataHoraAlteracao;
    property Ativo: Boolean read FAtivo write FAtivo;
    property IdOrigem: Integer read FIdOrigem write FIdOrigem;
    property DescCompra: Double read FDescCompra write FDescCompra;
    property IdLocalizacao: Integer read FIdLocalizacao write FIdLocalizacao;
    property IdLocalizacaoImpressao: Integer read FIdLocalizacaoImpressao write FIdLocalizacaoImpressao;
    property InfAdicionais: string read FInfAdicionais write FInfAdicionais;
    property Aplicacao: string read FAplicacao write FAplicacao;
    property PossuiDerivados: string read FPossuiDerivados write FPossuiDerivados;
    property CSTPisCofinsEntrada: Integer read FCSTPisCofinsEntrada write FCSTPisCofinsEntrada;
    property CSTPisCofinsSaida: Integer read FCSTPisCofinsSaida write FCSTPisCofinsSaida;
    property CEST: string read FCEST write FCEST;
    property IdUsuarioCadastro: Integer read FIdUsuarioCadastro write FIdUsuarioCadastro;
    property IdUsuarioAlteracao: Integer read FIdUsuarioAlteracao write FIdUsuarioAlteracao;
    property IdSetor: Integer read FIdSetor write FIdSetor;
    property CodBarrasCxa: string read FCodBarrasCxa write FCodBarrasCxa;
    property Referencia2: string read FReferencia2 write FReferencia2;
    property Referencia3: string read FReferencia3 write FReferencia3;
    property IdANP: Integer read FIdANP write FIdANP;
    property ComissaoAPrazo: Double read FComissaoAPrazo write FComissaoAPrazo;
    property PesoUni: Double read FPesoUni write FPesoUni;
    property IdGrupo: Integer read FIdGrupo write FIdGrupo;
    property ProdutoBalanca: string read FProdutoBalanca write FProdutoBalanca;
    property IdOrigemMercadoria: Integer read FIdOrigemMercadoria write FIdOrigemMercadoria;
    property IdEmbalagem: Integer read FIdEmbalagem write FIdEmbalagem;
    property DescricaoNCM: string read FDescricaoNCM write FDescricaoNCM;
    property VendeFracionado: Boolean read FVendeFracionado write FVendeFracionado;
    property PrecoLivre: string read FPrecoLivre write FPrecoLivre;
    property PesoBruto: Double read FPesoBruto write FPesoBruto;
    property Fotos: string read FFotos write FFotos;      //  TBytes
    property Item: TProdutoItem read FItem write FItem;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TProdutoCompleto.Create;
begin
  inherited Create;
  FItem := TProdutoItem.Create;
end;

destructor TProdutoCompleto.Destroy;
begin
  FItem.Free;
  inherited Destroy;
end;

end.

