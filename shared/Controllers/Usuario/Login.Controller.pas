unit Login.Controller;

interface

uses
  UsuarioService, cryptography.model, Usuario.model, Generics.Collections, Empresa.model;

type
  TLoginController = class
  private
    FUsuarioService: TUsuarioService;
    FCryptography:   Tcryptography;
    FUsuario:        TUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    function Autenticar(const Login, Senha: string): Boolean;

    function CarregarEmpresas: TList<TEmpresa>;
    function CarregarEmpresaPorId(Id: Integer): TEmpresa; // Método para carregar empresa por ID
    property Usuario: TUsuario read FUsuario;
  end;

implementation

{ TLoginController }

function TLoginController.CarregarEmpresaPorId(Id: Integer): TEmpresa;
var
  Empresas: TList<TEmpresa>;
  Empresa: TEmpresa;
begin
  Result := nil;
  Empresas := FUsuarioService.CarregarEmpresas;
  try
    for Empresa in Empresas do
    begin
      if Empresa.Id = Id then
      begin
        Result := Empresa;
        Break;
      end;
    end;
  finally
    Empresas.Free;
  end;
end;

function TLoginController.CarregarEmpresas: TList<TEmpresa>;
begin
  Result := FUsuarioService.CarregarEmpresas;
end;

constructor TLoginController.Create;
begin
  FUsuarioService := TUsuarioService.Create;
  FCryptography := Tcryptography.Create;
end;

destructor TLoginController.Destroy;
begin
  FUsuarioService.Free;
  FCryptography.Free;
  inherited;
end;

function TLoginController.Autenticar(const Login, Senha: string): Boolean;
var
  Usuario: TUsuario;
begin
  Result := False;
  Usuario := FUsuarioService.Autenticar(Login, Senha);
  if Assigned(Usuario) then
  begin
    Result := FCryptography.CampareHash(Senha, Usuario.Senha);
    Usuario.Free;
  end;
end;

end.

