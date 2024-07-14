unit Service.ConfigDanfe;

interface

uses
  Repositorio.ConfigDanfe, ConfigDanfe, System.SysUtils;

type
  TConfigDanfeService = class
  private
    FRepositorio: TConfigDanfeRepositorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(ADanfe: TConfigDanfe);
    function LoadByCodigo(ACodigo: Integer): TConfigDanfe;
  end;

implementation

constructor TConfigDanfeService.Create;
begin
  FRepositorio := TConfigDanfeRepositorio.Create;
end;

destructor TConfigDanfeService.Destroy;
begin
  FRepositorio.Free;
  inherited;
end;

procedure TConfigDanfeService.Save(ADanfe: TConfigDanfe);
begin
  // Validations or business logic can be added here before saving
  FRepositorio.Save(ADanfe);
end;

function TConfigDanfeService.LoadByCodigo(ACodigo: Integer): TConfigDanfe;
begin
  Result := FRepositorio.LoadByCodigo(ACodigo);
end;

end.

