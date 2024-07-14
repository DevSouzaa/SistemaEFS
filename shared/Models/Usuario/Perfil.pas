unit Perfil;

interface

uses
  SysUtils, Classes;

type
  TPerfil = class
  private
    FId: Integer;
    FNome: string;
  public
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
  end;

implementation

end.

end.
