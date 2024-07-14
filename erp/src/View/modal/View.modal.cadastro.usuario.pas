unit View.modal.cadastro.usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls, Controller.usuario, Usuario, Perfil, Generics.Collections, Acesso, Acao, Sistema,
  Vcl.WinXPanels, UFuncoes;

type
  TViewModalCadastroUsuario = class(TViewBaseTelaModal)
    PnlFundo: TPanel;
    EdtID: TEdit;
    EdtNome: TEdit;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    CbxPerfil: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CardPanel1: TCardPanel;
    CardAdm: TCard;
    CardCom: TCard;
    PnlGrupo1: TPanel;
    PnlGrupo2: TPanel;
    PnlGrupo3: TPanel;
    PnlGrupo4: TPanel;
    CardFin: TCard;
    CardFis: TCard;
    PnlAcoesAdm: TPanel;
    PnlAcoesCom: TPanel;
    PnlAcoesFin: TPanel;
    PnlAcoesFis: TPanel;
    PnlAcaoCliente: TPanel;
    Panel5: TPanel;
    Label6: TLabel;
    CheckInserirCliente: TCheckBox;
    CheckEditarCliente: TCheckBox;
    CheckListarCliente: TCheckBox;
    CheckDeletarCliente: TCheckBox;
    PnlAcaoProduto: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    CheckInserirProduto: TCheckBox;
    CheckEditarProduto: TCheckBox;
    CheckListarProduto: TCheckBox;
    CheckDeletarProduto: TCheckBox;
    PnlAcaoUsuarios: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    CheckInserirUsuario: TCheckBox;
    CheckEditarUsuario: TCheckBox;
    CheckListarUsuario: TCheckBox;
    CheckDeletarUsuario: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure PnlGrupo1Click(Sender: TObject);
    procedure PnlGrupo2Click(Sender: TObject);
    procedure PnlGrupo3Click(Sender: TObject);
    procedure PnlGrupo4Click(Sender: TObject);
    procedure LblBtnGravarClick(Sender: TObject);
  private
    FControllerUsuario: TControllerUsuario;
    FUsuario: TUsuario;
    procedure CarregarPerfis;
    procedure CarregarPermissoes;
    procedure SalvarUsuario;
    procedure AlternarCard;
  public
    procedure EditarUsuario(AUsuario: TUsuario);
  end;

var
  ViewModalCadastroUsuario: TViewModalCadastroUsuario;

implementation

{$R *.dfm}

procedure TViewModalCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  FControllerUsuario := TControllerUsuario.Create;

  FUsuario := FControllerUsuario.CarregarUsuarioPorId(IDPesquisa);

  EditarUsuario(FUsuario);

//  EdtID.Text    := IntToStr(FUsuario.Id) ;
//  EdtNome.Text  := FUsuario.Nome ;
//  EdtLogin.Text := FUsuario.Login ;
//  EdtSenha.Text := FUsuario.Senha ;

  CarregarPerfis;

  if Assigned(FUsuario) then
    CarregarPermissoes;
end;

procedure TViewModalCadastroUsuario.LblBtnGravarClick(Sender: TObject);
begin
  inherited;
  SalvarUsuario;
end;

procedure TViewModalCadastroUsuario.PnlGrupo1Click(Sender: TObject);
begin
  inherited;
  CardPanel1.ActiveCardIndex := 0;
  AlternarCard;
end;

procedure TViewModalCadastroUsuario.PnlGrupo2Click(Sender: TObject);
begin
  inherited;
  CardPanel1.ActiveCardIndex := 1;
  AlternarCard;
end;

procedure TViewModalCadastroUsuario.PnlGrupo3Click(Sender: TObject);
begin
  inherited;
  CardPanel1.ActiveCardIndex := 2;
  AlternarCard;
end;

procedure TViewModalCadastroUsuario.PnlGrupo4Click(Sender: TObject);
begin
  inherited;
  CardPanel1.ActiveCardIndex := 3;
  AlternarCard;
end;

procedure TViewModalCadastroUsuario.CarregarPerfis;
var
  Perfis: TList<TPerfil>;
  Perfil: TPerfil;
begin
  CbxPerfil.Items.Clear;
  Perfis := FControllerUsuario.CarregarPerfis;
  try
    for Perfil in Perfis do
      CbxPerfil.Items.AddObject(Perfil.Nome, TObject(Perfil.Id));
  finally
    Perfis.Free;
  end;
end;

procedure TViewModalCadastroUsuario.CarregarPermissoes;
var
  Acessos: TList<TAcesso>;
  Permissao: TAcesso;
begin
  Acessos := FControllerUsuario.CarregarAcessosPorPerfil(FUsuario.PerfilId);
  try
    for Permissao in Acessos do
    begin
      case Permissao.AcaoId of
        1: // ID da A��o "Cliente"
          begin
            CheckInserirCliente.Checked := Permissao.Inserir;
            CheckEditarCliente.Checked := Permissao.Alterar;
            CheckDeletarCliente.Checked := Permissao.Excluir;
            CheckListarCliente.Checked := Permissao.Listar;
          end;
        2: // ID da A��o "Produto"
          begin
            CheckInserirProduto.Checked := Permissao.Inserir;
            CheckEditarProduto.Checked := Permissao.Alterar;
            CheckDeletarProduto.Checked := Permissao.Excluir;
            CheckListarProduto.Checked := Permissao.Listar;
          end;
        3: // ID da A��o "Usuario"
          begin
            CheckInserirUsuario.Checked := Permissao.Inserir;
            CheckEditarUsuario.Checked := Permissao.Alterar;
            CheckDeletarUsuario.Checked := Permissao.Excluir;
            CheckListarUsuario.Checked := Permissao.Listar;
          end;
      end;
    end;
  finally
    Acessos.Free;
  end;
end;

procedure TViewModalCadastroUsuario.EditarUsuario(AUsuario: TUsuario);
begin
  FUsuario := AUsuario;
  EdtID.Text := IntToStr(AUsuario.Id);
  EdtNome.Text := AUsuario.Nome;
  EdtLogin.Text := AUsuario.Login;
  EdtSenha.Text := AUsuario.Senha;
  CbxPerfil.ItemIndex := CbxPerfil.Items.IndexOfObject(TObject(AUsuario.PerfilId));

  CarregarPermissoes;
end;

procedure TViewModalCadastroUsuario.AlternarCard;
var
  IndexCard: Integer;
begin
  IndexCard := CardPanel1.ActiveCardIndex;

  case IndexCard of
    0:
      begin
        PnlGrupo1.Color := corClara;
        PnlGrupo2.Color := $00525252;
        PnlGrupo3.Color := $00525252;
        PnlGrupo4.Color := $00525252;
      end;

    1:
      begin
        PnlGrupo1.Color := $00525252;
        PnlGrupo2.Color := corClara;
        PnlGrupo3.Color := $00525252;
        PnlGrupo4.Color := $00525252;
      end;

    2:
      begin
        PnlGrupo1.Color := $00525252;
        PnlGrupo2.Color := $00525252;
        PnlGrupo3.Color := corClara;
        PnlGrupo4.Color := $00525252;
      end;

    3:
      begin
        PnlGrupo1.Color := $00525252;
        PnlGrupo2.Color := $00525252;
        PnlGrupo3.Color := $00525252;
        PnlGrupo4.Color := corClara;
      end;
  end;
end;

procedure TViewModalCadastroUsuario.BtnSalvarClick(Sender: TObject);
begin
  SalvarUsuario;
end;

procedure TViewModalCadastroUsuario.SalvarUsuario;
var
  Permissao: TAcesso;
begin
  if not Assigned(FUsuario) then
    FUsuario := TUsuario.Create;

  FUsuario.Nome := EdtNome.Text;
  FUsuario.Login := EdtLogin.Text;
  FUsuario.Senha := EdtSenha.Text;
  FUsuario.PerfilId := Integer(CbxPerfil.Items.Objects[CbxPerfil.ItemIndex]);

  try
    FControllerUsuario.SalvarUsuario(FUsuario);

    Permissao := TAcesso.Create;

    // Exemplo de Cliente
    Permissao.PerfilId := FUsuario.PerfilId;
    Permissao.AcaoId := 1; // ID da A��o "Cliente"
    Permissao.Inserir := CheckInserirCliente.Checked;
    Permissao.Alterar := CheckEditarCliente.Checked;
    Permissao.Excluir := CheckDeletarCliente.Checked;
    Permissao.Listar := CheckListarCliente.Checked;
    FControllerUsuario.SalvarAcesso(Permissao);

    // Exemplo de Produto
    Permissao := TAcesso.Create;
    Permissao.PerfilId := FUsuario.PerfilId;
    Permissao.AcaoId := 2; // ID da A��o "Produto"
    Permissao.Inserir := CheckInserirProduto.Checked;
    Permissao.Alterar := CheckEditarProduto.Checked;
    Permissao.Excluir := CheckDeletarProduto.Checked;
    Permissao.Listar := CheckListarProduto.Checked;
    FControllerUsuario.SalvarAcesso(Permissao);

    // Exemplo de Usuario
    Permissao := TAcesso.Create;
    Permissao.PerfilId := FUsuario.PerfilId;
    Permissao.AcaoId := 3; // ID da A��o "Usuario"
    Permissao.Inserir := CheckInserirUsuario.Checked;
    Permissao.Alterar := CheckEditarUsuario.Checked;
    Permissao.Excluir := CheckDeletarUsuario.Checked;
    Permissao.Listar := CheckListarUsuario.Checked;
    FControllerUsuario.SalvarAcesso(Permissao);

    ShowMessage('Usu�rio salvo com sucesso!');
    Close;
  except
    on E: Exception do
      ShowMessage('Erro ao salvar usu�rio: ' + E.Message);
  end;
end;

end.

