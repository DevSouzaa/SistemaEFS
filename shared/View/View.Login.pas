unit View.Login;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,sMaskEdit,
  Vcl.Imaging.jpeg,
  Vcl.Buttons,
  Provider.Constantes,

  Login.Controller,

  View.Base,
  View.Principal,

  Empresa.model,

  Generics.Collections,

  sComboBox,
  sComboBoxes,
  sCustomComboEdit;

type
  TViewLogin = class(TViewBase)
    PnlPrincipal: TPanel;
    PnlLeft: TPanel;
    PnlLogin: TPanel;
    LblSenha: TLabel;
    LblUsuario: TLabel;
    PnlLogo: TPanel;
    LblEmpresa: TLabel;
    ImageLogo: TImage;
    BtnSair: TSpeedButton;
    EdtSenha: TEdit;
    LblLogin: TLabel;
    PnlBtnLogin: TPanel;
    BtnLogin: TSpeedButton;
    CBB_Empresas: TComboBox;
    EdtUsuario: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
    FLoginController: TLoginController; // Instância do controlador de login

    procedure CarregarEmpresas; // Método para carregar empresas
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.FormCreate(Sender: TObject);
begin
  inherited;
  ArredondarBorda(ViewLogin);
  ArredondarBorda(PnlPrincipal);
  ArredondarBorda(PnlLeft);
  ArredondarBorda(PnlLogin);
  ArredondarBorda(EdtUsuario);
  ArredondarBorda(EdtSenha);
  ArredondarBorda(CBB_Empresas);
  ArredondarBorda(PnlBtnLogin);

  FLoginController := TLoginController.Create; // Inicializa o controlador de login
  CarregarEmpresas; // Carrega as empresas ao criar o formulário
end;

procedure TViewLogin.BtnLoginClick(Sender: TObject);
var
  UsuarioValido: Boolean;
begin
  inherited;
  UsuarioValido := FLoginController.Autenticar(EdtUsuario.Text, EdtSenha.Text);
  if UsuarioValido then
  begin
    ShowMessage('Login bem-sucedido');

    Application.CreateForm(TViewPrincipal, ViewPrincipal);
    try
      ViewPrincipal.ShowModal;
    finally
    Self.Close;
    end;
  end
  else
    ShowMessage('Usuário ou senha inválidos');
end;

procedure TViewLogin.BtnSairClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TViewLogin.CarregarEmpresas;
var
  Empresas: TList<TEmpresa>;
  Empresa: TEmpresa;
begin
  Empresas := FLoginController.CarregarEmpresas;
  try
    CBB_Empresas.Items.Clear;  // Limpa a lista antes de adicionar novos itens
    for Empresa in Empresas do
    begin
      CBB_Empresas.Items.AddObject(Empresa.RazaoSocial, TObject(Empresa.Id));
    end;
  finally
    Empresas.Free;
  end;
end;

end.
