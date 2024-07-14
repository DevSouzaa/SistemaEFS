unit Controller.ConfigDiversos;

interface

uses
  Service.ConfigDiversos, ConfigDiversos, System.SysUtils;

type
  TConfigDiversosController = class
  private
    FService: TConfigDiversosService;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(ADiversos: TConfigDiversos);
    function LoadByCodigo(ACodigo: Integer): TConfigDiversos;
  end;

implementation

constructor TConfigDiversosController.Create;
begin
  FService := TConfigDiversosService.Create;
end;

destructor TConfigDiversosController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigDiversosController.Save(ADiversos: TConfigDiversos);
begin
  // Additional logic or validations before saving can be added here
  FService.Save(ADiversos);
end;

function TConfigDiversosController.LoadByCodigo(ACodigo: Integer): TConfigDiversos;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

