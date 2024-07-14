unit Repositorio.usuario;

interface

uses
  Usuario, Generics.Collections, FireDAC.Comp.Client, RepositorioBase, System.SysUtils;

type
  TRepositorioUsuario = class(TRepositorioBase)
  public
    function ObterPorId(Id: Integer): TUsuario;
    function ObterPorLogin(Login: string): TUsuario;
    function ObterPorNome(Nome: string): TList<TUsuario>;
    function ObterTodos: TList<TUsuario>;
    function Inserir(Usuario: TUsuario): Boolean;
    function Atualizar(Usuario: TUsuario): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

{ TUsuarioRepository }

function TRepositorioUsuario.ObterPorId(Id: Integer): TUsuario;
var
  Query: TFDQuery;
  Usuario: TUsuario;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM USUARIOS WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.Open;

    if not Query.Eof then
    begin
      Usuario := TUsuario.Create;
      Usuario.Id := Query.FieldByName('ID').AsInteger;
      Usuario.Nome := Query.FieldByName('NOME').AsString;
      Usuario.Login := Query.FieldByName('LOGIN').AsString;
      Usuario.Senha := Query.FieldByName('SENHA').AsString;
      Usuario.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Result := Usuario;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioUsuario.ObterPorLogin(Login: string): TUsuario;
var
  Query: TFDQuery;
  Usuario: TUsuario;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM USUARIOS WHERE LOGIN = :LOGIN';
    Query.ParamByName('LOGIN').AsString := Login;
    Query.Open;

    if not Query.Eof then
    begin
      Usuario := TUsuario.Create;
      Usuario.Id := Query.FieldByName('ID').AsInteger;
      Usuario.Nome := Query.FieldByName('NOME').AsString;
      Usuario.Login := Query.FieldByName('LOGIN').AsString;
      Usuario.Senha := Query.FieldByName('SENHA').AsString;
      Usuario.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Result := Usuario;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioUsuario.ObterPorNome(Nome: string): TList<TUsuario>;
var
  Query: TFDQuery;
  Usuarios: TList<TUsuario>;
  Usuario: TUsuario;
begin
  Usuarios := TList<TUsuario>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM USUARIOS WHERE NOME LIKE :NOME ORDER BY ID';
    Query.ParamByName('NOME').AsString := '%' + Nome + '%';
    Query.Open;

    while not Query.Eof do
    begin
      Usuario := TUsuario.Create;
      Usuario.Id := Query.FieldByName('ID').AsInteger;
      Usuario.Nome := Query.FieldByName('NOME').AsString;
      Usuario.Login := Query.FieldByName('LOGIN').AsString;
      Usuario.Senha := Query.FieldByName('SENHA').AsString;
      Usuario.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Usuarios.Add(Usuario);
      Query.Next;
    end;
    Result := Usuarios;
  finally
    Query.Free;
  end;
end;

function TRepositorioUsuario.ObterTodos: TList<TUsuario>;
var
  Query: TFDQuery;
  Usuarios: TList<TUsuario>;
  Usuario: TUsuario;
begin
  Usuarios := TList<TUsuario>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM USUARIOS';
    Query.Open;

    while not Query.Eof do
    begin
      Usuario := TUsuario.Create;
      Usuario.Id := Query.FieldByName('ID').AsInteger;
      Usuario.Nome := Query.FieldByName('NOME').AsString;
      Usuario.Login := Query.FieldByName('LOGIN').AsString;
      Usuario.Senha := Query.FieldByName('SENHA').AsString;
      Usuario.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Usuarios.Add(Usuario);
      Query.Next;
    end;
    Result := Usuarios;
  finally
    Query.Free;
  end;
end;

function TRepositorioUsuario.Inserir(Usuario: TUsuario): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO USUARIOS (NOME, LOGIN, SENHA, IDPERFIL) VALUES (:NOME, :LOGIN, :SENHA, :IDPERFIL)';
    Query.ParamByName('NOME').AsString := Usuario.Nome;
    Query.ParamByName('LOGIN').AsString := Usuario.Login;
    Query.ParamByName('SENHA').AsString := Usuario.Senha;
    Query.ParamByName('IDPERFIL').AsInteger := Usuario.PerfilId;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioUsuario.Atualizar(Usuario: TUsuario): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE USUARIOS SET NOME = :NOME, LOGIN = :LOGIN, SENHA = :SENHA, IDPERFIL = :IDPERFIL WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := Usuario.Id;
    Query.ParamByName('NOME').AsString := Usuario.Nome;
    Query.ParamByName('LOGIN').AsString := Usuario.Login;
    Query.ParamByName('SENHA').AsString := Usuario.Senha;
    Query.ParamByName('IDPERFIL').AsInteger := Usuario.PerfilId;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioUsuario.Deletar(Id: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM USUARIOS WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

end.
