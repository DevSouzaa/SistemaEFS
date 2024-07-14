﻿unit View.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Types,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,

  vcl.Themes,
  Winapi.UxTheme,
  //Views
  View.Base,
  View.lista.produtos,
  View.config.fiscal,
  view.lista.grupos,
  view.lista.subgrupos,
  view.lista.marca,
  view.lista.empresa,
  view.lista.unidade,
  View.lista.fabricante,
  view.lista.pessoas,

  acPNG,

  UFuncoes,

  Generics.Collections,

  Vcl.ComCtrls, UCSettings, System.Actions, Vcl.ActnList, UCDataConnector,
  UCFireDACConn, UCBase, Dm.UserControl, AdvMenus, Vcl.Menus;

type
  TMyTabSheet = Class(TTabSheet)
  private
    FForm: TForm;
  public
    property Form: TForm read FForm write FForm;

End;

type
  TViewPrincipal = class(TViewBase)
    PnlBackGround: TPanel;
    PnlConteudo: TPanel;
    PnlBackgroundMenu: TPanel;
    PnlBackGroundRodaPe: TPanel;
    PnlTopoCabecalho: TPanel;
    PnlAbasMenu: TPanel;
    PnlLogoEmpresa: TPanel;
    PnlEmpresaLisenca: TPanel;
    LblCNPJEmpresa: TLabel;
    LblNomeEmpresa: TLabel;
    PnlInformacoesUsu: TPanel;
    PnlLineTopo: TPanel;
    PnlLineMenu: TPanel;
    PnlBotoesMenu: TPanel;
    PnlLogoUser: TPanel;
    ImgUserEscura: TImage;
    ImgUserClara: TImage;
    PnlNomePerfilUser: TPanel;
    LblPerfilUser: TLabel;
    LblNameUser: TLabel;
    PnlMinimizar: TPanel;
    BtnMinimizar: TSpeedButton;
    PnlBtnConfiguracao: TPanel;
    zPnlEspacoMenu: TPanel;
    ShapeBtnConfiguracao: TShape;
    PnlImgMenu: TPanel;
    ImgMenuEscura: TImage;
    ImgMenuClara: TImage;
    ImgBtnConfiguracao: TImage;
    LblBtnBtnConfiguracao: TLabel;
    PnlBtnCadUsuarios: TPanel;
    ShapeBtnCadUsuarios: TShape;
    ImgBtnCadUsuarios: TImage;
    LblBtnCadUsuarios: TLabel;
    LblVersion: TLabel;
    PnlBtnClientes: TPanel;
    ShapeBtnClientes: TShape;
    ImgBtnClientes: TImage;
    LblBtnClientes: TLabel;
    PnlBtnEstoque: TPanel;
    ShapeBtnEstoque: TShape;
    ImgBtnEstoque: TImage;
    LblBtnEstoque: TLabel;
    PnlBtnMovimentos: TPanel;
    ShapeBtnMovimentos: TShape;
    ImgBtnMovimentos: TImage;
    LblBtnMovimentos: TLabel;
    PnlFaturamento: TPanel;
    ShapeBtnFaturamento: TShape;
    ImgBtnFaturamento: TImage;
    LLblBtnFaturamento: TLabel;
    PnlRelatorios: TPanel;
    ShapeBtnRelatorios: TShape;
    ImgBtnRelatorios: TImage;
    LblBtnRelatorios: TLabel;
    PnlBtnSair: TPanel;
    PnlBarraSuperior: TPanel;
    PnlLine: TPanel;
    PG_Abas: TPageControl;
    TabHome: TTabSheet;
    UserControl: TUserControl;
    ActionList: TActionList;
    UCFireDACConn: TUCFireDACConn;
    ActAltSenha: TAction;
    ActCadUsuario: TAction;
    ActLogOff: TAction;
    UCSettings: TUCSettings;
    ActEstoque: TAction;
    ActCadastro: TAction;
    ActMovimentos: TAction;
    ActFaturamento: TAction;
    ActCaixa: TAction;
    ActContasReceber: TAction;
    ActContasPagar: TAction;
    ActRelatorios: TAction;
    ActConfiguracoes: TAction;
    BtnCadastro: TSpeedButton;
    BtnCadUser: TSpeedButton;
    BtnEstoque: TSpeedButton;
    BtnMovimentos: TSpeedButton;
    BtnFaturamento: TSpeedButton;
    BtnRelatorios: TSpeedButton;
    BtnConfiguracao: TSpeedButton;
    PPmFinanceiro: TAdvPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem8: TMenuItem;
    ContasReceber2: TMenuItem;
    ContasaReceberAberto2: TMenuItem;
    ContasaReceberRecebidas2: TMenuItem;
    MenuItem30: TMenuItem;
    ContasPagar2: TMenuItem;
    ContasaPagarAbertas2: TMenuItem;
    ContasaPagarPagas2: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    CentrodeCustos2: TMenuItem;
    LanamentoBanco2: TMenuItem;
    PPmFiscal: TAdvPopupMenu;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    PIS1: TMenuItem;
    COFINS1: TMenuItem;
    CSTICMS2: TMenuItem;
    NaturezadaOperao2: TMenuItem;
    PPmEstoque: TAdvPopupMenu;
    Produto: TMenuItem;
    Grupo: TMenuItem;
    SubGrupo: TMenuItem;
    Fabricante: TMenuItem;
    Marca: TMenuItem;
    PPmCadastros: TAdvPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PPmMovimentos: TAdvPopupMenu;
    Vendas1: TMenuItem;
    PrVendas1: TMenuItem;
    Oramentos1: TMenuItem;
    AdvMenuStyler: TAdvMenuStyler;
    PnlFinanceiro: TPanel;
    ShapeBtnlFinanceiro: TShape;
    ImgBtnlFinanceiro: TImage;
    LblBtnlFinanceiro: TLabel;
    BtnFinanceiro: TSpeedButton;
    PnlBtnFiscal: TPanel;
    ShapeBtnFiscal: TShape;
    ImgBtnFiscal: TImage;
    LblBtnFiscal: TLabel;
    BtnFiscal: TSpeedButton;
    ActFiscal: TAction;
    Unidades: TMenuItem;
    LblMenu: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Shape2: TShape;
    Panel3: TPanel;
    Shape3: TShape;
    Panel4: TPanel;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    procedure ImgUserEscuraMouseEnter(Sender: TObject);
    procedure ImgUserClaraMouseLeave(Sender: TObject);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure BtnMinimizarMouseEnter(Sender: TObject);
    procedure BtnMinimizarMouseLeave(Sender: TObject);
    procedure ImgMenuClaraMouseEnter(Sender: TObject);
    procedure ImgMenuEscuraMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImgMenuEscuraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure PG_AbasDrawTab(Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure PG_AbasMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PG_AbasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PnlBtnSairClick(Sender: TObject);
    procedure PG_AbasChange(Sender: TObject);
    procedure ActEstoqueExecute(Sender: TObject);
    procedure ActConfiguracoesExecute(Sender: TObject);
    procedure BtnFiscalClick(Sender: TObject);
    procedure ActMovimentosExecute(Sender: TObject);
    procedure ActFiscalExecute(Sender: TObject);
    procedure ActCadastroExecute(Sender: TObject);
    procedure GrupoClick(Sender: TObject);
    procedure FabricanteClick(Sender: TObject);
    procedure MarcaClick(Sender: TObject);
    procedure UnidadesClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure SubGrupoClick(Sender: TObject);
  private

    FCloseButtonRect: TRect;
    FHoveringCloseButton: Boolean;
    FMousePos: TPoint;

    function GetVersaoExe(Prog: string): string;

    procedure CriarFormularioAbas(FormClass: TFormClass; Multiplos: Boolean);
    Procedure FecharSistema;
    procedure FecharAbasAbertas;
    procedure MostrarMenuMouseEnter(Sender: TObject);
    procedure SetaPropriedadesMenu;
    procedure MostrarSubMenu(PopupMenu: TAdvPopupMenu; Botao: TSpeedButton);

  public

    FormInstances: TDictionary<TClass,TForm>;
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses View.Base.Tela.Modal;

procedure TViewPrincipal.MarcaClick(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewListaMarca, false);
end;

procedure TViewPrincipal.MenuItem3Click(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewlistaEmpresas, false);
end;

procedure TViewPrincipal.MenuItem4Click(Sender: TObject);
begin //
  inherited;
//  CriarFormularioAbas(TViewlistaFonecedores, false);
end;

procedure TViewPrincipal.GrupoClick(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewListaGrupos, false);
end;

procedure TViewPrincipal.MostrarMenuMouseEnter(Sender: TObject);
begin  //Mostra o Menu

  if Sender is TSpeedButton then
  begin
    // Verifica se o Sender é um TSpeedButton
    if Assigned((Sender as TSpeedButton).PopupMenu) then
    begin
      // Se o botão tiver um menu suspenso associado, mostra o submenu
      MostrarSubMenu(TAdvPopupMenu((Sender as TSpeedButton).PopupMenu), TSpeedButton(Sender));
    end;
  end;

end;

procedure TViewPrincipal.SetaPropriedadesMenu;
begin
  BtnMovimentos.OnMouseEnter      := MostrarMenuMouseEnter;
  btnCadastro.OnMouseEnter       := MostrarMenuMouseEnter;
  btnEstoque.OnMouseEnter         := MostrarMenuMouseEnter;
  btnFinanceiro.OnMouseEnter      := MostrarMenuMouseEnter;
//  btnRelatorios.OnMouseEnter      := MostrarMenuMouseEnter;
  btnFiscal.OnMouseEnter          := MostrarMenuMouseEnter;
//  btnConfiguracoes.OnMouseEnter   := MostrarMenuMouseEnter;
end;

procedure TViewPrincipal.SubGrupoClick(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewListaSubGrupos, false);
end;

procedure TViewPrincipal.UnidadesClick(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewListaUnidades, false);
end;

procedure TViewPrincipal.FabricanteClick(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewListaFabricante, false);
end;

procedure TViewPrincipal.MostrarSubMenu(PopupMenu: TAdvPopupMenu; Botao: TSpeedButton);
var
  Pos: TPoint;
begin
  // Calcular a posição do popup menu
  Pos.X := Botao.Left + Botao.Width; // à direita do botão
  Pos.Y := Botao.Top; // na mesma altura do botão

  // Converter a posição para coordenadas do formulário
  Pos := Botao.Parent.ClientToScreen(Pos);

  // Mostrar o popup menu na posição calculada
  PopupMenu.Popup(Pos.X, Pos.Y);
end;


procedure TViewPrincipal.ActCadastroExecute(Sender: TObject);
begin //
  inherited;
  CriarFormularioAbas(TViewlistaPessoas, false);
end;

procedure TViewPrincipal.ActConfiguracoesExecute(Sender: TObject);
begin
  inherited;
  CriarFormularioAbas(TViewConfigFiscal, false);
end;

procedure TViewPrincipal.ActMovimentosExecute(Sender: TObject);
begin//moviemntos
  inherited;

end;

procedure TViewPrincipal.ActEstoqueExecute(Sender: TObject);
begin///
  inherited;
  CriarFormularioAbas(TViewListaProdutos, false);
end;

procedure TViewPrincipal.ActFiscalExecute(Sender: TObject);
begin //
  inherited;

end;

procedure TViewPrincipal.BtnFiscalClick(Sender: TObject);
begin
  inherited;
//  CriarFormularioAbas()
end;

procedure TViewPrincipal.BtnMinimizarClick(Sender: TObject);
begin
  inherited;
  Application.Minimize;
end;
procedure TViewPrincipal.BtnMinimizarMouseEnter(Sender: TObject);
begin
  inherited;
  BtnMinimizar.Font.Size := BtnMinimizar.Font.Size + 3;
end;

procedure TViewPrincipal.BtnMinimizarMouseLeave(Sender: TObject);
begin
  inherited;
  BtnMinimizar.Font.Size := BtnMinimizar.Font.Size - 3;
end;

procedure TViewPrincipal.ImgMenuEscuraClick(Sender: TObject);
begin
  inherited;
  if PnlBackgroundMenu.Width = 200 then
    PnlBackgroundMenu.Width := 57
  else
    PnlBackgroundMenu.Width := 200;
end;

procedure TViewPrincipal.ImgMenuEscuraMouseLeave(Sender: TObject);
begin
  inherited;
  ImgMenuEscura.Visible := False;
  ImgMenuClara.Visible := True;
end;

procedure TViewPrincipal.ImgUserClaraMouseLeave(Sender: TObject);
begin
  inherited;
  ImgUserEscura.Visible := True;
  ImgUserClara.Visible := False;
end;

procedure TViewPrincipal.ImgUserEscuraMouseEnter(Sender: TObject);
begin
  inherited;
  ImgUserEscura.Visible := False;
  ImgUserClara.Visible := True;
end;

procedure TViewPrincipal.ImgMenuClaraMouseEnter(Sender: TObject);
begin
  inherited;
  ImgMenuClara.Visible := False;
  ImgMenuEscura.Visible := True;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin       //precisa pegar e caregar a filial padrao
  inherited;


  FSistema.Usuario.ID       := UserControl.CurrentUser.UserID;
  FSistema.Usuario.Nome     := UserControl.CurrentUser.UserName;
  FSistema.Usuario.Login    := UserControl.CurrentUser.UserLogin;

  LblNameUser.Caption    := FSistema.Usuario.Nome;
  LblNomeEmpresa.Caption := FSistema.Empresa.RazaoSocial;
  LblCNPJEmpresa.Caption := FSistema.Empresa.CNPJ;
  LblVersion.Caption := 'Versão: ' + GetVersaoExe(Application.ExeName);

end;

procedure TViewPrincipal.FecharSistema;
//var
//  LPermissao: string;
//  LVerificaCaixa: boolean;
begin
  inherited;
//  LPermissao := FServiceParametro.PermiteFecharSistemaCaixaAberto;

//  if LPermissao = 'N' then
//  begin
//    LVerificaCaixa := FServiceCaixa.VerificaCaixa(ViewMenu.FIdUsuario);
//    if LVerificaCaixa then
//     begin
//      TViewMensagens.Mensagem('O caixa encontra-se aberto, para fechar o sistema feche o caixa antes.', 'Aviso', 'I', [mbOK]);
//      exit;
//     end;
//  end;

  IF  fnc_CriarMensagem('FECHAR SISTEMA', 'CONFIRMANDO A FINALIZAÇÃO',
          'Tem certeza que deseja FECHAR O SITEMA?', ExtractFilepath(Application.ExeName) +
          '\Icones\Atencao.png', 'CONFIRMACAO') THEN
      BEGIN
        FecharAbasAbertas;
        Application.terminate;
      end;

end;

procedure TViewPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
 SetaPropriedadesMenu;

  SetWindowTheme(PG_Abas.Handle, '', '');//PARA SUMIR O SERRILHADO DO PAGE CONTROL
  FormInstances := TDictionary<TClass, TForm>.Create;
  PG_Abas.OwnerDraw := True;
  PG_Abas.TabHeight := 35; // Altura das abas
  PG_Abas.TabWidth := 150; // Largura das abas
  PG_Abas.OnDrawTab := PG_AbasDrawTab;
  PG_Abas.OnMouseMove := PG_AbasMouseMove;
  PG_Abas.OnChange := PG_AbasChange; // Adicione isto

//  UserControl.StartLogin;
end;

procedure TViewPrincipal.PG_AbasChange(Sender: TObject);
var
  TabRect: TRect;
begin
  inherited;
  // Mover a PnlLine para acompanhar a aba ativa
  if PG_Abas.ActivePage <> nil then
  begin
    TabRect := PG_Abas.TabRect(PG_Abas.TabIndex);
    PnlLine.Left := TabRect.Left;
    PnlLine.Width := TabRect.Width;
  end;
end;

procedure TViewPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of

  VK_ESCAPE:
    Begin
      FecharSistema;
    End;

  end;
end;




{$REGION 'TDI'}
procedure TViewPrincipal.CriarFormularioAbas(FormClass: TFormClass; Multiplos: Boolean);
var
  Form: TForm;
  TabSheet: TMyTabSheet;
begin
  if not Multiplos then
  begin
    if FormInstances.ContainsKey(FormClass) then
    begin
      PG_Abas.ActivePage := TMyTabSheet(FormInstances[FormClass].Parent);
      Exit;
    end;
  end;
  Form := FormClass.Create(Self);
  FormInstances.AddOrSetValue(Form.ClassType, Form);
  Form.Parent := PG_Abas;
  Form.BorderStyle := bsNone;
  Form.Align := alClient;
  TabSheet := TMyTabSheet.Create(PG_Abas);
  TabSheet.Caption := Form.Caption; // O título da aba será o título do formulário
  TabSheet.PageControl := PG_Abas;
  PG_Abas.ActivePage := TabSheet;
  Form.Parent := TabSheet;
  Form.Show;
  TabSheet.Form := Form;
  PG_AbasChange(Self);
end;

procedure TViewPrincipal.FecharAbasAbertas;
var
  i: Integer;
  FormToClose: TCustomForm;
  TabSheet: TMyTabSheet;
  FormClass: TClass;
begin
  // Percorre todas as abas do PageControl
  for i := PG_ABAS.PageCount - 1 downto 0 do
  begin
    // Verifica se a aba não é a tab_home
    if PG_ABAS.Pages[i] <> tabhome then
    begin
      FormToClose := TCustomForm(PG_ABAS.Pages[i].Tag);
      TabSheet := TMyTabSheet(PG_ABAS.Pages[i]);  // Pega a Tab correta para fechar...

      // Liberar o formulário contido na aba
      if Assigned(FormToClose) then
        FormToClose.Free;

      if Assigned(TabSheet) then
      begin
        FormClass := TabSheet.Form.ClassType;
        if FormInstances.ContainsKey(FormClass) then
        begin
          PG_ABAS.ActivePage := nil;
          FormInstances[FormClass].Free;
          FormInstances.Remove(FormClass);
        end;
        TabSheet.Free;
      end;
    end;
  end;
end;

procedure TViewPrincipal.PnlBtnSairClick(Sender: TObject);
begin
  inherited;
  FecharSistema;
end;

procedure TViewPrincipal.PG_AbasDrawTab(Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  TabCaption: string;
  CloseButtonRect: TRect;
  CloseButtonColor: TColor;
  TextColor: TColor;
begin
  TabCaption := PG_Abas.Pages[TabIndex].Caption;
  Control.Canvas.Brush.Color := clWhite; // Fundo branco para todas as abas
  Control.Canvas.FillRect(Rect);
  // Definir cor do texto baseado no estado da aba
  if Active then
    TextColor := clGreen // Verde para aba ativa
  else
    TextColor := clBlack; // Preto para aba inativa
  Control.Canvas.Font.Color := TextColor;
  Control.Canvas.TextOut(Rect.Left + 5, Rect.Top + (Rect.Height - Control.Canvas.TextHeight(TabCaption)) div 2, TabCaption);
  // Botão de fechar para abas não-home
  if PG_Abas.Pages[TabIndex] <> TabHome then
  begin
    CloseButtonRect := Rect;
    CloseButtonRect.Left := Rect.Right - 35;
    CloseButtonRect.Right := Rect.Right - 5;
    CloseButtonRect.Top := Rect.Top + (Rect.Height - Control.Canvas.TextHeight('✕')) div 2;
    CloseButtonRect.Bottom := CloseButtonRect.Top + Control.Canvas.TextHeight('✕');
    if FHoveringCloseButton and PtInRect(CloseButtonRect, FMousePos) then
      CloseButtonColor := clRed
    else
      CloseButtonColor := clBlack;
    Control.Canvas.Font.Color := CloseButtonColor;
    Control.Canvas.Font.Size := 12;
    Control.Canvas.Font.Style := [fsBold];
    Control.Canvas.TextOut(CloseButtonRect.Left, CloseButtonRect.Top, '✕');
    if Active then
      FCloseButtonRect := CloseButtonRect;
  end;
  PG_AbasChange(Self);
end;

procedure TViewPrincipal.PG_AbasMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
var
  TabIndex, PreviousIndex: Integer;
  CloseBtnRect: TRect;
  FormToClose: TCustomForm;
  TabSheet: TMyTabSheet;
  FormClass: TClass;
begin
  inherited;
  TabIndex := PG_Abas.IndexOfTabAt(X, Y);
  if TabIndex > -1 then
  begin
    CloseBtnRect := PG_Abas.TabRect(TabIndex);
    CloseBtnRect.Left := CloseBtnRect.Right - 35;
    CloseBtnRect.Right := CloseBtnRect.Right - 5;
    CloseBtnRect.Top := (CloseBtnRect.Top + CloseBtnRect.Bottom - Canvas.TextHeight('✕')) div 2;
    CloseBtnRect.Bottom := CloseBtnRect.Top + Canvas.TextHeight('✕');

    // Verifica se a aba está ativa e se o clique foi no "X"
    if (PG_Abas.ActivePage = PG_Abas.Pages[TabIndex]) and PtInRect(CloseBtnRect, Point(X, Y)) and (PG_Abas.Pages[TabIndex] <> TabHome) then
    begin
      FormToClose := TCustomForm(PG_Abas.Pages[TabIndex].Tag);
      TabSheet := TMyTabSheet(PG_Abas.Pages[TabIndex]);

      if Assigned(FormToClose) then
        FormToClose.Free;

      if (TabSheet <> nil) and (TabIndex > 0) then
      begin
        FormClass := TabSheet.Form.ClassType;
        if FormInstances.ContainsKey(FormClass) then
        begin
          FormInstances[FormClass].Free;
          FormInstances.Remove(FormClass);
        end;
        PreviousIndex := TabIndex - 1;
        if PreviousIndex < 0 then
          PreviousIndex := 0;
        PG_Abas.ActivePage := PG_Abas.Pages[PreviousIndex];
        TabSheet.Free;
      end;
    end;
  end;
  PG_AbasChange(Self);
end;

procedure TViewPrincipal.PG_AbasMouseMove(Sender: TObject; Shift: TShiftState;X, Y: Integer);
begin
  inherited;

  if PG_Abas.ActivePageIndex = 0 then
     Exit;

  FMousePos := Point(X, Y);
  if PtInRect(FCloseButtonRect, FMousePos) then
  begin
    if not FHoveringCloseButton then
    begin
      FHoveringCloseButton := True;
      PG_Abas.Repaint;
    end;
  end
  else
  begin
    if FHoveringCloseButton then
    begin
      FHoveringCloseButton := False;
      PG_Abas.Repaint;
    end;
  end;
end;


{$ENDREGION}

{$REGION 'Ultils'}
function TViewPrincipal.GetVersaoExe(Prog: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    try
      GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
      VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
      with VerValue^ do
      begin
        V1 := dwFileVersionMS shr 16;
        V2 := dwFileVersionMS and $FFFF;
        V3 := dwFileVersionLS shr 16;
        V4 := dwFileVersionLS and $FFFF;
      end;
      Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
    finally
      FreeMem(VerInfo, VerInfoSize);
    end;
  except
    Result := '1.0.0.0';
  end;
end;
{$ENDREGION}

end.

