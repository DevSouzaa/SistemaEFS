unit View.Modal.Cadastro.fabricante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls, Vcl.Mask;

type
  TViewModalCadastroFabricante = class(TViewBaseTelaModal)
    EdtID: TLabeledEdit;
    EdtDescricao: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroFabricante: TViewModalCadastroFabricante;

implementation

{$R *.dfm}

end.
