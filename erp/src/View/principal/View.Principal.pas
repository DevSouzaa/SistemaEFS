unit View.Principal;

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
  View.Base,
  Vcl.ExtCtrls,
   Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

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
    LlbNomeEmpresa: TLabel;
    PnlInformacoesUsu: TPanel;
    PnlLineTopo: TPanel;
    PnlLineMenu: TPanel;
    PnlBotoesMenu: TPanel;
    PnlLogoUser: TPanel;
    ImgUserEscura: TImage;
    ImgUserClara: TImage;
    ImgLogoEmpresa: TImage;
    PnlNomePerfilUser: TPanel;
    LblPerfilUser: TLabel;
    Label1: TLabel;
    PnlMinimizar: TPanel;
    BtnMinimizar: TSpeedButton;
    PnlBtn: TPanel;
    PnlEspacoMenu: TPanel;
    ShapeBtn: TShape;
    Btn: TSpeedButton;
    procedure ImgUserEscuraMouseEnter(Sender: TObject);
    procedure ImgUserClaraMouseLeave(Sender: TObject);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure BtnMinimizarMouseEnter(Sender: TObject);
    procedure BtnMinimizarMouseLeave(Sender: TObject);
    procedure BtnMouseEnter(Sender: TObject);
  private

  public

  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.BtnMinimizarClick(Sender: TObject);
begin          //OnClick
  inherited;
  Application.Minimize;
end;

procedure TViewPrincipal.BtnMinimizarMouseEnter(Sender: TObject);
begin          //ONuse Enter
  inherited;
  BtnMinimizar.Font.Size := BtnMinimizar.Font.Size + 3
end;

procedure TViewPrincipal.BtnMinimizarMouseLeave(Sender: TObject);
begin          //Onuse Leave
  inherited;
  BtnMinimizar.Font.Size := BtnMinimizar.Font.Size -3
end;

procedure TViewPrincipal.BtnMouseEnter(Sender: TObject);
begin //onMouse enter
  inherited;

end;

procedure TViewPrincipal.ImgUserClaraMouseLeave(Sender: TObject);
begin          //Onuse leave
  inherited;
  ImgUserEscura.Visible   := true;
  ImgUserClara.Visible    := false;
end;

procedure TViewPrincipal.ImgUserEscuraMouseEnter(Sender: TObject);
begin          //OnMouse Enter
  inherited;
  ImgUserEscura.Visible := false;
  ImgUserClara.Visible  := True;
end;

end.
