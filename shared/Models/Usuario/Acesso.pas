unit Acesso;

interface

uses
  SysUtils, Classes, Enums;

type
  TAcesso = class
  private
    FId: Integer;
    FPerfilId: Integer;
    FAcaoId: Integer;
    FInserir: Boolean;
    FAlterar: Boolean;
    FExcluir: Boolean;
    FListar: Boolean;
  public
    property Id: Integer read FId write FId;
    property PerfilId: Integer read FPerfilId write FPerfilId;
    property AcaoId: Integer read FAcaoId write FAcaoId;
    property Inserir: Boolean read FInserir write FInserir;
    property Alterar: Boolean read FAlterar write FAlterar;
    property Excluir: Boolean read FExcluir write FExcluir;
    property Listar: Boolean read FListar write FListar;
  end;

implementation

end.

end.
