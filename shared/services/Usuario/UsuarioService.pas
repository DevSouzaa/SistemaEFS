unit UsuarioService;

interface

uses
  Usuario.model, Acesso.model, SysUtils, Generics.Collections, Enums, Dm.Principal, FireDAC.Comp.Client, Empresa.model, vcl.Forms, UFuncoes;

type
  TUsuarioService = class
  private
    function CarregarAcessos(IDPerfil: Integer): TList<TAcesso>;
  public
    function Autenticar(Login, Senha: string): TUsuario;
    function TemPermissao(Usuario: TUsuario; AcaoId: Integer; Permissao: TAcaoUser): Boolean;
    function CarregarEmpresas: TList<TEmpresa>;
  end;

implementation

{ TUsuarioService }

function TUsuarioService.CarregarAcessos(IDPerfil: Integer): TList<TAcesso>;
var
  Query: TFDQuery;
  Acessos: TList<TAcesso>;
  Acesso: TAcesso;
begin
  Acessos := TList<TAcesso>.Create;

  if IDPerfil = 0 then
  raise Exception.Create('IDPerfil n�o pode ser zero.');

  Query := DmPrincipal.ExecutarQuery(DmPrincipal.QRY_Acesso, 'SELECT * FROM ACESSOS WHERE IDPERFIL = :IDPERFIL', [IDPerfil]);
  try
    while not Query.Eof do
    begin
      Acesso := TAcesso.Create;
      Acesso.Id := Query.FieldByName('IDACESSOS').AsInteger;
      Acesso.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Acesso.AcaoId := Query.FieldByName('IDACAO').AsInteger;
      Acesso.Inserir := Query.FieldByName('INSERIR').AsBoolean;
      Acesso.Alterar := Query.FieldByName('ALTERAR').AsBoolean;
      Acesso.Excluir := Query.FieldByName('EXCLUIR').AsBoolean;
      Acesso.Listar := Query.FieldByName('LISTAR').AsBoolean;
      Acessos.Add(Acesso);
      Query.Next;
    end;
  finally
    Query.Close;
  end;
  Result := Acessos;
end;

function TUsuarioService.Autenticar(Login, Senha: string): TUsuario;
var
  Query: TFDQuery;
  Usuario: TUsuario;
begin

     fnc_CriarMensagem('Erro de Autentica��o', 'Usu�rio N�o Encontrado',
        'Usu�rio n�o encontrado. Verifique o login informado.', ExtractFilePath(Application.ExeName) + '\Icones\Atencao.png', 'OK');


  Query := DmPrincipal.ExecutarQuery(DmPrincipal.QRY_Usuario, 'SELECT * FROM USUARIOS WHERE LOGIN = :LOGIN', [Login]);
  try
    if not Query.Eof then
    begin
      Usuario := TUsuario.Create;
      Usuario.Id := Query.FieldByName('ID').AsInteger;
      Usuario.Nome := Query.FieldByName('NOME').AsString;
      Usuario.Login := Query.FieldByName('LOGIN').AsString;
      Usuario.Senha := Query.FieldByName('SENHA').AsString;
      Usuario.PerfilId := Query.FieldByName('IDPERFIL').AsInteger;
      Result := Usuario;
    end
    else
      Result := nil;
  finally
    Query.Close;
  end;
end;

function TUsuarioService.TemPermissao(Usuario: TUsuario; AcaoId: Integer; Permissao: TAcaoUser): Boolean;
var
  Acessos: TList<TAcesso>;
  Acesso: TAcesso;
begin

  if not Assigned(Usuario) then
    raise Exception.Create('Usu�rio n�o pode ser nulo.');


  Acessos := CarregarAcessos(Usuario.PerfilId);
  try
    for Acesso in Acessos do
    begin
      if Acesso.AcaoId = AcaoId then
      begin
        case Permissao of
          AcUInserir: Result := Acesso.Inserir;
          AcUAlterar: Result := Acesso.Alterar;
          AcUExcluir: Result := Acesso.Excluir;
          AcUListar: Result := Acesso.Listar;
        end;
        Exit(True);
      end;
    end;
    Result := False;
  finally
    Acessos.Free;
  end;
end;


function TUsuarioService.CarregarEmpresas: TList<TEmpresa>;
var
  Query: TFDQuery;
  Empresas: TList<TEmpresa>;
  Empresa: TEmpresa;
begin
  Empresas := TList<TEmpresa>.Create;
  Query := DMPrincipal.CarregarEmpresas;
  try
    while not Query.Eof do
    begin
      Empresa := TEmpresa.Create;
      Empresa.Id := Query.FieldByName('ID').AsInteger;
      Empresa.RazaoSocial := Query.FieldByName('RAZAOSOCIAL').AsString;
      Empresas.Add(Empresa);
      Query.Next;
    end;
  finally
    Query.Close;
  end;
  Result := Empresas;
end;

end.
