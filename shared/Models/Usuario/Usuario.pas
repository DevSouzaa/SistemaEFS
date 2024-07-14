unit Usuario;

interface

uses
  SysUtils, Classes, Enums;

type
  TUsuario = class
  private
    FId: Integer;
    FNome: string;
    FLogin: string;
    FSenha: string;
    FPerfilId: Integer;
  public
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Login: string read FLogin write FLogin;
    property Senha: string read FSenha write FSenha;
    property PerfilId: Integer read FPerfilId write FPerfilId;
    constructor Create;
  end;

implementation

constructor TUsuario.Create;
begin
  FId := 0;
  FNome := '';
  FLogin := '';
  FSenha := '';
  FPerfilId := 0;
end;

end.
