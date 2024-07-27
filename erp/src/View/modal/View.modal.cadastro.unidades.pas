unit View.modal.cadastro.unidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls, Vcl.Mask;

type
  TViewModalCadastroUnidades = class(TViewBaseTelaModal)
    EdtDescricao: TLabeledEdit;
    EdtID: TLabeledEdit;
    EdtFracao: TLabeledEdit;
    EdtSigla: TLabeledEdit;
    CheckAtivo: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewModalCadastroUnidades: TViewModalCadastroUnidades;

implementation

{$R *.dfm}

end.
