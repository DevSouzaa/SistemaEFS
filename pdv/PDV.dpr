program PDV;

uses
  Vcl.Forms,
  View.Base in '..\shared\view\base\View.Base.pas' {ViewBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewBase, ViewBase);
  Application.Run;
end.
