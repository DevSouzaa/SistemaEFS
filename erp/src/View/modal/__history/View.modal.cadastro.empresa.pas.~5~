unit View.modal.cadastro.empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base.Tela.Modal, Vcl.ExtCtrls,
  acPNG, Vcl.StdCtrls, UFuncoes, Empresa, Controller.empresa, ComboExpress,
  ComboBoxExpress;

type
  TViewModalCadastroEmpresas = class(TViewBaseTelaModal)
    PnlPrincipal: TPanel;
    edtEmitUF: TEdit;
    lblUF: TLabel;
    edtEmitCidade: TEdit;
    lblCidade: TLabel;
    edtEmitCodCidade: TEdit;
    lblCodCidade: TLabel;
    edtEmitBairro: TEdit;
    lblLogradouro: TLabel;
    edtEmitLogradouro: TEdit;
    lblFone: TLabel;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    lblCEP: TLabel;
    edtEmitNumero: TEdit;
    lblNumero: TLabel;
    edtEmitComp: TEdit;
    lblComplemento: TLabel;
    edtEmitFantasia: TEdit;
    lblFantasia: TLabel;
    edtEmitRazao: TEdit;
    lblRazaoSocial: TLabel;
    edtEmitIE: TEdit;
    lblIe: TLabel;
    edtEmitCNPJ: TEdit;
    lblCNPJ: TLabel;
    lblTipoEmpresa: TLabel;
    lblBairro: TLabel;
    cbTipoEmpresa: TComboBoxExpress;
    procedure FormShow(Sender: TObject);
    procedure LblBtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FControllerEmpresa: TControllerEmpresa;
    procedure SalvarEmpresa;
    procedure CarregarEmpresa(Id: Integer);
  public
    { Public declarations }
  end;

var
  ViewModalCadastroEmpresas: TViewModalCadastroEmpresas;

implementation

{$R *.dfm}

{ TViewModalCadastroEmpresas }

procedure TViewModalCadastroEmpresas.CarregarEmpresa(Id: Integer);
var
  Empresa: TEmpresa;
begin
  Empresa := FControllerEmpresa.ObterPorId(Id); // Assumindo que você tem um método para obter dados pelo ID
  if Assigned(Empresa) then
  try
    edtEmitRazao.Text := Empresa.RazaoSocial;
    edtEmitFantasia.Text := Empresa.Fantasia;
    edtEmitCNPJ.Text := Empresa.CNPJ;
    edtEmitIE.Text := Empresa.IE;
    edtEmitLogradouro.Text := Empresa.Endereco;
    edtEmitNumero.Text := Empresa.Numero;
    edtEmitComp.Text := Empresa.Complemento;
    edtEmitBairro.Text := Empresa.Bairro;
    edtEmitCidade.Text := Empresa.Cidade;
    edtEmitUF.Text := Empresa.UF;
    edtEmitCEP.Text := Empresa.CEP;
    edtEmitFone.Text := Empresa.Telefone;
    edtEmitCodCidade.Text := Empresa.CodigoIBGE;

  finally
    Empresa.Free;
  end;
end;

procedure TViewModalCadastroEmpresas.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerEmpresa := TControllerEmpresa.Create;
end;

procedure TViewModalCadastroEmpresas.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerEmpresa);
end;

procedure TViewModalCadastroEmpresas.FormShow(Sender: TObject);
begin
  inherited;
  if IDPesquisa <> 0 then
    CarregarEmpresa(IDPesquisa);
end;

procedure TViewModalCadastroEmpresas.LblBtnGravarClick(Sender: TObject);
begin
  inherited;
  SalvarEmpresa;
    fnc_CriarMensagem('CADASTRO DE PRODUTOS', 'CONFIRMANDO DADOS',
            'PRODUTO CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
  self.Close;
end;

procedure TViewModalCadastroEmpresas.SalvarEmpresa;
var
  Empresa: TEmpresa;
begin
  Empresa := TEmpresa.Create;
  try
    // Assume que o ID é gerado automaticamente no banco de dados se for 0 (novo registro)
    Empresa.Id := IDPesquisa;
    Empresa.RazaoSocial := edtEmitRazao.Text;
    Empresa.Fantasia := edtEmitFantasia.Text;
    Empresa.CNPJ := edtEmitCNPJ.Text;
    Empresa.IE := edtEmitIE.Text;
    Empresa.Endereco := edtEmitLogradouro.Text;
    Empresa.Numero := edtEmitNumero.Text;
    Empresa.Complemento := edtEmitComp.Text;
    Empresa.Bairro := edtEmitBairro.Text;
    Empresa.Cidade := edtEmitCidade.Text;
    Empresa.UF := edtEmitUF.Text;
    Empresa.CEP := edtEmitCEP.Text;
    Empresa.Telefone := edtEmitFone.Text;
    Empresa.CodigoIBGE := edtEmitCodCidade.Text;

    // Decide se o registro será inserido ou atualizado
    if IDPesquisa = 0 then
      FControllerEmpresa.Inserir(Empresa)
    else
    begin
      FControllerEmpresa.Atualizar(Empresa);
    end;

  finally
    Empresa.Free;
  end;
end;

end.
