unit Controller.usuario;

interface

uses
  Service.Usuario, Usuario, Generics.Collections, SysUtils, Perfil, Acao, Acesso;

type
  TControllerUsuario = class
  private
    FServiceUsuario: TServiceUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    function Autenticar(const Login, Senha: string): Boolean;
    procedure SalvarUsuario(Usuario: TUsuario);
    function CarregarUsuarios: TList<TUsuario>;
    function CarregarUsuarioPorId(Id: Integer): TUsuario;
    function CarregarUsuariosPorNome(Nome: String): TList<TUsuario>;
    function CarregarPerfis: TList<TPerfil>;
    function CarregarAcoes: TList<TAcao>;
    function CarregarAcessosPorPerfil(PerfilId: Integer): TList<TAcesso>;
    procedure SalvarAcesso(Acesso: TAcesso);
    procedure DeletarUsuario(Id: Integer);
  end;

implementation

{ TControllerUsuario }

constructor TControllerUsuario.Create;
begin
  FServiceUsuario := TServiceUsuario.Create;
end;

destructor TControllerUsuario.Destroy;
begin
  FServiceUsuario.Free;
  inherited;
end;

function TControllerUsuario.Autenticar(const Login, Senha: string): Boolean;
var
  Usuario: TUsuario;
begin
  Result := False;
  Usuario := FServiceUsuario.Autenticar(Login, Senha);
  if Assigned(Usuario) then
  begin
    Result := True;
  end;
end;

procedure TControllerUsuario.SalvarUsuario(Usuario: TUsuario);
begin
  if not FServiceUsuario.SalvarUsuario(Usuario) then
    raise Exception.Create('Erro ao salvar usuário');
end;

function TControllerUsuario.CarregarUsuarios: TList<TUsuario>;
begin
  Result := FServiceUsuario.CarregarUsuarios;
end;

function TControllerUsuario.CarregarUsuariosPorNome(Nome: String): TList<TUsuario>;
begin
  Result := FServiceUsuario.CarregarUsuariosPorNome(Nome);
end;

function TControllerUsuario.CarregarUsuarioPorId(Id: Integer): TUsuario;
begin
  Result := FServiceUsuario.CarregarUsuarioPorId(Id);
end;

function TControllerUsuario.CarregarPerfis: TList<TPerfil>;
begin
  Result := FServiceUsuario.CarregarPerfis;
end;

function TControllerUsuario.CarregarAcoes: TList<TAcao>;
begin
  Result := FServiceUsuario.CarregarAcoes;
end;

function TControllerUsuario.CarregarAcessosPorPerfil(PerfilId: Integer): TList<TAcesso>;
begin
  Result := FServiceUsuario.CarregarAcessosPorPerfil(PerfilId);
end;

procedure TControllerUsuario.SalvarAcesso(Acesso: TAcesso);
begin
  if not FServiceUsuario.SalvarAcesso(Acesso) then
    raise Exception.Create('Erro ao salvar acesso');
end;

procedure TControllerUsuario.DeletarUsuario(Id: Integer);
begin
  if not FServiceUsuario.DeletarUsuario(Id) then
    raise Exception.Create('Erro ao deletar usuário');
end;

end.

