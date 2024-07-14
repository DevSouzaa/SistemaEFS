unit Service.ConfigCertificado;

interface

uses
  Repositorio.ConfigCertificado, ConfigCertificado, FireDAC.Comp.Client;

type
  TConfigCertificadoService = class
  private
    FRepository: TConfigCertificadoRepositorio;
  public

    procedure Save(ACertificado: TConfigCertificado);
    function LoadByFilial(AFilial: Integer): TConfigCertificado;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

procedure TConfigCertificadoService.Save(ACertificado: TConfigCertificado);
begin
  FRepository.Save(ACertificado);
end;

constructor TConfigCertificadoService.Create;
begin
  FRepository := TConfigCertificadoRepositorio.Create;
end;

destructor TConfigCertificadoService.Destroy;
begin
  FRepository.Free;
  inherited;
end;

function TConfigCertificadoService.LoadByFilial(AFilial: Integer): TConfigCertificado;
begin
  Result := FRepository.LoadByFilial(AFilial);
end;

end.

