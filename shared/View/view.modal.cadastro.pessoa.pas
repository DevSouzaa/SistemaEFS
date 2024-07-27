unit view.modal.cadastro.pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls;

type
  TViewModalCadastroPessoas = class(TViewBaseTelaModal)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroPessoas: TViewModalCadastroPessoas;

implementation

{$R *.dfm}

end.
