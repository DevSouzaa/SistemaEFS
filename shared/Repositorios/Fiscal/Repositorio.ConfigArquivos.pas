unit Repositorio.ConfigArquivos;

interface

uses
  RepositorioBase, ConfigArquivos, FireDAC.Comp.Client, System.SysUtils, Data.DB;

type
  TConfigArquivosRepositorio = class(TRepositorioBase)
  public
    procedure Save(AConfig: TConfigArquivos);
    function LoadByCodigo(ACodigo: Integer): TConfigArquivos;
  end;

implementation

procedure TConfigArquivosRepositorio.Save(AConfig: TConfigArquivos);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_ARQUIVOS SET ' +
                      'ARQ_SALVAR = :Salvar, ARQ_PASTAMENSAL = :PastaMensal, ARQ_ADDLITERAL = :AddLiteral, ' +
                      'ARQ_EMISSAOPATHNFE = :EmissaoPathNFe, ARQ_SALVARPATHEVENTO = :SalvarPathEvento, ' +
                      'ARQ_SEPARARPORCNPJ = :SepararPorCNPJ, ARQ_SEPARARPORMODELO = :SepararPorModelo, ' +
                      'ARQ_PATHNFE = :PathNFe, ARQ_PATHINU = :PathInu, ARQ_PATHEVENTO = :PathEvento, ' +
                      'ARQ_PATHPDF = :PathPDF, ARQ_PATHDOWNLOAD = :PathDownload, ARQ_LOGS = :Logs ' +
                      'WHERE ARQ_CODIGO = :Codigo';
    Query.ParamByName('Salvar').AsBoolean := AConfig.Salvar;
    Query.ParamByName('PastaMensal').AsBoolean := AConfig.PastaMensal;
    Query.ParamByName('AddLiteral').AsBoolean := AConfig.AddLiteral;
    Query.ParamByName('EmissaoPathNFe').AsBoolean := AConfig.EmissaoPathNFe;
    Query.ParamByName('SalvarPathEvento').AsBoolean := AConfig.SalvarPathEvento;
    Query.ParamByName('SepararPorCNPJ').AsBoolean := AConfig.SepararPorCNPJ;
    Query.ParamByName('SepararPorModelo').AsBoolean := AConfig.SepararPorModelo;
    Query.ParamByName('PathNFe').AsString := AConfig.PathNFe;
    Query.ParamByName('PathInu').AsString := AConfig.PathInu;
    Query.ParamByName('PathEvento').AsString := AConfig.PathEvento;
    Query.ParamByName('PathPDF').AsString := AConfig.PathPDF;
    Query.ParamByName('PathDownload').AsString := AConfig.PathDownload;
    Query.ParamByName('Logs').AsString := AConfig.Logs;
    Query.ParamByName('Codigo').AsInteger := AConfig.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigArquivosRepositorio.LoadByCodigo(ACodigo: Integer): TConfigArquivos;
var
  Query: TFDQuery;
  AConfig: TConfigArquivos;
begin
  Query := TFDQuery.Create(nil);
  AConfig := TConfigArquivos.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_ARQUIVOS WHERE ARQ_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      AConfig.Codigo := Query.FieldByName('ARQ_CODIGO').AsInteger;
      AConfig.Salvar := Query.FieldByName('ARQ_SALVAR').AsBoolean;
      AConfig.PastaMensal := Query.FieldByName('ARQ_PASTAMENSAL').AsBoolean;
      AConfig.AddLiteral := Query.FieldByName('ARQ_ADDLITERAL').AsBoolean;
      AConfig.EmissaoPathNFe := Query.FieldByName('ARQ_EMISSAOPATHNFE').AsBoolean;
      AConfig.SalvarPathEvento := Query.FieldByName('ARQ_SALVARPATHEVENTO').AsBoolean;
      AConfig.SepararPorCNPJ := Query.FieldByName('ARQ_SEPARARPORCNPJ').AsBoolean;
      AConfig.SepararPorModelo := Query.FieldByName('ARQ_SEPARARPORMODELO').AsBoolean;
      AConfig.PathNFe := Query.FieldByName('ARQ_PATHNFE').AsString;
      AConfig.PathInu := Query.FieldByName('ARQ_PATHINU').AsString;
      AConfig.PathEvento := Query.FieldByName('ARQ_PATHEVENTO').AsString;
      AConfig.PathPDF := Query.FieldByName('ARQ_PATHPDF').AsString;
      AConfig.PathDownload := Query.FieldByName('ARQ_PATHDOWNLOAD').AsString;
      AConfig.Logs := Query.FieldByName('ARQ_LOGS').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := AConfig;
end;

end.

