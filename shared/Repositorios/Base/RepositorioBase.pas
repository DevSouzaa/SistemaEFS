unit RepositorioBase;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Stan.Async, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, System.SysUtils, Conexao, Generics.Collections, FireDAC.Stan.Param;

type
//  IRepositorioBase = interface
//    ['{D5F5A5F0-2C3D-4D2A-9F9E-1AFA2D5A1A0A}']
//    function ExecutarQuery(Query: TFDQuery; SQL: string; Params: array of Variant): TFDQuery;
//  end;

  TRepositorioBase = class//(TInterfacedObject, IRepositorioBase)
  private
    FDriverLink: TFDPhysFBDriverLink;
    FWaitCursor: TFDGUIxWaitCursor;
  protected
    FDConn: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;
//    function ExecutarQuery(Query: TFDQuery; SQL: string; Params: array of Variant): TFDQuery;
  end;

implementation

{ TRepositorioBase }

constructor TRepositorioBase.Create;
var
  LConexao: TConnection;
begin
  inherited Create;
  // Criar e configurar o driver link
  FDriverLink := TFDPhysFBDriverLink.Create(nil);
  FDriverLink.VendorLib := 'fbclient.dll'; // Ajuste o nome da DLL conforme necessário
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
  FreeAndNil(FDConn);
  FreeAndNil(FWaitCursor);
  FreeAndNil(FDriverLink);
  inherited;
end;


//function TRepositorioBase.ExecutarQuery(Query: TFDQuery; SQL: string;Params: array of Variant): TFDQuery;
//begin//
//
//end;

end.

