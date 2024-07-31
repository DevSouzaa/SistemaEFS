unit Controller.Pessoa;

interface

uses
  System.Generics.Collections, Model.Pessoa, Service.Pessoa;

type
  TPessoaController = class
  private
    FPessoaService: TPessoaService;
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

constructor TPessoaController.Create;
begin
  FPessoaService := TPessoaService.Create;
end;

destructor TPessoaController.Destroy;
begin
  FPessoaService.Free;
  inherited;
end;

function TPessoaController.ObterTodos: TObjecTList<TPessoa>;
begin
  Result := FPessoaService.ObterTodos;
end;

function TPessoaController.ObterPorId(AID: Integer): TPessoa;
begin
  Result := FPessoaService.ObterPorId(AID);
end;

function TPessoaController.ObterPorNome(ANome: string): TObjecTList<TPessoa>;
begin
  Result := FPessoaService.ObterPorNome(ANome);
end;

procedure TPessoaController.Salvar(Pessoa: TPessoa);
begin
  FPessoaService.Salvar(Pessoa);
end;

procedure TPessoaController.Deletar(AID: Integer);
begin
  FPessoaService.Deletar(AID);
end;

end.

