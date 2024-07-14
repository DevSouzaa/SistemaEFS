unit ConfigGeral;

interface

type
  TConfigGeral = class
  private
    FCodigo: Integer;
    FAtualizarXML: Boolean;
    FExibirErroSchema: Boolean;
    FFormatoAlerta: string;
    FFormaEmissao: Integer;
    FModeloDF: Integer;
    FVersaoDF: Integer;
    FIdToken: string;
    FToken: string;
    FSalvar: Boolean;
    FRetirarAcentos: Boolean;
    FPathSalvar: string;
    FPathSchemas: string;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property AtualizarXML: Boolean read FAtualizarXML write FAtualizarXML;
    property ExibirErroSchema: Boolean read FExibirErroSchema write FExibirErroSchema;
    property FormatoAlerta: string read FFormatoAlerta write FFormatoAlerta;
    property FormaEmissao: Integer read FFormaEmissao write FFormaEmissao;
    property ModeloDF: Integer read FModeloDF write FModeloDF;
    property VersaoDF: Integer read FVersaoDF write FVersaoDF;
    property IdToken: string read FIdToken write FIdToken;
    property Token: string read FToken write FToken;
    property Salvar: Boolean read FSalvar write FSalvar;
    property RetirarAcentos: Boolean read FRetirarAcentos write FRetirarAcentos;
    property PathSalvar: string read FPathSalvar write FPathSalvar;
    property PathSchemas: string read FPathSchemas write FPathSchemas;
  end;

implementation

end.

