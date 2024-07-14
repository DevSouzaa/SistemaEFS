unit Repositorio.Grupo;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.Grupo, FireDAC.Comp.Client;

type
  TRepositorioGrupo = class(TRepositorioBase)
  public
    function ObterTodos: TList<TGrupo>;
    function ObterPorId(AID: Integer): TGrupo;
    function ObterPorNome(ANome: string): TList<TGrupo>;
    procedure Inserir(Grupo: TGrupo);
    procedure Atualizar(Grupo: TGrupo);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioGrupo.ObterTodos: TList<TGrupo>;
var
  Query: TFDQuery;
  Grupos: TList<TGrupo>;
  Grupo: TGrupo;
begin
  Grupos := TList<TGrupo>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM Grupo';
    Query.Open;
    while not Query.Eof do
    begin
      Grupo := TGrupo.Create;
      Grupo.ID := Query.FieldByName('ID').AsInteger;
      Grupo.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      Grupos.Add(Grupo);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Grupos;
end;

function TRepositorioGrupo.ObterPorId(AID: Integer): TGrupo;
var
  Query: TFDQuery;
  Grupo: TGrupo;
begin
  Grupo := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM Grupo WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.Open;
    if not Query.Eof then
    begin
      Grupo := TGrupo.Create;
      Grupo.ID := Query.FieldByName('ID').AsInteger;
      Grupo.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := Grupo;
end;

function TRepositorioGrupo.ObterPorNome(ANome: string): TList<TGrupo>;
var
  Query: TFDQuery;
  Grupos: TList<TGrupo>;
  Grupo: TGrupo;
begin
  Grupos := TList<TGrupo>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM Grupo WHERE DESCRICAO LIKE :DESCRICAO';
    Query.ParamByName('DESCRICAO').AsString := '%' + ANome + '%';
    Query.Open;
    while not Query.Eof do
    begin
      Grupo := TGrupo.Create;
      Grupo.ID := Query.FieldByName('ID').AsInteger;
      Grupo.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      Grupos.Add(Grupo);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Grupos;
end;

procedure TRepositorioGrupo.Inserir(Grupo: TGrupo);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO Grupo (DESCRICAO) VALUES (:DESCRICAO)';
    Query.ParamByName('DESCRICAO').AsString := Grupo.DESCRICAO;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioGrupo.Atualizar(Grupo: TGrupo);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE Grupo SET DESCRICAO = :DESCRICAO WHERE ID = :ID';
    Query.ParamByName('DESCRICAO').AsString := Grupo.DESCRICAO;
    Query.ParamByName('ID').AsInteger := Grupo.ID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioGrupo.Deletar(AID: Integer);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM Grupo WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.
