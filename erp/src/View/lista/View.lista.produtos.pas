unit View.lista.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, acPNG, Vcl.ExtCtrls,
  Vcl.StdCtrls, View.Modal.Cadastro.Produto, Enums, View.frame.caminho, Vcl.WinXPanels, Vcl.WinXCtrls, Controller.Produto, ProdutoSimplificado, Generics.Collections,
  View.frame.grid.tres.coluna, view.telaFundo, Vcl.ControlList;

type
  TViewListaProdutos = class(TViewBaseLista)
    procedure LblBtnNovoClick(Sender: TObject);
    procedure LblBtnEditarClick(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaBtnEditarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FocusedItemIndex: Integer;
    FProdutos: TObjectList<TProdutoSimplificado>;
    procedure GET_Produtos;
    procedure AtualizarLista(Nome: string);
    procedure ControlListButtonClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewListaProdutos: TViewListaProdutos;

implementation

{$R *.dfm}

procedure TViewListaProdutos.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  FProdutos := TObjectList<TProdutoSimplificado>.Create(True); // Gerenciamento autom�tico dos objetos
  GET_Produtos;
end;

procedure TViewListaProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FProdutos);
end;

procedure TViewListaProdutos.GET_Produtos;
var
  ControllerProduto: TControllerProduto;
  Produtos: TObjectList<TProdutoSimplificado>;
begin
  ControllerProduto := TControllerProduto.Create;
  try
    Produtos := ControllerProduto.ObterTodos;
    try
      FProdutos.Clear;

      if Produtos.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FProdutos.AddRange(Produtos.ToArray);
        // N�o limpe a lista `Produtos`, pois isso tentaria liberar os objetos que j� est�o em `FProdutos`

        ViewFrameDuasColuna.ControlList1.ItemCount := FProdutos.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      // N�o precisa liberar `Produtos`, porque `FProdutos` j� cont�m os objetos.
      // Se `Produtos` for liberada, os objetos dentro dela tamb�m ser�o liberados, causando problemas.
      Produtos.OwnsObjects := False; // Desativa a propriedade de libera��o autom�tica antes de liberar `Produtos`
      Produtos.Free;
    end;
  finally
    ControllerProduto.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;


procedure TViewListaProdutos.LblBtnEditarClick(Sender: TObject);
begin
  inherited;
  ViewModalCadastroProduto := TViewModalCadastroProduto.Create(Self);
  try
    ViewModalCadastroProduto.Operacao := Enums.AcaoUserToStr(AcUAlterar);
    ViewModalCadastroProduto.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroProduto);
  end;
end;

procedure TViewListaProdutos.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  ViewModalCadastroProduto := TViewModalCadastroProduto.Create(Self);
  try
    ViewModalCadastroProduto.Operacao := Enums.AcaoUserToStr(AcUInserir);
    ViewModalCadastroProduto.ShowModal;
  finally
    FreeAndNil(ViewModalCadastroProduto);
  end;
end;

procedure TViewListaProdutos.ViewFrameDuasColunaBtnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  TelaFundo := TViewTelaFundo.Create(Self);
  TelaFundo.Show;
  ViewModalCadastroProduto := TViewModalCadastroProduto.Create(Self);
  try
    ViewModalCadastroProduto.Operacao := Enums.AcaoUserToStr(AcUAlterar);
    ViewModalCadastroProduto.IDPesquisa := FProdutos[FocusedItemIndex].IdProduto;  //passar id do que esta focado
    ViewModalCadastroProduto.ShowModal;
  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewModalCadastroProduto);
  end;
end;

procedure TViewListaProdutos.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer; ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Produto: TProdutoSimplificado;
begin
  Produto := FProdutos[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption := IntToStr(Produto.IdProduto);
    TLabel(FindComponent('LblTexto1')).Caption := Produto.Descricao;
    TLabel(FindComponent('LblSubTexto1')).Caption := Produto.NCM;
    TLabel(FindComponent('LblTexto2')).Caption := 'VALOR DE VENDA';
    TLabel(FindComponent('LblSubTexto2')).Caption := FormatFloat('R$ ,0.00', Produto.ValorVenda);

    TLabel(FindComponent('LblTexto3')).Font.Color := clBackground;
    TLabel(FindComponent('LblSubTexto3')).Font.Color := clBackground;

    if Produto.Estoque < 0 then
    begin
      TLabel(FindComponent('LblTexto3')).Font.Color := clRed;
      TLabel(FindComponent('LblSubTexto3')).Font.Color := clRed;
    end;

    TLabel(FindComponent('LblTexto3')).Caption := 'ESTOQUE';
    TLabel(FindComponent('LblSubTexto3')).Caption := FloatToStr(Produto.Estoque);

    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaProdutos.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TButton).Tag; // Armazena o �ndice do item clicado
  ViewFrameDuasColunaBtnEditarClick(Sender);
end;

procedure TViewListaProdutos.AtualizarLista(Nome: string);
var
  ControllerProduto: TControllerProduto;
  Produtos: TObjectList<TProdutoSimplificado>;
begin
  ControllerProduto := TControllerProduto.Create;
  try
    Produtos := ControllerProduto.ObterPorNome(Nome);
    try
      FProdutos.Clear;
      if Produtos.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FProdutos.AddRange(Produtos);
        ViewFrameDuasColuna.ControlList1.ItemCount := FProdutos.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Produtos.Free;
    end;
  finally
    ControllerProduto.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

end.

