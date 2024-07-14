unit Service.usuario;

interface

uses
  Usuario, Acesso, Acao, Perfil, SysUtils, Generics.Collections, Enums, Repositorio.Usuario, Repositorio.Perfil, Repositorio.Acao, Repositorio.Acesso;

type
  TServiceUsuario = class
  private
    FRepositorioUsuario: TRepositorioUsuario;
    FRepositorioPerfil: TRepositorioPerfil;
    FRepositorioAcao: TRepositorioAcao;
    FRepositorioAcesso: TRepositorioAcesso;
  public
    constructor Create;
    function Autenticar(Login, Senha: string): TUsuario;
    function SalvarUsuario(Usuario: TUsuario): Boolean;
    function CarregarUsuarios: TList<TUsuario>;
    function CarregarUsuarioPorId(Id: Integer): TUsuario;
    function CarregarUsuariosPorNome(Nome: String): TList<TUsuario>;
    function CarregarPerfis: TList<TPerfil>;
    function CarregarAcoes: TList<TAcao>;
    function CarregarAcessosPorPerfil(PerfilId: Integer): TList<TAcesso>;
    function SalvarAcesso(Acesso: TAcesso): Boolean;
    function DeletarUsuario(Id: Integer): Boolean;
  end;

implementation

{ TServiceUsuario }

constructor TServiceUsuario.Create;
begin
  FRepositorioUsuario := TRepositorioUsuario.Create;
  FRepositorioPerfil := TRepositorioPerfil.Create;
  FRepositorioAcao := TRepositorioAcao.Create;
  FRepositorioAcesso := TRepositorioAcesso.Create;
end;

function TServiceUsuario.Autenticar(Login, Senha: string): TUsuario;
begin
  Result := FRepositorioUsuario.ObterPorLogin(Login);
  if not Assigned(Result) then    //  and (Result.Senha <> Senha)
//    Result := nil;
end;

function TServiceUsuario.SalvarUsuario(Usuario: TUsuario): Boolean;
begin
  if Usuario.Id = 0 then
    Result := FRepositorioUsuario.Inserir(Usuario)
  else
    Result := FRepositorioUsuario.Atualizar(Usuario);
end;

function TServiceUsuario.CarregarUsuarios: TList<TUsuario>;
begin
  Result := FRepositorioUsuario.ObterTodos;
end;

function TServiceUsuario.CarregarUsuariosPorNome(Nome: String): TList<TUsuario>;
begin
  Result := FRepositorioUsuario.ObterPorNome(Nome);
end;

function TServiceUsuario.CarregarUsuarioPorId(Id: Integer): TUsuario;
begin
  Result := FRepositorioUsuario.ObterPorId(Id);
end;

function TServiceUsuario.CarregarPerfis: TList<TPerfil>;
begin
  Result := FRepositorioPerfil.ObterTodos;
end;

function TServiceUsuario.CarregarAcoes: TList<TAcao>;
begin
  Result := FRepositorioAcao.ObterTodas;
end;

function TServiceUsuario.CarregarAcessosPorPerfil(PerfilId: Integer): TList<TAcesso>;
begin
  Result := FRepositorioAcesso.ObterPorPerfil(PerfilId);
end;

function TServiceUsuario.SalvarAcesso(Acesso: TAcesso): Boolean;
begin
  if Acesso.Id = 0 then
    Result := FRepositorioAcesso.Inserir(Acesso)
  else
    Result := FRepositorioAcesso.Atualizar(Acesso);
end;

function TServiceUsuario.DeletarUsuario(Id: Integer): Boolean;
begin
  Result := FRepositorioUsuario.Deletar(Id);
end;

end.

