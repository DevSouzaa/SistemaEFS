unit NFE.Retorno;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeRetorno = class
  private
    FIDNFe: Integer;
    FRetorno_TpAmb: string;
    FRetorno_VerAplic: string;
    FRetorno_cStat: Integer;
    FRetorno_cUF: Integer;
    FRetorno_xMotivo: string;
    FRetorno_cMsg: Integer;
    FRetorno_xMsg: string;
    FRetorno_Recibo: string;
    FRetorno_Protocolo: string;
    FRetorno_chNFe: string;
    FRetorno_dhRecbto: TDateTime;
    FRetorno_digVal: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property Retorno_TpAmb: string read FRetorno_TpAmb write FRetorno_TpAmb;
    property Retorno_VerAplic: string read FRetorno_VerAplic write FRetorno_VerAplic;
    property Retorno_cStat: Integer read FRetorno_cStat write FRetorno_cStat;
    property Retorno_cUF: Integer read FRetorno_cUF write FRetorno_cUF;
    property Retorno_xMotivo: string read FRetorno_xMotivo write FRetorno_xMotivo;
    property Retorno_cMsg: Integer read FRetorno_cMsg write FRetorno_cMsg;
    property Retorno_xMsg: string read FRetorno_xMsg write FRetorno_xMsg;
    property Retorno_Recibo: string read FRetorno_Recibo write FRetorno_Recibo;
    property Retorno_Protocolo: string read FRetorno_Protocolo write FRetorno_Protocolo;
    property Retorno_chNFe: string read FRetorno_chNFe write FRetorno_chNFe;
    property Retorno_dhRecbto: TDateTime read FRetorno_dhRecbto write FRetorno_dhRecbto;
    property Retorno_digVal: string read FRetorno_digVal write FRetorno_digVal;
  end;

implementation

end.

