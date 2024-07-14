unit Controller.ConfigPosPrinter;

interface

uses
  Service.ConfigPosPrinter, ConfigPosPrinter, System.SysUtils;

type
  TConfigPosPrinterController = class
  private
    FService: TConfigPosPrinterService;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(APosPrinter: TConfigPosPrinter);
    function LoadByCodigo(ACodigo: Integer): TConfigPosPrinter;
  end;

implementation

constructor TConfigPosPrinterController.Create;
begin
  FService := TConfigPosPrinterService.Create;
end;

destructor TConfigPosPrinterController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigPosPrinterController.Save(APosPrinter: TConfigPosPrinter);
begin
  // Additional logic or validations before saving can be added here
  FService.Save(APosPrinter);
end;

function TConfigPosPrinterController.LoadByCodigo(ACodigo: Integer): TConfigPosPrinter;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

