﻿unit View.config.fiscal;

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
  Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.ComCtrls,
  Vcl.Buttons,
  Vcl.Samples.Spin,
  Vcl.WinXCtrls,

  View.Base,

  frxClass,

  ACBrValidador,
  ACBrPosPrinter,
  ACBrNFeDANFeRLClass,
  ACBrNFeDANFEClass,
  ACBrNFeDANFEFR,
  ACBrNFeDANFeESCPOS,
  ACBrDANFCeFortesFrA4,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrDANFCeFortesFr,
  ACBrDFe,
  ACBrNFe,
  ACBrMail,
  ACBrIntegrador,
  ACBrBase,
  ACBrUtil.DateTime,
  ACBrUtil.FilesIO,
  ACBrUtil.Strings,
  ACBrUtil.XMLHTML,
  ACBrDFeConfiguracoes,
  ACBrDFeOpenSSL,
  ACBrDFeUtil,
  ACBrNFeConfiguracoes,
  ACBrNFeNotasFiscais,
  ACBrUtil,
  ACBrDFeSSL,

  DateUtils,
  FileCtrl,
  Grids,
  IniFiles,
  MidasLib,
  OleCtrls,
  Printers,
  SHDocVw,
  ShellAPI,
  TypInfo,
  Winspool,
  XMLDoc,
  XMLIntf,
  blcksock,
  math,
  pcnAuxiliar,
  pcnConversao,
  pcnConversaoNFe,
  pcnNFe,
  pcnNFeRTXT,
  pcnRetConsReciDFe,
  strutils,
  synacode,
  Datasnap.DBClient,

  //controller
  Controller.ConfigCertificado,
  Controller.ConfigGeral,
  Controller.ConfigDanfe,
  Controller.ConfigDiversos,
  Controller.ConfigPosPrinter,
  Controller.ConfigProxy,
  Controller.ConfigWebService,

  ConfigCertificado,
  ConfigGeral,
  ConfigDanfe,
  ConfigDiversos,
  ConfigPosPrinter,
  ConfigProxy,
  ConfigWebService,

  ConfigFiscal

  ;

type
  TViewConfigFiscal = class(TViewBase)
    ACBrIntegrador: TACBrIntegrador;
    ACBrMail: TACBrMail;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFCeFortes: TACBrNFeDANFCeFortes;
    ACBrNFeDANFCeFortesA4: TACBrNFeDANFCeFortesA4;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFEFR: TACBrNFeDANFEFR;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrValidador: TACBrValidador;
    frxReport: TfrxReport;
    OpenDialogCR: TOpenDialog;
    PC_configuracoes: TPageControl;
    tab_emitente: TTabSheet;
    gbxEmitente: TGroupBox;
    lblCNPJ: TLabel;
    lblIe: TLabel;
    lblRazaoSocial: TLabel;
    lblFantasia: TLabel;
    lblLogradouro: TLabel;
    lblNumero: TLabel;
    lblComplemento: TLabel;
    lblBairro: TLabel;
    lblCodCidade: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    lblFone: TLabel;
    lblTipoEmpresa: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    cbTipoEmpresa: TComboBox;
    tab_certificado: TTabSheet;
    gbxCertificado: TGroupBox;
    lblCaminhoCertificado: TLabel;
    lblSenhaCertificado: TLabel;
    lblNumSerieCertificado: TLabel;
    sbtnGetCert: TSpeedButton;
    sbtnNumSerie: TSpeedButton;
    lblUrlPFX: TLabel;
    lXmlSign: TLabel;
    lHttpLib: TLabel;
    lCryptLib: TLabel;
    lSSLLib: TLabel;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    edtURLPFX: TEdit;
    cbXmlSignLib: TComboBox;
    cbHttpLib: TComboBox;
    cbCryptLib: TComboBox;
    cbSSLLib: TComboBox;
    edtCaminho: TSearchBox;
    tab_geral: TTabSheet;
    gbxGeral: TGroupBox;
    lblFormaEmissao: TLabel;
    lblFormatoAlerta: TLabel;
    lblModeloDocFiscal: TLabel;
    lblVersaoDocFiscal: TLabel;
    lblIdToken: TLabel;
    lblTokenCSC: TLabel;
    lblCaminhoSchemas: TLabel;
    lblLogs: TLabel;
    LblSerieNFCE: TLabel;
    LblNumInicialNFCE: TLabel;
    LblNumAtualNFCE: TLabel;
    LblSerieNFE: TLabel;
    LblNumInicialNFE: TLabel;
    LblNumAtualNFE: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtIdToken: TEdit;
    edtToken: TEdit;
    edtFormatoAlerta: TEdit;
    edtPathLogs: TSearchBox;
    edtPathSchemas: TSearchBox;
    CheckMostrarPreviewNFCE: TCheckBox;
    EdtNumAtualNFE: TEdit;
    EdtNumInicialNFE: TEdit;
    EdtSerieNFE: TEdit;
    EdtNumAtualNFCE: TEdit;
    EdtNumInicialNFCE: TEdit;
    EdtSerieNFCE: TEdit;
    EdtSerieTerminal: TEdit;
    CBB_NfeModeloDFE: TComboBox;
    CBB_NfeModulo: TComboBox;
    CBB_NfceModeloDFE: TComboBox;
    CBB_NfceModulo: TComboBox;
    PnlLineNF: TPanel;
    tab_webservice: TTabSheet;
    gbxWebService: TGroupBox;
    lblUFEmitente: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    pnlDadosWerService: TPanel;
    gbProxy: TGroupBox;
    lblHost: TLabel;
    lblPorta: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    lblTentativas: TLabel;
    lblIntervalo: TLabel;
    lblAguardar: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    tab_arquivos: TTabSheet;
    gbxArquivos: TGroupBox;
    Label35: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    Label39: TLabel;
    Label53: TLabel;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorModelo: TCheckBox;
    edtPathNFe: TSearchBox;
    edtPathEvento: TSearchBox;
    edtPathInu: TSearchBox;
    edtPathPDF: TSearchBox;
    edtDownloadXML: TSearchBox;
    tab_danfe: TTabSheet;
    gbxDanfeDocAux: TGroupBox;
    Label7: TLabel;
    rgTipoDanfe: TRadioGroup;
    gbEscPos: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    btSerial: TBitBtn;
    cbxModeloPosPrinter: TComboBox;
    cbxPorta: TComboBox;
    cbxPagCodigo: TComboBox;
    seColunas: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seLinhasPular: TSpinEdit;
    cbCortarPapel: TCheckBox;
    rgDANFCE: TRadioGroup;
    edtLogoMarca: TSearchBox;
    tab_diversos: TTabSheet;
    lblHraUltimaTentativa: TLabel;
    lblUltNSu: TLabel;
    lblMaxNSU: TLabel;
    cbxNaoBaixar: TCheckBox;
    edtUltNSU: TEdit;
    edtTimeUltimaTentativa: TDateTimePicker;
    edtMaxNSU: TEdit;
    tabParametrosGerais: TTabSheet;
    pagParametrosGerais: TPageControl;
    tabFiscal: TTabSheet;
    tabPDV: TTabSheet;
    PC_ParametrosPDV: TPageControl;
    tab_emissao: TTabSheet;
    lblEmiteFinalVenda: TLabel;
    Label6: TLabel;
    cbxEmiteFiscal: TDBComboBox;
    dbxEmiteComSimOuNao: TDBComboBox;
    tab_fastreport: TTabSheet;
    lbl: TLabel;
    Label4: TLabel;
    edtFastFileNFe: TDBEdit;
    btnPesquisaFastFile: TButton;
    edtFastFileNFCe: TDBEdit;
    btnPesquisaFastFileNFCe: TButton;
    tab_balanca: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    tab_clientepadrao: TTabSheet;
    lblCodigoClientePadrao: TLabel;
    edtClientePadrao: TDBEdit;
    tabRetaGuarda: TTabSheet;
    tabImpressoras: TTabSheet;
    LblImpressora80cl: TLabel;
    Lblmpressora40Cl: TLabel;
    LblMarcaImpressora40Cl: TLabel;
    CbbImpressora80CL: TComboBox;
    CbbImpressora40CL: TComboBox;
    CbbMarcaImpressoraCupom: TComboBox;
    CheckAjustarA4: TCheckBox;
    TabVenda: TTabSheet;
    LblReciboVendaV: TLabel;
    LblReciboVendaP: TLabel;
    LblReciboPreVenda: TLabel;
    LblReciboOrcamento: TLabel;
    CbbReciboVendaVista: TDBLookupComboBox;
    CbbReciboVendaPrazo: TDBLookupComboBox;
    CbbReciboPreVenda: TDBLookupComboBox;
    CbbReciboOrcamento: TDBLookupComboBox;
    CheckMostrarPreviewVenda: TCheckBox;
    CheckMostrarPreviewVendaPrazo: TCheckBox;
    CheckMostrarPreviewPreVenda: TCheckBox;
    CheckMostrarPreviewOrcamento: TCheckBox;
    CheckAbrirGavetaPosvenda: TCheckBox;
    TabRecibos: TTabSheet;
    LblReciboContasReceber: TLabel;
    LblReciboContasPagar: TLabel;
    LblReciboFechamentocaixa: TLabel;
    CbbReciboFechamentoCaixa: TDBLookupComboBox;
    CbbReciboContasPagar: TDBLookupComboBox;
    CbbReciboContasReceber: TDBLookupComboBox;
    CheckMostrarPreviewContasReceber: TCheckBox;
    CheckMostrarPreviewContasPagar: TCheckBox;
    CheckMostrarPreviewFechamentoCaixa: TCheckBox;
    TabMenssagens: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmoMenssagemVenda: TMemo;
    MmoMensagemOrcamento: TMemo;
    mmoMenssagemNF: TMemo;
    pnlBotoes: TPanel;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    pnlTopTitulo: TPanel;
    lblTitulo: TLabel;
    pnlDefinirCaminhos: TPanel;
    btnDefinirCaminhos: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
  //Variaveis para Carregar as Pastas
    var
      LPastaNFe,
      LPastaNFCe,
      LChaveDFe,
      LMesAtual,
      LAnoAtual,
      LStringArquivo: string;

      //17-05-2024
      LPastaRaiz, LPastaRaiz1: string;
      LPastaDistribuicao: string;

    FConfigCertificadoController: TConfigCertificadoController;
    FConfigGeralController: TConfigGeralController;
    FConfigDanfeController: TConfigDanfeController;
    FConfigDiversosController: TConfigDiversosController;
    FConfigPosPrinterController: TConfigPosPrinterController;
    FConfigProxyController: TConfigProxyController;
    FConfigWebServiceController: TConfigWebServiceController;

    procedure ConfigurarComponente;
    procedure ConfigurarEmail;
    procedure LerConfiguracoes;
    procedure PutCaminhoBase;
    procedure AtualizarSSLLibsCombo;
    procedure GravarConfiguracoes;
    procedure GET_CertificadoACBr;
  public


  end;

var
  ViewConfigFiscal: TViewConfigFiscal;

implementation

{$R *.dfm}


procedure TViewConfigFiscal.btnSalvarClick(Sender: TObject);
begin
  inherited;
  GravarConfiguracoes;
end;

procedure TViewConfigFiscal.GravarConfiguracoes;
var
  Config: TConfigFiscal;
begin
  Config := TConfigFiscal.GetInstance;
  // Atualizar propriedades do Config a partir dos componentes da view
  // Certificado
  Config.ConfigCertificado.SSLLib := cbSSLLib.ItemIndex;
  Config.ConfigCertificado.CryptLib := cbCryptLib.ItemIndex;
  Config.ConfigCertificado.HttpLib := cbHttpLib.ItemIndex;
  Config.ConfigCertificado.XmlSignLib := cbXmlSignLib.ItemIndex;
  Config.ConfigCertificado.URL := edtURLPFX.Text;
  Config.ConfigCertificado.Caminho := edtCaminho.Text;
  Config.ConfigCertificado.Senha := edtSenha.Text;
  Config.ConfigCertificado.NumSerie := edtNumSerie.Text;
  Config.ConfigCertificado.Filial := 1; // Assumindo a filial 1
  // Geral
  Config.ConfigGeral.AtualizarXML := cbxAtualizarXML.Checked;
  Config.ConfigGeral.ExibirErroSchema := cbxExibirErroSchema.Checked;
  Config.ConfigGeral.FormatoAlerta := edtFormatoAlerta.Text;
  Config.ConfigGeral.FormaEmissao := cbFormaEmissao.ItemIndex;
  Config.ConfigGeral.ModeloDF := cbModeloDF.ItemIndex;
  Config.ConfigGeral.VersaoDF := cbVersaoDF.ItemIndex;
  Config.ConfigGeral.IdToken := edtIdToken.Text;
  Config.ConfigGeral.Token := edtToken.Text;
  Config.ConfigGeral.Salvar := ckSalvar.Checked;
  Config.ConfigGeral.RetirarAcentos := cbxRetirarAcentos.Checked;
  Config.ConfigGeral.PathSalvar := edtPathLogs.Text;
  Config.ConfigGeral.PathSchemas := edtPathSchemas.Text;
  // DANFE
  Config.ConfigDanfe.Tipo := rgTipoDanfe.ItemIndex;
  Config.ConfigDanfe.LogoMarca := edtLogoMarca.Text;
  Config.ConfigDanfe.TipoDANFCE := rgDANFCE.ItemIndex;
  // Diversos
  Config.ConfigDiversos.BaixarDocumentos := cbxNaoBaixar.Checked;
  Config.ConfigDiversos.UltNSU := StrToInt(edtUltNSU.Text);
  Config.ConfigDiversos.MaxNSU := StrToInt(edtMaxNSU.Text);
  Config.ConfigDiversos.DtaUltimaBaixa := edtTimeUltimaTentativa.DateTime;
  // PosPrinter
  Config.ConfigPosPrinter.Modelo := cbxModeloPosPrinter.ItemIndex;
  Config.ConfigPosPrinter.Porta := cbxPorta.Text;
  Config.ConfigPosPrinter.PaginaDeCodigo := cbxPagCodigo.ItemIndex;
  Config.ConfigPosPrinter.Colunas := seColunas.Value;
  Config.ConfigPosPrinter.EspacoLinhas := seEspLinhas.Value;
  Config.ConfigPosPrinter.LinhasEntreCupons := seLinhasPular.Value;
  Config.ConfigPosPrinter.CortarPapel := cbCortarPapel.Checked;
  Config.ConfigPosPrinter.ParamsString := ACBrPosPrinter.Device.ParamsString;
  // Proxy
  Config.ConfigProxy.Host := edtProxyHost.Text;
  Config.ConfigProxy.Porta := edtProxyPorta.Text;
  Config.ConfigProxy.User := edtProxyUser.Text;
  Config.ConfigProxy.Pass := edtProxySenha.Text;
  // WebService
  Config.ConfigWebService.UF := cbUF.Text;
  Config.ConfigWebService.Ambiente := rgTipoAmb.ItemIndex;
  Config.ConfigWebService.Visualizar := cbxVisualizar.Checked;
  Config.ConfigWebService.SalvarSOAP := cbxSalvarSOAP.Checked;
  Config.ConfigWebService.AjustarAut := cbxAjustarAut.Checked;
  Config.ConfigWebService.Aguardar := edtAguardar.Text;
  Config.ConfigWebService.Tentativas := edtTentativas.Text;
  Config.ConfigWebService.Intervalo := edtIntervalo.Text;
  Config.ConfigWebService.Timeout := seTimeOut.Value;
  Config.ConfigWebService.SSLType := cbSSLType.ItemIndex;

  // Arquivos
  Config.ConfigArquivos.Salvar           := cbxSalvarArqs.Checked;
  Config.ConfigArquivos.PastaMensal      := cbxPastaMensal.Checked;
  Config.ConfigArquivos.AddLiteral       := cbxAdicionaLiteral.Checked;
  Config.ConfigArquivos.EmissaoPathNFe   := cbxEmissaoPathNFe.Checked;
  Config.ConfigArquivos.SalvarPathEvento := cbxSalvaPathEvento.Checked;
  Config.ConfigArquivos.SepararPorCNPJ   := cbxSepararPorCNPJ.Checked;
  Config.ConfigArquivos.SepararPorModelo := cbxSepararPorModelo.Checked;
  Config.ConfigArquivos.PathNFe          := edtPathNFe.Text;
  Config.ConfigArquivos.PathInu          := edtPathInu.Text;
  Config.ConfigArquivos.PathEvento       := edtPathEvento.Text;
  Config.ConfigArquivos.PathPDF          := edtPathPDF.Text;
  Config.ConfigArquivos.PathDownload     := edtDownloadXML.Text;
  Config.ConfigArquivos.Logs             := edtPathLogs.Text;

  // Salvar todas as configurações
  Config.SaveConfigurations;
 // Gravar Configura��es

  //Certificado
//
//    := cbSSLLib.ItemIndex     ;
//    := cbCryptLib.ItemIndex   ;
//    := cbHttpLib.ItemIndex    ;
//    := cbXmlSignLib.ItemIndex ;
//    := edtURLPFX.Text         ;
//    := edtCaminho.Text        ;
//    := edtSenha.Text          ;
//    := edtNumSerie.Text       ;
//    := 1; //id. da filial
//
//
////  if not Trim(edtCaminho.Text).IsEmpty then
////    PUT_CertificadoStream(edtCaminho.Text);
//
//  //Geral
//
//  := cbxAtualizarXML.Checked       ;
//  := cbxExibirErroSchema.Checked   ;
//  := edtFormatoAlerta.Text         ;
//  := cbFormaEmissao.ItemIndex      ;
//  := cbModeloDF.ItemIndex          ;
//  := cbVersaoDF.ItemIndex          ;
//  := edtIdToken.Text               ;
//  := edtToken.Text                 ;
//  := ckSalvar.Checked              ;
//  := cbxRetirarAcentos.Checked     ;
//  := edtPathLogs.Text              ;
//  := edtPathSchemas.Text           ;
//
//
//  //WebService
//
//    := rgTipoAmb.ItemIndex   ;
//    := cbxVisualizar.Checked ;
//    := cbxSalvarSOAP.Checked ;
//    := cbxAjustarAut.Checked;
//    := edtAguardar.Text      ;
//    := edtTentativas.Text    ;
//    := edtIntervalo.Text     ;
//    := seTimeOut.Value       ;
//    := cbSSLType.ItemIndex   ;
//    := cbUF.Text             ;
//
//
//  //Proxy
//
// := edtProxyHost.Text  ;
// := edtProxyPorta.Text ;
// := edtProxyUser.Text  ;
// := edtProxySenha.Text ;
//
//
//  //Arquivos
//
//    := cbxSalvarArqs.Checked;
//    := cbxPastaMensal.Checked;
//    := cbxAdicionaLiteral.Checked;
//    := cbxEmissaoPathNFe.Checked;
//    := cbxSalvaPathEvento.Checked;
//    := cbxSepararPorCNPJ.Checked;
//    := cbxSepararPorModelo.Checked;
//    := edtPathNFe.Text             ;
//    := edtPathInu.Text             ;
//    := edtPathEvento.Text          ;
//    := edtPathPDF.Text             ;
//    := edtDownloadXML.Text         ;
//
//
//  //Emitente // apenas visualizacao
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTE.Edit;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_CNPJ.AsString         := edtEmitCNPJ.Text                     ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_IE.AsString           := edtEmitIE.Text                       ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_RAZAOSOCIAL.AsString  := edtEmitRazao.Text                    ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_FANTASIA.AsString     := edtEmitFantasia.Text                 ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_FONE.AsString         := edtEmitFone.Text                     ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_CEP.AsString          := edtEmitCEP.Text                      ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_LOGRADOURO.AsString   := edtEmitLogradouro.Text               ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_NUMERO.AsString       := edtEmitNumero.Text                   ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_COMPLEMENTO.AsString  := edtEmitComp.Text                     ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_BAIRRO.AsString       := edtEmitBairro.Text                   ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_CODCIDADE.AsInteger   := StrToIntDef(edtEmitCodCidade.Text, 0);
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_CIDADE.AsString       := edtEmitCidade.Text                   ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_UF.AsString           := edtEmitUF.Text                       ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTEEMI_CRT.AsString          := IntToStr(cbTipoEmpresa.ItemIndex)              ;
////  FServiceFiscalConfigACBr.QRY_CONFIG_EMITENTE.Post;
//
//  //Danfe
//
//  := rgTipoDanfe.ItemIndex ;
//  := edtLogoMarca.Text     ;
//  := rgDANFCE.ItemIndex    ;
//
//
//  //PosPrinter
//
//   := cbxModeloPosPrinter.ItemIndex             ;
//   := cbxPorta.Text                             ;
//   := cbxPagCodigo.ItemIndex                    ;
//   := seColunas.Value                           ;
//   := seEspLinhas.Value                         ;
//   := seLinhasPular.Value                       ;
//   := cbCortarPapel.Checked                     ;
//   := ACBrPosPrinter.Device.ParamsString        ;
//
//
//  //Diversos
//
//   := StrToIntDef(edtUltNSU.Text, 0);
//   := StrToIntDef(edtMaxNSU.Text, 0);
//   := cbxNaoBaixar.Checked; //Esse campo n�o tem no manual. Eu que inventei
//   := Date;
//   := edtTimeUltimaTentativa.DateTime;
//
//end;

//mais na frente
   //NFCE
//
// := StrToInt(EdtSerieNFCE.Text);
// := StrToInt(EdtNumInicialNFCE.Text);
// := StrToInt(EdtNumAtualNFCE.Text);
// := CBB_NfceModeloDFE.Text;
// := CBB_NfceModulo.Text;
//
//  //NFE
//
// := StrToInt(EdtSerieNFE.Text);
// := StrToInt(EdtNumInicialNFE.Text);
// := StrToInt(EdtNumAtualNFE.Text);
// := CBB_NfeModeloDFE.Text;
// := CBB_NfeModulo.Text;


end;

procedure TViewConfigFiscal.cbCryptLibChange(Sender: TObject);
begin
  inherited;
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrNFe.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TViewConfigFiscal.cbHttpLibChange(Sender: TObject);
begin
  inherited;
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrNFe.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TViewConfigFiscal.cbSSLLibChange(Sender: TObject);
begin
  inherited;
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrNFe.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TViewConfigFiscal.cbXmlSignLibChange(Sender: TObject);
begin
  inherited;
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TViewConfigFiscal.AtualizarSSLLibsCombo;
begin
  cbSSLLib.ItemIndex     := Integer(ACBrNFe.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex   := Integer(ACBrNFe.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex    := Integer(ACBrNFe.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(ACBrNFe.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (ACBrNFe.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure TViewConfigFiscal.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin
  inherited;
// ======================================== ACBr ==================================
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbModeloDF.Items.Clear;
  for J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) );
  cbModeloDF.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) );
  cbVersaoDF.ItemIndex := 0;

  cbxModeloPosPrinter.Items.Clear ;
  for N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  cbxPagCodigo.Items.Clear ;
  for O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;

//  FConfigCertificadoController := TConfigCertificadoController.Create;
//  FConfigGeralController       := TConfigGeralController.Create;
//  FConfigDanfeController       := TConfigDanfeController.Create;
//  FConfigDiversosController    := TConfigDiversosController.Create;
//  FConfigPosPrinterController  := TConfigPosPrinterController.Create;
//  FConfigProxyController       := TConfigProxyController.Create;
//  FConfigWebServiceController  := TConfigWebServiceController.Create;

//  cbxPorta.Items.Clear;
//  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
//  ACBrPosPrinter1.Device.AcharPortasRAW( cbxPorta.Items );
//
//  {$IfDef MSWINDOWS}
//  cbxPorta.Items.Add('LPT1') ;
//  cbxPorta.Items.Add('\\localhost\Epson') ;
//  cbxPorta.Items.Add('c:\temp\ecf.txt') ;
//  {$EndIf}
//
//  cbxPorta.Items.Add('TCP:192.168.0.31:9100') ;
//  {$IfDef LINUX}
//  cbxPorta.Items.Add('/dev/ttyS0') ;
//  cbxPorta.Items.Add('/dev/ttyUSB0') ;
//  cbxPorta.Items.Add('/tmp/ecf.txt') ;
//  {$EndIf}
  LerConfiguracoes;


end;

procedure TViewConfigFiscal.FormDestroy(Sender: TObject);
begin
  inherited;
  FConfigCertificadoController.Free;
  FConfigGeralController.Free;
  FConfigDanfeController.Free;
  FConfigDiversosController.Free;
  FConfigPosPrinterController.Free;
  FConfigProxyController.Free;
  FConfigWebServiceController.Free;
  inherited;
end;

procedure TViewConfigFiscal.LerConfiguracoes;
var
  Config: TConfigFiscal;
begin
  Config := TConfigFiscal.GetInstance;
  // Preencher os componentes da view com as propriedades do Config
  // Certificado
  cbSSLLib.ItemIndex := Config.ConfigCertificado.SSLLib;
  cbCryptLib.ItemIndex := Config.ConfigCertificado.CryptLib;
  cbHttpLib.ItemIndex := Config.ConfigCertificado.HttpLib;
  cbXmlSignLib.ItemIndex := Config.ConfigCertificado.XmlSignLib;
  edtURLPFX.Text := Config.ConfigCertificado.URL;
  edtCaminho.Text := Config.ConfigCertificado.Caminho;
  edtSenha.Text := Config.ConfigCertificado.Senha;
  edtNumSerie.Text := Config.ConfigCertificado.NumSerie;

  // Geral
  cbxAtualizarXML.Checked := Config.ConfigGeral.AtualizarXML;
  cbxExibirErroSchema.Checked := Config.ConfigGeral.ExibirErroSchema;
  edtFormatoAlerta.Text := Config.ConfigGeral.FormatoAlerta;
  cbFormaEmissao.ItemIndex := Config.ConfigGeral.FormaEmissao;
  cbModeloDF.ItemIndex := Config.ConfigGeral.ModeloDF;
  cbVersaoDF.ItemIndex := Config.ConfigGeral.VersaoDF;
  edtIdToken.Text := Config.ConfigGeral.IdToken;
  edtToken.Text := Config.ConfigGeral.Token;
  ckSalvar.Checked := Config.ConfigGeral.Salvar;
  cbxRetirarAcentos.Checked := Config.ConfigGeral.RetirarAcentos;
  edtPathLogs.Text := Config.ConfigGeral.PathSalvar;
  edtPathSchemas.Text := Config.ConfigGeral.PathSchemas;

  // DANFE
  rgTipoDanfe.ItemIndex := Config.ConfigDanfe.Tipo;
  edtLogoMarca.Text := Config.ConfigDanfe.LogoMarca;
  rgDANFCE.ItemIndex := Config.ConfigDanfe.TipoDANFCE;

  // Diversos
  cbxNaoBaixar.Checked := Config.ConfigDiversos.BaixarDocumentos;
  edtUltNSU.Text := IntToStr(Config.ConfigDiversos.UltNSU);
  edtMaxNSU.Text := IntToStr(Config.ConfigDiversos.MaxNSU);
  edtTimeUltimaTentativa.DateTime := Config.ConfigDiversos.DtaUltimaBaixa;

  // PosPrinter
  cbxModeloPosPrinter.ItemIndex := Config.ConfigPosPrinter.Modelo;
  cbxPorta.Text := Config.ConfigPosPrinter.Porta;
  cbxPagCodigo.ItemIndex := Config.ConfigPosPrinter.PaginaDeCodigo;
  seColunas.Value := Config.ConfigPosPrinter.Colunas;
  seEspLinhas.Value := Config.ConfigPosPrinter.EspacoLinhas;
  seLinhasPular.Value := Config.ConfigPosPrinter.LinhasEntreCupons;
  cbCortarPapel.Checked := Config.ConfigPosPrinter.CortarPapel;
  ACBrPosPrinter.Device.ParamsString := Config.ConfigPosPrinter.ParamsString;

  // Proxy
  edtProxyHost.Text := Config.ConfigProxy.Host;
  edtProxyPorta.Text := Config.ConfigProxy.Porta;
  edtProxyUser.Text := Config.ConfigProxy.User;
  edtProxySenha.Text := Config.ConfigProxy.Pass;

  // WebService
  cbUF.Text := Config.ConfigWebService.UF;
  rgTipoAmb.ItemIndex := Config.ConfigWebService.Ambiente;
  cbxVisualizar.Checked := Config.ConfigWebService.Visualizar;
  cbxSalvarSOAP.Checked := Config.ConfigWebService.SalvarSOAP;
  cbxAjustarAut.Checked := Config.ConfigWebService.AjustarAut;
  edtAguardar.Text := Config.ConfigWebService.Aguardar;
  edtTentativas.Text := Config.ConfigWebService.Tentativas;
  edtIntervalo.Text := Config.ConfigWebService.Intervalo;
  seTimeOut.Value := Config.ConfigWebService.Timeout;
  cbSSLType.ItemIndex := Config.ConfigWebService.SSLType;

  //EMITENTE
  edtEmitCNPJ.Text        := FSistema.Empresa.CNPJ;
  edtEmitIE.Text          := FSistema.Empresa.IE;
  edtEmitRazao.Text       := FSistema.Empresa.RazaoSocial;
  edtEmitFantasia.Text    := FSistema.Empresa.Fantasia;
  edtEmitFone.Text        := FSistema.Empresa.Telefone;
  edtEmitCEP.Text         := FSistema.Empresa.CEP;
  edtEmitLogradouro.Text  := FSistema.Empresa.Endereco;
  edtEmitNumero.Text      := FSistema.Empresa.Numero;
  edtEmitComp.Text        := FSistema.Empresa.Complemento;
  edtEmitBairro.Text      := FSistema.Empresa.Bairro;
  edtEmitCodCidade.Text   := FSistema.Empresa.CodigoIBGE;
  edtEmitCidade.Text      := FSistema.Empresa.Cidade;
  edtEmitUF.Text          := FSistema.Empresa.UF;
  cbTipoEmpresa.ItemIndex := FSistema.Empresa.CRT;

  // Arquivos
  cbxSalvarArqs.Checked       := Config.ConfigArquivos.Salvar;
  cbxPastaMensal.Checked      := Config.ConfigArquivos.PastaMensal;
  cbxAdicionaLiteral.Checked  := Config.ConfigArquivos.AddLiteral;
  cbxEmissaoPathNFe.Checked   := Config.ConfigArquivos.EmissaoPathNFe;
  cbxSalvaPathEvento.Checked  := Config.ConfigArquivos.SalvarPathEvento;
  cbxSepararPorCNPJ.Checked   := Config.ConfigArquivos.SepararPorCNPJ;
  cbxSepararPorModelo.Checked := Config.ConfigArquivos.SepararPorModelo;
  edtPathNFe.Text             := Config.ConfigArquivos.PathNFe;
  edtPathInu.Text             := Config.ConfigArquivos.PathInu;
  edtPathEvento.Text          := Config.ConfigArquivos.PathEvento;
  edtPathPDF.Text             := Config.ConfigArquivos.PathPDF;
  edtDownloadXML.Text         := Config.ConfigArquivos.PathDownload;
  edtPathLogs.Text            := Config.ConfigArquivos.Logs;

  //Certificado
//  cbSSLLib.ItemIndex     :=
//  cbCryptLib.ItemIndex   :=
//  cbHttpLib.ItemIndex    :=
//  cbXmlSignLib.ItemIndex :=
//  edtURLPFX.Text         :=
//  edtCaminho.Text        :=
//  edtSenha.Text          :=
//  edtNumSerie.Text       :=
//
//  //Geral
//  cbxAtualizarXML.Checked     :=
//  cbxExibirErroSchema.Checked :=
//  edtFormatoAlerta.Text       :=
//  cbFormaEmissao.ItemIndex    :=
//  cbModeloDF.ItemIndex        :=

  edtFormatoAlerta.Text := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';

//  cbVersaoDF.ItemIndex        :=
//  edtIdToken.Text             :=
//  edtToken.Text               :=
//  ckSalvar.Checked            :=
//  cbxRetirarAcentos.Checked   :=

//  edtPathLogs.Text            := LPastaRaiz + '\Logs';
//  edtPathSchemas.Text         := LPastaRaiz1 + '\Schemas\NFeV400';

  //WebService
//  rgTipoAmb.ItemIndex   :=
//  cbxVisualizar.Checked :=
//  cbxSalvarSOAP.Checked :=
//  cbxAjustarAut.Checked :=
//  edtAguardar.Text      :=
//  edtTentativas.Text    :=
//  edtIntervalo.Text     :=
//  seTimeOut.Value       :=
//  cbSSLType.ItemIndex   :=
//  cbUF.Text             :=

  //Proxy
//  edtProxyHost.Text  :=
//  edtProxyPorta.Text :=
//  edtProxyUser.Text  :=
//  edtProxySenha.Text :=

  //Arquivos
//  cbxSalvarArqs.Checked       :=
//  cbxPastaMensal.Checked      :=
//  cbxAdicionaLiteral.Checked  :=
//  cbxEmissaoPathNFe.Checked   :=
//  cbxSalvaPathEvento.Checked  :=
//  cbxSepararPorCNPJ.Checked   :=
//  cbxSepararPorModelo.Checked :=


  edtPathNFe.Text             := LPastaRaiz + '\NFe';
  edtPathInu.Text             := LPastaRaiz + '\Inutilizada';
  edtPathEvento.Text          := LPastaRaiz + '\Eventos';
  edtPathPDF.Text             := LPastaRaiz + '\PDF';
  edtDownloadXML.Text         := LPastaRaiz + '\XML';


  //Emitente (buscar da empresa)
//  edtEmitCNPJ.Text        :=
//  edtEmitIE.Text          :=
//  edtEmitRazao.Text       :=
//  edtEmitFantasia.Text    :=
//  edtEmitFone.Text        :=
//  edtEmitCEP.Text         :=
//  edtEmitLogradouro.Text  :=
//  edtEmitNumero.Text      :=
  edtEmitComp.Text        := 'COMPLEMENTO';
//  edtEmitBairro.Text      :=
//  edtEmitCodCidade.Text   :=
//  edtEmitCidade.Text      :=
//  edtEmitUF.Text          :=
//  cbTipoEmpresa.ItemIndex :=

  //Danfe
//  rgTipoDanfe.ItemIndex :=
//  edtLogoMarca.Text     :=
//  rgDANFCE.ItemIndex    :=
//
//  //PosPrinter
//  cbxModeloPosPrinter.ItemIndex      :=
//  cbxPorta.Text                      :=
//  cbxPagCodigo.ItemIndex             :=
//  seColunas.Value                    :=
//  seEspLinhas.Value                  :=
//  seLinhasPular.Value                :=
//  cbCortarPapel.Checked              :=
//
//  ACBrPosPrinter.Device.ParamsString  :=

  //Diversos
//  cbxNaoBaixar.Checked            :=
//  edtTimeUltimaTentativa.DateTime :=
//  edtUltNSU.Text                  :=
//  edtMaxNSU.Text                  :=

//============Numero Fiscal================//
//agora nao so la na frente
//  //NFCE
//   EdtSerieNFCE.Text           :=  IntToStr(FServiceFiscalConfigACBr.QRY_SERIENFCESERIE.AsInteger);
//   EdtNumInicialNFCE.Text      :=  IntToStr(FServiceFiscalConfigACBr.QRY_SERIENFCENUMEROINICIAL.AsInteger);
//   EdtNumAtualNFCE.Text        :=  IntToStr(FServiceFiscalConfigACBr.QRY_SERIENFCENUMEROATUAL.AsInteger);
//   CBB_NfceModeloDFE.ItemIndex :=  CBB_NfceModeloDFE.Items.IndexOf(FServiceFiscalConfigACBr.QRY_SERIENFCEMODELODFE.AsString);
//   CBB_NfceModulo.ItemIndex    :=  CBB_NfceModulo.Items.IndexOf(FServiceFiscalConfigACBr.QRY_SERIENFCEMODULO.AsString);
//  //NFE
//  EdtSerieNFE.Text            :=   IntToStr(FServiceFiscalConfigACBr.QRY_SERIENFESERIE.AsInteger);
//  EdtNumInicialNFE.Text       :=   IntToStr(FServiceFiscalConfigACBr.QRY_SERIENFENUMEROINICIAL.AsInteger);
//  EdtNumAtualNFE.Text         :=   IntToStr(FServiceFiscalConfigACBr.QRY_SERIENFENUMEROATUAL.AsInteger);
//  CBB_NfeModeloDFE.ItemIndex  := CBB_NfeModeloDFE.Items.IndexOf(FServiceFiscalConfigACBr.QRY_SERIENFEMODELODFE.AsString);
//  CBB_NfeModulo.ItemIndex     := CBB_NfeModulo.Items.IndexOf(FServiceFiscalConfigACBr.QRY_SERIENFEMODULO.AsString);

  ConfigurarComponente;
  ConfigurarEmail;
end;

procedure TViewConfigFiscal.ConfigurarEmail;
begin
//  ACBrMail.Host                := edtSmtpHost.Text;
//  ACBrMail.Port                := edtSmtpPort.Text;
//  ACBrMail.Username            := edtSmtpUser.Text;
//  ACBrMail.Password            := edtSmtpPass.Text;
//  ACBrMail.From                := edtSmtpUser.Text;
//  ACBrMail.SetSSL              := cbEmailSSL.Checked; // SSL - Conexao Segura
//  ACBrMail.SetTLS              := cbEmailSSL.Checked; // Auto TLS
//  ACBrMail.ReadingConfirmation := False; // Pede confirmacao de leitura do email
//  ACBrMail.UseThread           := False;           // Aguarda Envio do Email(nao usa thread)
//  ACBrMail.FromName            := 'Projeto ACBr - ACBrNFe';
end;

procedure TViewConfigFiscal.ConfigurarComponente;
var
  Ok: Boolean;
begin

  //dados do certificado
//  ACBrNFe.Configuracoes.Certificados.URLPFX      := edtURLPFX.Text;
//  ACBrNFe.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
//  ACBrNFe.Configuracoes.Certificados.Senha       := edtSenha.Text;
//  ACBrNFe.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;


//  GET_CertificadoACBr;



  if cbModeloDF.ItemIndex = 0 then
  begin
    ACBrNFe.DANFE := ACBrNFeDANFEFR;

  end
  else
  begin
    case rgDANFCE.ItemIndex of
      0: ACBrNFe.DANFE := ACBrNFeDANFCeFortes;
      1: ACBrNFe.DANFE := ACBrNFeDANFeESCPOS;
      2: ACBrNFe.DANFE := ACBrNFeDANFCeFortesA4;
    end;
  end;

  ACBrNFe.SSL.DescarregarCertificado;

//  ACBrNFe.Configuracoes.Geral
  ACBrNFe.Configuracoes.Geral.SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
  ACBrNFe.Configuracoes.Geral.SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
  ACBrNFe.Configuracoes.Geral.SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
  ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);

  AtualizarSSLLibsCombo;

  ACBrNFe.Configuracoes.Geral.AtualizarXMLCancelado := cbxAtualizarXML.Checked;

  ACBrNFe.Configuracoes.Geral.Salvar           := ckSalvar.Checked;
  ACBrNFe.Configuracoes.Geral.ExibirErroSchema := cbxExibirErroSchema.Checked;
  ACBrNFe.Configuracoes.Geral.RetirarAcentos   := cbxRetirarAcentos.Checked;
  ACBrNFe.Configuracoes.Geral.FormatoAlerta    := edtFormatoAlerta.Text;
  ACBrNFe.Configuracoes.Geral.FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
  ACBrNFe.Configuracoes.Geral.ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
  ACBrNFe.Configuracoes.Geral.VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);

  ACBrNFe.Configuracoes.Geral.IdCSC            := edtIdToken.Text;
  ACBrNFe.Configuracoes.Geral.CSC              := edtToken.Text;
  ACBrNFe.Configuracoes.Geral.VersaoQRCode     := veqr200;


//  ACBrNFe.Configuracoes.WebServices
  ACBrNFe.Configuracoes.WebServices.UF         := cbUF.Text;
  ACBrNFe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));  // StrToEnumerado(ok, s, ['1', '2'], [taProducao, taHomologacao]);
  ACBrNFe.Configuracoes.WebServices.Visualizar := cbxVisualizar.Checked;
  ACBrNFe.Configuracoes.WebServices.Salvar     := cbxSalvarSOAP.Checked;

  ACBrNFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := cbxAjustarAut.Checked;

  if NaoEstaVazio(edtAguardar.Text)then
    ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text) < 1000, StrToInt(edtAguardar.Text) * 1000, StrToInt(edtAguardar.Text))
  else
    edtAguardar.Text := IntToStr(ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet);

  if NaoEstaVazio(edtTentativas.Text) then
    ACBrNFe.Configuracoes.WebServices.Tentativas := StrToInt(edtTentativas.Text)
  else
    edtTentativas.Text := IntToStr(ACBrNFe.Configuracoes.WebServices.Tentativas);

  if NaoEstaVazio(edtIntervalo.Text) then
    ACBrNFe.Configuracoes.WebServices.IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text) < 1000, StrToInt(edtIntervalo.Text) * 1000, StrToInt(edtIntervalo.Text))
  else
    edtIntervalo.Text := IntToStr(ACBrNFe.Configuracoes.WebServices.IntervaloTentativas);

  ACBrNFe.Configuracoes.WebServices.TimeOut   := seTimeOut.Value;
  ACBrNFe.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
  ACBrNFe.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
  ACBrNFe.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
  ACBrNFe.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;


  ACBrNFe.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

//  ACBrNFe.Configuracoes.Arquivos
  ACBrNFe.Configuracoes.Arquivos.Salvar           := cbxSalvarArqs.Checked;
  ACBrNFe.Configuracoes.Arquivos.SepararPorMes    := cbxPastaMensal.Checked;
  ACBrNFe.Configuracoes.Arquivos.AdicionarLiteral := cbxAdicionaLiteral.Checked;
  ACBrNFe.Configuracoes.Arquivos.EmissaoPathNFe   := cbxEmissaoPathNFe.Checked;
  ACBrNFe.Configuracoes.Arquivos.SalvarEvento     := cbxSalvaPathEvento.Checked;
  ACBrNFe.Configuracoes.Arquivos.SepararPorCNPJ   := cbxSepararPorCNPJ.Checked;
  ACBrNFe.Configuracoes.Arquivos.SepararPorModelo := cbxSepararPorModelo.Checked;
  ACBrNFe.Configuracoes.Arquivos.PathSchemas      := edtPathSchemas.Text;
  ACBrNFe.Configuracoes.Arquivos.PathNFe          := edtPathNFe.Text;
  ACBrNFe.Configuracoes.Arquivos.PathInu          := edtPathInu.Text;
  ACBrNFe.Configuracoes.Arquivos.PathEvento       := edtPathEvento.Text;
  ACBrNFe.Configuracoes.Arquivos.PathSalvar       := edtPathLogs.Text;
  ACBrNFe.Configuracoes.Arquivos.DownloadDFe.PathDownload := edtDownloadXML.Text;


  if ACBrNFe.DANFE <> nil then
  begin
    //ACBrNFe.DANFE.TipoDANFE := StrToTpImp(OK, IntToStr(rgTipoDanfe.ItemIndex + 1));
    ACBrNFe.DANFE.Logo      := edtLogoMarca.Text;
    ACBrNFe.DANFE.PathPDF   := edtPathPDF.Text;

    ACBrNFe.DANFE.MargemDireita  := 0;
    ACBrNFe.DANFE.MargemEsquerda := 0;
    ACBrNFe.DANFE.MargemSuperior := 0;
    ACBrNFe.DANFE.MargemInferior := 0;

  end;

end;

procedure TViewConfigFiscal.GET_CertificadoACBr;
begin
//var
//  BlobStream: TStream;
//  TempFileName: string;
//  FileStream: TFileStream;
//begin
//  // Atualiza as configurações (supondo que essa função abra a query)
//
//  // Verifica se há dados no dataset
//  if not FServiceFiscalConfigACBr.QRY_CONFIG_CERTIFICADO.Eof then
//  begin
//    // Cria um stream para ler o campo BLOB
//    //ajustar para pegar do objeto
////    BlobStream := FServiceFiscalConfigACBr.QRY_CONFIG_CERTIFICADO.CreateBlobStream(FServiceFiscalConfigACBr.QRY_CONFIG_CERTIFICADOCER_STREAM, bmRead);
//    try
//      // Cria um arquivo temporário para salvar o certificado
//      TempFileName := ExtractFilePath(Application.ExeName) +  'certificado.pfx';
//      FileStream := TFileStream.Create(TempFileName, fmCreate);
//      try
//        FileStream.CopyFrom(BlobStream, BlobStream.Size);
//      finally
//        FileStream.Free;
//      end;
//
//      // Carrega o certificado no ACBr a partir do arquivo temporário
//      AcbrNFe.Configuracoes.Certificados.ArquivoPFX := TempFileName;
//      AcbrNFe.Configuracoes.Certificados.Senha := FServiceFiscalConfigACBr.QRY_CONFIG_CERTIFICADOCER_SENHA.AsString.Trim;
//      ACBrNFe.Configuracoes.Certificados.URLPFX      := edtURLPFX.Text;
////      ACBrNFe.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
////      ACBrNFe.Configuracoes.Certificados.Senha       := edtSenha.Text;
//      ACBrNFe.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
//
//
//    finally
//      BlobStream.Free; // Libera o stream após o uso
//    end;
//  end
//  else
//  begin
//    raise Exception.Create('Nenhum certificado encontrado na configuração.');
//  end;
end;

procedure TViewConfigFiscal.PutCaminhoBase;
var
  LCNPJ: string;
begin //Define o caminho base das pastas

  try
//    LService.GET_Filiais(1); //Pegar a filial logada
    LCNPJ := '';//LService.QRY_FilialCNPJ.AsString.Trim;

  finally
//    FreeAndNil(LService);
  end;


//  if FSistemaConstantes.ServidorOuTerminal = 'SERVIDOR' then  //11-06-2024 VOLTAR AQUI
//  begin
//
//  end
//  else begin

    LPastaRaiz  := ExtractFilePath(Application.ExeName) + 'Docs';
    LPastaRaiz1 := LPastaRaiz; //Não será modificada

    //Cria as Pastas Padrão do Sistema
    if not DirectoryExists(LPastaRaiz) then
      mkdir(LPastaRaiz); //Cria a pasta Docs

    //===================================================
    if not DirectoryExists(LPastaRaiz + '\Schemas') then
      mkdir(LPastaRaiz + '\Schemas');

    if not DirectoryExists(LPastaRaiz + '\Schemas\NFeV400') then
      mkdir(LPastaRaiz + '\Schemas\NFeV400');

    //===========================================================

    if not DirectoryExists(LPastaRaiz + '\Distribuicao') then
      mkdir(LPastaRaiz + '\Distribuicao');

    if not DirectoryExists(LPastaRaiz + '\Distribuicao\' + OnlyNumber(LCNPJ)) then
      mkdir(LPastaRaiz + '\Distribuicao\' + OnlyNumber(LCNPJ));  //Cria a pasta com CNPJ da empresa

    LPastaDistribuicao := 'Distribuicao\' + OnlyNumber(LCNPJ);

    //Atualiza caminho base...
    LPastaRaiz := LPastaRaiz + '\' + LPastaDistribuicao;

    if not DirectoryExists(LPastaRaiz + '\Logs') then
      mkdir(LPastaRaiz + '\Logs');
    if not DirectoryExists(LPastaRaiz + '\Eventos') then
      mkdir(LPastaRaiz + '\Eventos');
    if not DirectoryExists(LPastaRaiz + '\PDF') then
      mkdir(LPastaRaiz + '\PDF');
    if not DirectoryExists(LPastaRaiz + '\NFe') then
      mkdir(LPastaRaiz + '\NFe');
    if not DirectoryExists(LPastaRaiz + '\Inutilizada') then
      mkdir(LPastaRaiz + '\Inutilizada');
    if not DirectoryExists(LPastaRaiz + '\XML') then
      mkdir(LPastaRaiz + '\XML');

end;

end.
