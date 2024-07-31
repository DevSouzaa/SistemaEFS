unit Repositorio.Marca;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.Marca, FireDAC.Comp.Client;

type
  TRepositorioMarca = class(TRepositorioBase)
  public
    function ObterTodos: TList<IMarca>;
    function ObterPorId(AID: Integer): IMarca;
    function ObterPorNome(ANome: string): TList<IMarca>;
    procedure Inserir(Marca: IMarca);
    procedure Atualizar(Marca: IMarca);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioMarca.ObterTodos: TList<IMarca>;
var
  Query: TFDQuery;
  Marcas: TList<IMarca>;
  Marca: IMarca;
begin
  Marcas := TList<IMarca>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT IDMARCA, DESCRICAO FROM Marca';
    Query.Open;
    while not Query.Eof do
    begin
      Marca := TMarca.Create;
      Marca.ID := Query.FieldByName('IDMARCA').AsInteger;
      Marca.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      Marcas.Add(Marca);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Marcas;
end;

function TRepositorioMarca.ObterPorId(AID: Integer): IMarca;
var
  Query: TFDQuery;
  Marca: IMarca;
begin
  Marca := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT IDMARCA, DESCRICAO FROM Marca WHERE IDMARCA = :IDMARCA';
    Query.ParamByName('IDMARCA').AsInteger := AID;
    Query.Open;
    if not Query.Eof then
    begin
      Marca := TMarca.Create;
      Marca.ID := Query.FieldByName('IDMARCA').AsInteger;
      Marca.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := Marca;
end;

function TRepositorioMarca.ObterPorNome(ANome: string): TList<IMarca>;
var
  Query: TFDQuery;
  Marcas: TList<IMarca>;
  Marca: IMarca;
begin
  Marcas := TList<IMarca>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT IDMARCA, DESCRICAO FROM Marca WHERE DESCRICAO LIKE :DESCRICAO';
    Query.ParamByName('DESCRICAO').AsString := '%' + ANome + '%';
    Query.Open;
    while not Query.Eof do
    begin
      Marca := TMarca.Create;
      Marca.ID := Query.FieldByName('IDMARCA').AsInteger;
      Marca.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      Marcas.Add(Marca);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Marcas;
end;

procedure TRepositorioMarca.Inserir(Marca: IMarca);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO Marca (DESCRICAO) VALUES (:DESCRICAO)';
    Query.ParamByName('DESCRICAO').AsString := Marca.DESCRICAO;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioMarca.Atualizar(Marca: IMarca);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE Marca SET DESCRICAO = :DESCRICAO WHERE IDMARCA = :IDMARCA';
    Query.ParamByName('DESCRICAO').AsString := Marca.DESCRICAO;
    Query.ParamByName('IDMARCA').AsInteger := Marca.ID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioMarca.Deletar(AID: Integer);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM Marca WHERE IDMARCA = :IDMARCA';
    Query.ParamByName('IDMARCA').AsInteger := AID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.

