unit Repositorio.ConfigDiversos;

interface

uses
  RepositorioBase, ConfigDiversos, FireDAC.Comp.Client, System.SysUtils, System.Classes, FireDAC.Stan.Param, Data.DB;

type
  TConfigDiversosRepositorio = class(TRepositorioBase)
  public
    procedure Save(ADiversos: TConfigDiversos);
    function LoadByCodigo(ACodigo: Integer): TConfigDiversos;
    // Outros métodos conforme necessário
  end;

implementation

procedure TConfigDiversosRepositorio.Save(ADiversos: TConfigDiversos);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_DIVERSOS SET ' +
                      'DIV_BAIXARDOCUMENTOS = :BaixarDocumentos, DIV_DTAULTIMABAIXA = :DtaUltimaBaixa, ' +
                      'DIV_ULTNSU = :UltNSU, DIV_HRAULTIMABAIXA = :HraUltimaBaixa, DIV_MAXNSU = :MaxNSU, ' +
                      'DIV_FILIAL = :Filial, DIV_STATUS = :Status, DIV_MANIFESTAAUTOMATICO = :ManifestaAutomatico ' +
                      'WHERE DIV_CODIGO = :Codigo';
    Query.ParamByName('BaixarDocumentos').AsBoolean := ADiversos.BaixarDocumentos;
    Query.ParamByName('DtaUltimaBaixa').AsDate := ADiversos.DtaUltimaBaixa;
    Query.ParamByName('UltNSU').AsInteger := ADiversos.UltNSU;
    Query.ParamByName('HraUltimaBaixa').AsDateTime := ADiversos.HraUltimaBaixa;
    Query.ParamByName('MaxNSU').AsInteger := ADiversos.MaxNSU;
    Query.ParamByName('Filial').AsInteger := ADiversos.Filial;
    Query.ParamByName('Status').AsInteger := ADiversos.Status;
    Query.ParamByName('ManifestaAutomatico').AsString := ADiversos.ManifestaAutomatico;
    Query.ParamByName('Codigo').AsInteger := ADiversos.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigDiversosRepositorio.LoadByCodigo(ACodigo: Integer): TConfigDiversos;
var
  Query: TFDQuery;
  ADiversos: TConfigDiversos;
begin
  Query := TFDQuery.Create(nil);
  ADiversos := TConfigDiversos.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_DIVERSOS WHERE DIV_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      ADiversos.Codigo := Query.FieldByName('DIV_CODIGO').AsInteger;
      ADiversos.BaixarDocumentos := Query.FieldByName('DIV_BAIXARDOCUMENTOS').AsBoolean;
      ADiversos.DtaUltimaBaixa := Query.FieldByName('DIV_DTAULTIMABAIXA').AsDateTime;
      ADiversos.UltNSU := Query.FieldByName('DIV_ULTNSU').AsInteger;
      ADiversos.HraUltimaBaixa := Query.FieldByName('DIV_HRAULTIMABAIXA').AsDateTime;
      ADiversos.MaxNSU := Query.FieldByName('DIV_MAXNSU').AsInteger;
      ADiversos.Filial := Query.FieldByName('DIV_FILIAL').AsInteger;
      ADiversos.Status := Query.FieldByName('DIV_STATUS').AsInteger;
      ADiversos.ManifestaAutomatico := Query.FieldByName('DIV_MANIFESTAAUTOMATICO').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := ADiversos;
end;

end.

