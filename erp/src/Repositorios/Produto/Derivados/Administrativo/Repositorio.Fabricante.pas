unit Repositorio.Fabricante;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.Fabricante, FireDAC.Comp.Client;

type
  TRepositorioFabricante = class(TRepositorioBase)
  public
    function ObterTodos: TList<IFabricante>;
    function ObterPorId(AID: Integer): IFabricante;
    function ObterPorNome(ANome: string): TList<IFabricante>;
    procedure Inserir(Fabricante: IFabricante);
    procedure Atualizar(Fabricante: IFabricante);
    procedure Deletar(AID: Integer);
  end;

implementation

function TRepositorioFabricante.ObterTodos: TList<IFabricante>;
var
  Query: TFDQuery;
  Fabricantes: TList<IFabricante>;
  Fabricante: IFabricante;
begin
  Fabricantes := TList<IFabricante>.Create;
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

function TRepositorioFabricante.ObterPorId(AID: Integer): IFabricante;
var
  Query: TFDQuery;
  Fabricante: IFabricante;
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

function TRepositorioFabricante.ObterPorNome(ANome: string): TList<IFabricante>;
var
  Query: TFDQuery;
  Fabricantes: TList<IFabricante>;
  Fabricante: IFabricante;
begin
  Fabricantes := TList<IFabricante>.Create;
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

procedure TRepositorioFabricante.Inserir(Fabricante: IFabricante);
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

procedure TRepositorioFabricante.Atualizar(Fabricante: IFabricante);
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

