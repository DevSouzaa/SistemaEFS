unit sistema.recordes.constantes;

interface
type
  TSistemaConstantes = record
    ServidorOuTerminal: string;
    IPServidor: string;
    PASTA_SISTEMA: string;

    //Dados Empresa
    IdEmpresa: integer;
    Serie_NFe: integer;
    Serie_NFCe: integer;
    EmiteFiscal: string;

    //Fiscal
    Id_DFe: integer;
    Id_Venda: integer;

end;

var
  FSistemaConstantes: TSistemaConstantes;    //07-06-2024

implementation

end.
