unit Controller.ConfigWebService;

interface

uses
  Service.ConfigWebService, ConfigWebService, System.SysUtils;

type
  TConfigWebServiceController = class
  private
    FService: TConfigWebServiceService;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AWebService: TConfigWebService);
    function LoadByCodigo(ACodigo: Integer): TConfigWebService;
  end;

implementation

constructor TConfigWebServiceController.Create;
begin
  FService := TConfigWebServiceService.Create;
end;

destructor TConfigWebServiceController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigWebServiceController.Save(AWebService: TConfigWebService);
begin
  // Additional logic or validations before saving can be added here
  FService.Save(AWebService);
end;

function TConfigWebServiceController.LoadByCodigo(ACodigo: Integer): TConfigWebService;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

