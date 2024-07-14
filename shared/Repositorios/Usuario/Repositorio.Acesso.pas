unit Repositorio.Acesso;

interface

uses
  Acesso, Generics.Collections, FireDAC.Comp.Client, RepositorioBase, System.SysUtils;

type
  TRepositorioAcesso = class(TRepositorioBase)
  public
    function ObterPorPerfil(PerfilId: Integer): TList<TAcesso>;
    function Inserir(Acesso: TAcesso): Boolean;
    function Atualizar(Acesso: TAcesso): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

{ TRepositorioAcesso }

function TRepositorioAcesso.ObterPorPerfil(PerfilId: Integer): TList<TAcesso>;
var
  Query: TFDQuery;
  Acessos: TList<TAcesso>;
  Acesso: TAcesso;
begin
  Acessos := TList<TAcesso>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM ACESSOS WHERE IDPERFIL = :IDPERFIL';
    Query.ParamByName('IDPERFIL').AsInteger := PerfilId;
    Query.Open;

    while not Query.Eof do
    begin
      Acesso := TAcesso.Create;
      Acesso.Id := Query.FieldByName('IDACESSOS').AsInteger;
      Acesso.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Acesso.AcaoId := Query.FieldByName('IDACAO').AsInteger;
      Acesso.Inserir := Query.FieldByName('INSERIR').AsBoolean;
      Acesso.Alterar := Query.FieldByName('ALTERAR').AsBoolean;
      Acesso.Excluir := Query.FieldByName('EXCLUIR').AsBoolean;
      Acesso.Listar := Query.FieldByName('LISTAR').AsBoolean;
      Acessos.Add(Acesso);
      Query.Next;
    end;
    Result := Acessos;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcesso.Inserir(Acesso: TAcesso): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO ACESSOS (IDPERFIL, IDACAO, INSERIR, ALTERAR, EXCLUIR, LISTAR) VALUES (:IDPERFIL, :IDACAO, :INSERIR, :ALTERAR, :EXCLUIR, :LISTAR)';
    Query.ParamByName('IDPERFIL').AsInteger := Acesso.PerfilId;
    Query.ParamByName('IDACAO').AsInteger := Acesso.AcaoId;
    Query.ParamByName('INSERIR').AsBoolean := Acesso.Inserir;
    Query.ParamByName('ALTERAR').AsBoolean := Acesso.Alterar;
    Query.ParamByName('EXCLUIR').AsBoolean := Acesso.Excluir;
    Query.ParamByName('LISTAR').AsBoolean := Acesso.Listar;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcesso.Atualizar(Acesso: TAcesso): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE ACESSOS SET IDPERFIL = :IDPERFIL, IDACAO = :IDACAO, INSERIR = :INSERIR, ALTERAR = :ALTERAR, EXCLUIR = :EXCLUIR, LISTAR = :LISTAR WHERE IDACESSOS = :ID';
    Query.ParamByName('ID').AsInteger := Acesso.Id;
    Query.ParamByName('IDPERFIL').AsInteger := Acesso.PerfilId;
    Query.ParamByName('IDACAO').AsInteger := Acesso.AcaoId;
    Query.ParamByName('INSERIR').AsBoolean := Acesso.Inserir;
    Query.ParamByName('ALTERAR').AsBoolean := Acesso.Alterar;
    Query.ParamByName('EXCLUIR').AsBoolean := Acesso.Excluir;
    Query.ParamByName('LISTAR').AsBoolean := Acesso.Listar;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcesso.Deletar(Id: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM ACESSOS WHERE IDACESSOS = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

end.
