unit ConfigDiversos;

interface

uses
  System.SysUtils;

type
  TConfigDiversos = class
  private
    FCodigo: Integer;
    FBaixarDocumentos: Boolean;
    FDtaUltimaBaixa: TDate;
    FUltNSU: Integer;
    FHraUltimaBaixa: TDateTime;
    FMaxNSU: Integer;
    FFilial: Integer;
    FStatus: Integer;
    FManifestaAutomatico: string;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property BaixarDocumentos: Boolean read FBaixarDocumentos write FBaixarDocumentos;
    property DtaUltimaBaixa: TDate read FDtaUltimaBaixa write FDtaUltimaBaixa;
    property UltNSU: Integer read FUltNSU write FUltNSU;
    property HraUltimaBaixa: TDateTime read FHraUltimaBaixa write FHraUltimaBaixa;
    property MaxNSU: Integer read FMaxNSU write FMaxNSU;
    property Filial: Integer read FFilial write FFilial;
    property Status: Integer read FStatus write FStatus;
    property ManifestaAutomatico: string read FManifestaAutomatico write FManifestaAutomatico;
  end;

implementation

end.

