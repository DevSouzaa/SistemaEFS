unit Sistema.model;

interface
uses

  VCL.Forms,

  Usuario.model,
  Empresa.model,

  System.SysUtils,
  System.Classes;
type
  TSistema = class(TComponent)
  private
    FEmpresa: TEmpresa;
    FUsuario: TUsuario;
    class var FInstance: TSistema;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; Override;
    class function New: TSistema;

    property Empresa: TEmpresa read FEmpresa write FEmpresa;
    property Usuario: TUsuario read FUsuario write FUsuario;

  end;

implementation

{ TSistema }


{ TSistema }

constructor TSistema.Create(AOwner: TComponent);
begin
  inherited;
  FEmpresa := TEmpresa.create;
  FUsuario := TUsuario.Create;
end;

destructor TSistema.Destroy;
begin
  inherited;
  FreeAndNil(FEmpresa);
  FreeAndNil(FUsuario);
end;

class function TSistema.New: TSistema;
begin
  if FInstance = nil then
    FInstance := TSistema.Create(Application)
  else
    Result := FInstance;

end;

end.
