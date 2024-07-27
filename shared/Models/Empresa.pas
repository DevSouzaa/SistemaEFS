unit Empresa;

interface

type
  TEmpresa = class
  private
    FId              : Integer;
    FRazaoSocial     : String;
    FFantasia        : String;
    FCNPJ            : String;
    FIE              : String;
    FEndereco        : String;
    FNumero          : String;
    FCidade          : String;
    FBairro          : String;
    FUF              : String;
    FCEP             : String;
    FTelefone        : String;
    FIM              : String;
    FCRT             : Integer;
    FComplemento     : String;
    FIdPais          : Integer;
    FCodigoIBGE      : String;
    FLogoMarca       : String;
    FTributacao      : Integer;


  public
    Property Id            :  Integer     read FId            write FId          ;
    Property RazaoSocial   :  String      read FRazaoSocial   write FRazaoSocial ;
    Property Fantasia      :  String      read FFantasia      write FFantasia    ;
    Property CNPJ          :  String      read FCNPJ          write FCNPJ        ;
    Property IE            :  String      read FIE            write FIE          ;
    Property Endereco      :  String      read FEndereco      write FEndereco    ;
    Property Numero        :  String      read FNumero        write FNumero      ;
    Property Cidade        :  String      read FCidade        write FCidade      ;
    Property Bairro        :  String      read FBairro        write FBairro      ;
    Property UF            :  String      read FUF            write FUF          ;
    Property CEP           :  String      read FCEP           write FCEP         ;
    Property Telefone      :  String      read FTelefone      write FTelefone    ;
    Property IM            :  String      read FIM            write FIM          ;
    Property CRT           :  Integer     read FCRT           write FCRT         ;
    Property Complemento   :  String      read FComplemento   write FComplemento ;
    Property IdPais        :  Integer     read FIdPais        write FIdPais      ;
    Property CodigoIBGE    :  String      read FCodigoIBGE    write FCodigoIBGE  ;
    Property LogoMarca     :  String      read FLogoMarca     write FLogoMarca   ;
    property Tributacao    :  Integer      read FTributacao    write FTributacao  ;

    constructor create;
end;

implementation

{ TEmpresa }

constructor TEmpresa.create;
begin
  FId           := 0 ;
  FRazaoSocial  := '';
  FFantasia     := '';
  FCNPJ         := '';
  FIE           := '';
  FEndereco     := '';
  FNumero       := '';
  FCidade       := '';
  FBairro       := '';
  FUF           := '';
  FCEP          := '';
  FTelefone     := '';
  FIM           := '';
  FCRT          := 0 ;
  FComplemento  := '';
  FIdPais       := 0 ;
  FCodigoIBGE   := '';
  FLogoMarca    := '';
  FTributacao   := 0;
end;


end.

