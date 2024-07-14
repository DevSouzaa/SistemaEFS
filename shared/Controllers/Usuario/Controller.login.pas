unit Controller.login;

interface

uses
  Service.Usuario,
  Usuario,
  Generics.Collections,
  Empresa,
  Controller.empresa,

  Sistema,

  UFuncoes,
  SysUtils,
  vcl.Forms;

type
  TLoginController = class
  private
    FServiceUsuario: TServiceUsuario;
    FControllerEmpresa: TControllerEmpresa;
    FUsuario: TUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    function Autenticar(const Login, Senha: string): Boolean;
    function CarregarEmpresas: TList<TEmpresa>;
    function CarregarEmpresaPorId(Id: Integer): TEmpresa; // M�todo para carregar empresa por ID
    property Usuario: TUsuario read FUsuario;
  end;

implementation

{ TLoginController }

constructor TLoginController.Create;
begin
  FServiceUsuario := TServiceUsuario.Create;
  FControllerEmpresa := TControllerEmpresa.Create;
end;

destructor TLoginController.Destroy;
begin
  FServiceUsuario.Free;
  FControllerEmpresa.Free;
  inherited;
end;

function TLoginController.Autenticar(const Login, Senha: string): Boolean;
var
  Usuario: TUsuario;
begin
  Result := False;
  Usuario := FServiceUsuario.Autenticar(Login, Senha);
  if Assigned(Usuario) then
  begin
    Result := TSistema.New.Criptografia.CompareHash(Senha, Usuario.Senha);
    if Result then
    begin
      TSistema.New.Usuario := Usuario // Atualiza o usu�rio no sistema somente se a senha estiver correta
    end
    else
      fnc_CriarMensagem('Erro de Autentica��o', 'Senha Incorreta', 'A senha informada est� incorreta.', ExtractFilePath(Application.ExeName) + '\Icones\Atencao.png', 'OK');
  end
  else
    fnc_CriarMensagem('Erro de Autentica��o', 'Usu�rio N�o Encontrado', 'Usu�rio n�o encontrado. Verifique o login informado.', ExtractFilePath(Application.ExeName) + '\Icones\Atencao.png', 'OK');
end;

function TLoginController.CarregarEmpresas: TList<TEmpresa>;
begin
  Result := FControllerEmpresa.ObterTodas;
end;

function TLoginController.CarregarEmpresaPorId(Id: Integer): TEmpresa;
begin
  Result := FControllerEmpresa.ObterPorId(Id);
end;

end.

