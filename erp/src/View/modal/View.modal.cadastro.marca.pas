unit View.modal.cadastro.marca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls, Vcl.Mask;

type
  TViewModalCadastroMarca = class(TViewBaseTelaModal)
    EdtDescricao: TLabeledEdit;
    EdtID: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroMarca: TViewModalCadastroMarca;

implementation

{$R *.dfm}

end.
