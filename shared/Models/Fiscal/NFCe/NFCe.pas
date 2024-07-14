unit NFCe;

interface

uses
  System.SysUtils, System.Classes, Generics.Collections, NFCe.Emitente, NFCe.Destinatario, NFCe.Total, NFCe.Transporte, NFCe.Pagamento, NFCe.InfAdic, NFCe.Retorno;

type
  TNFCe = class
  private
    FIDNFCe: Integer;
    FIDE_nAtOp: string;
    FIDE_indPag: string;
    FIDE_modelo: Integer;
    FIDE_serie: Integer;
    FIDE_nNF: Integer;
    FIDE_cNF: Integer;
    FIDE_dEmi: TDateTime;
    FIDE_dSaiEnt: TDateTime;
    FIDE_hSaiEnt: TTime;
    FIDE_tpNF: string;
    FIDE_tpEmis: string;
    FIDE_tpAmb: string;
    FIDE_cUF: Integer;
    FIDE_cMunFG: Integer;
    FIDE_finNFe: string;
    FIDE_tpImp: string;
    FIDE_indFinal: string;
    FIDE_indPres: string;
    FIDE_indIntermed: string;
    FEmitente: TNFCeEmitente;
    FDestinatario: TNFCeDestinatario;
    FTotal: TNFCeTotal;
    FTransporte: TNFCeTransporte;
    FPagamento: TNFCePagamento;
    FInfAdic: TNFCeInfAdic;
    FRetorno: TNFCeRetorno;
    FIDEmpresa: Integer;
    FNum_Docs_Emitidos: string;
    FDEST_IDDestinatario: Integer;
    FRETORNO_Evento_acao: string;
  public
    constructor Create;
    destructor Destroy; override;
    property IDNFCe: Integer read FIDNFCe write FIDNFCe;
    property IDE_nAtOp: string read FIDE_nAtOp write FIDE_nAtOp;
    property IDE_indPag: string read FIDE_indPag write FIDE_indPag;
    property IDE_modelo: Integer read FIDE_modelo write FIDE_modelo;
    property IDE_serie: Integer read FIDE_serie write FIDE_serie;
    property IDE_nNF: Integer read FIDE_nNF write FIDE_nNF;
    property IDE_cNF: Integer read FIDE_cNF write FIDE_cNF;
    property IDE_dEmi: TDateTime read FIDE_dEmi write FIDE_dEmi;
    property IDE_dSaiEnt: TDateTime read FIDE_dSaiEnt write FIDE_dSaiEnt;
    property IDE_hSaiEnt: TTime read FIDE_hSaiEnt write FIDE_hSaiEnt;
    property IDE_tpNF: string read FIDE_tpNF write FIDE_tpNF;
    property IDE_tpEmis: string read FIDE_tpEmis write FIDE_tpEmis;
    property IDE_tpAmb: string read FIDE_tpAmb write FIDE_tpAmb;
    property IDE_cUF: Integer read FIDE_cUF write FIDE_cUF;
    property IDE_cMunFG: Integer read FIDE_cMunFG write FIDE_cMunFG;
    property IDE_finNFe: string read FIDE_finNFe write FIDE_finNFe;
    property IDE_tpImp: string read FIDE_tpImp write FIDE_tpImp;
    property IDE_indFinal: string read FIDE_indFinal write FIDE_indFinal;
    property IDE_indPres: string read FIDE_indPres write FIDE_indPres;
    property IDE_indIntermed: string read FIDE_indIntermed write FIDE_indIntermed;
    property Emitente: TNFCeEmitente read FEmitente write FEmitente;
    property Destinatario: TNFCeDestinatario read FDestinatario write FDestinatario;
    property Total: TNFCeTotal read FTotal write FTotal;
    property Transporte: TNFCeTransporte read FTransporte write FTransporte;
    property Pagamento: TNFCePagamento read FPagamento write FPagamento;
    property InfAdic: TNFCeInfAdic read FInfAdic write FInfAdic;
    property Retorno: TNFCeRetorno read FRetorno write FRetorno;
    property IDEmpresa: Integer read FIDEmpresa write FIDEmpresa;
    property Num_Docs_Emitidos: string read FNum_Docs_Emitidos write FNum_Docs_Emitidos;
    property DEST_IDDestinatario: Integer read FDEST_IDDestinatario write FDEST_IDDestinatario;
    property RETORNO_Evento_acao: string read FRETORNO_Evento_acao write FRETORNO_Evento_acao;
  end;

implementation

constructor TNFCe.Create;
begin
  FEmitente := TNFCeEmitente.Create;
  FDestinatario := TNFCeDestinatario.Create;
  FTotal := TNFCeTotal.Create;
  FTransporte := TNFCeTransporte.Create;
  FPagamento := TNFCePagamento.Create;
  FInfAdic := TNFCeInfAdic.Create;
  FRetorno := TNFCeRetorno.Create;
end;

destructor TNFCe.Destroy;
begin
  FEmitente.Free;
  FDestinatario.Free;
  FTotal.Free;
  FTransporte.Free;
  FPagamento.Free;
  FInfAdic.Free;
  FRetorno.Free;
  inherited;
end;

end.

