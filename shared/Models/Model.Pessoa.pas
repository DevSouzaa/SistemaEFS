unit Model.Pessoa;

interface

type
  TPessoa = class
  private
    FID: Integer;
    FRazaoSocial: string;
    FFantasia: string;
    FCidade: string;
    FEndereco: string;
    FBairro: string;
    FCEP: string;
    FUF: string;
    FEmail: string;
    FTelefone: string;
    FNumeroEndereco: string;
    FComplemento: string;
    FPontoReferencia: string;
    FCNPJCPF: string;
    FIERG: string;
    FDtaCadastro: TDate;
    FHraCadastro: TTime;
    FDtaNascimento: TDate;
    FTipoFJ: string;
    FLimiteLiberado: Double;
    FLimiteUsado: Double;
    FObservacao: string;
    FTaxaJuro: Double;
    FContribuinte: Integer;
    FConsumidorFinal: Integer;
    FIDPais: Integer;
    FIDTipoPessoa: Integer;
    FCodigoIBGE: string;
    FIndIEDest: Integer;
    FAtivo: Boolean;
    FRegime: Integer;
    FPromotor: Integer;
    FCobrar: Boolean;
    FVenderAPrazo: Boolean;
    FDescontoVendaAVista: Double;
    FAcrescimoVendaPrazo: Double;
  public
    property ID: Integer read FID write FID;
    property RazaoSocial: string read FRazaoSocial write FRazaoSocial;
    property Fantasia: string read FFantasia write FFantasia;
    property Cidade: string read FCidade write FCidade;
    property Endereco: string read FEndereco write FEndereco;
    property Bairro: string read FBairro write FBairro;
    property CEP: string read FCEP write FCEP;
    property UF: string read FUF write FUF;
    property Email: string read FEmail write FEmail;
    property Telefone: string read FTelefone write FTelefone;
    property NumeroEndereco: string read FNumeroEndereco write FNumeroEndereco;
    property Complemento: string read FComplemento write FComplemento;
    property PontoReferencia: string read FPontoReferencia write FPontoReferencia;
    property CNPJCPF: string read FCNPJCPF write FCNPJCPF;
    property IERG: string read FIERG write FIERG;
    property DtaCadastro: TDate read FDtaCadastro write FDtaCadastro;
    property HraCadastro: TTime read FHraCadastro write FHraCadastro;
    property DtaNascimento: TDate read FDtaNascimento write FDtaNascimento;
    property TipoFJ: string read FTipoFJ write FTipoFJ;
    property LimiteLiberado: Double read FLimiteLiberado write FLimiteLiberado;
    property LimiteUsado: Double read FLimiteUsado write FLimiteUsado;
    property Observacao: string read FObservacao write FObservacao;
    property TaxaJuro: Double read FTaxaJuro write FTaxaJuro;
    property Contribuinte: Integer read FContribuinte write FContribuinte;
    property ConsumidorFinal: Integer read FConsumidorFinal write FConsumidorFinal;
    property IDPais: Integer read FIDPais write FIDPais;
    property IDTipoPessoa: Integer read FIDTipoPessoa write FIDTipoPessoa;
    property CodigoIBGE: string read FCodigoIBGE write FCodigoIBGE;
    property IndIEDest: Integer read FIndIEDest write FIndIEDest;
    property Ativo: Boolean read FAtivo write FAtivo;
    property Regime: Integer read FRegime write FRegime;
    property Promotor: Integer read FPromotor write FPromotor;
    property Cobrar: Boolean read FCobrar write FCobrar;
    property VenderAPrazo: Boolean read FVenderAPrazo write FVenderAPrazo;
    property DescontoVendaAVista: Double read FDescontoVendaAVista write FDescontoVendaAVista;
    property AcrescimoVendaPrazo: Double read FAcrescimoVendaPrazo write FAcrescimoVendaPrazo;
  end;

implementation

end.

