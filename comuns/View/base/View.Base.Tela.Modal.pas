unit View.Base.Tela.Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

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
    procedure lblFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseTelaModal: TViewBaseTelaModal;

implementation

{$R *.dfm}

procedure TViewBaseTelaModal.lblFecharClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

end.
