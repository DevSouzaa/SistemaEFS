unit Repositorio.Acao;

interface

uses
  Acao, Generics.Collections, FireDAC.Comp.Client, RepositorioBase, System.SysUtils;

type
  TRepositorioAcao = class(TRepositorioBase)
  public
    function ObterTodas: TList<TAcao>;
    function ObterPorId(Id: Integer): TAcao;
    function Inserir(Acao: TAcao): Boolean;
    function Atualizar(Acao: TAcao): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

{ TRepositorioAcao }

function TRepositorioAcao.ObterTodas: TList<TAcao>;
var
  Query: TFDQuery;
  Acoes: TList<TAcao>;
  Acao: TAcao;
begin
  Acoes := TList<TAcao>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM ACOES';
    Query.Open;

    while not Query.Eof do
    begin
      Acao := TAcao.Create;
      Acao.Id := Query.FieldByName('IDACAO').AsInteger;
      Acao.Nome := Query.FieldByName('NOME').AsString;
      Acoes.Add(Acao);
      Query.Next;
    end;
    Result := Acoes;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcao.ObterPorId(Id: Integer): TAcao;
var
  Query: TFDQuery;
  Acao: TAcao;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM ACOES WHERE IDACAO = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.Open;

    if not Query.Eof then
    begin
      Acao := TAcao.Create;
      Acao.Id := Query.FieldByName('IDACAO').AsInteger;
      Acao.Nome := Query.FieldByName('NOME').AsString;
      Result := Acao;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcao.Inserir(Acao: TAcao): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO ACOES (NOME) VALUES (:NOME)';
    Query.ParamByName('NOME').AsString := Acao.Nome;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcao.Atualizar(Acao: TAcao): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE ACOES SET NOME = :NOME WHERE IDACAO = :ID';
    Query.ParamByName('ID').AsInteger := Acao.Id;
    Query.ParamByName('NOME').AsString := Acao.Nome;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioAcao.Deletar(Id: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM ACOES WHERE IDACAO = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

end.

