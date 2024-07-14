unit Controller.ConfigCertificado;

interface

uses
  Service.ConfigCertificado, ConfigCertificado, FireDAC.Comp.Client;

type
  TConfigCertificadoController = class
  private
    FService: TConfigCertificadoService;
  public
    procedure Save(ACertificado: TConfigCertificado);
    function LoadByFilial(AFilial: Integer): TConfigCertificado;
    constructor Create;
    destructor Destroy;
  end;

implementation

procedure TConfigCertificadoController.Save(ACertificado: TConfigCertificado);
begin
  FService.Save(ACertificado);
end;

constructor TConfigCertificadoController.Create;
begin
  FService := TConfigCertificadoService.Create;
end;

destructor TConfigCertificadoController.Destroy;
begin
  FService.Free;
  inherited;
end;

function TConfigCertificadoController.LoadByFilial(AFilial: Integer): TConfigCertificado;
begin
  Result := FService.LoadByFilial(AFilial);
end;

end.

