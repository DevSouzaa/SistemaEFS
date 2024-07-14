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

//  Controller.Login,

  View.Base,
  View.Principal,

  Empresa,

  Sistema,

  Generics.Collections,

  sComboBox,
  sComboBoxes,
  sCustomComboEdit,
  sPanel,
  acPNG;

type
  TViewLogin = class(TViewBase)
    PnlPrincipal: TsGradientPanel;
    BtnSair: TSpeedButton;
    PnlLogin: TsGradientPanel;
    CBB_Empresas: TComboBox;
    EdtSenha: TEdit;
    EdtUsuario: TEdit;
    LblEmpresa: TLabel;
    LblSenha: TLabel;
    LblUsuario: TLabel;
    Image1: TImage;
    BtnLogin: TsGradientPanel;
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure EdtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnLoginMouseEnter(Sender: TObject);
    procedure BtnLoginMouseLeave(Sender: TObject);
  private
    { Private declarations }
//    FLoginController: TLoginController; // Inst�ncia do controlador de login

    procedure CarregarEmpresas; // M�todo para carregar empresas
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

uses
  UFuncoes;

procedure TViewLogin.FormCreate(Sender: TObject);
begin
  inherited;
  ArredondarBorda(ViewLogin);
  ArredondarBorda(PnlPrincipal);
  ArredondarBorda(PnlLogin);
  ArredondarBorda(EdtUsuario);
  ArredondarBorda(EdtSenha);
  ArredondarBorda(CBB_Empresas);
  ArredondarBorda(BtnLogin);

//  FLoginController := TLoginController.Create; // Inicializa o controlador de login
  CarregarEmpresas; // Carrega as empresas ao criar o formul�rio
  CBB_Empresas.ItemIndex := 0;
end;

procedure TViewLogin.BtnLoginClick(Sender: TObject);
var
  UsuarioValido: Boolean;
begin
  inherited;
//  UsuarioValido := FLoginController.Autenticar(EdtUsuario.Text, EdtSenha.Text);
//  if UsuarioValido then
//  begin
//    if CBB_Empresas.ItemIndex >= 0 then
//    begin
//    TSistema.New.Empresa := TEmpresa(CBB_Empresas.Items.Objects[CBB_Empresas.ItemIndex]); // Casting para TEmpresa
////      fnc_CriarMensagem('Autentica��o Concluida', 'Usuario Encontrado',
////        'Login Efetuado com Sucesso!', ExtractFilePath(Application.ExeName) + '\Icones\Confirmacao.png', 'OK');
//      Application.CreateForm(TViewPrincipal, ViewPrincipal);
//      try
//        ViewPrincipal.ShowModal;
//      finally
//        Application.Terminate;
//      end;
//    end
//    else
//    begin
//      ShowMessage('Selecione uma empresa.');
//    end;
//  end;
end;

procedure TViewLogin.BtnLoginMouseEnter(Sender: TObject);
begin//on enter
  inherited;
  BtnLogin.PaintData.Color1.Color := CorClara2;
  BtnLogin.PaintData.Color2.Color := CorClara;
end;

procedure TViewLogin.BtnLoginMouseLeave(Sender: TObject);
begin//onleave
  inherited;
  BtnLogin.PaintData.Color1.Color := CorEscuroMax ;
  BtnLogin.PaintData.Color2.Color := CorClara2  ;
end;

procedure TViewLogin.BtnSairClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TViewLogin.CarregarEmpresas;
begin
//var
//  Empresas: TList<TEmpresa>;
//  Empresa: TEmpresa;
//begin
//  Empresas := .CarregarEmpresas;
//  try
//    CBB_Empresas.Items.Clear;  // Limpa a lista antes de adicionar novos itens
//    for Empresa in Empresas do
//    begin
//      CBB_Empresas.Items.AddObject(Empresa.RazaoSocial, Empresa); //carrega a empresa ja pq e mais facil pra passar na fsistema
//    end;
//  finally
//    Empresas.Free;
//  end;
end;

procedure TViewLogin.EdtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    BtnLoginClick(sender);
  end;
end;

end.
