unit Repositorio.ConfigGeral;

interface

uses
  RepositorioBase, ConfigGeral, FireDAC.Comp.Client, System.SysUtils, System.Classes, Data.DB;

type
  TConfigGeralRepositorio = class(TRepositorioBase)
  public
    procedure Save(AGeral: TConfigGeral);
    function LoadByCodigo(ACodigo: Integer): TConfigGeral;
    // Outros métodos conforme necessário
  end;

implementation

procedure TConfigGeralRepositorio.Save(AGeral: TConfigGeral);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_GERAL SET ' +
                      'GER_ATUALIZARXML = :AtualizarXML, GER_EXIBIRERROSCHEMA = :ExibirErroSchema, GER_FORMATOALERTA = :FormatoAlerta, ' +
                      'GER_FORMAEMISSAO = :FormaEmissao, GER_MODELODF = :ModeloDF, GER_VERSAODF = :VersaoDF, GER_IDTOKEN = :IdToken, ' +
                      'GER_TOKEN = :Token, GER_SALVAR = :Salvar, GER_RETIRARACENTOS = :RetirarAcentos, ' +
                      'GER_PATHSALVAR = :PathSalvar, GER_PATHSCHEMAS = :PathSchemas ' +
                      'WHERE GER_CODIGO = :Codigo';
    Query.ParamByName('AtualizarXML').AsBoolean := AGeral.AtualizarXML;
    Query.ParamByName('ExibirErroSchema').AsBoolean := AGeral.ExibirErroSchema;
    Query.ParamByName('FormatoAlerta').AsString := AGeral.FormatoAlerta;
    Query.ParamByName('FormaEmissao').AsInteger := AGeral.FormaEmissao;
    Query.ParamByName('ModeloDF').AsInteger := AGeral.ModeloDF;
    Query.ParamByName('VersaoDF').AsInteger := AGeral.VersaoDF;
    Query.ParamByName('IdToken').AsString := AGeral.IdToken;
    Query.ParamByName('Token').AsString := AGeral.Token;
    Query.ParamByName('Salvar').AsBoolean := AGeral.Salvar;
    Query.ParamByName('RetirarAcentos').AsBoolean := AGeral.RetirarAcentos;
    Query.ParamByName('PathSalvar').AsString := AGeral.PathSalvar;
    Query.ParamByName('PathSchemas').AsString := AGeral.PathSchemas;
    Query.ParamByName('Codigo').AsInteger := AGeral.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigGeralRepositorio.LoadByCodigo(ACodigo: Integer): TConfigGeral;
var
  Query: TFDQuery;
  AGeral: TConfigGeral;
begin
  Query := TFDQuery.Create(nil);
  AGeral := TConfigGeral.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_GERAL WHERE GER_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      AGeral.Codigo := Query.FieldByName('GER_CODIGO').AsInteger;
      AGeral.AtualizarXML := Query.FieldByName('GER_ATUALIZARXML').AsBoolean;
      AGeral.ExibirErroSchema := Query.FieldByName('GER_EXIBIRERROSCHEMA').AsBoolean;
      AGeral.FormatoAlerta := Query.FieldByName('GER_FORMATOALERTA').AsString;
      AGeral.FormaEmissao := Query.FieldByName('GER_FORMAEMISSAO').AsInteger;
      AGeral.ModeloDF := Query.FieldByName('GER_MODELODF').AsInteger;
      AGeral.VersaoDF := Query.FieldByName('GER_VERSAODF').AsInteger;
      AGeral.IdToken := Query.FieldByName('GER_IDTOKEN').AsString;
      AGeral.Token := Query.FieldByName('GER_TOKEN').AsString;
      AGeral.Salvar := Query.FieldByName('GER_SALVAR').AsBoolean;
      AGeral.RetirarAcentos := Query.FieldByName('GER_RETIRARACENTOS').AsBoolean;
      AGeral.PathSalvar := Query.FieldByName('GER_PATHSALVAR').AsString;
      AGeral.PathSchemas := Query.FieldByName('GER_PATHSCHEMAS').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := AGeral;
end;

end.

