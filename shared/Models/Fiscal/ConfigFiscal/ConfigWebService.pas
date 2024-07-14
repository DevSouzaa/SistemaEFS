unit ConfigWebService;

interface

type
  TConfigWebService = class
  private
    FCodigo: Integer;
    FUF: string;
    FAmbiente: Integer;
    FVisualizar: Boolean;
    FSalvarSOAP: Boolean;
    FAjustarAut: Boolean;
    FAguardar: string;
    FTentativas: string;
    FIntervalo: string;
    FTimeout: Integer;
    FSSLType: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property UF: string read FUF write FUF;
    property Ambiente: Integer read FAmbiente write FAmbiente;
    property Visualizar: Boolean read FVisualizar write FVisualizar;
    property SalvarSOAP: Boolean read FSalvarSOAP write FSalvarSOAP;
    property AjustarAut: Boolean read FAjustarAut write FAjustarAut;
    property Aguardar: string read FAguardar write FAguardar;
    property Tentativas: string read FTentativas write FTentativas;
    property Intervalo: string read FIntervalo write FIntervalo;
    property Timeout: Integer read FTimeout write FTimeout;
    property SSLType: Integer read FSSLType write FSSLType;
  end;

implementation

end.

