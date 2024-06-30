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
  Conexao.Model, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TProviderConexao = class(TDataModule)
    FDConnection: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FDDriverLink: TFDPhysFBDriverLink;
    QRY_Aux: TFDQuery;
    QRY_Usuario: TFDQuery;
    QRY_Empresa: TFDQuery;
    procedure FDConnectionBeforeConnect(Sender: TObject);
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

procedure TProviderConexao.FDConnectionBeforeConnect(Sender: TObject);
var
  LConnection : TConnection;
begin
  LConnection := TConnection.create(Self);
    Try
      LConnection.GetConfigConnection(FDConnection);
    Finally
      Freeandnil(FDConnection);
    End;
end;

end.
