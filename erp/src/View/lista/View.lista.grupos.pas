unit View.Lista.Grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, Vcl.StdCtrls,
  Vcl.WinXCtrls, View.Frame.Grid.Tres.Coluna, Vcl.WinXPanels,
  View.Frame.Caminho, acPNG, Vcl.ExtCtrls, Controller.Grupo, Model.Grupo, Generics.Collections;

type
  TViewListaGrupos = class(TViewBaseLista)
    procedure LblBtnNovoClick(Sender: TObject);
    procedure LblBtnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
      ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
  private
    FocusedItemIndex: Integer;
    FGrupos: TList<TGrupo>;
    procedure GET_Grupos;
    procedure AtualizarLista(Nome: string);
    procedure ControlListButtonClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewListaGrupos: TViewListaGrupos;

implementation

{$R *.dfm}

procedure TViewListaGrupos.EdtPesquisaChange(Sender: TObject);
begin
  inherited;
  AtualizarLista(EdtPesquisa.Text);
end;

procedure TViewListaGrupos.FormCreate(Sender: TObject);
begin
  inherited;
  FGrupos := TList<TGrupo>.Create;
  GET_Grupos;
end;

procedure TViewListaGrupos.GET_Grupos;
var
  ControllerGrupo: TControllerGrupo;
  Grupos: TList<TGrupo>;
begin
  ControllerGrupo := TControllerGrupo.Create;
  try
    Grupos := ControllerGrupo.ObterTodos;
    try
      FGrupos.Clear;
      if Grupos.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FGrupos.AddRange(Grupos);
        ViewFrameDuasColuna.ControlList1.ItemCount := FGrupos.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Grupos.Free;
    end;
  finally
    ControllerGrupo.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

procedure TViewListaGrupos.LblBtnEditarClick(Sender: TObject);
begin
  inherited;
  // Implementar l�gica para edi��o de grupos
end;

procedure TViewListaGrupos.LblBtnNovoClick(Sender: TObject);
begin
  inherited;
  // Implementar l�gica para cria��o de novos grupos
end;

procedure TViewListaGrupos.ViewFrameDuasColunaControlList1BeforeDrawItem(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AState: TOwnerDrawState);
var
  Grupo: TGrupo;
begin
  Grupo := FGrupos[AIndex];
  with ViewFrameDuasColuna do
  begin
    TLabel(FindComponent('LblID')).Caption          := IntToStr(Grupo.Id);
    TLabel(FindComponent('LblTexto1')).Caption      := 'Descri��o:';
    TLabel(FindComponent('LblSubTexto1')).Caption   := Grupo.Descricao;
    TLabel(FindComponent('LblTexto2')).Visible      := false;
    TLabel(FindComponent('LblSubTexto2')).Visible   := false;
    TLabel(FindComponent('LblTexto3')).Visible      := false;
    TLabel(FindComponent('LblSubTexto3')).Visible   := false;
    // Configura��es do bot�o de editar
    TButton(FindComponent('BtnEditar')).Tag := AIndex;
    TButton(FindComponent('BtnEditar')).OnClick := ControlListButtonClick;
  end;
end;

procedure TViewListaGrupos.ControlListButtonClick(Sender: TObject);
begin
  FocusedItemIndex := (Sender as TButton).Tag;
  LblBtnEditarClick(Sender);
end;

procedure TViewListaGrupos.AtualizarLista(Nome: string);
var
  ControllerGrupo: TControllerGrupo;
  Grupos: TList<TGrupo>;
begin
  ControllerGrupo := TControllerGrupo.Create;
  try
    Grupos := ControllerGrupo.ObterPorNome(Nome);
    try
      FGrupos.Clear;
      if Grupos.Count = 0 then
      begin
        CadPanel_Dados.ActiveCard := Card_Vazio;
      end
      else
      begin
        FGrupos.AddRange(Grupos);
        ViewFrameDuasColuna.ControlList1.ItemCount := FGrupos.Count;
        CadPanel_Dados.ActiveCard := Card_DuasColuna;
      end;
    finally
      Grupos.Free;
    end;
  finally
    ControllerGrupo.Free;
  end;

  LblTotalItens.Caption := IntToStr(ViewFrameDuasColuna.ControlList1.ItemCount);
end;

end.
