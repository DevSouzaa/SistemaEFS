unit Repositorio.ConfigProxy;

interface

uses
  RepositorioBase, ConfigProxy, FireDAC.Comp.Client, System.SysUtils, System.Classes, FireDAC.Stan.Param, Data.DB;

type
  TConfigProxyRepositorio = class(TRepositorioBase)
  public
    procedure Save(AProxy: TConfigProxy);
    function LoadByCodigo(ACodigo: Integer): TConfigProxy;
    // Outros métodos conforme necessário
  end;

implementation

procedure TConfigProxyRepositorio.Save(AProxy: TConfigProxy);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_PROXY SET ' +
                      'PRO_HOST = :Host, PRO_PORTA = :Porta, PRO_USER = :User, PRO_PASS = :Pass ' +
                      'WHERE PRO_CODIGO = :Codigo';
    Query.ParamByName('Host').AsString := AProxy.Host;
    Query.ParamByName('Porta').AsString := AProxy.Porta;
    Query.ParamByName('User').AsString := AProxy.User;
    Query.ParamByName('Pass').AsString := AProxy.Pass;
    Query.ParamByName('Codigo').AsInteger := AProxy.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigProxyRepositorio.LoadByCodigo(ACodigo: Integer): TConfigProxy;
var
  Query: TFDQuery;
  AProxy: TConfigProxy;
begin
  Query := TFDQuery.Create(nil);
  AProxy := TConfigProxy.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_PROXY WHERE PRO_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      AProxy.Codigo := Query.FieldByName('PRO_CODIGO').AsInteger;
      AProxy.Host := Query.FieldByName('PRO_HOST').AsString;
      AProxy.Porta := Query.FieldByName('PRO_PORTA').AsString;
      AProxy.User := Query.FieldByName('PRO_USER').AsString;
      AProxy.Pass := Query.FieldByName('PRO_PASS').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := AProxy;
end;

end.

