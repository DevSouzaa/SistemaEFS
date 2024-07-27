unit View.modal.cadastro.grupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls, Vcl.Mask;

type
  TViewModalCadastroGrupo = class(TViewBaseTelaModal)
    EdtDescricao: TLabeledEdit;
    EdtID: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroGrupo: TViewModalCadastroGrupo;

implementation

{$R *.dfm}

end.
