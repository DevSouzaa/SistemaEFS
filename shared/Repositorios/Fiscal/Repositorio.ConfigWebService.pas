unit Repositorio.ConfigWebService;

interface

uses
  RepositorioBase, ConfigWebService, FireDAC.Comp.Client, System.SysUtils, System.Classes, FireDAC.Stan.Param, Data.DB;

type
  TConfigWebServiceRepositorio = class(TRepositorioBase)
  public
    procedure Save(AWebService: TConfigWebService);
    function LoadByCodigo(ACodigo: Integer): TConfigWebService;
    // Outros m�todos conforme necess�rio
  end;

implementation

procedure TConfigWebServiceRepositorio.Save(AWebService: TConfigWebService);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_WEBSERVICE SET ' +
                      'WEB_UF = :UF, WEB_AMBIENTE = :Ambiente, WEB_VISUALIZAR = :Visualizar, ' +
                      'WEB_SALVARSOAP = :SalvarSOAP, WEB_AJUSTARAUT = :AjustarAut, ' +
                      'WEB_AGUARDAR = :Aguardar, WEB_TENTATIVAS = :Tentativas, WEB_INTERVALO = :Intervalo, ' +
                      'WEB_TIMEOUT = :Timeout, WEB_SSLTYPE = :SSLType ' +
                      'WHERE WEB_CODIGO = :Codigo';
    Query.ParamByName('UF').AsString := AWebService.UF;
    Query.ParamByName('Ambiente').AsInteger := AWebService.Ambiente;
    Query.ParamByName('Visualizar').AsBoolean := AWebService.Visualizar;
    Query.ParamByName('SalvarSOAP').AsBoolean := AWebService.SalvarSOAP;
    Query.ParamByName('AjustarAut').AsBoolean := AWebService.AjustarAut;
    Query.ParamByName('Aguardar').AsString := AWebService.Aguardar;
    Query.ParamByName('Tentativas').AsString := AWebService.Tentativas;
    Query.ParamByName('Intervalo').AsString := AWebService.Intervalo;
    Query.ParamByName('Timeout').AsInteger := AWebService.Timeout;
    Query.ParamByName('SSLType').AsInteger := AWebService.SSLType;
    Query.ParamByName('Codigo').AsInteger := AWebService.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigWebServiceRepositorio.LoadByCodigo(ACodigo: Integer): TConfigWebService;
var
  Query: TFDQuery;
  AWebService: TConfigWebService;
begin
  Query := TFDQuery.Create(nil);
  AWebService := TConfigWebService.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_WEBSERVICE WHERE WEB_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      AWebService.Codigo := Query.FieldByName('WEB_CODIGO').AsInteger;
      AWebService.UF := Query.FieldByName('WEB_UF').AsString;
      AWebService.Ambiente := Query.FieldByName('WEB_AMBIENTE').AsInteger;
      AWebService.Visualizar := Query.FieldByName('WEB_VISUALIZAR').AsBoolean;
      AWebService.SalvarSOAP := Query.FieldByName('WEB_SALVARSOAP').AsBoolean;
      AWebService.AjustarAut := Query.FieldByName('WEB_AJUSTARAUT').AsBoolean;
      AWebService.Aguardar := Query.FieldByName('WEB_AGUARDAR').AsString;
      AWebService.Tentativas := Query.FieldByName('WEB_TENTATIVAS').AsString;
      AWebService.Intervalo := Query.FieldByName('WEB_INTERVALO').AsString;
      AWebService.Timeout := Query.FieldByName('WEB_TIMEOUT').AsInteger;
      AWebService.SSLType := Query.FieldByName('WEB_SSLTYPE').AsInteger;
    end;
  finally
    Query.Free;
  end;
  Result := AWebService;
end;

end.
