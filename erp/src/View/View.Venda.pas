unit View.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, AdvUtil, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, RxGrids, JvExGrids, JvStringGrid, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TViewVenda = class(TViewBase)
    pnlDadosFiltroNovaVenda: TPanel;
    pnlBtnFecharVenda: TPanel;
    ShapeBtnFecharVenda: TShape;
    pnlDadosBtnFecharVenda: TPanel;
    lblTitBtnFecharVenda: TLabel;
    pnlDadosVendedor: TPanel;
    lblVendedor: TLabel;
    pnlContentVendedor: TPanel;
    lblNomeVendedor: TLabel;
    btnPesquisaUsuarios: TSpeedButton;
    edtVendedor: TEdit;
    pnlLineDivBotoesVendas: TPanel;
    pnlCliente: TPanel;
    pnlDadosClientes: TPanel;
    lblCliente: TLabel;
    BtnPesquisaCliente: TSpeedButton;
    pnlContentCliente: TPanel;
    lblNomeCliente: TLabel;
    pnlInfoVenda: TPanel;
    lblTitCaixa: TLabel;
    lblNumCaixa: TLabel;
    lblDtaAberturaCaixa: TLabel;
    lblDtaAberturaCaixaInfo: TLabel;
    lblOperador: TLabel;
    lblNomeOperador: TLabel;
    pnlLineInfoCaixa: TPanel;
    pnlNFe: TPanel;
    Panel1: TPanel;
    lblMovimento: TLabel;
    Panel8: TPanel;
    lblPesquisaMovimento: TLabel;
    SpeedButton1: TSpeedButton;
    edtIdMovimento: TEdit;
    pnlLineNFe: TPanel;
    pnlPesquisaProdutos: TPanel;
    pnlLineTopPesquisaProdutos: TPanel;
    pnlContentPesquisaProdutos: TPanel;
    lblPesquisaProdutos: TLabel;
    lblPrecoUnitario: TLabel;
    lblPercDescontoProduto: TLabel;
    lblQtdProduto: TLabel;
    lblSubTotalProduto: TLabel;
    btnPesquisarProdutos: TSpeedButton;
    pnlAdicionarProduto: TPanel;
    btnAddProduto: TSpeedButton;
    pnlLineBtnAdicionar: TPanel;
    edtQtdProduto: TJvCalcEdit;
    edtPrecoUnitario: TJvCalcEdit;
    edtPercDescontoProduto: TJvCalcEdit;
    edtPrecoFinalProduto: TJvCalcEdit;
    edtPesquisaProdutos: TEdit;
    pnlLineBaixoPesquisaProdutos: TPanel;
    EdtIDCliente: TEdit;
    PnlRodaPe: TPanel;
    pnlValoresVenda: TPanel;
    pnlTotalLiquido: TPanel;
    lblTotalLiquido: TLabel;
    edtTotalLiquido: TJvCalcEdit;
    pnlTotalDesconto: TPanel;
    lblValorDesconto: TLabel;
    edtTotalDesconto: TJvCalcEdit;
    pnlTotalBruto: TPanel;
    lblTotalBruto: TLabel;
    edtTotalBruto: TJvCalcEdit;
    pnlPercDesconto: TPanel;
    lblPercDesconto: TLabel;
    edtPercDesconto: TJvCalcEdit;
    pnlInfoUltProduto: TPanel;
    lblItens: TLabel;
    lblQTDItens: TLabel;
    lblUnidades: TLabel;
    lblQTDUnidades: TLabel;
    lblEstoqueProduto: TLabel;
    lblQTDEstoqueProduto: TLabel;
    lblPesoBruto: TLabel;
    lblQTDPesoBruto: TLabel;
    lblPesoLiquido: TLabel;
    lblQTDPesoLiquido: TLabel;
    pnlLineInfoUltProduto: TPanel;
    Panel2: TPanel;
    DBG_ItensVenda: TDBGridEh;
    TBL_LoteVenda: TFDMemTable;
    TBL_LoteVendaID: TIntegerField;
    TBL_LoteVendaIDLOTE: TIntegerField;
    TBL_LoteVendaIDVENDA: TIntegerField;
    TBL_LoteVendaQTDVENDIDA: TBCDField;
    TBL_ItensVenda: TFDMemTable;
    TBL_ItensVendaIDVENDAITEM: TIntegerField;
    TBL_ItensVendaIDVENDA: TIntegerField;
    TBL_ItensVendaIDPRODUTO: TIntegerField;
    TBL_ItensVendaIDPRODUTODETALHE: TIntegerField;
    TBL_ItensVendaSERIEPRODUTO: TStringField;
    TBL_ItensVendaVLRCUSTO: TBCDField;
    TBL_ItensVendaCODIGOBARRAS: TStringField;
    TBL_ItensVendaPESOITEM: TBCDField;
    TBL_ItensVendaPROD_NITEM: TIntegerField;
    TBL_ItensVendaPROD_CEAN: TStringField;
    TBL_ItensVendaPROD_XPROD: TStringField;
    TBL_ItensVendaPROD_NCM: TStringField;
    TBL_ItensVendaPROD_EXTIPI: TStringField;
    TBL_ItensVendaPROD_CFOP: TStringField;
    TBL_ItensVendaPROD_UCOM: TStringField;
    TBL_ItensVendaPROD_QCOM: TBCDField;
    TBL_ItensVendaPROD_VUNCOM: TBCDField;
    TBL_ItensVendaPROD_VPROD: TBCDField;
    TBL_ItensVendaPROD_CEANTRIB: TStringField;
    TBL_ItensVendaPROD_UTRIB: TStringField;
    TBL_ItensVendaPROD_QTRIB: TBCDField;
    TBL_ItensVendaPROD_VUNTRIB: TBCDField;
    TBL_ItensVendaPROD_VOUTRO: TBCDField;
    TBL_ItensVendaPROD_VFRETE: TBCDField;
    TBL_ItensVendaPROD_VSEG: TBCDField;
    TBL_ItensVendaPROD_VDESC: TBCDField;
    TBL_ItensVendaPROD_CEST: TStringField;
    TBL_ItensVendaPROD_INFADPROD: TStringField;
    TBL_ItensVendaPROD_CBARRA: TStringField;
    TBL_ItensVendaPROD_CBARRATRIB: TStringField;
    TBL_ItensVendaSUB_TOTAL_CALC: TCurrencyField;
    TBL_ItensVendaPROD_VUNCOM_ORIGINAL: TCurrencyField;
    TBL_ItensVendaPROD_PESO_LIQUIDO: TCurrencyField;
    TBL_ItensVendaPROD_PESO_BRUTO: TCurrencyField;
    TBL_ItensVendaPROD_INFOCOMPLEMENTAR_ITEM: TStringField;
    TBL_ItensVendaCUSTO_INICIAL: TCurrencyField;
    TBL_ItensVendaMARGEM_INICIAL: TCurrencyField;
    TBL_ItensVendaCUSTO_VEZES_QTD: TCurrencyField;
    TBL_ItensVendaLUCRO_VENDA: TCurrencyField;
    TBL_ItensVendaPERC_DESC_PELO_PRECO: TCurrencyField;
    TBL_ItensVendaPROD_REFERENCIA: TStringField;
    TBL_ItensVendaIDTRIBUTACAO: TIntegerField;
    TBL_ItensVendaDESC_GRID: TStringField;
    TBL_ItensVendaPROD_VPERCDESCONTO: TBCDField;
    TBL_ItensVendaPROD_IDGRADE: TIntegerField;
    TBL_ItensVendaPROD_IDCOR: TIntegerField;
    TBL_ItensVendaPROD_COR: TStringField;
    TBL_ItensVendaPROD_IDTAMANHO: TIntegerField;
    TBL_ItensVendaPROD_TAMANHO: TStringField;
    TBL_ItensVendaPROD_LOTES: TStringField;
    TBL_CabecalhoVenda: TFDMemTable;
    TBL_CabecalhoVendaIDVENDA: TIntegerField;
    TBL_CabecalhoVendaDTAVENDA: TDateField;
    TBL_CabecalhoVendaHRAVENDA: TTimeField;
    TBL_CabecalhoVendaIDCLIENTE: TIntegerField;
    TBL_CabecalhoVendaIDVENDEDOR: TIntegerField;
    TBL_CabecalhoVendaVLRBRUTO: TBCDField;
    TBL_CabecalhoVendaVLRDESCONTO: TBCDField;
    TBL_CabecalhoVendaVLRLIQUIDO: TBCDField;
    TBL_CabecalhoVendaORIGEMVENDA: TStringField;
    TBL_CabecalhoVendaNUMNFE: TIntegerField;
    TBL_CabecalhoVendaSTATUS: TStringField;
    TBL_CabecalhoVendaOBSERVACAO: TStringField;
    TBL_CabecalhoVendaIDFILIAL: TIntegerField;
    TBL_CabecalhoVendaIDSETOR: TIntegerField;
    TBL_CabecalhoVendaIDTIPODOCUMENTO: TIntegerField;
    TBL_CabecalhoVendaMODELOFISCAL: TIntegerField;
    TBL_CabecalhoVendaNUMNFCE: TIntegerField;
    TBL_CabecalhoVendaNUM_CAIXA: TIntegerField;
    TBL_CabecalhoVendaVLRTROCO: TBCDField;
    TBL_CabecalhoVendaID_TIPOMOVIMENTO: TIntegerField;
    TBL_CabecalhoVendaFAT_PREVENDA: TStringField;
    DS_LoteVenda: TDataSource;
    DS_Cabecalho: TDataSource;
    DS_Itens: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure edtPercDescontoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPrecoFinalProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddProdutoClick(Sender: TObject);
    procedure edtQtdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtIDClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtIdMovimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

    { Private declarations }
  public
    { Public declarations }

  end;

var
  ViewVenda: TViewVenda;

implementation

{$R *.dfm}

procedure TViewVenda.btnAddProdutoClick(Sender: TObject);
begin  //
  inherited;

end;

procedure TViewVenda.EdtIDClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    edtIdMovimento.SetFocus;
  end;
end;

procedure TViewVenda.edtIdMovimentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    edtPesquisaProdutos.SetFocus;
  end;
end;

procedure TViewVenda.edtPercDescontoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    edtPrecoFinalProduto.SetFocus;
  end;
end;

procedure TViewVenda.edtPesquisaProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    edtPercDescontoProduto.SetFocus;
  end;
end;

procedure TViewVenda.edtPrecoFinalProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    edtQtdProduto.SetFocus;
  end;
end;

procedure TViewVenda.edtQtdProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    btnAddProdutoClick(sender);
  end;
end;

procedure TViewVenda.edtVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    EdtIDCliente.SetFocus;
  end;
end;

procedure TViewVenda.FormCreate(Sender: TObject);
begin
  ViewVenda.caption := TipoMovimento;
end;

end.