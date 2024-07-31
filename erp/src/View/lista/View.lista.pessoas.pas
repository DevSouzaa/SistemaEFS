unit View.Lista.Pessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, Vcl.StdCtrls,
  Vcl.WinXCtrls, View.Frame.Grid.Tres.Coluna, Vcl.WinXPanels,
  View.Frame.Caminho, acPNG, Vcl.ExtCtrls, Generics.Collections, Model.Pessoa,
  Controller.Pessoa, View.TelaFundo, View.Modal.Cadastro.Pessoa, ControlList;

type
  TViewListaPessoas = class(TViewBaseLista)
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameTresColunaBtnEditarClick(Sender: TObject);
    procedure LblBtnNovoClick(Sender: TObject);
    procedure ControlListButtonClick(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
    procedure FormDestroy(Sender: TObject);

  private
    FocusedItemIndex: Integer;
    FPessoas: TObjectList<TPessoa>;
    procedure GET_Pessoas;
    procedure AtualizarLista(Nome: string);

  public
    { Public declarations }
  end;

var
  ViewListaPessoas: TViewListaPessoas;

implementation

{$R *.dfm}

uses Enums, View.Modal.Cadastro.Unidades;

procedure TViewListaPessoas.FormCreate(Sender: TObject);
begin
  inherited;
  FPessoas := TObjectList<TPessoa>.Create;
  GET_Pessoas;
end;

procedure TViewListaPessoas.FormDestroy(Sender: TObject);
begin
  FPessoas.Free;
  inherited;
end;

procedure TViewListaPessoas.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaPessoas.GET_Pessoas;
var
  ControllerPessoa: TPessoaController;
  Pessoas: TObjecTList<TPessoa>;
begin
  ControllerPessoa := TPessoaController.Create;
  try
    Pessoas := ControllerPessoa.ObterTodos;
    try
      FPessoas.AddRange(Pessoas);
    finally
      Pessoas.OwnsObjects := false;
      Pessoas.Free; // Libere a lista Pessoas para evitar vazamento de memória
    end;
  finally
    ControllerPessoa.Free;
  end;

  ViewFrameDuasColuna.ControlList1.ItemCount := FPessoas.Count;
end;

procedure TViewListaPessoas.AtualizarLista(Nome: string);
var
  ControllerPessoa: TPessoaController;
  Pessoas: TObjectList<TPessoa>;
begin
  ControllerPessoa := TPessoaController.Create;
  try
    Pessoas := ControllerPessoa.ObterPorNome(Nome);
    try
      FPessoas.Clear; // Limpa a lista antes de adicionar novos objetos

      FPessoas.AddRange(Pessoas); // Adiciona os objetos de Pessoas a FPessoas
    finally
      Pessoas.OwnsObjects := False; // Evita que os objetos sejam destruídos
      Pessoas.Free; // Libera a lista, mas não os objetos
    end;
  finally
    ControllerPessoa.Free;
  end;

  ViewFrameDuasColuna.ControlList1.ItemCount := FPessoas.Count;
end;

procedure TViewListaPessoas.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Pessoa: TPessoa;
begin
  Pessoa := FPessoas[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption := IntToStr(Pessoa.ID);
    TLabel(FindComponent('LblTexto1')).Caption := Pessoa.RazaoSocial;
    TLabel(FindComponent('LblSubTexto1')).Caption := Pessoa.CNPJCPF;
    TLabel(FindComponent('LblTexto2')).Caption := 'FANTASIA';
    TLabel(FindComponent('LblSubTexto2')).Caption := Pessoa.Fantasia;
    TLabel(FindComponent('LblTexto3')).Caption := 'ENDEREÇO';
    TLabel(FindComponent('LblSubTexto3')).Caption := Format('%s, %s', [Pessoa.Cidade, Pessoa.UF]);

    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaPessoas.ViewFrameTresColunaBtnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  TelaFundo := TViewTelaFundo.Create(Self);
  TelaFundo.Show;
  ViewModalCadastroPessoas := TViewModalCadastroPessoas.Create(Self);
  try
    ViewModalCadastroPessoas.Operacao := Enums.AcaoUserToStr(AcUAlterar);
    ViewModalCadastroPessoas.IDPesquisa := FPessoas[FocusedItemIndex].ID; // passar id do que está focado
    ViewModalCadastroPessoas.ShowModal;
  finally
    TelaFundo.Hide;
    TelaFundo.Free;
    ViewModalCadastroPessoas.Free;
  end;
end;

procedure TViewListaPessoas.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  // Código para abrir a tela de cadastro de nova pessoa
end;

procedure TViewListaPessoas.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TControlListButton).Tag;
  ViewFrameTresColunaBtnEditarClick(Sender);
end;

end.

