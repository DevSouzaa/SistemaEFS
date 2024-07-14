unit View.Base.Lista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.ExtCtrls, Vcl.StdCtrls,
  acPNG, View.frame.caminho, Vcl.WinXPanels, View.frame.grid.tres.coluna,
  Vcl.WinXCtrls;

type
  TViewBaseLista = class(TViewBase)
    PnlTopo: TPanel;
    PnlRodaPe: TPanel;
    PnlBotoes: TPanel;
    PnlBtnNovo: TPanel;
    ShapeBtnNovo: TShape;
    ImgBtnNovo: TImage;
    LblBtnNovo: TLabel;
    PnlBtnEditar: TPanel;
    ShapeBtnEditar: TShape;
    ImgBtnEditar: TImage;
    LblBtnEditar: TLabel;
    ViewFrameCaminho1: TViewFrameCaminho;
    CadPanel_Dados: TCardPanel;
    Card_Vazio: TCard;
    Card_DuasColuna: TCard;
    ViewFrameDuasColuna: TViewFrameDuasColuna;
    LblTotalItens: TLabel;
    LblTitItens: TLabel;
    ImgVazio: TImage;
    EdtPesquisa: TSearchBox;
    procedure LblBtnNovoMouseEnter(Sender: TObject);
    procedure LblBtnNovoMouseLeave(Sender: TObject);
    procedure LblBtnEditarMouseEnter(Sender: TObject);
    procedure LblBtnEditarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseLista: TViewBaseLista;

implementation

{$R *.dfm}
uses
  UFuncoes;
procedure TViewBaseLista.LblBtnEditarMouseEnter(Sender: TObject);
begin
  inherited;
  ShapeBtnEditar.Brush.Color := AmareloFocoBotao;
end;

procedure TViewBaseLista.LblBtnEditarMouseLeave(Sender: TObject);
begin
  inherited;
  ShapeBtnEditar.Brush.Color := AmareloBotao;
end;

procedure TViewBaseLista.LblBtnNovoMouseEnter(Sender: TObject);
begin
  inherited;
  ShapeBtnNovo.Brush.Color := VerdeFocoBotao;
end;

procedure TViewBaseLista.LblBtnNovoMouseLeave(Sender: TObject);
begin
  inherited;
  ShapeBtnNovo.Brush.Color := VerdeBotao;
end;

//preciso criar um metodo para mostrar o total de registro no LblTotal...
//se caso o quantidade de registros for vazia ele mostra o cardvazio, se nao o card 2 colunas
//se precisar de mais colunas eu tento fazer um overirde

end.
