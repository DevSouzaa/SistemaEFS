unit ProvidersFunctions;

interface

uses
  Vcl.Forms,
  System.SysUtils,
  view.telaFundo;


var
  CODIGO_USUARIO: integer;
  NOME_USUARIO: string;
  NOME_CAIXA: string;
  NOME_PDV: string;
//  FAST_FILE_NFE, FAST_FILE_NFCE: string;
  NUM_CAIXA: integer;
  NUMERO_TERMINAL: string;

{procedures}
procedure CriaForm(const AClasse: TCustomFormClass;  out Form);

implementation

// ======================= implementação ===============================


procedure CriaForm(const AClasse: TCustomFormClass; out Form);
var
 MeuForm: TCustomForm absolute Form;
begin
  if not Assigned(MeuForm) then
  begin
    Application.CreateForm(AClasse, Form);
    try
//      ViewTelaFundo.Show;
      MeuForm.ShowModal;
    finally
//      ViewTelaFundo.Hide;
      FreeAndNil(MeuForm);
    end;
  end;
end;

end.
