unit View.Lista.Marca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, Vcl.StdCtrls,
  Vcl.WinXCtrls, View.Frame.Grid.Tres.Coluna, Vcl.WinXPanels,
  View.Frame.Caminho, acPNG, Vcl.ExtCtrls, Controller.Marca, Model.Marca, Generics.Collections;

type
  TViewListaMarca = class(TViewBaseLista)
    procedure LblBtnNovoClick(Sender: TObject);
    procedure LblBtnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
  private
    FocusedItemIndex: Integer;
    FMarcas: TList<IMarca>;
    procedure GET_Marcas;
    procedure AtualizarLista(Nome: string);
    procedure ControlListButtonClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewListaMarca: TViewListaMarca;

implementation

{$R *.dfm}

procedure TViewListaMarca.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaMarca.FormCreate(Sender: TObject);
begin
  inherited;
  FMarcas := TList<IMarca>.Create;
  GET_Marcas;
end;

procedure TViewListaMarca.FormDestroy(Sender: TObject);
begin
  FMarcas.Free;
  inherited;
end;

procedure TViewListaMarca.GET_Marcas;
var
  ControllerMarca: TControllerMarca;
  Marcas: TList<IMarca>;
begin
  ControllerMarca := TControllerMarca.Create;
  try
    Marcas := ControllerMarca.ObterTodos;
    try
      FMarcas.Clear;
      if Marcas.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FMarcas.AddRange(Marcas);
        ViewFrameDuasColuna.ControlList1.ItemCount := FMarcas.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Marcas.Free; // Libere a lista Marcas para evitar vazamento de memória
    end;
  finally
    ControllerMarca.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

procedure TViewListaMarca.LblBtnEditarClick(Sender: TObject);
begin
  inherited;
  // Implementar lógica para edição de marcas
end;

procedure TViewListaMarca.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  // Implementar lógica para criação de novas marcas
end;

procedure TViewListaMarca.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Marca: IMarca;
begin
  Marca := FMarcas[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption          := IntToStr(Marca.ID);
    TLabel(FindComponent('LblTexto1')).Caption      := 'Descrição';
    TLabel(FindComponent('LblSubTexto1')).Caption   := Marca.Descricao;
    TLabel(FindComponent('LblTexto2')).Visible      := false;
    TLabel(FindComponent('LblSubTexto2')).Visible   := false;
    TLabel(FindComponent('LblTexto3')).Visible      := false;
    TLabel(FindComponent('LblSubTexto3')).Visible   := false;

    // Configurações do botão de editar
    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaMarca.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TButton).Tag;
  LblBtnEditarClick(Sender);
end;

procedure TViewListaMarca.AtualizarLista(Nome: string);
var
  ControllerMarca: TControllerMarca;
  Marcas: TList<IMarca>;
begin
  ControllerMarca := TControllerMarca.Create;
  try
    Marcas := ControllerMarca.ObterPorNome(Nome);
    try
      FMarcas.Clear;
      if Marcas.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FMarcas.AddRange(Marcas);
        ViewFrameDuasColuna.ControlList1.ItemCount := FMarcas.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Marcas.Free; // Libere a lista Marcas para evitar vazamento de memória
    end;
  finally
    ControllerMarca.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

end.

