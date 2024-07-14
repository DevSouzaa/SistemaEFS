unit Service.ConfigProxy;

interface

uses
  Repositorio.ConfigProxy, ConfigProxy, System.SysUtils;

type
  TConfigProxyService = class
  private
    FRepositorio: TConfigProxyRepositorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AProxy: TConfigProxy);
    function LoadByCodigo(ACodigo: Integer): TConfigProxy;
  end;

implementation

constructor TConfigProxyService.Create;
begin
  FRepositorio := TConfigProxyRepositorio.Create;
end;

destructor TConfigProxyService.Destroy;
begin
  FRepositorio.Free;
  inherited;
end;

procedure TConfigProxyService.Save(AProxy: TConfigProxy);
begin
  // Validations or business logic can be added here before saving
  FRepositorio.Save(AProxy);
end;

function TConfigProxyService.LoadByCodigo(ACodigo: Integer): TConfigProxy;
begin
  Result := FRepositorio.LoadByCodigo(ACodigo);
end;

end.

