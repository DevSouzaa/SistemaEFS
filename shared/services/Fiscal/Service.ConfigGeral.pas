unit Service.ConfigGeral;

interface

uses
  Repositorio.ConfigGeral, ConfigGeral, System.SysUtils;

type
  TConfigGeralService = class
  private
    FRepositorio: TConfigGeralRepositorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AGeral: TConfigGeral);
    function LoadByCodigo(ACodigo: Integer): TConfigGeral;
  end;

implementation

constructor TConfigGeralService.Create;
begin
  FRepositorio := TConfigGeralRepositorio.Create;
end;

destructor TConfigGeralService.Destroy;
begin
  FRepositorio.Free;
  inherited;
end;

procedure TConfigGeralService.Save(AGeral: TConfigGeral);
begin
  // Validations or business logic can be added here before saving
  FRepositorio.Save(AGeral);
end;

function TConfigGeralService.LoadByCodigo(ACodigo: Integer): TConfigGeral;
begin
  Result := FRepositorio.LoadByCodigo(ACodigo);
end;

end.

