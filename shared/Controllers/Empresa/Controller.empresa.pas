unit Controller.Empresa;

interface

uses
  Empresa, Service.Empresa, Generics.Collections;

type
  TControllerEmpresa = class
  private
    FService: TServiceEmpresa;

  public
    constructor Create;
    function ObterPorId(Id: Integer): TEmpresa;
    function ObterFilialPadrao: TEmpresa;
    function ObterTodas: TList<TEmpresa>;
    function Salvar(Empresa: TEmpresa): Boolean;
    function Deletar(Id: Integer): Boolean;
  end;

implementation

constructor TControllerEmpresa.Create;
begin
  FService := TServiceEmpresa.Create;
end;

function TControllerEmpresa.ObterPorId(Id: Integer): TEmpresa;
begin
  Result := FService.ObterPorId(Id);
end;

function TControllerEmpresa.ObterTodas: TList<TEmpresa>;
begin
  Result := FService.ObterTodas;
end;

function TControllerEmpresa.Salvar(Empresa: TEmpresa): Boolean;
begin
  Result := FService.Salvar(Empresa);
end;

function TControllerEmpresa.Deletar(Id: Integer): Boolean;
begin
  Result := FService.Deletar(Id);
end;

function TControllerEmpresa.ObterFilialPadrao: TEmpresa;
begin
  Result := FService.ObterFilialPadrao;
end;

end.

