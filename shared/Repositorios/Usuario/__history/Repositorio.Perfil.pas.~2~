unit Repositorio.Perfil;

interface

uses
  Perfil, Generics.Collections, FireDAC.Comp.Client, RepositorioBase, System.SysUtils;

type
  TRepositorioPerfil = class(TRepositorioBase)
  public
    function ObterTodos: TList<TPerfil>;
    function ObterPorId(Id: Integer): TPerfil;
    function Inserir(Perfil: TPerfil): Boolean;
    function Atualizar(Perfil: TPerfil): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

{ TRepositorioPerfil }

function TRepositorioPerfil.ObterTodos: TList<TPerfil>;
var
  Query: TFDQuery;
  Perfis: TList<TPerfil>;
  Perfil: TPerfil;
begin
  Perfis := TList<TPerfil>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM PERFIS';
    Query.Open;

    while not Query.Eof do
    begin
      Perfil := TPerfil.Create;
      Perfil.Id := Query.FieldByName('IDPERFIL').AsInteger;
      Perfil.Nome := Query.FieldByName('NOME').AsString;
      Perfis.Add(Perfil);
      Query.Next;
    end;
    Result := Perfis;
  finally
    Query.Free;
  end;
end;

function TRepositorioPerfil.ObterPorId(Id: Integer): TPerfil;
var
  Query: TFDQuery;
  Perfil: TPerfil;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM PERFIS WHERE IDPERFIL = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.Open;

    if not Query.Eof then
    begin
      Perfil := TPerfil.Create;
      Perfil.Id := Query.FieldByName('IDPERFIL').AsInteger;
      Perfil.Nome := Query.FieldByName('NOME').AsString;
      Result := Perfil;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioPerfil.Inserir(Perfil: TPerfil): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO PERFIS (NOME) VALUES (:NOME)';
    Query.ParamByName('NOME').AsString := Perfil.Nome;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioPerfil.Atualizar(Perfil: TPerfil): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE PERFIS SET NOME = :NOME WHERE IDPERFIL = :ID';
    Query.ParamByName('ID').AsInteger := Perfil.Id;
    Query.ParamByName('NOME').AsString := Perfil.Nome;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioPerfil.Deletar(Id: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM PERFIS WHERE IDPERFIL = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

end.

