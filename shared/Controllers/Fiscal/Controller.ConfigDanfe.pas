unit Controller.ConfigDanfe;

interface

uses
  Service.ConfigDanfe, ConfigDanfe, System.SysUtils;

type
  TConfigDanfeController = class
  private
    FService: TConfigDanfeService;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(ADanfe: TConfigDanfe);
    function LoadByCodigo(ACodigo: Integer): TConfigDanfe;
  end;

implementation

constructor TConfigDanfeController.Create;
begin
  FService := TConfigDanfeService.Create;
end;

destructor TConfigDanfeController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigDanfeController.Save(ADanfe: TConfigDanfe);
begin
  // Additional logic or validations before saving can be added here
  FService.Save(ADanfe);
end;

function TConfigDanfeController.LoadByCodigo(ACodigo: Integer): TConfigDanfe;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

