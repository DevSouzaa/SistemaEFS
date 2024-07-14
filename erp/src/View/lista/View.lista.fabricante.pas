unit View.Lista.Fabricante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, Vcl.StdCtrls,
  Vcl.WinXCtrls, View.Frame.Grid.Tres.Coluna, Vcl.WinXPanels,
  View.Frame.Caminho, acPNG, Vcl.ExtCtrls, Controller.Fabricante, Model.Fabricante, Generics.Collections;

type
  TViewListaFabricante = class(TViewBaseLista)
    procedure LblBtnNovoClick(Sender: TObject);
    procedure LblBtnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
  private
    FocusedItemIndex: Integer;
    FFabricantes: TList<TFabricante>;
    procedure GET_Fabricantes;
    procedure AtualizarLista(Nome: string);
    procedure ControlListButtonClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewListaFabricante: TViewListaFabricante;

implementation

{$R *.dfm}

procedure TViewListaFabricante.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaFabricante.FormCreate(Sender: TObject);
begin
  inherited;
  FFabricantes := TList<TFabricante>.Create;
  GET_Fabricantes;
end;

procedure TViewListaFabricante.GET_Fabricantes;
var
  ControllerFabricante: TControllerFabricante;
  Fabricantes: TList<TFabricante>;
begin
  ControllerFabricante := TControllerFabricante.Create;
  try
    Fabricantes := ControllerFabricante.ObterTodos;
    try
      FFabricantes.Clear;
      if Fabricantes.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FFabricantes.AddRange(Fabricantes);
        ViewFrameDuasColuna.ControlList1.ItemCount := FFabricantes.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Fabricantes.Free;
    end;
  finally
    ControllerFabricante.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

procedure TViewListaFabricante.LblBtnEditarClick(Sender: TObject);
begin
  inherited;
  // Implementar lógica para edição de fabricantes
end;

procedure TViewListaFabricante.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  // Implementar lógica para criação de novos fabricantes
end;

procedure TViewListaFabricante.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Fabricante: TFabricante;
begin
  Fabricante := FFabricantes[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption          := IntToStr(Fabricante.Id);
    TLabel(FindComponent('LblTexto1')).Caption      := 'Descrição';
    TLabel(FindComponent('LblSubTexto1')).Caption   := Fabricante.Descricao;

    // Configurações do botão de editar
    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaFabricante.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TButton).Tag;
  LblBtnEditarClick(Sender);
end;

procedure TViewListaFabricante.AtualizarLista(Nome: string);
var
  ControllerFabricante: TControllerFabricante;
  Fabricantes: TList<TFabricante>;
begin
  ControllerFabricante := TControllerFabricante.Create;
  try
    Fabricantes := ControllerFabricante.ObterPorNome(Nome);
    try
      FFabricantes.Clear;
      if Fabricantes.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FFabricantes.AddRange(Fabricantes);
        ViewFrameDuasColuna.ControlList1.ItemCount := FFabricantes.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Fabricantes.Free;
    end;
  finally
    ControllerFabricante.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

end.

