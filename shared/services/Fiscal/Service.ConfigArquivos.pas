unit Service.ConfigArquivos;

interface

uses
  Repositorio.ConfigArquivos, ConfigArquivos;

type
  TConfigArquivosService = class
  private
    FRepository: TConfigArquivosRepositorio;
  public
    procedure Save(AConfig: TConfigArquivos);
    function LoadByCodigo(ACodigo: Integer): TConfigArquivos;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TConfigArquivosService.Create;
begin
  FRepository := TConfigArquivosRepositorio.Create;
end;

destructor TConfigArquivosService.Destroy;
begin
  FRepository.Free;
  inherited;
end;

procedure TConfigArquivosService.Save(AConfig: TConfigArquivos);
begin
  FRepository.Save(AConfig);
end;

function TConfigArquivosService.LoadByCodigo(ACodigo: Integer): TConfigArquivos;
begin
  Result := FRepository.LoadByCodigo(ACodigo);
end;

end.

