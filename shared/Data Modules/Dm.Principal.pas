unit Dm.Principal;

interface

uses
  System.SysUtils, System.Classes, Provider.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDmPrincipal = class(TProviderConexao)
  private
    { Private declarations }
  public
    { Public declarations }
    function ExecutarQuery(SQL: string; Params: array of Variant): TFDQuery;
  end;

var
  DmPrincipal: TDmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDataModule1.ExecutarQuery(SQL: string; Params: array of Variant): TFDQuery;
var
  I: Integer;
begin
  FDQuery.SQL.Text := SQL;
  FDQuery.Close;
  FDQuery.Params.Clear;
  for I := Low(Params) to High(Params) do
    FDQuery.Params[I].Value := Params[I];
  FDQuery.Open;
  Result := FDQuery;
end;

end.
