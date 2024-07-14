unit Controller.ConfigArquivos;

interface

uses
  Service.ConfigArquivos, ConfigArquivos;

type
  TConfigArquivosController = class
  private
    FService: TConfigArquivosService;
  public
    procedure Save(AConfig: TConfigArquivos);
    function LoadByCodigo(ACodigo: Integer): TConfigArquivos;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TConfigArquivosController.Create;
begin
  FService := TConfigArquivosService.Create;
end;

destructor TConfigArquivosController.Destroy;
begin
  FService.Free;
  inherited;
end;

procedure TConfigArquivosController.Save(AConfig: TConfigArquivos);
begin
  FService.Save(AConfig);
end;

function TConfigArquivosController.LoadByCodigo(ACodigo: Integer): TConfigArquivos;
begin
  Result := FService.LoadByCodigo(ACodigo);
end;

end.

