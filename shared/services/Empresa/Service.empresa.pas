unit Service.Empresa;

interface

uses
  Empresa, Repositorio.Empresa, Generics.Collections, System.SysUtils;

type
  TServiceEmpresa = class
  private
    FRepositorio: TRepositorioEmpresa;

  public
    constructor Create;
    destructor destroy;override;
    function ObterPorId(Id: Integer): TEmpresa;
    function ObterFilialPadrao: TEmpresa;
    function ObterTodas: TList<TEmpresa>;
    function Atualizar(Empresa: TEmpresa): Boolean;
    function Inserir(Empresa: TEmpresa): Boolean;
    function Deletar(Id: Integer): Boolean;
    function ObterPorNome(Nome: string): TList<TEmpresa>;
  end;

implementation

constructor TServiceEmpresa.Create;
begin
  FRepositorio := TRepositorioEmpresa.Create;
end;

function TServiceEmpresa.ObterPorId(Id: Integer): TEmpresa;
begin
  Result := FRepositorio.ObterPorId(Id);
end;

function TServiceEmpresa.ObterPorNome(Nome: string): TList<TEmpresa>;
begin
  Result := FRepositorio.ObterPorNome(Nome);
end;

function TServiceEmpresa.ObterTodas: TList<TEmpresa>;
begin
  Result := FRepositorio.ObterTodos;
end;

function TServiceEmpresa.Atualizar(Empresa: TEmpresa): Boolean;
begin
    Result := FRepositorio.Atualizar(Empresa);
end;

function TServiceEmpresa.Inserir(Empresa: TEmpresa): Boolean;
begin
    Result := FRepositorio.Inserir(Empresa);
end;

function TServiceEmpresa.Deletar(Id: Integer): Boolean;
begin
  Result := FRepositorio.Deletar(Id);
end;

destructor TServiceEmpresa.destroy;
begin
  FRepositorio.Free;
  inherited;
end;

function TServiceEmpresa.ObterFilialPadrao: TEmpresa;
begin
  Result := FRepositorio.ObterFilialPadrao;
end;

end.

