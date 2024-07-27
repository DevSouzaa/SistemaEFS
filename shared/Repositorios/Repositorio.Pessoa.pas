unit Repositorio.Pessoa;

interface

uses
  System.Generics.Collections, RepositorioBase, Model.Pessoa, FireDAC.Comp.Client;

type
  TRepositorioPessoa = class(TRepositorioBase)
  public
    function ObterTodos: TList<TPessoa>;
    function ObterPorId(AID: Integer): TPessoa;
    function ObterPorNome(ANome: string): TList<TPessoa>;
    procedure Inserir(Pessoa: TPessoa);
    procedure Atualizar(Pessoa: TPessoa);
    procedure Deletar(AID: Integer);
  end;

implementation

uses
  System.SysUtils;

function TRepositorioPessoa.ObterTodos: TList<TPessoa>;
var
  Query: TFDQuery;
  Pessoas: TList<TPessoa>;
  Pessoa: TPessoa;
begin
  Pessoas := TList<TPessoa>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM PESSOA';
    Query.Open;
    while not Query.Eof do
    begin
      Pessoa := TPessoa.Create;
      Pessoa.ID := Query.FieldByName('ID').AsInteger;
      Pessoa.RazaoSocial := Query.FieldByName('RAZAO_SOCIAL').AsString;
      Pessoa.Fantasia := Query.FieldByName('FANTASIA').AsString;
      Pessoa.Cidade := Query.FieldByName('CIDADE').AsString;
      Pessoa.Endereco := Query.FieldByName('ENDERECO').AsString;
      Pessoa.Bairro := Query.FieldByName('BAIRRO').AsString;
      Pessoa.CEP := Query.FieldByName('CEP').AsString;
      Pessoa.UF := Query.FieldByName('UF').AsString;
      Pessoa.Email := Query.FieldByName('EMAIL').AsString;
      Pessoa.Telefone := Query.FieldByName('TELEFONE').AsString;
      Pessoa.NumeroEndereco := Query.FieldByName('NUMERO_ENDERECO').AsString;
      Pessoa.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Pessoa.PontoReferencia := Query.FieldByName('PONTO_REFERENCIA').AsString;
      Pessoa.CNPJCPF := Query.FieldByName('CNPJCPF').AsString;
      Pessoa.IERG := Query.FieldByName('IERG').AsString;
      Pessoa.DtaCadastro := Query.FieldByName('DTA_CADASTRO').AsDateTime;
      Pessoa.HraCadastro := Query.FieldByName('HRA_CADASTRO').AsDateTime;
      Pessoa.DtaNascimento := Query.FieldByName('DTA_NASCIMENTO').AsDateTime;
      Pessoa.TipoFJ := Query.FieldByName('TIPO_FJ').AsString;
      Pessoa.LimiteLiberado := Query.FieldByName('LIMITE_LIBERADO').AsFloat;
      Pessoa.LimiteUsado := Query.FieldByName('LIMITE_USADO').AsFloat;
      Pessoa.Observacao := Query.FieldByName('OBSERVACAO').AsString;
      Pessoa.TaxaJuro := Query.FieldByName('TAXA_JURO').AsFloat;
      Pessoa.Contribuinte := Query.FieldByName('CONTRIBUINTE').AsInteger;
      Pessoa.ConsumidorFinal := Query.FieldByName('CONSUMIDOR_FINAL').AsInteger;
      Pessoa.IDPais := Query.FieldByName('ID_PAIS').AsInteger;
      Pessoa.IDTipoPessoa := Query.FieldByName('ID_TIPOPESSOA').AsInteger;
      Pessoa.CodigoIBGE := Query.FieldByName('CODIGO_IBGE').AsString;
      Pessoa.IndIEDest := Query.FieldByName('INDIEDEST').AsInteger;
      Pessoa.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Pessoa.Regime := Query.FieldByName('REGIME').AsInteger;
      Pessoa.Promotor := Query.FieldByName('PROMOTOR').AsInteger;
      Pessoa.Cobrar := Query.FieldByName('COBRAR').AsBoolean;
      Pessoa.VenderAPrazo := Query.FieldByName('VENDERAPRAZO').AsBoolean;
      Pessoa.DescontoVendaAVista := Query.FieldByName('DESCONTOVENDAAVISTA').AsFloat;
      Pessoa.AcrescimoVendaPrazo := Query.FieldByName('ACRESCIMOVENDAPRAZO').AsFloat;
      Pessoas.Add(Pessoa);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Pessoas;
end;

function TRepositorioPessoa.ObterPorId(AID: Integer): TPessoa;
var
  Query: TFDQuery;
  Pessoa: TPessoa;
begin
  Pessoa := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM PESSOA WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.Open;
    if not Query.Eof then
    begin
      Pessoa := TPessoa.Create;
      Pessoa.ID := Query.FieldByName('ID').AsInteger;
      Pessoa.RazaoSocial := Query.FieldByName('RAZAO_SOCIAL').AsString;
      Pessoa.Fantasia := Query.FieldByName('FANTASIA').AsString;
      Pessoa.Cidade := Query.FieldByName('CIDADE').AsString;
      Pessoa.Endereco := Query.FieldByName('ENDERECO').AsString;
      Pessoa.Bairro := Query.FieldByName('BAIRRO').AsString;
      Pessoa.CEP := Query.FieldByName('CEP').AsString;
      Pessoa.UF := Query.FieldByName('UF').AsString;
      Pessoa.Email := Query.FieldByName('EMAIL').AsString;
      Pessoa.Telefone := Query.FieldByName('TELEFONE').AsString;
      Pessoa.NumeroEndereco := Query.FieldByName('NUMERO_ENDERECO').AsString;
      Pessoa.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Pessoa.PontoReferencia := Query.FieldByName('PONTO_REFERENCIA').AsString;
      Pessoa.CNPJCPF := Query.FieldByName('CNPJCPF').AsString;
      Pessoa.IERG := Query.FieldByName('IERG').AsString;
      Pessoa.DtaCadastro := Query.FieldByName('DTA_CADASTRO').AsDateTime;
      Pessoa.HraCadastro := Query.FieldByName('HRA_CADASTRO').AsDateTime;
      Pessoa.DtaNascimento := Query.FieldByName('DTA_NASCIMENTO').AsDateTime;
      Pessoa.TipoFJ := Query.FieldByName('TIPO_FJ').AsString;
      Pessoa.LimiteLiberado := Query.FieldByName('LIMITE_LIBERADO').AsFloat;
      Pessoa.LimiteUsado := Query.FieldByName('LIMITE_USADO').AsFloat;
      Pessoa.Observacao := Query.FieldByName('OBSERVACAO').AsString;
      Pessoa.TaxaJuro := Query.FieldByName('TAXA_JURO').AsFloat;
      Pessoa.Contribuinte := Query.FieldByName('CONTRIBUINTE').AsInteger;
      Pessoa.ConsumidorFinal := Query.FieldByName('CONSUMIDOR_FINAL').AsInteger;
      Pessoa.IDPais := Query.FieldByName('ID_PAIS').AsInteger;
      Pessoa.IDTipoPessoa := Query.FieldByName('ID_TIPOPESSOA').AsInteger;
      Pessoa.CodigoIBGE := Query.FieldByName('CODIGO_IBGE').AsString;
      Pessoa.IndIEDest := Query.FieldByName('INDIEDEST').AsInteger;
      Pessoa.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Pessoa.Regime := Query.FieldByName('REGIME').AsInteger;
      Pessoa.Promotor := Query.FieldByName('PROMOTOR').AsInteger;
      Pessoa.Cobrar := Query.FieldByName('COBRAR').AsBoolean;
      Pessoa.VenderAPrazo := Query.FieldByName('VENDERAPRAZO').AsBoolean;
      Pessoa.DescontoVendaAVista := Query.FieldByName('DESCONTOVENDAAVISTA').AsFloat;
      Pessoa.AcrescimoVendaPrazo := Query.FieldByName('ACRESCIMOVENDAPRAZO').AsFloat;
    end;
  finally
    Query.Free;
  end;
  Result := Pessoa;
end;

function TRepositorioPessoa.ObterPorNome(ANome: string): TList<TPessoa>;
var
  Query: TFDQuery;
  Pessoas: TList<TPessoa>;
  Pessoa: TPessoa;
begin
  Pessoas := TList<TPessoa>.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM PESSOA WHERE RAZAO_SOCIAL LIKE :RAZAO_SOCIAL';
    Query.ParamByName('RAZAO_SOCIAL').AsString := '%' + ANome + '%';
    Query.Open;
    while not Query.Eof do
    begin
      Pessoa := TPessoa.Create;
      Pessoa.ID := Query.FieldByName('ID').AsInteger;
      Pessoa.RazaoSocial := Query.FieldByName('RAZAO_SOCIAL').AsString;
      Pessoa.Fantasia := Query.FieldByName('FANTASIA').AsString;
      Pessoa.Cidade := Query.FieldByName('CIDADE').AsString;
      Pessoa.Endereco := Query.FieldByName('ENDERECO').AsString;
      Pessoa.Bairro := Query.FieldByName('BAIRRO').AsString;
      Pessoa.CEP := Query.FieldByName('CEP').AsString;
      Pessoa.UF := Query.FieldByName('UF').AsString;
      Pessoa.Email := Query.FieldByName('EMAIL').AsString;
      Pessoa.Telefone := Query.FieldByName('TELEFONE').AsString;
      Pessoa.NumeroEndereco := Query.FieldByName('NUMERO_ENDERECO').AsString;
      Pessoa.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Pessoa.PontoReferencia := Query.FieldByName('PONTO_REFERENCIA').AsString;
      Pessoa.CNPJCPF := Query.FieldByName('CNPJCPF').AsString;
      Pessoa.IERG := Query.FieldByName('IERG').AsString;
      Pessoa.DtaCadastro := Query.FieldByName('DTA_CADASTRO').AsDateTime;
      Pessoa.HraCadastro := Query.FieldByName('HRA_CADASTRO').AsDateTime;
      Pessoa.DtaNascimento := Query.FieldByName('DTA_NASCIMENTO').AsDateTime;
      Pessoa.TipoFJ := Query.FieldByName('TIPO_FJ').AsString;
      Pessoa.LimiteLiberado := Query.FieldByName('LIMITE_LIBERADO').AsFloat;
      Pessoa.LimiteUsado := Query.FieldByName('LIMITE_USADO').AsFloat;
      Pessoa.Observacao := Query.FieldByName('OBSERVACAO').AsString;
      Pessoa.TaxaJuro := Query.FieldByName('TAXA_JURO').AsFloat;
      Pessoa.Contribuinte := Query.FieldByName('CONTRIBUINTE').AsInteger;
      Pessoa.ConsumidorFinal := Query.FieldByName('CONSUMIDOR_FINAL').AsInteger;
      Pessoa.IDPais := Query.FieldByName('ID_PAIS').AsInteger;
      Pessoa.IDTipoPessoa := Query.FieldByName('ID_TIPOPESSOA').AsInteger;
      Pessoa.CodigoIBGE := Query.FieldByName('CODIGO_IBGE').AsString;
      Pessoa.IndIEDest := Query.FieldByName('INDIEDEST').AsInteger;
      Pessoa.Ativo := Query.FieldByName('ATIVO').AsBoolean;
      Pessoa.Regime := Query.FieldByName('REGIME').AsInteger;
      Pessoa.Promotor := Query.FieldByName('PROMOTOR').AsInteger;
      Pessoa.Cobrar := Query.FieldByName('COBRAR').AsBoolean;
      Pessoa.VenderAPrazo := Query.FieldByName('VENDERAPRAZO').AsBoolean;
      Pessoa.DescontoVendaAVista := Query.FieldByName('DESCONTOVENDAAVISTA').AsFloat;
      Pessoa.AcrescimoVendaPrazo := Query.FieldByName('ACRESCIMOVENDAPRAZO').AsFloat;
      Pessoas.Add(Pessoa);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
  Result := Pessoas;
end;

procedure TRepositorioPessoa.Inserir(Pessoa: TPessoa);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'INSERT INTO PESSOA (RAZAO_SOCIAL, FANTASIA, CIDADE, ENDERECO, BAIRRO, CEP, UF, ' +
                      'EMAIL, TELEFONE, NUMERO_ENDERECO, COMPLEMENTO, PONTO_REFERENCIA, CNPJCPF, IERG, ' +
                      ' DTA_CADASTRO, HRA_CADASTRO, DTA_NASCIMENTO, TIPO_FJ, LIMITE_LIBERADO, LIMITE_USADO, ' +
                      ' OBSERVACAO, TAXA_JURO, CONTRIBUINTE, CONSUMIDOR_FINAL, ID_PAIS, ID_TIPOPESSOA, ' +
                      ' CODIGO_IBGE, INDIEDEST, ATIVO, REGIME, PROMOTOR, COBRAR, VENDERAPRAZO, DESCONTOVENDAAVISTA, ' +
                      ' ACRESCIMOVENDAPRAZO) VALUES (:RAZAO_SOCIAL, :FANTASIA, :CIDADE, :ENDERECO, :BAIRRO, :CEP, :UF, ' +
                      ' :EMAIL, :TELEFONE, :NUMERO_ENDERECO, :COMPLEMENTO, :PONTO_REFERENCIA, :CNPJCPF, :IERG, :DTA_CADASTRO, ' +
                      ' :HRA_CADASTRO, :DTA_NASCIMENTO, :TIPO_FJ, :LIMITE_LIBERADO, :LIMITE_USADO, :OBSERVACAO, :TAXA_JURO,' +
                      ' :CONTRIBUINTE, :CONSUMIDOR_FINAL, :ID_PAIS, :ID_TIPOPESSOA, :CODIGO_IBGE, :INDIEDEST, :ATIVO, :REGIME,' +
                      ' :PROMOTOR, :COBRAR, :VENDERAPRAZO, :DESCONTOVENDAAVISTA, :ACRESCIMOVENDAPRAZO)';
    Query.ParamByName('RAZAO_SOCIAL').AsString := Pessoa.RazaoSocial;
    Query.ParamByName('FANTASIA').AsString := Pessoa.Fantasia;
    Query.ParamByName('CIDADE').AsString := Pessoa.Cidade;
    Query.ParamByName('ENDERECO').AsString := Pessoa.Endereco;
    Query.ParamByName('BAIRRO').AsString := Pessoa.Bairro;
    Query.ParamByName('CEP').AsString := Pessoa.CEP;
    Query.ParamByName('UF').AsString := Pessoa.UF;
    Query.ParamByName('EMAIL').AsString := Pessoa.Email;
    Query.ParamByName('TELEFONE').AsString := Pessoa.Telefone;
    Query.ParamByName('NUMERO_ENDERECO').AsString := Pessoa.NumeroEndereco;
    Query.ParamByName('COMPLEMENTO').AsString := Pessoa.Complemento;
    Query.ParamByName('PONTO_REFERENCIA').AsString := Pessoa.PontoReferencia;
    Query.ParamByName('CNPJCPF').AsString := Pessoa.CNPJCPF;
    Query.ParamByName('IERG').AsString := Pessoa.IERG;
    Query.ParamByName('DTA_CADASTRO').AsDate := Pessoa.DtaCadastro;
    Query.ParamByName('HRA_CADASTRO').AsTime := Pessoa.HraCadastro;
    Query.ParamByName('DTA_NASCIMENTO').AsDate := Pessoa.DtaNascimento;
    Query.ParamByName('TIPO_FJ').AsString := Pessoa.TipoFJ;
    Query.ParamByName('LIMITE_LIBERADO').AsFloat := Pessoa.LimiteLiberado;
    Query.ParamByName('LIMITE_USADO').AsFloat := Pessoa.LimiteUsado;
    Query.ParamByName('OBSERVACAO').AsString := Pessoa.Observacao;
    Query.ParamByName('TAXA_JURO').AsFloat := Pessoa.TaxaJuro;
    Query.ParamByName('CONTRIBUINTE').AsInteger := Pessoa.Contribuinte;
    Query.ParamByName('CONSUMIDOR_FINAL').AsInteger := Pessoa.ConsumidorFinal;
    Query.ParamByName('ID_PAIS').AsInteger := Pessoa.IDPais;
    Query.ParamByName('ID_TIPOPESSOA').AsInteger := Pessoa.IDTipoPessoa;
    Query.ParamByName('CODIGO_IBGE').AsString := Pessoa.CodigoIBGE;
    Query.ParamByName('INDIEDEST').AsInteger := Pessoa.IndIEDest;
    Query.ParamByName('ATIVO').AsBoolean := Pessoa.Ativo;
    Query.ParamByName('REGIME').AsInteger := Pessoa.Regime;
    Query.ParamByName('PROMOTOR').AsInteger := Pessoa.Promotor;
    Query.ParamByName('COBRAR').AsBoolean := Pessoa.Cobrar;
    Query.ParamByName('VENDERAPRAZO').AsBoolean := Pessoa.VenderAPrazo;
    Query.ParamByName('DESCONTOVENDAAVISTA').AsFloat := Pessoa.DescontoVendaAVista;
    Query.ParamByName('ACRESCIMOVENDAPRAZO').AsFloat := Pessoa.AcrescimoVendaPrazo;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioPessoa.Atualizar(Pessoa: TPessoa);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE PESSOA SET RAZAO_SOCIAL = :RAZAO_SOCIAL, FANTASIA = :FANTASIA, CIDADE = :CIDADE, ENDERECO = :ENDERECO,' +
                      ' BAIRRO = :BAIRRO, CEP = :CEP, UF = :UF, EMAIL = :EMAIL, TELEFONE = :TELEFONE, NUMERO_ENDERECO = :NUMERO_ENDERECO, COMPLEMENTO = :COMPLEMENTO,' +
                      ' PONTO_REFERENCIA = :PONTO_REFERENCIA, CNPJCPF = :CNPJCPF, IERG = :IERG, DTA_CADASTRO = :DTA_CADASTRO, HRA_CADASTRO = :HRA_CADASTRO, ' +
                      ' DTA_NASCIMENTO = :DTA_NASCIMENTO, TIPO_FJ = :TIPO_FJ, LIMITE_LIBERADO = :LIMITE_LIBERADO, LIMITE_USADO = :LIMITE_USADO, OBSERVACAO = :OBSERVACAO,' +
                      ' TAXA_JURO = :TAXA_JURO, CONTRIBUINTE = :CONTRIBUINTE, CONSUMIDOR_FINAL = :CONSUMIDOR_FINAL, ID_PAIS = :ID_PAIS, ID_TIPOPESSOA = :ID_TIPOPESSOA, ' +
                      ' CODIGO_IBGE = :CODIGO_IBGE, INDIEDEST = :INDIEDEST, ATIVO = :ATIVO, REGIME = :REGIME, PROMOTOR = :PROMOTOR, COBRAR = :COBRAR,  ' +
                      ' VENDERAPRAZO = :VENDERAPRAZO, DESCONTOVENDAAVISTA = :DESCONTOVENDAAVISTA, ACRESCIMOVENDAPRAZO = :ACRESCIMOVENDAPRAZO WHERE ID = :ID';
    Query.ParamByName('RAZAO_SOCIAL').AsString := Pessoa.RazaoSocial;
    Query.ParamByName('FANTASIA').AsString := Pessoa.Fantasia;
    Query.ParamByName('CIDADE').AsString := Pessoa.Cidade;
    Query.ParamByName('ENDERECO').AsString := Pessoa.Endereco;
    Query.ParamByName('BAIRRO').AsString := Pessoa.Bairro;
    Query.ParamByName('CEP').AsString := Pessoa.CEP;
    Query.ParamByName('UF').AsString := Pessoa.UF;
    Query.ParamByName('EMAIL').AsString := Pessoa.Email;
    Query.ParamByName('TELEFONE').AsString := Pessoa.Telefone;
    Query.ParamByName('NUMERO_ENDERECO').AsString := Pessoa.NumeroEndereco;
    Query.ParamByName('COMPLEMENTO').AsString := Pessoa.Complemento;
    Query.ParamByName('PONTO_REFERENCIA').AsString := Pessoa.PontoReferencia;
    Query.ParamByName('CNPJCPF').AsString := Pessoa.CNPJCPF;
    Query.ParamByName('IERG').AsString := Pessoa.IERG;
    Query.ParamByName('DTA_CADASTRO').AsDate := Pessoa.DtaCadastro;
    Query.ParamByName('HRA_CADASTRO').AsTime := Pessoa.HraCadastro;
    Query.ParamByName('DTA_NASCIMENTO').AsDate := Pessoa.DtaNascimento;
    Query.ParamByName('TIPO_FJ').AsString := Pessoa.TipoFJ;
    Query.ParamByName('LIMITE_LIBERADO').AsFloat := Pessoa.LimiteLiberado;
    Query.ParamByName('LIMITE_USADO').AsFloat := Pessoa.LimiteUsado;
    Query.ParamByName('OBSERVACAO').AsString := Pessoa.Observacao;
    Query.ParamByName('TAXA_JURO').AsFloat := Pessoa.TaxaJuro;
    Query.ParamByName('CONTRIBUINTE').AsInteger := Pessoa.Contribuinte;
    Query.ParamByName('CONSUMIDOR_FINAL').AsInteger := Pessoa.ConsumidorFinal;
    Query.ParamByName('ID_PAIS').AsInteger := Pessoa.IDPais;
    Query.ParamByName('ID_TIPOPESSOA').AsInteger := Pessoa.IDTipoPessoa;
    Query.ParamByName('CODIGO_IBGE').AsString := Pessoa.CodigoIBGE;
    Query.ParamByName('INDIEDEST').AsInteger := Pessoa.IndIEDest;
    Query.ParamByName('ATIVO').AsBoolean := Pessoa.Ativo;
    Query.ParamByName('REGIME').AsInteger := Pessoa.Regime;
    Query.ParamByName('PROMOTOR').AsInteger := Pessoa.Promotor;
    Query.ParamByName('COBRAR').AsBoolean := Pessoa.Cobrar;
    Query.ParamByName('VENDERAPRAZO').AsBoolean := Pessoa.VenderAPrazo;
    Query.ParamByName('DESCONTOVENDAAVISTA').AsFloat := Pessoa.DescontoVendaAVista;
    Query.ParamByName('ACRESCIMOVENDAPRAZO').AsFloat := Pessoa.AcrescimoVendaPrazo;
    Query.ParamByName('ID').AsInteger := Pessoa.ID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

procedure TRepositorioPessoa.Deletar(AID: Integer);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'DELETE FROM PESSOA WHERE ID = :ID';
    Query.ParamByName('ID').AsInteger := AID;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.
