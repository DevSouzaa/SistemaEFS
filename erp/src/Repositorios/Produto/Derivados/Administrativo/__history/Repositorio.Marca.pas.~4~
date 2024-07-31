unit Repositorio.Marca;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.Marca, FireDAC.Comp.Client;

type
  TRepositorioMarca = class(TRepositorioBase)
  public
    function ObterTodos: TList<TMarca>;
    function ObterPorId(AID: Integer): TMarca;
    function ObterPorNome(ANome: string): TList<TMarca>;
    procedure Inserir(Marca: TMarca);
    procedure Atualizar(Marca: TMarca);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioMarca.ObterTodos: TList<TMarca>;
var
  Query: TFDQuery;
  Marcas: TList<TMarca>;
  Marca: TMarca;
begin
  Marcas := TList<TMarca>.Create;
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

function TRepositorioMarca.ObterPorId(AID: Integer): TMarca;
var
  Query: TFDQuery;
  Marca: TMarca;
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

function TRepositorioMarca.ObterPorNome(ANome: string): TList<TMarca>;
var
  Query: TFDQuery;
  Marcas: TList<TMarca>;
  Marca: TMarca;
begin
  Marcas := TList<TMarca>.Create;
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

procedure TRepositorioMarca.Inserir(Marca: TMarca);
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

procedure TRepositorioMarca.Atualizar(Marca: TMarca);
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

