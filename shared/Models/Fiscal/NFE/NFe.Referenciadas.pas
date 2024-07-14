unit NFe.Referenciadas;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFeReferenciadas = class
  private
    FIDNFe: Integer;
    FRefNF_cUF: Integer;
    FRefNF_AAMM: string;
    FRefNF_CNPJ: string;
    FRefNF_Modelo: Integer;
    FRefNF_Serie: Integer;
    FRefNF_NNF: Integer;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property RefNF_cUF: Integer read FRefNF_cUF write FRefNF_cUF;
    property RefNF_AAMM: string read FRefNF_AAMM write FRefNF_AAMM;
    property RefNF_CNPJ: string read FRefNF_CNPJ write FRefNF_CNPJ;
    property RefNF_Modelo: Integer read FRefNF_Modelo write FRefNF_Modelo;
    property RefNF_Serie: Integer read FRefNF_Serie write FRefNF_Serie;
    property RefNF_NNF: Integer read FRefNF_NNF write FRefNF_NNF;
  end;

implementation

end.

