unit View.Modal.Cadastro.Produto;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Mask,
  Vcl.WinXPanels,

  View.Base.Tela.Modal,

  acPNG,

  Generics.Collections,


  ProdutoCompleto,
  Model.Grupo,
  Model.SubGrupo,
  Model.Marca,
  Model.Fabricante,
  Model.Unidade,

  CalcEdit,
  JvExStdCtrls,
  JvEdit,
  JvExMask,
  JvToolEdit,
  JvBaseEdits,

  UFuncoes,

  ComboExpress,
  ComboBoxExpress,

  Controller.Grupo,
  Controller.SubGrupo,
  Controller.Fabricante,
  Controller.Marca,
  Controller.Produto,
  Controller.Unidade;

type
  TViewModalCadastroProduto = class(TViewBaseTelaModal)
    PnlPrincipal: TPanel;
    EdtID: TEdit;
    EdtNome: TEdit;
    Edt_Referencia: TEdit;
    Edt_CodBarras: TEdit;
    Mm_OBS: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CardPanel_Detalhes: TCardPanel;
    CBX_CUSTO: TGroupBox;
    Card_Valores: TCard;
    CBX_FISCAL: TGroupBox;
    CBX_OUTROS: TGroupBox;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    labelOutrasDesp: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EDT_ICMS: TEdit;
    EDT_IPI: TEdit;
    EDT_PISCOFINS: TEdit;
    Check_Ativo: TCheckBox;
    CheckFracionar: TCheckBox;
    EDT_NCM: TEdit;
    Edt_DescricaoNCM: TEdit;
    EDT_CUSTOINICIAL: TJvCalcEdit;
    EDT_VALORFRETE: TJvCalcEdit;
    EDT_OUTRASDESPESAS: TJvCalcEdit;
    EDT_CUSTOENTRADA: TJvCalcEdit;
    EDT_MARGEMLUCRO: TJvCalcEdit;
    EDT_VALORVENDA: TJvCalcEdit;
    EDT_ESTOQUE: TJvCalcEdit;
    CBB_Grupo: TComboBoxExpress;
    CBB_SubGrupo: TComboBoxExpress;
    CBB_Fabricante: TComboBoxExpress;
    SpeedButton1: TSpeedButton;
    CBB_Unidade: TComboBoxExpress;
    Label3: TLabel;
    CBB_Marcas: TComboBoxExpress;
    Label4: TLabel;
    Label19: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LblBtnGravarClick(Sender: TObject);
  private
    FControllerProduto: TControllerProduto;
    FControllerGrupo: TControllerGrupo;
    FControllerSubGrupo: TControllerSubGrupo;
    FControllerFabricante: TControllerFabricante;
    FControllerMarca: TControllerMarca;
    FControllerUnidade: TControllerUnidade;
    procedure CarregarProduto(Id: Integer);
    procedure SalvarProduto;
    procedure CarregarGrupos;
    procedure CarregarSubGrupos;
    procedure CarregarFabricantes;
    procedure CarregarMarcas;
    procedure CarregarUnidades;
  public
    { Public declarations }
  end;
var
  ViewModalCadastroProduto: TViewModalCadastroProduto;
implementation
{$R *.dfm}
procedure TViewModalCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerProduto := TControllerProduto.Create;
  FControllerGrupo := TControllerGrupo.Create;
  FControllerSubGrupo := TControllerSubGrupo.Create;
  FControllerFabricante := TControllerFabricante.Create;
  FControllerMarca := TControllerMarca.Create;
  FControllerUnidade := TControllerUnidade.Create;
end;
procedure TViewModalCadastroProduto.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerProduto);
  FreeAndNil(FControllerGrupo);
  FreeAndNil(FControllerSubGrupo);
  FreeAndNil(FControllerFabricante);
  FreeAndNil(FControllerMarca);
  FreeAndNil(FControllerUnidade);
end;
procedure TViewModalCadastroProduto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_ESCAPE: Self.Close;
  end;
end;
procedure TViewModalCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
  CarregarGrupos;
  CarregarSubGrupos;
  CarregarFabricantes;
  CarregarMarcas;
  CarregarUnidades;
  if IDPesquisa <> 0 then
    CarregarProduto(IDPesquisa);
end;
procedure TViewModalCadastroProduto.CarregarGrupos;
var
  Grupos: TList<TGrupo>;
  Grupo: TGrupo;
begin
  Grupos := FControllerGrupo.ObterTodos;
  try
    CBB_Grupo.Items.Clear;
    for Grupo in Grupos do
      CBB_Grupo.AddItem(Grupo.ID, Grupo.DESCRICAO);
  finally
    Grupos.Free;
  end;
end;
procedure TViewModalCadastroProduto.CarregarSubGrupos;
var
  SubGrupos: TList<TSubGrupo>;
  SubGrupo: TSubGrupo;
begin
  SubGrupos := FControllerSubGrupo.ObterTodos;
  try
    CBB_SubGrupo.Items.Clear;
    for SubGrupo in SubGrupos do
      CBB_SubGrupo.AddItem(SubGrupo.ID, SubGrupo.DESCRICAO);
  finally
    SubGrupos.Free;
  end;
end;
procedure TViewModalCadastroProduto.CarregarFabricantes;
var
  Fabricantes: TList<TFabricante>;
  Fabricante: TFabricante;
begin
  Fabricantes := FControllerFabricante.ObterTodos;
  try
    CBB_Fabricante.Items.Clear;
    for Fabricante in Fabricantes do
      CBB_Fabricante.AddItem(Fabricante.ID, Fabricante.DESCRICAO);
  finally
    Fabricantes.Free;
  end;
end;
procedure TViewModalCadastroProduto.CarregarMarcas;
var
  Marcas: TList<TMarca>;
  Marca: TMarca;
begin
  Marcas := FControllerMarca.ObterTodos;
  try
    CBB_Marcas.Items.Clear;
    for Marca in Marcas do
      CBB_Marcas.AddItem(Marca.ID, Marca.DESCRICAO);
  finally
    Marcas.Free;
  end;
end;
procedure TViewModalCadastroProduto.CarregarUnidades;
var
  Unidades: TList<TUnidade>;
  Unidade: TUnidade;
begin
  Unidades := FControllerUnidade.ObterTodos;
  try
    CBB_Unidade.Items.Clear;
    for Unidade in Unidades do
      CBB_Unidade.AddItem(Unidade.IDUnidade, Unidade.DESCRICAO);
  finally
    Unidades.Free;
  end;
end;

procedure TViewModalCadastroProduto.LblBtnGravarClick(Sender: TObject);
begin
  inherited;
  SalvarProduto;
    fnc_CriarMensagem('CADASTRO DE PRODUTOS', 'CONFIRMANDO DADOS',
            'PRODUTO CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
  self.Close;
end;

procedure TViewModalCadastroProduto.CarregarProduto(Id: Integer);
var
  Produto: TProdutoCompleto;
begin
  Produto := FControllerProduto.ObterPorId(Id);
  if Assigned(Produto) then
  try
    EdtID.Text := Produto.IdProduto.ToString;
    EdtNome.Text := Produto.Descricao;
    Edt_Referencia.Text := Produto.Referencia;
    Edt_CodBarras.Text := Produto.CodBarras;

    CBB_Grupo.SelectByID(Produto.IdGrupo) ;
    CBB_SubGrupo.SelectByID(Produto.IdSubgrupo);
    CBB_Fabricante.SelectByID(Produto.IdFabricante);
    CBB_Marcas.SelectByID(Produto.IdMarca);
    CBB_Unidade.SelectByID(Produto.IdUnidade);

    Mm_OBS.Text := Produto.InfAdicionais;
    EDT_VALORFRETE.Value := Produto.Item.ValorFreteCompra;
    EDT_CUSTOINICIAL.Value := Produto.Item.ValorCustoInicial;
    EDT_OUTRASDESPESAS.Value := Produto.Item.ValorOutrosCustos;
    EDT_CUSTOENTRADA.Value := Produto.Item.ValorCustoEntrada;
    EDT_ESTOQUE.Value := Produto.Item.Estoque;
    EDT_VALORVENDA.Value := Produto.Item.ValorVendaVista;
    EDT_MARGEMLUCRO.Value := Produto.Item.ValorPercentualMargemLucro;
    EDT_ICMS.Text := Produto.Item.ICMSCompra.ToString;
    EDT_IPI.Text := Produto.Item.IPICompra.ToString;
    EDT_PISCOFINS.Text := IntToStr(Produto.CSTPisCofinsEntrada);//AliquotaPISCompra.ToString + ' / ' + Produto.Item.AliquotaCOFINSCompra.ToString;
    Check_Ativo.Checked := Produto.Ativo;
    CheckFracionar.Checked := Produto.VendeFracionado;
    EDT_NCM.Text := Produto.NCM;
    Edt_DescricaoNCM.Text := Produto.DescricaoNCM;
  finally
    Produto.Free;
  end;
end;

procedure TViewModalCadastroProduto.SalvarProduto;
var
  Produto: TProdutoCompleto;
begin
  Produto := TProdutoCompleto.Create;
  try
    Produto.IdProduto := StrToIntDef(EdtID.Text, 0);
    Produto.Descricao := EdtNome.Text;
    Produto.Referencia := Edt_Referencia.Text;
    Produto.CodBarras := Edt_CodBarras.Text;

    Produto.IdGrupo                := CBB_Grupo.SelectedID;
    Produto.IdSubgrupo             := CBB_SubGrupo.SelectedID;
    Produto.IdFabricante           := CBB_Fabricante.SelectedID;
    Produto.IdMarca                := CBB_Marcas.SelectedID;
    Produto.IdUnidade              := CBB_Unidade.SelectedID;

    Produto.InfAdicionais          := Mm_OBS.Text;
    Produto.Item.ValorFreteCompra  := EDT_VALORFRETE.Value;
    Produto.Item.ValorCustoInicial := EDT_CUSTOINICIAL.Value;
    Produto.Item.ValorOutrosCustos := EDT_OUTRASDESPESAS.Value;
    Produto.Item.ValorCustoEntrada := EDT_CUSTOENTRADA.Value;
    Produto.Item.Estoque := EDT_ESTOQUE.Value;
    Produto.Item.ValorVendaVista := EDT_VALORVENDA.Value;
    Produto.Item.ValorPercentualMargemLucro := EDT_MARGEMLUCRO.Value;
    Produto.Item.ICMSCompra := StrToFloatDef(EDT_ICMS.Text, 0);
    Produto.Item.IPICompra := StrToFloatDef(EDT_IPI.Text, 0);
    Produto.CSTPisCofinsEntrada := StrToInt(EDT_PISCOFINS.Text);
    Produto.Ativo := Check_Ativo.Checked;
    Produto.VendeFracionado := CheckFracionar.Checked;
    Produto.NCM := EDT_NCM.Text;
    Produto.DescricaoNCM := Edt_DescricaoNCM.Text;
    if Produto.IdProduto = 0 then
      FControllerProduto.Inserir(Produto)
    else
      FControllerProduto.Atualizar(Produto);
  finally
    Produto.Free;
  end;
end;

end.