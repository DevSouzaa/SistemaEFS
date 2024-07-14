unit Repositorio.empresa;

interface

uses
  Empresa, Generics.Collections, FireDAC.Comp.Client, RepositorioBase, System.SysUtils;

type
  TRepositorioEmpresa = class(TRepositorioBase)
  public
    function ObterPorId(Id: Integer): TEmpresa;
    function ObterFilialPadrao: TEmpresa;
    function ObterTodos: TList<TEmpresa>;
    function Inserir(Empresa: TEmpresa): Boolean;
    function Atualizar(Empresa: TEmpresa): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

{ TEmpresaRepositorio }

function TRepositorioEmpresa.ObterFilialPadrao: TEmpresa;
var
  Query: TFDQuery;
  Empresa: TEmpresa;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM EMPRESA E inner join FilialPadrao FP on E.ID = FP.IDFIlialPadrao';
    Query.Open;

    if not Query.Eof then
    begin
      Empresa := TEmpresa.Create;
      Empresa.Id := Query.FieldByName('ID').AsInteger;
      Empresa.RazaoSocial := Query.FieldByName('RAZAOSOCIAL').AsString;
      Empresa.Fantasia := Query.FieldByName('FANTASIA').AsString;
      Empresa.CNPJ := Query.FieldByName('CNPJ').AsString;
      Empresa.IE := Query.FieldByName('IE').AsString;
      Empresa.Endereco := Query.FieldByName('ENDERECO').AsString;
      Empresa.Numero := Query.FieldByName('NUMERO').AsString;
      Empresa.Cidade := Query.FieldByName('CIDADE').AsString;
      Empresa.Bairro := Query.FieldByName('BAIRRO').AsString;
      Empresa.UF := Query.FieldByName('UF').AsString;
      Empresa.CEP := Query.FieldByName('CEP').AsString;
      Empresa.Telefone := Query.FieldByName('TELEFONE').AsString;
      Empresa.IM := Query.FieldByName('IM').AsString;
      Empresa.CRT := Query.FieldByName('CRT').AsInteger;
      Empresa.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Empresa.IdPais := Query.FieldByName('ID_PAIS').AsInteger;
      Empresa.CodigoIBGE := Query.FieldByName('CODIGO_IBGE').AsString;
      Empresa.LogoMarca := Query.FieldByName('LOGOMARCA').AsString;
      Result := Empresa;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioEmpresa.ObterPorId(Id: Integer): TEmpresa;
var
  Query: TFDQuery;
  Empresa: TEmpresa;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM EMPRESA WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.Open;

    if not Query.Eof then
    begin
      Empresa := TEmpresa.Create;
      Empresa.Id := Query.FieldByName('ID').AsInteger;
      Empresa.RazaoSocial := Query.FieldByName('RAZAOSOCIAL').AsString;
      Empresa.Fantasia := Query.FieldByName('FANTASIA').AsString;
      Empresa.CNPJ := Query.FieldByName('CNPJ').AsString;
      Empresa.IE := Query.FieldByName('IE').AsString;
      Empresa.Endereco := Query.FieldByName('ENDERECO').AsString;
      Empresa.Numero := Query.FieldByName('NUMERO').AsString;
      Empresa.Cidade := Query.FieldByName('CIDADE').AsString;
      Empresa.Bairro := Query.FieldByName('BAIRRO').AsString;
      Empresa.UF := Query.FieldByName('UF').AsString;
      Empresa.CEP := Query.FieldByName('CEP').AsString;
      Empresa.Telefone := Query.FieldByName('TELEFONE').AsString;
      Empresa.IM := Query.FieldByName('IM').AsString;
      Empresa.CRT := Query.FieldByName('CRT').AsInteger;
      Empresa.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Empresa.IdPais := Query.FieldByName('ID_PAIS').AsInteger;
      Empresa.CodigoIBGE := Query.FieldByName('CODIGO_IBGE').AsString;
      Empresa.LogoMarca := Query.FieldByName('LOGOMARCA').AsString;
      Result := Empresa;
    end
    else
      Result := nil;
  finally
    Query.Free;
  end;
end;

function TRepositorioEmpresa.ObterTodos: TList<TEmpresa>;
var
  Query: TFDQuery;
  Empresas: TList<TEmpresa>;
  Empresa: TEmpresa;
begin
  Empresas := TList<TEmpresa>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM EMPRESA';
    Query.Open;

    while not Query.Eof do
    begin
      Empresa := TEmpresa.Create;
      Empresa.Id := Query.FieldByName('ID').AsInteger;
      Empresa.RazaoSocial := Query.FieldByName('RAZAOSOCIAL').AsString;
      Empresa.Fantasia := Query.FieldByName('FANTASIA').AsString;
      Empresa.CNPJ := Query.FieldByName('CNPJ').AsString;
      Empresa.IE := Query.FieldByName('IE').AsString;
      Empresa.Endereco := Query.FieldByName('ENDERECO').AsString;
      Empresa.Numero := Query.FieldByName('NUMERO').AsString;
      Empresa.Cidade := Query.FieldByName('CIDADE').AsString;
      Empresa.Bairro := Query.FieldByName('BAIRRO').AsString;
      Empresa.UF := Query.FieldByName('UF').AsString;
      Empresa.CEP := Query.FieldByName('CEP').AsString;
      Empresa.Telefone := Query.FieldByName('TELEFONE').AsString;
      Empresa.IM := Query.FieldByName('IM').AsString;
      Empresa.CRT := Query.FieldByName('CRT').AsInteger;
      Empresa.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Empresa.IdPais := Query.FieldByName('ID_PAIS').AsInteger;
      Empresa.CodigoIBGE := Query.FieldByName('CODIGO_IBGE').AsString;
      Empresa.LogoMarca := Query.FieldByName('LOGOMARCA').AsString;
      Empresas.Add(Empresa);
      Query.Next;
    end;
    Result := Empresas;
  finally
    Query.Free;
  end;
end;

function TRepositorioEmpresa.Inserir(Empresa: TEmpresa): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO EMPRESA (RAZAOSOCIAL, FANTASIA, CNPJ, IE, ENDERECO, NUMERO, CIDADE, BAIRRO, UF, CEP, TELEFONE, IM, CRT, COMPLEMENTO, ID_PAIS, CODIGO_IBGE, LOGOMARCA) ' +
                      'VALUES (:RAZAOSOCIAL, :FANTASIA, :CNPJ, :IE, :ENDERECO, :NUMERO, :CIDADE, :BAIRRO, :UF, :CEP, :TELEFONE, :IM, :CRT, :COMPLEMENTO, :ID_PAIS, :CODIGO_IBGE, :LOGOMARCA)';
    Query.ParamByName('RAZAOSOCIAL').AsString := Empresa.RazaoSocial;
    Query.ParamByName('FANTASIA').AsString := Empresa.Fantasia;
    Query.ParamByName('CNPJ').AsString := Empresa.CNPJ;
    Query.ParamByName('IE').AsString := Empresa.IE;
    Query.ParamByName('ENDERECO').AsString := Empresa.Endereco;
    Query.ParamByName('NUMERO').AsString := Empresa.Numero;
    Query.ParamByName('CIDADE').AsString := Empresa.Cidade;
    Query.ParamByName('BAIRRO').AsString := Empresa.Bairro;
    Query.ParamByName('UF').AsString := Empresa.UF;
    Query.ParamByName('CEP').AsString := Empresa.CEP;
    Query.ParamByName('TELEFONE').AsString := Empresa.Telefone;
    Query.ParamByName('IM').AsString := Empresa.IM;
    Query.ParamByName('CRT').AsInteger := Empresa.CRT;
    Query.ParamByName('COMPLEMENTO').AsString := Empresa.Complemento;
    Query.ParamByName('ID_PAIS').AsInteger := Empresa.IdPais;
    Query.ParamByName('CODIGO_IBGE').AsString := Empresa.CodigoIBGE;
    Query.ParamByName('LOGOMARCA').AsString := Empresa.LogoMarca;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioEmpresa.Atualizar(Empresa: TEmpresa): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE EMPRESA SET RAZAOSOCIAL = :RAZAOSOCIAL, FANTASIA = :FANTASIA, CNPJ = :CNPJ, IE = :IE, ENDERECO = :ENDERECO, ' +
                      'NUMERO = :NUMERO, CIDADE = :CIDADE, BAIRRO = :BAIRRO, UF = :UF, CEP = :CEP, TELEFONE = :TELEFONE, IM = :IM, CRT = :CRT, ' +
                      'COMPLEMENTO = :COMPLEMENTO, ID_PAIS = :ID_PAIS, CODIGO_IBGE = :CODIGO_IBGE, LOGOMARCA = :LOGOMARCA WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := Empresa.Id;
    Query.ParamByName('RAZAOSOCIAL').AsString := Empresa.RazaoSocial;
    Query.ParamByName('FANTASIA').AsString := Empresa.Fantasia;
    Query.ParamByName('CNPJ').AsString := Empresa.CNPJ;
    Query.ParamByName('IE').AsString := Empresa.IE;
    Query.ParamByName('ENDERECO').AsString := Empresa.Endereco;
    Query.ParamByName('NUMERO').AsString := Empresa.Numero;
    Query.ParamByName('CIDADE').AsString := Empresa.Cidade;
    Query.ParamByName('BAIRRO').AsString := Empresa.Bairro;
    Query.ParamByName('UF').AsString := Empresa.UF;
    Query.ParamByName('CEP').AsString := Empresa.CEP;
    Query.ParamByName('TELEFONE').AsString := Empresa.Telefone;
    Query.ParamByName('IM').AsString := Empresa.IM;
    Query.ParamByName('CRT').AsInteger := Empresa.CRT;
    Query.ParamByName('COMPLEMENTO').AsString := Empresa.Complemento;
    Query.ParamByName('ID_PAIS').AsInteger := Empresa.IdPais;
    Query.ParamByName('CODIGO_IBGE').AsString := Empresa.CodigoIBGE;
    Query.ParamByName('LOGOMARCA').AsString := Empresa.LogoMarca;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

function TRepositorioEmpresa.Deletar(Id: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM EMPRESA WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := Id;
    Query.ExecSQL;
    Result := True;
  finally
    Query.Free;
  end;
end;

end.
