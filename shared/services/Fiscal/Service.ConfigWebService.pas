unit Service.ConfigWebService;

interface

uses
  Repositorio.ConfigWebService, ConfigWebService, System.SysUtils;

type
  TConfigWebServiceService = class
  private
    FRepositorio: TConfigWebServiceRepositorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AWebService: TConfigWebService);
    function LoadByCodigo(ACodigo: Integer): TConfigWebService;
  end;

implementation

constructor TConfigWebServiceService.Create;
begin
  FRepositorio := TConfigWebServiceRepositorio.Create;
end;

destructor TConfigWebServiceService.Destroy;
begin
  FRepositorio.Free;
  inherited;
end;

procedure TConfigWebServiceService.Save(AWebService: TConfigWebService);
begin
  // Validations or business logic can be added here before saving
  FRepositorio.Save(AWebService);
end;

function TConfigWebServiceService.LoadByCodigo(ACodigo: Integer): TConfigWebService;
begin
  Result := FRepositorio.LoadByCodigo(ACodigo);
end;

end.

