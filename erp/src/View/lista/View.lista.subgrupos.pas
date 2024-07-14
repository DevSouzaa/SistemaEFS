unit View.lista.subgrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, Vcl.StdCtrls,
  Vcl.WinXCtrls, View.Frame.Grid.Tres.Coluna, Vcl.WinXPanels,
  View.Frame.Caminho, acPNG, Vcl.ExtCtrls, Controller.SubGrupo, Model.SubGrupo, Generics.Collections;

type
  TViewListaSubGrupos = class(TViewBaseLista)
    procedure LblBtnNovoClick(Sender: TObject);
    procedure LblBtnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
  private
    FocusedItemIndex: Integer;
    FSubGrupos: TList<TSubGrupo>;
    procedure GET_SubGrupos;
    procedure AtualizarLista(Nome: string);
    procedure ControlListButtonClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewListaSubGrupos: TViewListaSubGrupos;

implementation

{$R *.dfm}

procedure TViewListaSubGrupos.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaSubGrupos.FormCreate(Sender: TObject);
begin
  inherited;
  FSubGrupos := TList<TSubGrupo>.Create;
  GET_SubGrupos;
end;

procedure TViewListaSubGrupos.GET_SubGrupos;
var
  ControllerSubGrupo: TControllerSubGrupo;
  SubGrupos: TList<TSubGrupo>;
begin
  ControllerSubGrupo := TControllerSubGrupo.Create;
  try
    SubGrupos := ControllerSubGrupo.ObterTodos;
    try
      FSubGrupos.Clear;
      if SubGrupos.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FSubGrupos.AddRange(SubGrupos);
        ViewFrameDuasColuna.ControlList1.ItemCount := FSubGrupos.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      SubGrupos.Free;
    end;
  finally
    ControllerSubGrupo.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

procedure TViewListaSubGrupos.LblBtnEditarClick(Sender: TObject);
begin
  inherited;
  // Implementar l�gica para edi��o de subgrupos
end;

procedure TViewListaSubGrupos.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  // Implementar l�gica para cria��o de novos subgrupos
end;

procedure TViewListaSubGrupos.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  SubGrupo: TSubGrupo;
begin
  SubGrupo := FSubGrupos[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption          := IntToStr(SubGrupo.Id);
    TLabel(FindComponent('LblTexto1')).Caption      := 'Descri��o';
    TLabel(FindComponent('LblSubTexto1')).Caption   := SubGrupo.Descricao;
    TLabel(FindComponent('LblTexto2')).Visible      := false;
    TLabel(FindComponent('LblSubTexto2')).Visible   := false;
    TLabel(FindComponent('LblTexto3')).Visible      := false;
    TLabel(FindComponent('LblSubTexto3')).Visible   := false;
    // Configura��es do bot�o de editar
    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaSubGrupos.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TButton).Tag;
  LblBtnEditarClick(Sender);
end;

procedure TViewListaSubGrupos.AtualizarLista(Nome: string);
var
  ControllerSubGrupo: TControllerSubGrupo;
  SubGrupos: TList<TSubGrupo>;
begin
  ControllerSubGrupo := TControllerSubGrupo.Create;
  try
    SubGrupos := ControllerSubGrupo.ObterPorNome(Nome);
    try
      FSubGrupos.Clear;
      if SubGrupos.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FSubGrupos.AddRange(SubGrupos);
        ViewFrameDuasColuna.ControlList1.ItemCount := FSubGrupos.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      SubGrupos.Free;
    end;
  finally
    ControllerSubGrupo.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

end.
