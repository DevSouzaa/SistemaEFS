unit Service.Pessoa;

interface

uses
  System.Generics.Collections, Model.Pessoa, Repositorio.Pessoa;

type
  TPessoaService = class
  private
    FRepositorioPessoa: TRepositorioPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    function ObterTodos: TObjecTList<TPessoa>;
    function ObterPorId(AID: Integer): TPessoa;
    function ObterPorNome(ANome: string): TObjecTList<TPessoa>;
    procedure Salvar(Pessoa: TPessoa);
    procedure Deletar(AID: Integer);
  end;

implementation

constructor TPessoaService.Create;
begin
  FRepositorioPessoa := TRepositorioPessoa.Create;
end;

destructor TPessoaService.Destroy;
begin
  FRepositorioPessoa.Free;
  inherited;
end;

function TPessoaService.ObterTodos: TObjecTList<TPessoa>;
begin
  Result := FRepositorioPessoa.ObterTodos;
end;

function TPessoaService.ObterPorId(AID: Integer): TPessoa;
begin
  Result := FRepositorioPessoa.ObterPorId(AID);
end;

function TPessoaService.ObterPorNome(ANome: string): TObjecTList<TPessoa>;
begin
  Result := FRepositorioPessoa.ObterPorNome(ANome);
end;

procedure TPessoaService.Salvar(Pessoa: TPessoa);
begin
  if Pessoa.ID = 0 then
    FRepositorioPessoa.Inserir(Pessoa)
  else
    FRepositorioPessoa.Atualizar(Pessoa);
end;

procedure TPessoaService.Deletar(AID: Integer);
begin
  FRepositorioPessoa.Deletar(AID);
end;

end.

