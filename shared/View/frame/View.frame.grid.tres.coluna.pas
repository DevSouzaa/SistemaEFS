unit View.frame.grid.tres.coluna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ControlList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.StdCtrls, Vcl.VirtualImage;

type
  TViewFrameDuasColuna = class(TFrame)
    ImageCollection: TImageCollection;
    ControlList1: TControlList;
    VirtualImage1: TVirtualImage;
    BtnEditar: TControlListButton;
    LblTexto1: TLabel;
    LblTexto2: TLabel;
    LblSubTexto2: TLabel;
    LblSubTexto1: TLabel;
    LblID: TLabel;
    LblSubTexto3: TLabel;
    LblTexto3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
