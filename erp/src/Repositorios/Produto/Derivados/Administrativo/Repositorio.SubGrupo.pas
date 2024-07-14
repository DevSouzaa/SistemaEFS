unit Repositorio.SubGrupo;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.SubGrupo, FireDAC.Comp.Client;

type
  TRepositorioSubGrupo = class(TRepositorioBase)

  public
    function ObterTodos: TList<TSubGrupo>;
    function ObterPorId(AID: Integer): TSubGrupo;
    function ObterPorNome(ANome: string): TList<TSubGrupo>;
    procedure Inserir(SubGrupo: TSubGrupo);
    procedure Atualizar(SubGrupo: TSubGrupo);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioSubGrupo.ObterTodos: TList<TSubGrupo>;
var
  Query: TFDQuery;
  SubGrupos: TList<TSubGrupo>;
  SubGrupo: TSubGrupo;
begin
  SubGrupos := TList<TSubGrupo>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM SubGrupo';
    Query.Open;
    while not Query.Eof do
    begin
      SubGrupo := TSubGrupo.Create;
      SubGrupo.ID := Query.FieldByName('ID').AsInteger;
      SubGrupo.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      SubGrupos.Add(SubGrupo);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := SubGrupos;
end;

function TRepositorioSubGrupo.ObterPorId(AID: Integer): TSubGrupo;
var
  Query: TFDQuery;
  SubGrupo: TSubGrupo;
begin
  SubGrupo := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM SubGrupo WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.Open;
    if not Query.Eof then
    begin
      SubGrupo := TSubGrupo.Create;
      SubGrupo.ID := Query.FieldByName('ID').AsInteger;
      SubGrupo.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := SubGrupo;
end;

function TRepositorioSubGrupo.ObterPorNome(ANome: string): TList<TSubGrupo>;
var
  Query: TFDQuery;
  SubGrupos: TList<TSubGrupo>;
  SubGrupo: TSubGrupo;
begin
  SubGrupos := TList<TSubGrupo>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM SubGrupo WHERE DESCRICAO LIKE :DESCRICAO';
    Query.ParamByName('DESCRICAO').AsString := '%' + ANome + '%';
    Query.Open;
    while not Query.Eof do
    begin
      SubGrupo := TSubGrupo.Create;
      SubGrupo.ID := Query.FieldByName('ID').AsInteger;
      SubGrupo.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      SubGrupos.Add(SubGrupo);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := SubGrupos;
end;

procedure TRepositorioSubGrupo.Inserir(SubGrupo: TSubGrupo);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO SubGrupo (DESCRICAO) VALUES (:DESCRICAO)';
    Query.ParamByName('DESCRICAO').AsString := SubGrupo.DESCRICAO;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioSubGrupo.Atualizar(SubGrupo: TSubGrupo);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE SubGrupo SET DESCRICAO = :DESCRICAO WHERE ID = :ID';
    Query.ParamByName('DESCRICAO').AsString := SubGrupo.DESCRICAO;
    Query.ParamByName('ID').AsInteger := SubGrupo.ID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioSubGrupo.Deletar(AID: Integer);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM SubGrupo WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.

