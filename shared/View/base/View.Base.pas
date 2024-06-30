unit View.Base;

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
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,

  Provider.Constantes,

  Enums,

  Sistema.model;

type
  TViewBase = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private

  published
    FSistema : TSistema;

    Procedure SetPropertys;
    procedure CorReceberFocoEnter(Sender: TObject);
    procedure CorPerderFocoExit(Sender: TObject);

  public
    procedure ArredondarBorda(Control: TWinControl);

  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}

procedure TViewBase.ArredondarBorda(Control: TWinControl) ;
var       //Arredondar borda
   R: TRect;
   Rgn: HRGN;
begin
    with Control do  begin
        R := ClientRect;
        rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10) ;
        Perform(EM_GETRECT, 0, lParam(@r)) ;
        InflateRect(r, - 4, - 4) ;
        Perform(EM_SETRECTNP, 0, lParam(@r)) ;
        SetWindowRgn(Handle, rgn, True) ;
        Invalidate;
    end;
end;

procedure TViewBase.CorPerderFocoExit(Sender: TObject);
begin     //Ao perder foco do componente
  //TDBEdit
  if (Sender is TDBEdit) then
     (Sender as TDBEdit).Color := _CorPerderFoco;

    //TEdit
  if (Sender is TEdit) then
     (Sender as TEdit).Color := _CorPerderFoco;

end;

procedure TViewBase.CorReceberFocoEnter(Sender: TObject);
begin   //Ao focar no componente

  //TDBEdit
  if (Sender is TDBEdit) then
     (Sender as TDBEdit).Color := _CorReceberFoco;

    //TEdit
  if (Sender is TEdit) then
     (Sender as TEdit).Color   := _CorReceberFoco;

end;

procedure TViewBase.FormCreate(Sender: TObject);
begin     //Create
  FSistema := TSistema.New;

  SetPropertys;
end;

procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin     //OnKeyDown
  case key of

  VK_ESCAPE:
    Begin
      self.Close;
    End;

  end;
end;

procedure TViewBase.FormKeyPress(Sender: TObject; var Key: Char);
begin     //OnKey Press
  if key = #13 then
  Begin
    key := #0;
    perform(WM_NEXTDLGCTL,0,0);
  End;

end;

procedure TViewBase.SetPropertys;
Var
  I : Integer;
begin     //Setar propriedades Enter e Exit do componente
  for I := 0 to self.ComponentCount -1 do
  begin
       //TDBEdit
       if self.Components[I] is TDBEdit then
    begin
      TDBEdit(self.Components[I]).OnEnter := CorReceberFocoEnter;
      TDBEdit(self.Components[I]).OnExit := CorPerderFocoExit;
    end;

      //TEdit
      if self.Components[I] is TEdit then
    begin
      TEdit(self.Components[I]).OnEnter := CorReceberFocoEnter;
      TEdit(self.Components[I]).OnExit := CorPerderFocoExit;
    end;
  end;

end;

end.