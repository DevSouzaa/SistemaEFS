unit Repositorio.Fabricante;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.Fabricante, FireDAC.Comp.Client;

type
  TRepositorioFabricante = class(TRepositorioBase)
  public
    function ObterTodos: TList<TFabricante>;
    function ObterPorId(AID: Integer): TFabricante;
    function ObterPorNome(ANome: string): TList<TFabricante>;
    procedure Inserir(Fabricante: TFabricante);
    procedure Atualizar(Fabricante: TFabricante);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioFabricante.ObterTodos: TList<TFabricante>;
var
  Query: TFDQuery;
  Fabricantes: TList<TFabricante>;
  Fabricante: TFabricante;
begin
  Fabricantes := TList<TFabricante>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM Fabricante';
    Query.Open;
    while not Query.Eof do
    begin
      Fabricante := TFabricante.Create;
      Fabricante.ID := Query.FieldByName('ID').AsInteger;
      Fabricante.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      Fabricantes.Add(Fabricante);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Fabricantes;
end;

function TRepositorioFabricante.ObterPorId(AID: Integer): TFabricante;
var
  Query: TFDQuery;
  Fabricante: TFabricante;
begin
  Fabricante := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM Fabricante WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.Open;
    if not Query.Eof then
    begin
      Fabricante := TFabricante.Create;
      Fabricante.ID := Query.FieldByName('ID').AsInteger;
      Fabricante.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
    end;
  finally
    Query.Free;
  end;
  Result := Fabricante;
end;

function TRepositorioFabricante.ObterPorNome(ANome: string): TList<TFabricante>;
var
  Query: TFDQuery;
  Fabricantes: TList<TFabricante>;
  Fabricante: TFabricante;
begin
  Fabricantes := TList<TFabricante>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT ID, DESCRICAO FROM Fabricante WHERE DESCRICAO LIKE :DESCRICAO';
    Query.ParamByName('DESCRICAO').AsString := '%' + ANome + '%';
    Query.Open;
    while not Query.Eof do
    begin
      Fabricante := TFabricante.Create;
      Fabricante.ID := Query.FieldByName('ID').AsInteger;
      Fabricante.DESCRICAO := Query.FieldByName('DESCRICAO').AsString;
      Fabricantes.Add(Fabricante);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Fabricantes;
end;

procedure TRepositorioFabricante.Inserir(Fabricante: TFabricante);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO Fabricante (DESCRICAO) VALUES (:DESCRICAO)';
    Query.ParamByName('DESCRICAO').AsString := Fabricante.DESCRICAO;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioFabricante.Atualizar(Fabricante: TFabricante);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE Fabricante SET DESCRICAO = :DESCRICAO WHERE ID = :ID';
    Query.ParamByName('DESCRICAO').AsString := Fabricante.DESCRICAO;
    Query.ParamByName('ID').AsInteger := Fabricante.ID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioFabricante.Deletar(AID: Integer);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM Fabricante WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.

