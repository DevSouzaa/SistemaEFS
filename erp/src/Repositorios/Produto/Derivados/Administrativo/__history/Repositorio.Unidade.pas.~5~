unit Repositorio.Unidade;

interface
uses
  System.Generics.Collections, RepositorioBase, Model.Unidade, FireDAC.Comp.Client, System.SysUtils;
type
  TRepositorioUnidade = class(TRepositorioBase)
  public
    function ObterTodos: TList<TUnidade>;
    function ObterPorId(AID: Integer): TUnidade;
    function ObterPorNome(ANome: string): TList<TUnidade>;
    procedure Inserir(Unidade: TUnidade);
    procedure Atualizar(Unidade: TUnidade);
    procedure Deletar(AID: Integer);
  end;
implementation
function TRepositorioUnidade.ObterTodos: TList<TUnidade>;
var
  Query: TFDQuery;
  Unidades: TList<TUnidade>;
  Unidade: TUnidade;
begin
  Unidades := TList<TUnidade>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM UNIDADES';
    Query.Open;
    while not Query.Eof do
    begin
      Unidade := TUnidade.Create;
      Unidade.ID := Query.FieldByName('IDUNIDADE').AsInteger;
      Unidade.Descricao := Query.FieldByName('DESCRICAO').AsString;
      Unidade.IDUsuarioCadastro := Query.FieldByName('IDUSUARIOCADASTRO').AsInteger;
      Unidade.IDUsuarioAlteracao := Query.FieldByName('IDUSUARIOALTERACAO').AsInteger;
      Unidade.Fracao := Query.FieldByName('FRACAO').AsInteger;
      Unidade.Sigla := Query.FieldByName('SIGLA').AsString;
      Unidade.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Unidade.DataHoraAlteracao := Query.FieldByName('DATAHORAALTERACAO').AsDateTime;
      Unidade.DataHoraCadastro := Query.FieldByName('DATAHORACADASTRO').AsDateTime;
      Unidades.Add(Unidade);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Unidades;
end;
function TRepositorioUnidade.ObterPorId(AID: Integer): TUnidade;
var
  Query: TFDQuery;
  Unidade: TUnidade;
begin
  Unidade := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM UNIDADES WHERE IDUNIDADE = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.Open;
    if not Query.Eof then
    begin
      Unidade := TUnidade.Create;
      Unidade.ID := Query.FieldByName('IDUNIDADE').AsInteger;
      Unidade.Descricao := Query.FieldByName('DESCRICAO').AsString;
      Unidade.IDUsuarioCadastro := Query.FieldByName('IDUSUARIOCADASTRO').AsInteger;
      Unidade.IDUsuarioAlteracao := Query.FieldByName('IDUSUARIOALTERACAO').AsInteger;
      Unidade.Fracao := Query.FieldByName('FRACAO').AsInteger;
      Unidade.Sigla := Query.FieldByName('SIGLA').AsString;
      Unidade.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Unidade.DataHoraAlteracao := Query.FieldByName('DATAHORAALTERACAO').AsDateTime;
      Unidade.DataHoraCadastro := Query.FieldByName('DATAHORACADASTRO').AsDateTime;
    end;
  finally
    Query.Free;
  end;
  Result := Unidade;
end;
function TRepositorioUnidade.ObterPorNome(ANome: string): TList<TUnidade>;
var
  Query: TFDQuery;
  Unidades: TList<TUnidade>;
  Unidade: TUnidade;
begin
  Unidades := TList<TUnidade>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM UNIDADES WHERE DESCRICAO LIKE :Nome';
    Query.ParamByName('Nome').AsString := '%' + ANome + '%';
    Query.Open;
    while not Query.Eof do
    begin
      Unidade := TUnidade.Create;
      Unidade.ID := Query.FieldByName('IDUNIDADE').AsInteger;
      Unidade.Descricao := Query.FieldByName('DESCRICAO').AsString;
      Unidade.IDUsuarioCadastro := Query.FieldByName('IDUSUARIOCADASTRO').AsInteger;
      Unidade.IDUsuarioAlteracao := Query.FieldByName('IDUSUARIOALTERACAO').AsInteger;
      Unidade.Fracao := Query.FieldByName('FRACAO').AsInteger;
      Unidade.Sigla := Query.FieldByName('SIGLA').AsString;
      Unidade.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Unidade.DataHoraAlteracao := Query.FieldByName('DATAHORAALTERACAO').AsDateTime;
      Unidade.DataHoraCadastro := Query.FieldByName('DATAHORACADASTRO').AsDateTime;
      Unidades.Add(Unidade);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Unidades;
end;
procedure TRepositorioUnidade.Inserir(Unidade: TUnidade);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO UNIDADES (DESCRICAO, IDUSUARIOCADASTRO, IDUSUARIOALTERACAO, FRACAO, SIGLA, ATIVO, DATAHORAALTERACAO, DATAHORACADASTRO) VALUES (:Descricao, :IDUsuarioCadastro, :IDUsuarioAlteracao, :Fracao, :Sigla, :Ativo, :DataHoraAlteracao, :DataHoraCadastro)';
    Query.ParamByName('Descricao').AsString := Unidade.Descricao;
    Query.ParamByName('IDUsuarioCadastro').AsInteger := Unidade.IDUsuarioCadastro;
    Query.ParamByName('IDUsuarioAlteracao').AsInteger := Unidade.IDUsuarioAlteracao;
    Query.ParamByName('Fracao').AsInteger := Unidade.Fracao;
    Query.ParamByName('Sigla').AsString := Unidade.Sigla;
    Query.ParamByName('Ativo').AsBoolean := Unidade.Ativo;
    Query.ParamByName('DataHoraAlteracao').AsDateTime := Unidade.DataHoraAlteracao;
    Query.ParamByName('DataHoraCadastro').AsDateTime := Unidade.DataHoraCadastro;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;
procedure TRepositorioUnidade.Atualizar(Unidade: TUnidade);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE UNIDADES SET DESCRICAO = :Descricao, IDUSUARIOCADASTRO = :IDUsuarioCadastro,' +
                      ' IDUSUARIOALTERACAO = :IDUsuarioAlteracao, FRACAO = :Fracao,' +
                      ' SIGLA = :Sigla, ATIVO = :Ativo, DATAHORAALTERACAO = :DataHoraAlteracao,' +
                      ' DATAHORACADASTRO = :DataHoraCadastro WHERE IDUNIDADE = :ID';
    Query.ParamByName('Descricao').AsString := Unidade.Descricao;
    Query.ParamByName('IDUsuarioCadastro').AsInteger := Unidade.IDUsuarioCadastro;
    Query.ParamByName('IDUsuarioAlteracao').AsInteger := Unidade.IDUsuarioAlteracao;
    Query.ParamByName('Fracao').AsInteger := Unidade.Fracao;
    Query.ParamByName('Sigla').AsString := Unidade.Sigla;
    Query.ParamByName('Ativo').AsBoolean := Unidade.Ativo;
    Query.ParamByName('DataHoraAlteracao').AsDateTime := Unidade.DataHoraAlteracao;
    Query.ParamByName('DataHoraCadastro').AsDateTime := Unidade.DataHoraCadastro;
    Query.ParamByName('ID').AsInteger := Unidade.ID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;
procedure TRepositorioUnidade.Deletar(AID: Integer);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM UNIDADES WHERE IDUNIDADE = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;
end.
