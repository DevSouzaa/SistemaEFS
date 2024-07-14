unit Dm.Atualizador;

interface

uses
  System.SysUtils, System.Classes, Provider.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TDmAtualizador = class(TProviderConexao)
    FDScript_DDLs: TFDScript;
    FDScript_Atualizador: TFDScript;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmAtualizador: TDmAtualizador;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmAtualizador.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
//{$IFDEF RELEASE}

  // Atualiza o banco de dados principal
  for i := 0 to FDScript_DDLs.SQLScripts.Count - 1 do
    FDScript_Atualizador.ExecuteScript(FDScript_DDLs.SQLScripts.Items[i].SQL);
//{$ENDIF}
end;

end.
