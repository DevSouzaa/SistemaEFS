unit Sistema;

interface

uses
  VCL.Forms,
  Usuario,
  Empresa,
  Criptografia,
  System.SysUtils,
  System.Classes,
  controller.empresa;

type
  TSistema = class(TComponent)
  private
    FEmpresa: TEmpresa;
    FUsuario: TUsuario;
    FCriptografia: TCriptografia;

    class var FInstance: TSistema;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    class function New: TSistema;
    property Empresa: TEmpresa read FEmpresa write FEmpresa;
    property Usuario: TUsuario read FUsuario write FUsuario;
    property Criptografia: TCriptografia read FCriptografia write FCriptografia;
  end;

implementation

{ TSistema }

constructor TSistema.Create(AOwner: TComponent);
var
  FControllerEmpresa: TControllerEmpresa;
begin
  inherited;

  FControllerEmpresa := TControllerEmpresa.Create;

  FEmpresa      := TEmpresa.Create;
  FEmpresa      := FControllerEmpresa.ObterFilialPadrao;
  FUsuario      := TUsuario.Create;
  FCriptografia := TCriptografia.Create;
end;

destructor TSistema.Destroy;
begin
  FEmpresa.Free;
  FUsuario.Free;
  FCriptografia.Free;
  inherited;
end;

class function TSistema.New: TSistema;
begin
  if not Assigned(FInstance) then
    FInstance := TSistema.Create(Application);
  Result := FInstance;
end;

end.

