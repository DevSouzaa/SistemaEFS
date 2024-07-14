unit Dm.Principal;

interface

uses
  System.SysUtils, System.Classes, Provider.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, UFuncoes, Vcl.Forms;

type
  TDmPrincipal = class(TProviderConexao)
    QRY_Acesso: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function ExecutarQuery(Query: TFDQuery; SQL: string; Params: array of Variant): TFDQuery;
    function CarregarEmpresas: TFDQuery; // Adicionado método para carregar empresas
  end;

var
  DmPrincipal: TDmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDmPrincipal.CarregarEmpresas: TFDQuery;
begin
  QRY_Empresa.Close;
  QRY_Empresa.SQL.Text := 'SELECT * FROM EMPRESA';
  QRY_Empresa.Open();
  Result := QRY_Empresa;
end;

function TDmPrincipal.ExecutarQuery(Query: TFDQuery; SQL: string; Params: array of Variant): TFDQuery;
var
  I: Integer;
begin
  Result := nil;
  try
    Query.SQL.Text := SQL;
    Query.Close;
    Query.Params.Clear;

    if Length(Params) <> Query.Params.Count then
      raise Exception.Create('O número de parâmetros não coincide com o esperado pela consulta SQL.');

    for I := Low(Params) to High(Params) do
      Query.Params[I].Value := Params[I];

    Query.Open;
    Result := Query;
  except
    on E: Exception do
    begin
      fnc_CriarMensagem('Erro ao Executar Consulta', 'Erro na Consulta SQL',
        'Erro: ' + E.Message, ExtractFilePath(Application.ExeName) + '\Icones\Atencao.png', 'OK');
      raise;
    end;
  end;
end;

end.
