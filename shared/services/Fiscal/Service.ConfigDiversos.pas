unit Service.ConfigDiversos;

interface

uses
  Repositorio.ConfigDiversos, ConfigDiversos, System.SysUtils;

type
  TConfigDiversosService = class
  private
    FRepositorio: TConfigDiversosRepositorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(ADiversos: TConfigDiversos);
    function LoadByCodigo(ACodigo: Integer): TConfigDiversos;
  end;

implementation

constructor TConfigDiversosService.Create;
begin
  FRepositorio := TConfigDiversosRepositorio.Create;
end;

destructor TConfigDiversosService.Destroy;
begin
  FRepositorio.Free;
  inherited;
end;

procedure TConfigDiversosService.Save(ADiversos: TConfigDiversos);
begin
  // Validations or business logic can be added here before saving
  FRepositorio.Save(ADiversos);
end;

function TConfigDiversosService.LoadByCodigo(ACodigo: Integer): TConfigDiversos;
begin
  Result := FRepositorio.LoadByCodigo(ACodigo);
end;

end.

