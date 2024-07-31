unit Repositorio.SubGrupo;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.SubGrupo, FireDAC.Comp.Client;

type
  TRepositorioSubGrupo = class(TRepositorioBase)

  public
    function ObterTodos: TList<ISubGrupo>;
    function ObterPorId(AID: Integer): ISubGrupo;
    function ObterPorNome(ANome: string): TList<ISubGrupo>;
    procedure Inserir(SubGrupo: ISubGrupo);
    procedure Atualizar(SubGrupo: ISubGrupo);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioSubGrupo.ObterTodos: TList<ISubGrupo>;
var
  Query: TFDQuery;
  SubGrupos: TList<ISubGrupo>;
  SubGrupo: ISubGrupo;
begin
  SubGrupos := TList<ISubGrupo>.Create;
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

function TRepositorioSubGrupo.ObterPorId(AID: Integer): ISubGrupo;
var
  Query: TFDQuery;
  SubGrupo: ISubGrupo;
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

function TRepositorioSubGrupo.ObterPorNome(ANome: string): TList<ISubGrupo>;
var
  Query: TFDQuery;
  SubGrupos: TList<ISubGrupo>;
  SubGrupo: ISubGrupo;
begin
  SubGrupos := TList<ISubGrupo>.Create;
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

procedure TRepositorioSubGrupo.Inserir(SubGrupo: ISubGrupo);
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

procedure TRepositorioSubGrupo.Atualizar(SubGrupo: ISubGrupo);
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

