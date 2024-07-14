unit Service.Empresa;

interface

uses
  Empresa, Repositorio.Empresa, Generics.Collections;

type
  TServiceEmpresa = class
  private
    FRepositorio: TRepositorioEmpresa;

  public
    constructor Create;
    function ObterPorId(Id: Integer): TEmpresa;
    function ObterFilialPadrao: TEmpresa;
    function ObterTodas: TList<TEmpresa>;
    function Salvar(Empresa: TEmpresa): Boolean;
    function Deletar(Id: Integer): Boolean;
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

function TServiceEmpresa.ObterTodas: TList<TEmpresa>;
begin
  Result := FRepositorio.ObterTodos;
end;

function TServiceEmpresa.Salvar(Empresa: TEmpresa): Boolean;
begin
  if Empresa.Id = 0 then
    Result := FRepositorio.Inserir(Empresa)
  else
    Result := FRepositorio.Atualizar(Empresa);
end;

function TServiceEmpresa.Deletar(Id: Integer): Boolean;
begin
  Result := FRepositorio.Deletar(Id);
end;

function TServiceEmpresa.ObterFilialPadrao: TEmpresa;
begin
  Result := FRepositorio.ObterFilialPadrao;
end;

end.
