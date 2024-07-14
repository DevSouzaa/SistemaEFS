unit Service.ConfigPosPrinter;

interface

uses
  Repositorio.ConfigPosPrinter, ConfigPosPrinter, System.SysUtils;

type
  TConfigPosPrinterService = class
  private
    FRepositorio: TConfigPosPrinterRepositorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(APosPrinter: TConfigPosPrinter);
    function LoadByCodigo(ACodigo: Integer): TConfigPosPrinter;
  end;

implementation

constructor TConfigPosPrinterService.Create;
begin
  FRepositorio := TConfigPosPrinterRepositorio.Create;
end;

destructor TConfigPosPrinterService.Destroy;
begin
  FRepositorio.Free;
  inherited;
end;

procedure TConfigPosPrinterService.Save(APosPrinter: TConfigPosPrinter);
begin
  // Validations or business logic can be added here before saving
  FRepositorio.Save(APosPrinter);
end;

function TConfigPosPrinterService.LoadByCodigo(ACodigo: Integer): TConfigPosPrinter;
begin
  Result := FRepositorio.LoadByCodigo(ACodigo);
end;

end.

