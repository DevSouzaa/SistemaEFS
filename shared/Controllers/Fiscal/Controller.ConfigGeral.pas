unit Controller.ConfigGeral;

interface

uses
  Service.ConfigGeral, ConfigGeral, System.SysUtils;

type
  TConfigGeralController = class
  private
    FService: TConfigGeralService;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AGeral: TConfigGeral);
    function LoadByCodigo(ACodigo: Integer): TConfigGeral;
  end;

implementation

constructor TConfigGeralController.Create;
begin
  FService := TConfigGeralService.Create;
end;

destructor TConfigGeralController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigGeralController.Save(AGeral: TConfigGeral);
begin
  // Additional logic or validations before saving can be added here
  FService.Save(AGeral);
end;

function TConfigGeralController.LoadByCodigo(ACodigo: Integer): TConfigGeral;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

