unit ConfigArquivos;

interface

type
  TConfigArquivos = class
  private
    FCodigo: Integer;
    FSalvar: Boolean;
    FPastaMensal: Boolean;
    FAddLiteral: Boolean;
    FEmissaoPathNFe: Boolean;
    FSalvarPathEvento: Boolean;
    FSepararPorCNPJ: Boolean;
    FSepararPorModelo: Boolean;
    FPathNFe: String;
    FPathInu: String;
    FPathEvento: String;
    FPathPDF: String;
    FPathDownload: String;
    FLogs: String;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Salvar: Boolean read FSalvar write FSalvar;
    property PastaMensal: Boolean read FPastaMensal write FPastaMensal;
    property AddLiteral: Boolean read FAddLiteral write FAddLiteral;
    property EmissaoPathNFe: Boolean read FEmissaoPathNFe write FEmissaoPathNFe;
    property SalvarPathEvento: Boolean read FSalvarPathEvento write FSalvarPathEvento;
    property SepararPorCNPJ: Boolean read FSepararPorCNPJ write FSepararPorCNPJ;
    property SepararPorModelo: Boolean read FSepararPorModelo write FSepararPorModelo;
    property PathNFe: String read FPathNFe write FPathNFe;
    property PathInu: String read FPathInu write FPathInu;
    property PathEvento: String read FPathEvento write FPathEvento;
    property PathPDF: String read FPathPDF write FPathPDF;
    property PathDownload: String read FPathDownload write FPathDownload;
    property Logs: String read FLogs write FLogs;
  end;

implementation

end.

