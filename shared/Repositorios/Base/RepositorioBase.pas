unit RepositorioBase;

interface
uses
  FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Stan.Async, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, System.SysUtils, Conexao, Generics.Collections;
type
  TRepositorioBase = class(TInterfacedObject)
  private
    FDriverLink: TFDPhysFBDriverLink;
    FWaitCursor: TFDGUIxWaitCursor;
  protected
    FDConn: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;
    function ExecutarQuery(Query: TFDQuery; SQL: string; Params: array of Variant): TFDQuery;
  end;


implementation

{ TBaseRepository }

constructor TRepositorioBase.Create;
var
  LConexao: TConnection;
begin
  inherited Create;
  // Criar e configurar o driver link
  FDriverLink := TFDPhysFBDriverLink.Create(nil);
  FDriverLink.VendorLib := 'fbclient.dll'; // Ajuste o nome da DLL conforme necess�rio
  // Criar e configurar o wait cursor
  FWaitCursor := TFDGUIxWaitCursor.Create(nil);
  FDConn := TFDConnection.Create(nil);
  LConexao := TConnection.Create(nil);
  try
    LConexao.GetConfigConnection(FDConn);
    FDConn.Connected := True; // Conecta ao banco de dados
  finally
    LConexao.Free;
  end;
end;

destructor TRepositorioBase.Destroy;
begin
  FDConn.Free;
  FWaitCursor.Free;
  FDriverLink.Free;
  inherited;
end;

function TRepositorioBase.ExecutarQuery(Query: TFDQuery; SQL: string; Params: array of Variant): TFDQuery;
var
  I: Integer;
begin
  Result := nil;
  try
    Query.Params.Clear;
    Query.SQL.Text := SQL;
    Query.Close;
    if Length(Params) <> Query.Params.Count then
      raise Exception.Create('O n�mero de par�metros n�o coincide com o esperado pela consulta SQL.');
    for I := 0 to High(Params) do
      Query.Params[I].Value := Params[I];
    Query.Open;
    Result := Query;
  except
    on E: Exception do
    begin
      {$IFDEF DEBUG}
      // Em modo Debug, exibe a mensagem de erro detalhada
//      ShowMessage('Erro na Consulta SQL: ' + E.Message);
      {$ELSE}
      // Em modo Release, exibe a mensagem de erro customizada
      fnc_CriarMensagem('Erro ao Executar Consulta', 'Erro na Consulta SQL',
        'Erro: ' + E.Message, ExtractFilePath(Application.ExeName) + '\Icones\Atencao.png', 'OK');
      {$ENDIF}
      raise;
    end;
  end;
end;

end.
