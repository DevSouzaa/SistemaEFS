unit Controller.ConfigProxy;

interface

uses
  Service.ConfigProxy, ConfigProxy, System.SysUtils;

type
  TConfigProxyController = class
  private
    FService: TConfigProxyService;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AProxy: TConfigProxy);
    function LoadByCodigo(ACodigo: Integer): TConfigProxy;
  end;

implementation

constructor TConfigProxyController.Create;
begin
  FService := TConfigProxyService.Create;
end;

destructor TConfigProxyController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigProxyController.Save(AProxy: TConfigProxy);
begin
  // Additional logic or validations before saving can be added here
  FService.Save(AProxy);
end;

function TConfigProxyController.LoadByCodigo(ACodigo: Integer): TConfigProxy;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

