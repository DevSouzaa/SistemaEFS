unit View.Base.Tela.Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, acPNG, UFuncoes;

type
  TViewBaseTelaModal = class(TViewBase)
    PnlTopo: TPanel;
    PnlRodaPe: TPanel;
    PnlLogoTela: TPanel;
    ImgLogoTelaVerde: TImage;
    ImgLogoTelaBranca: TImage;
    LblTituloDaTela: TLabel;
    PnlFecharTela: TPanel;
    PnlLineFechar: TPanel;
    lblFechar: TLabel;
    PnlBtnGravar: TPanel;
    ShapeBtnGravar: TShape;
    ImgBtnGravar: TImage;
    LblBtnGravar: TLabel;
    procedure lblFecharClick(Sender: TObject);
    procedure lblFecharMouseEnter(Sender: TObject);
    procedure lblFecharMouseLeave(Sender: TObject);
    procedure LblTituloDaTelaMouseEnter(Sender: TObject);
    procedure LblTituloDaTelaMouseLeave(Sender: TObject);
    procedure LblBtnGravarMouseEnter(Sender: TObject);
    procedure LblBtnGravarMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseTelaModal: TViewBaseTelaModal;

implementation

{$R *.dfm}

procedure TViewBaseTelaModal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
    Self.Close;
end;

procedure TViewBaseTelaModal.LblBtnGravarMouseEnter(Sender: TObject);
begin
  inherited;
  ShapeBtnGravar.Brush.Color := VerdeFocoBotao;
end;

procedure TViewBaseTelaModal.LblBtnGravarMouseLeave(Sender: TObject);
begin
  inherited;
  ShapeBtnGravar.Brush.Color := VerdeBotao;
end;

procedure TViewBaseTelaModal.lblFecharClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TViewBaseTelaModal.lblFecharMouseEnter(Sender: TObject);
begin
  inherited;
  lblFechar.Font.Color := clYellow;
end;

procedure TViewBaseTelaModal.lblFecharMouseLeave(Sender: TObject);
begin
  inherited;
  lblFechar.Font.Color := clWhite;
end;

procedure TViewBaseTelaModal.LblTituloDaTelaMouseEnter(Sender: TObject);
begin
  inherited;
  LblTituloDaTela.Font.Color := clYellow;
end;

procedure TViewBaseTelaModal.LblTituloDaTelaMouseLeave(Sender: TObject);
begin
  inherited;
  LblTituloDaTela.Font.Color := clWhite;
end;

end.
