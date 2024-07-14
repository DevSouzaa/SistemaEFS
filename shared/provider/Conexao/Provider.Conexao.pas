unit Provider.Conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  FireDAC.Comp.UI,
  Data.DB,
  FireDAC.Comp.Client,
  Conexao, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TProviderConexao = class(TDataModule)
    QRY_Aux: TFDQuery;
    QRY_Usuarios: TFDQuery;
    QRY_Empresa: TFDQuery;
    FDConn: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure FDConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProviderConexao: TProviderConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TProviderConexao.FDConnBeforeConnect(Sender: TObject);
var
  LConnection : TConnection;
begin
  LConnection := TConnection.create(Self);
    Try
      LConnection.GetConfigConnection(FDConn);
    Finally
      Freeandnil(LConnection);
    End;
end;

end.
