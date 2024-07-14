unit View.lista.usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, acPNG, Vcl.ExtCtrls,
  Vcl.StdCtrls, View.modal.cadastro.usuario, Enums, View.frame.caminho,
  View.frame.grid.duas.coluna, Vcl.WinXPanels, Controller.usuario, Usuario,
  Generics.Collections, Vcl.WinXCtrls;

type
  TViewListaUsuario = class(TViewBaseLista)
    procedure LblBtnNovoClick(Sender: TObject);
    procedure LblBtnEditarClick(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaBtnEditarClick(Sender: TObject);

  private
    { Private declarations }
    FUsuarios: TList<TUsuario>;
    procedure GET_Usuarios;
    procedure AtualizarLista(Nome: string);
  public
    { Public declarations }
  end;

var
  ViewListaUsuario: TViewListaUsuario;

implementation

{$R *.dfm}

procedure TViewListaUsuario.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  FUsuarios := TList<TUsuario>.Create;
  GET_Usuarios;
end;

procedure TViewListaUsuario.GET_Usuarios;
var
  ControllerUsuario: TControllerUsuario;
  Usuarios: TList<TUsuario>;
begin
  ControllerUsuario := TControllerUsuario.Create;
  try
    Usuarios := ControllerUsuario.CarregarUsuarios;
    try
      FUsuarios.Clear;
      if Usuarios.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FUsuarios.AddRange(Usuarios);
        ViewFrameDuasColuna.ControlList1.ItemCount := FUsuarios.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Usuarios.Free;
    end;
  finally
    ControllerUsuario.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

procedure TViewListaUsuario.AtualizarLista(Nome: string);
var
  ControllerUsuario: TControllerUsuario;
  Usuarios: TList<TUsuario>;
begin
  ControllerUsuario := TControllerUsuario.Create;
  try
    Usuarios := ControllerUsuario.CarregarUsuariosPorNome(Nome);
    try
      FUsuarios.Clear;
      if Usuarios.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FUsuarios.AddRange(Usuarios);
        ViewFrameDuasColuna.ControlList1.ItemCount := FUsuarios.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Usuarios.Free;
    end;
  finally
    ControllerUsuario.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

procedure TViewListaUsuario.LblBtnEditarClick(Sender: TObject);
begin
  inherited;
  ViewModalCadastroUsuario := TViewModalCadastroUsuario.Create(Self);
  try
    ViewModalCadastroUsuario.Operacao := Enums.AcaoUserToStr(AcUAlterar);
    ViewModalCadastroUsuario.IDPesquisa := StrToInt(ViewFrameDuasColuna.LblID.Caption);//id do usuario que esta focado na controllist
    ViewModalCadastroUsuario.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroUsuario);
  end;
end;

procedure TViewListaUsuario.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  ViewModalCadastroUsuario := TViewModalCadastroUsuario.Create(Self);
  try
    ViewModalCadastroUsuario.Operacao := Enums.AcaoUserToStr(AcUInserir);
    ViewModalCadastroUsuario.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroUsuario);
  end;
end;

procedure TViewListaUsuario.ViewFrameDuasColunaBtnEditarClick(Sender: TObject);
begin//
  inherited;

end;

procedure TViewListaUsuario.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Usuario: TUsuario;
begin
  Usuario := FUsuarios[AIndex];

  with ViewFrameDuasColuna do
  begin
    // Assumindo que os controles est�o diretamente no frame
    TLabel(FindComponent('LblID')).Caption        := IntToStr(Usuario.Id);
    TLabel(FindComponent('LblTexto1')).Caption    := Usuario.Nome;
    TLabel(FindComponent('LblSubTexto1')).Caption := Usuario.Login;
    TLabel(FindComponent('LblTexto2')).Visible    := False;
    TLabel(FindComponent('LblSubTexto2')).Visible := False;
  end;
end;

end.
