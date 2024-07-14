unit ConfigCertificado;

interface
uses
  System.Classes;
type
  TConfigCertificado = class
  private
    FCodigo: Integer;
    FSSLLib: Integer;
    FCryptLib: Integer;
    FHTTPLib: Integer;
    FXMLSignLib: Integer;
    FURL: string;
    FCaminho: string;
    FSenha: string;
    FNumSerie: string;
    FFilial: Integer;
    FStream: TStream;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property SSLLib: Integer read FSSLLib write FSSLLib;
    property CryptLib: Integer read FCryptLib write FCryptLib;
    property HTTPLib: Integer read FHTTPLib write FHTTPLib;
    property XMLSignLib: Integer read FXMLSignLib write FXMLSignLib;
    property URL: string read FURL write FURL;
    property Caminho: string read FCaminho write FCaminho;
    property Senha: string read FSenha write FSenha;
    property NumSerie: string read FNumSerie write FNumSerie;
    property Filial: Integer read FFilial write FFilial;
    property Stream: TStream read FStream write FStream;
  end;

implementation

end.

