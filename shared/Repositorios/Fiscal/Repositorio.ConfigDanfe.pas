unit Repositorio.ConfigDanfe;

interface

uses
  RepositorioBase, ConfigDanfe, FireDAC.Comp.Client, System.SysUtils, System.Classes, FireDAC.Stan.Param, Data.DB;

type
  TConfigDanfeRepositorio = class(TRepositorioBase)
  public
    procedure Save(ADanfe: TConfigDanfe);
    function LoadByCodigo(ACodigo: Integer): TConfigDanfe;
    // Outros m�todos conforme necess�rio
  end;

implementation

procedure TConfigDanfeRepositorio.Save(ADanfe: TConfigDanfe);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_DANFE SET ' +
                      'DAN_TIPO = :Tipo, DAN_LOGOMARCA = :LogoMarca, DAN_TIPODANFCE = :TipoDanfce ' +
                      'WHERE DAN_CODIGO = :Codigo';
    Query.ParamByName('Tipo').AsInteger := ADanfe.Tipo;
    Query.ParamByName('LogoMarca').AsString := ADanfe.LogoMarca;
    Query.ParamByName('TipoDanfce').AsInteger := ADanfe.TipoDanfce;
    Query.ParamByName('Codigo').AsInteger := ADanfe.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigDanfeRepositorio.LoadByCodigo(ACodigo: Integer): TConfigDanfe;
var
  Query: TFDQuery;
  ADanfe: TConfigDanfe;
begin
  Query := TFDQuery.Create(nil);
  ADanfe := TConfigDanfe.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_DANFE WHERE DAN_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      ADanfe.Codigo := Query.FieldByName('DAN_CODIGO').AsInteger;
      ADanfe.Tipo := Query.FieldByName('DAN_TIPO').AsInteger;
      ADanfe.LogoMarca := Query.FieldByName('DAN_LOGOMARCA').AsString;
      ADanfe.TipoDanfce := Query.FieldByName('DAN_TIPODANFCE').AsInteger;
    end;
  finally
    Query.Free;
  end;
  Result := ADanfe;
end;

end.
