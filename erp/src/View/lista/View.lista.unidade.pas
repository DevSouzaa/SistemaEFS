unit View.lista.unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Lista, Vcl.StdCtrls,
  Vcl.WinXCtrls, View.frame.grid.tres.coluna, Vcl.WinXPanels,
  View.frame.caminho, acPNG, Vcl.ExtCtrls;

type
  TViewListaUnidades = class(TViewBaseLista)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaUnidades: TViewListaUnidades;

implementation

{$R *.dfm}

end.
