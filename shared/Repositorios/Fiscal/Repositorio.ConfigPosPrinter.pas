unit Repositorio.ConfigPosPrinter;

interface

uses
  RepositorioBase, ConfigPosPrinter, FireDAC.Comp.Client, System.SysUtils, System.Classes, FireDAC.Stan.Param, Data.DB;

type
  TConfigPosPrinterRepositorio = class(TRepositorioBase)
  public
    procedure Save(APosPrinter: TConfigPosPrinter);
    function LoadByCodigo(ACodigo: Integer): TConfigPosPrinter;
    // Outros métodos conforme necessário
  end;

implementation

procedure TConfigPosPrinterRepositorio.Save(APosPrinter: TConfigPosPrinter);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_POSPRINTER SET ' +
                      'POS_MODELO = :Modelo, POS_PORTA = :Porta, POS_PAGINADECODIGO = :PaginaDeCodigo, ' +
                      'POS_COLUNAS = :Colunas, POS_ESPACOLINHAS = :EspacoLinhas, POS_LINHASENTRECUPONS = :LinhasEntreCupons, ' +
                      'POS_CORTARPAPEL = :CortarPapel, POS_PARAMSSTRING = :ParamsString ' +
                      'WHERE POS_CODIGO = :Codigo';
    Query.ParamByName('Modelo').AsInteger := APosPrinter.Modelo;
    Query.ParamByName('Porta').AsString := APosPrinter.Porta;
    Query.ParamByName('PaginaDeCodigo').AsInteger := APosPrinter.PaginaDeCodigo;
    Query.ParamByName('Colunas').AsInteger := APosPrinter.Colunas;
    Query.ParamByName('EspacoLinhas').AsInteger := APosPrinter.EspacoLinhas;
    Query.ParamByName('LinhasEntreCupons').AsInteger := APosPrinter.LinhasEntreCupons;
    Query.ParamByName('CortarPapel').AsBoolean := APosPrinter.CortarPapel;
    Query.ParamByName('ParamsString').AsString := APosPrinter.ParamsString;
    Query.ParamByName('Codigo').AsInteger := APosPrinter.Codigo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

function TConfigPosPrinterRepositorio.LoadByCodigo(ACodigo: Integer): TConfigPosPrinter;
var
  Query: TFDQuery;
  APosPrinter: TConfigPosPrinter;
begin
  Query := TFDQuery.Create(nil);
  APosPrinter := TConfigPosPrinter.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_POSPRINTER WHERE POS_CODIGO = :Codigo';
    Query.ParamByName('Codigo').AsInteger := ACodigo;
    Query.Open;
    if not Query.IsEmpty then
    begin
      APosPrinter.Codigo := Query.FieldByName('POS_CODIGO').AsInteger;
      APosPrinter.Modelo := Query.FieldByName('POS_MODELO').AsInteger;
      APosPrinter.Porta := Query.FieldByName('POS_PORTA').AsString;
      APosPrinter.PaginaDeCodigo := Query.FieldByName('POS_PAGINADECODIGO').AsInteger;
      APosPrinter.Colunas := Query.FieldByName('POS_COLUNAS').AsInteger;
      APosPrinter.EspacoLinhas := Query.FieldByName('POS_ESPACOLINHAS').AsInteger;
      APosPrinter.LinhasEntreCupons := Query.FieldByName('POS_LINHASENTRECUPONS').AsInteger;
      APosPrinter.CortarPapel := Query.FieldByName('POS_CORTARPAPEL').AsBoolean;
      APosPrinter.ParamsString := Query.FieldByName('POS_PARAMSSTRING').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := APosPrinter;
end;

end.

