unit NFE;

interface

uses
  System.Classes, System.SysUtils;

type
  TNFe = class
  private
    FIDNFe: Integer;
    FIDE_NatOp: string;
    FIDE_IndPag: string;
    FIDE_Modelo: Integer;
    FIDE_Serie: Integer;
    FIDE_NNF: Integer;
    FIDE_cNF: Integer;
    FIDE_DEmi: TDateTime;
    FIDE_DSaiEnt: TDateTime;
    FIDE_HSaiEnt: TDateTime;
    FIDE_TpNF: string;
    FIDE_TpEmis: string;
    FIDE_TpAmb: string;
    FIDE_VerProc: string;
    FIDE_cUF: Integer;
    FIDE_cMunFG: Integer;
    FIDE_FinNFe: string;
    FIDE_TpImp: string;
    FIDE_IndIntermed: string;
    FIDE_DhCont: TDateTime;
    FIDE_xJust: string;
  public
    property IDNFe: Integer read FIDNFe write FIDNFe;
    property IDE_NatOp: string read FIDE_NatOp write FIDE_NatOp;
    property IDE_IndPag: string read FIDE_IndPag write FIDE_IndPag;
    property IDE_Modelo: Integer read FIDE_Modelo write FIDE_Modelo;
    property IDE_Serie: Integer read FIDE_Serie write FIDE_Serie;
    property IDE_NNF: Integer read FIDE_NNF write FIDE_NNF;
    property IDE_cNF: Integer read FIDE_cNF write FIDE_cNF;
    property IDE_DEmi: TDateTime read FIDE_DEmi write FIDE_DEmi;
    property IDE_DSaiEnt: TDateTime read FIDE_DSaiEnt write FIDE_DSaiEnt;
    property IDE_HSaiEnt: TDateTime read FIDE_HSaiEnt write FIDE_HSaiEnt;
    property IDE_TpNF: string read FIDE_TpNF write FIDE_TpNF;
    property IDE_TpEmis: string read FIDE_TpEmis write FIDE_TpEmis;
    property IDE_TpAmb: string read FIDE_TpAmb write FIDE_TpAmb;
    property IDE_VerProc: string read FIDE_VerProc write FIDE_VerProc;
    property IDE_cUF: Integer read FIDE_cUF write FIDE_cUF;
    property IDE_cMunFG: Integer read FIDE_cMunFG write FIDE_cMunFG;
    property IDE_FinNFe: string read FIDE_FinNFe write FIDE_FinNFe;
    property IDE_TpImp: string read FIDE_TpImp write FIDE_TpImp;
    property IDE_IndIntermed: string read FIDE_IndIntermed write FIDE_IndIntermed;
    property IDE_DhCont: TDateTime read FIDE_DhCont write FIDE_DhCont;
    property IDE_xJust: string read FIDE_xJust write FIDE_xJust;
  end;

implementation

end.

