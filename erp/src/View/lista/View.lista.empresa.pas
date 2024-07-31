unit View.lista.empresa;

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
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.ControlList,

  View.Base.Lista,
  View.frame.grid.tres.coluna,
  View.frame.caminho,
  view.telaFundo,
  view.modal.cadastro.empresa,



  acPNG,

  Generics.Collections,
  Empresa,

  controller.empresa,

  Enums;


type
  TViewListaEmpresas = class(TViewBaseLista)
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
    procedure ViewFrameDuasColunaBtnEditarClick(Sender: TObject);
    procedure LblBtnNovoClick(Sender: TObject);
    procedure ControlListButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    FocusedItemIndex: Integer;
    FEmpresas: TList<TEmpresa>;
    procedure GET_Empresas;
    procedure AtualizarLista(Nome: string);

  public
    { Public declarations }
  end;

var
  ViewListaEmpresas: TViewListaEmpresas;

implementation

{$R *.dfm}

procedure TViewListaEmpresas.FormCreate(Sender: TObject);
begin
  inherited;
  FEmpresas := TList<TEmpresa>.Create;
  GET_Empresas;
end;

procedure TViewListaEmpresas.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FEmpresas);
end;

procedure TViewListaEmpresas.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaEmpresas.GET_Empresas;
var
  ControllerEmpresa: TControllerEmpresa;
  Empresas: TList<TEmpresa>;
begin
  ControllerEmpresa := TControllerEmpresa.Create;
  Empresas := ControllerEmpresa.ObterTodas;
  try

    FEmpresas.Clear;
    FEmpresas.AddRange(Empresas);
  finally
    Empresas.Free;
    ControllerEmpresa.Free;
  end;

  ViewFrameDuasColuna.ControlList1.ItemCount := FEmpresas.Count;
end;

procedure TViewListaEmpresas.AtualizarLista(Nome: string);
var
  ControllerEmpresa: TControllerEmpresa;
  Empresas: TList<TEmpresa>;
begin
  ControllerEmpresa := TControllerEmpresa.Create;
  try
    Empresas := ControllerEmpresa.ObterPorNome(Nome);
    FEmpresas.Clear;
    FEmpresas.AddRange(Empresas);
  finally
    FreeAndNil(Empresas);
    ControllerEmpresa.Free;
  end;

  ViewFrameDuasColuna.ControlList1.ItemCount := FEmpresas.Count;
end;

procedure TViewListaEmpresas.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Empresa: TEmpresa;
begin
  Empresa := FEmpresas[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption := IntToStr(Empresa.Id);
    TLabel(FindComponent('LblTexto1')).Caption := Empresa.RazaoSocial;
    TLabel(FindComponent('LblSubTexto1')).Caption := Empresa.CNPJ;
    TLabel(FindComponent('LblTexto2')).Caption := 'FANTASIA';
    TLabel(FindComponent('LblSubTexto2')).Caption := Empresa.Fantasia;
    TLabel(FindComponent('LblTexto3')).Caption := 'LOCALIZAÇÃO';
    TLabel(FindComponent('LblSubTexto3')).Caption := Format('%s, %s', [Empresa.Cidade, Empresa.UF]);

    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaEmpresas.ViewFrameDuasColunaBtnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  TelaFundo := TViewTelaFundo.Create(Self);
  TelaFundo.Show;
  ViewModalCadastroEmpresas := TViewModalCadastroEmpresas.Create(Self);
  try
    ViewModalCadastroEmpresas.Operacao   := Enums.AcaoUserToStr(AcUAlterar);
    ViewModalCadastroEmpresas.IDPesquisa :=  FEmpresas[FocusedItemIndex].Id;  //passar id do que esta focado
    ViewModalCadastroEmpresas.ShowModal;
  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewModalCadastroEmpresas);
  end;
end;

procedure TViewListaEmpresas.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  // Código para abrir a tela de cadastro de nova empresa
end;

procedure TViewListaEmpresas.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TControlListButton).Tag;
  ViewFrameDuasColunaBtnEditarClick(Sender);
end;

end.

