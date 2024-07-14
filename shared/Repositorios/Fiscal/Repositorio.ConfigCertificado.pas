unit Repositorio.ConfigCertificado;

interface

uses
  RepositorioBase,
  ConfigCertificado,

  FireDAC.Comp.Client,
  FireDAC.Stan.Param,

  System.SysUtils,
  System.Classes,

  Data.DB;

type
  TConfigCertificadoRepositorio = class(TRepositorioBase)
  public
    procedure Save(ACertificado: TConfigCertificado);
    function LoadByFilial(AFilial: Integer): TConfigCertificado;
    // Outros métodos conforme necessário
  end;

implementation

procedure TConfigCertificadoRepositorio.Save(ACertificado: TConfigCertificado);
var
  Query: TFDQuery;
  MemoryStream: TMemoryStream;
begin
  Query := TFDQuery.Create(nil);
  MemoryStream := TMemoryStream.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'UPDATE CONFIG_CERTIFICADO SET ' +
                      'CER_SSLLIB = :SSLLib, CER_CRYPTLIB = :CryptLib, CER_HTTPLIB = :HTTPLib, CER_XMLSIGNLIB = :XMLSignLib, ' +
                      'CER_URL = :URL, CER_CAMINHO = :Caminho, CER_SENHA = :Senha, CER_NUMSERIE = :NumSerie, CER_STREAM = :Stream ' +
                      'WHERE CER_FILIAL = :Filial';
    Query.ParamByName('SSLLib').AsInteger := ACertificado.SSLLib;
    Query.ParamByName('CryptLib').AsInteger := ACertificado.CryptLib;
    Query.ParamByName('HTTPLib').AsInteger := ACertificado.HTTPLib;
    Query.ParamByName('XMLSignLib').AsInteger := ACertificado.XMLSignLib;
    Query.ParamByName('URL').AsString := ACertificado.URL;
    Query.ParamByName('Caminho').AsString := ACertificado.Caminho;
    Query.ParamByName('Senha').AsString := ACertificado.Senha;
    Query.ParamByName('NumSerie').AsString := ACertificado.NumSerie;

    if Assigned(ACertificado.Stream) then
    begin
      MemoryStream.CopyFrom(ACertificado.Stream, ACertificado.Stream.Size);
      MemoryStream.Position := 0;
//      Query.ParamByName('Stream').LoadFromStream(MemoryStream, ftBlob);
    end
    else
    begin
      Query.ParamByName('Stream').Clear;
    end;

    Query.ParamByName('Filial').AsInteger := ACertificado.Filial;
    Query.ExecSQL;
  finally
    MemoryStream.Free;
    Query.Free;
  end;
end;

function TConfigCertificadoRepositorio.LoadByFilial(AFilial: Integer): TConfigCertificado;
var
  Query: TFDQuery;
  ACertificado: TConfigCertificado;
//  BlobStream: TStream;
begin
  Query := TFDQuery.Create(nil);
  ACertificado := TConfigCertificado.Create;
  try
    Query.Connection := FDConn;
    Query.SQL.Text := 'SELECT * FROM CONFIG_CERTIFICADO WHERE CER_FILIAL = :Filial';
    Query.ParamByName('Filial').AsInteger := AFilial;
    Query.Open;
    if not Query.IsEmpty then
    begin
      ACertificado.Codigo := Query.FieldByName('CER_CODIGO').AsInteger;
      ACertificado.SSLLib := Query.FieldByName('CER_SSLLIB').AsInteger;
      ACertificado.CryptLib := Query.FieldByName('CER_CRYPTLIB').AsInteger;
      ACertificado.HTTPLib := Query.FieldByName('CER_HTTPLIB').AsInteger;
      ACertificado.XMLSignLib := Query.FieldByName('CER_XMLSIGNLIB').AsInteger;
      ACertificado.URL := Query.FieldByName('CER_URL').AsString;
      ACertificado.Caminho := Query.FieldByName('CER_CAMINHO').AsString;
      ACertificado.Senha := Query.FieldByName('CER_SENHA').AsString;
      ACertificado.NumSerie := Query.FieldByName('CER_NUMSERIE').AsString;
      ACertificado.Filial := Query.FieldByName('CER_FILIAL').AsInteger;

      if not Query.FieldByName('CER_STREAM').IsNull then
      begin
//        BlobStream := Query.CreateBlobStream(Query.FieldByName('CER_STREAM'), bmRead);
        try
          ACertificado.Stream := TMemoryStream.Create;
//          ACertificado.Stream.CopyFrom(BlobStream, BlobStream.Size);
          ACertificado.Stream.Position := 0;
        finally
//          BlobStream.Free;
        end;
      end;
    end;
  finally
    Query.Free;
  end;
  Result := ACertificado;
end;

end.

