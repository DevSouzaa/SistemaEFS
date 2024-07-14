unit Dm.UserControl;

interface

uses
  System.SysUtils, System.Classes, Provider.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDMUserControl = class(TProviderConexao)
    QRY_UsuariosUCIDUSER: TIntegerField;
    QRY_UsuariosUCUSERNAME: TStringField;
    QRY_UsuariosUCLOGIN: TStringField;
    QRY_UsuariosUCPASSWORD: TStringField;
    QRY_UsuariosUCPASSEXPIRED: TStringField;
    QRY_UsuariosUCUSEREXPIRED: TIntegerField;
    QRY_UsuariosUCUSERDAYSSUN: TIntegerField;
    QRY_UsuariosUCEMAIL: TStringField;
    QRY_UsuariosUCPRIVILEGED: TIntegerField;
    QRY_UsuariosUCTYPEREC: TStringField;
    QRY_UsuariosUCPROFILE: TIntegerField;
    QRY_UsuariosUCKEY: TStringField;
    QRY_UsuariosUCINATIVE: TIntegerField;
    QRY_UsuariosUCIMAGE: TMemoField;
  private


  public
    procedure GetUsuarios;
  end;

var
  DMUserControl: TDMUserControl;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMUserControl.GetUsuarios;
begin //Carrega todos os Usuários do Sistema
  QRY_usuarios.Close;
  QRY_usuarios.SQL.Clear;
  QRY_usuarios.SQL.Add('select * from UCTABUSERS where uctyperec = :uctyperec order by uciduser');
  QRY_usuarios.Params[0].AsString := 'U';
  QRY_usuarios.Open();
end;

end.
