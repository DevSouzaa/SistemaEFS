unit View.frame.caminho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, acPNG, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TViewFrameCaminho = class(TFrame)
    PnlBackGound: TPanel;
    PnlIcon: TPanel;
    PnlIcon2: TPanel;
    PnlIconText2: TPanel;
    PnlIconText: TPanel;
    ImgIconClara: TImage;
    ImgIcon2Clara: TImage;
    ImgIconEscura: TImage;
    ImgIcon2Escura: TImage;
    LblTexto1: TLabel;
    LblTexto2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
