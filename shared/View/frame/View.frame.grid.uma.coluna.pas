unit View.frame.grid.uma.coluna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.ControlList;

type
  TViewFrameUmaColuna = class(TFrame)
    ImageCollection: TImageCollection;
    ControlList1: TControlList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
