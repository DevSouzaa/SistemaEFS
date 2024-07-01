unit UMenssagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TViewMenssagem = class(TViewBase)
    Panel3: TPanel;
    Panel1: TPanel;
    LbTitulo: TLabel;
    LbMsg: TLabel;
    ImgMsg: TImage;
    Panel4: TPanel;
    PnNao: TPanel;
    BtnNao: TSpeedButton;
    PnSim: TPanel;
    BtnSim: TSpeedButton;
    Panel2: TPanel;
    LbTituloJanela: TLabel;
    procedure BtnSimClick(Sender: TObject);
    procedure BtnNaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    bRespostaMSG: Boolean;

    sTituloJanela, sTituloMsg, sMSG, sCaminhoIcone, sTipo: String;
  end;

var
  ViewMenssagem: TViewMenssagem;

implementation

{$R *.dfm}
procedure TViewMenssagem.BtnNaoClick(Sender: TObject);
begin
  bRespostaMSG := false;
  Close;
end;

procedure TViewMenssagem.BtnSimClick(Sender: TObject);
begin
  bRespostaMSG := true;
  Close;
end;

procedure TViewMenssagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TViewMenssagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Teclas precionadas(Atalhos)
  if Key = vk_return then
    BtnSimClick(self)
  else if Key = vk_escape then
    BtnNaoClick(self);

end;

procedure TViewMenssagem.FormShow(Sender: TObject);
begin
  // Criação de mensagem com tela personalizada.
  bRespostaMSG := false;

  LbTituloJanela.caption := sTituloJanela;
  LbTitulo.caption := sTituloMsg;
  LbMsg.caption := sMSG;
  ImgMsg.Picture.LoadFromFile(sCaminhoIcone);

  if sTipo = 'OK' then
  begin
    PnNao.Visible := false;
    BtnSim.caption := 'OK (ENTER)';
  end;

end;


end.
