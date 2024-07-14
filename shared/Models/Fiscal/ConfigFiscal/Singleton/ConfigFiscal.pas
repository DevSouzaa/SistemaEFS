unit ConfigFiscal;

interface

uses
  ConfigCertificado,
  ConfigGeral,
  ConfigDanfe,
  ConfigDiversos,
  ConfigPosPrinter,
  ConfigProxy,
  ConfigWebService,
  ConfigArquivos,

  Controller.ConfigCertificado,
  Controller.ConfigGeral,
  Controller.ConfigDanfe,
  Controller.ConfigDiversos,
  Controller.ConfigPosPrinter,
  Controller.ConfigProxy,
  Controller.ConfigWebService,
  Controller.ConfigArquivos,
  System.SysUtils;

type
  TConfigFiscal = class
  private
    FConfigCertificado:  TConfigCertificado;
    FConfigGeral:        TConfigGeral;
    FConfigDanfe:        TConfigDanfe;
    FConfigDiversos:     TConfigDiversos;
    FConfigPosPrinter:   TConfigPosPrinter;
    FConfigProxy:        TConfigProxy;
    FConfigWebService:   TConfigWebService;
    FConfigArquivos:     TConfigArquivos;

    FConfigCertificadoController: TConfigCertificadoController;
    FConfigGeralController:       TConfigGeralController;
    FConfigDanfeController:       TConfigDanfeController;
    FConfigDiversosController:    TConfigDiversosController;
    FConfigPosPrinterController:  TConfigPosPrinterController;
    FConfigProxyController:       TConfigProxyController;
    FConfigWebServiceController:  TConfigWebServiceController;
    FConfigArquivosController:    TConfigArquivosController;

    class var FInstance: TConfigFiscal;
    constructor Create;
  public
    class function GetInstance: TConfigFiscal;
    procedure LoadConfigurations;
    procedure SaveConfigurations;

    property ConfigCertificado: TConfigCertificado read FConfigCertificado write FConfigCertificado;
    property ConfigGeral:       TConfigGeral       read FConfigGeral       write FConfigGeral;
    property ConfigDanfe:       TConfigDanfe       read FConfigDanfe       write FConfigDanfe;
    property ConfigDiversos:    TConfigDiversos    read FConfigDiversos    write FConfigDiversos;
    property ConfigPosPrinter:  TConfigPosPrinter  read FConfigPosPrinter  write FConfigPosPrinter;
    property ConfigProxy:       TConfigProxy       read FConfigProxy       write FConfigProxy;
    property ConfigWebService:  TConfigWebService  read FConfigWebService  write FConfigWebService;
    property ConfigArquivos:    TConfigArquivos    read FConfigArquivos    write FConfigArquivos;
  end;

implementation

{ TConfigFiscal }

constructor TConfigFiscal.Create;
begin
  inherited Create;

  FConfigCertificado := TConfigCertificado.Create;
  FConfigGeral       := TConfigGeral.Create;
  FConfigDanfe       := TConfigDanfe.Create;
  FConfigDiversos    := TConfigDiversos.Create;
  FConfigPosPrinter  := TConfigPosPrinter.Create;
  FConfigProxy       := TConfigProxy.Create;
  FConfigWebService  := TConfigWebService.Create;
  FConfigArquivos    := TConfigArquivos.Create;

  FConfigCertificadoController := TConfigCertificadoController.Create;
  FConfigGeralController       := TConfigGeralController.Create;
  FConfigDanfeController       := TConfigDanfeController.Create;
  FConfigDiversosController    := TConfigDiversosController.Create;
  FConfigPosPrinterController  := TConfigPosPrinterController.Create;
  FConfigProxyController       := TConfigProxyController.Create;
  FConfigWebServiceController  := TConfigWebServiceController.Create;
  FConfigArquivosController    := TConfigArquivosController.Create;

  LoadConfigurations;
end;

class function TConfigFiscal.GetInstance: TConfigFiscal;
begin
  if not Assigned(FInstance) then
  begin
    FInstance := TConfigFiscal.Create;
  end;
  Result := FInstance;
end;

procedure TConfigFiscal.LoadConfigurations;
begin
  FConfigCertificado := FConfigCertificadoController.LoadByFilial(1);
  FConfigGeral       := FConfigGeralController.LoadByCodigo(1);
  FConfigDanfe       := FConfigDanfeController.LoadByCodigo(1);
  FConfigDiversos    := FConfigDiversosController.LoadByCodigo(1);
  FConfigPosPrinter  := FConfigPosPrinterController.LoadByCodigo(1);
  FConfigProxy       := FConfigProxyController.LoadByCodigo(1);
  FConfigWebService  := FConfigWebServiceController.LoadByCodigo(1);
  FConfigArquivos := FConfigArquivosController.LoadByCodigo(1);
end;

procedure TConfigFiscal.SaveConfigurations;
begin
  FConfigCertificadoController.Save(FConfigCertificado);
  FConfigGeralController.Save(FConfigGeral);
  FConfigDanfeController.Save(FConfigDanfe);
  FConfigDiversosController.Save(FConfigDiversos);
  FConfigPosPrinterController.Save(FConfigPosPrinter);
  FConfigProxyController.Save(FConfigProxy);
  FConfigWebServiceController.Save(FConfigWebService);
  FConfigArquivosController.Save(FConfigArquivos);
end;

end.

