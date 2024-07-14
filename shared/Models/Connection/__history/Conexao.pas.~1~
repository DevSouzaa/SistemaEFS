unit Conexao.model;

interface
uses
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  System.SysUtils,
  System.IniFiles,
  System.Classes;

Type
  TConnection = Class
  Private
    FCaminhoINI : String;
    FIniFile    : TIniFile;
    FDataBase   : String;
    FProtocolo  : String;
    FServidor   : String;
    FPorta      : Integer;
    FUserName   : String;
    FPassword   : String;
    FDriverId    : String;

  Public
    Constructor Create(AOwner: TComponent);
    Destructor Destroy; Override;
    Procedure PutAquivoINI;
    Function GetConfigConnection(FDConn: TFDConnection): TFDConnection; Virtual;

    {
     NOTA: QUANDO USA O METODO VIRTUAL, PODEMOS MODIFICALO EM OUTRO LUGAR COM A PALAVRA OVERIRDE;
    }
    Property CaminhoINI: String   read FCaminhoINI ;
    Property IniFile:    TIniFile read FIniFile ;
    Property DataBase:   String   read FDataBase   ;
    Property Protocolo:  String   read FProtocolo  ;
    Property Servidor:   String   read FServidor   ;
    Property Porta:      integer  read FPorta      ;
    Property UserName:   String   read FUserName   ;
    Property Password:   String   read FPassword   ;
    Property DriverId :   String   read FDriverId    ;

    Const _NOMEARQUIVOINI = 'Caminho.ini';

End;

implementation

{ TConnection }

constructor TConnection.Create(AOwner: TComponent);
begin       //Constructor
  Inherited Create;

end;

destructor TConnection.Destroy;
begin      //Destroy

  inherited;
end;

function TConnection.GetConfigConnection(FDConn: TFDConnection): TFDConnection;
begin    //
  Result := FDConn; //Retorna o mesmo FDConnection
  try
    FCaminhoINI := ExtractFilePath(ParamStr(0)) + _NOMEARQUIVOINI;
                 //Verifica se o arquivo nao exite e cria se necessario;

  if not FileExists(FCaminhoINI) then
  Begin
    FIniFIle := TIniFIle.Create(FCaminhoINI);
      try
        FIniFIle.writeString  ('Conexao'     , 'DataBase'      , 'Seu Database'  );
        FIniFIle.writeString  ('Conexao'     , 'Protocol'     ,  'TCPIP'         );
        FIniFIle.writeString  ('Conexao'     , 'Server'        , '127.0.0.1'     );
        FIniFIle.writeInteger ('Conexao'     , 'Porta'         , 3050            );
        FIniFIle.writeString  ('Conexao'     , 'Uses'          , 'SYSDBA'        );
        FIniFIle.writeString  ('Conexao'     , 'Pass'          , 'masterkey'     );
        FIniFIle.writeString  ('Conexao'     , 'DriverId'       , 'FB'            );
      finally
        FIniFile.Free;
      end;
  End;

    FIniFIle := TIniFIle.Create(FCaminhoINI);
      try
        FDataBase  :=  FIniFIle.ReadString  ('Conexao'     , 'DataBase'      , ''               );
        FProtocolo :=  FIniFIle.ReadString  ('Conexao'     , 'Protocolo'     , 'TCPIP'          );
        FServidor  :=  FIniFIle.ReadString  ('Conexao'     , 'Server'        , ''               );
        FPorta     :=  FIniFIle.ReadInteger ('Conexao'     , 'Porta'         , 3050             );
        FUserName  :=  FIniFIle.ReadString  ('Conexao'     , 'Uses'          , ''               );
        FPassword  :=  FIniFIle.ReadString  ('Conexao'     , 'Pass'          , ''               );
        FDriverID   :=  FIniFIle.ReadString  ('Conexao'     , 'DriverId'       , 'FB'             );

        FDConn.Params.Clear;
        FDConn.Params.Add('Database='        + FDataBase        );
        FDConn.Params.Add('Protocol='        + FProtocolo       );
        FDConn.Params.Add('Server='          + FServidor        );
        FDConn.Params.Add('Port='            + FPorta.ToString  );
        FDConn.Params.Add('User_Name='       + FUserName        );
        FDConn.Params.Add('Password='        + FPassword        );
        FDConn.Params.Add('DriverID='         + FDriverID         );
      finally
        FIniFile.Free;
      end;
  except on E: Exception do
    raise Exception.Create('Error Message');
  end;
end;

procedure TConnection.PutAquivoINI;
begin     //Gravar Arquivo.INI
  FCaminhoINI := ExtractFilePath(ParamStr(0)) + _NOMEARQUIVOINI;
    if not FileExists(FCaminhoINI) then
    Begin
      FIniFIle := TIniFIle.Create(FCaminhoINI);
        try
          FIniFIle.writeString  ('Conexao'     , 'DataBase'       , 'Seu Database'  );
          FIniFIle.writeString  ('Conexao'     , 'Protocol'       ,  'TCPIP'        );
          FIniFIle.writeString  ('Conexao'     , 'Server'         , '127.0.0.1'     );
          FIniFIle.writeInteger ('Conexao'     , 'Porta'          , 3050            );
          FIniFIle.writeString  ('Conexao'     , 'Uses'           , 'SYSDBA'        );
          FIniFIle.writeString  ('Conexao'     , 'Pass'           , 'masterkey'     );
          FIniFIle.writeString  ('Conexao'     , 'DriverId'       , 'FB'            );
        finally
          FIniFile.Free;
        end;

    FIniFIle := TIniFIle.Create(FCaminhoINI);
      try
        FIniFIle.writeString  ('Conexao'     , 'DataBase'       , FDataBase  );
        FIniFIle.writeString  ('Conexao'     , 'Protocol'       , FProtocolo );
        FIniFIle.writeString  ('Conexao'     , 'Server'         , FServidor  );
        FIniFIle.writeInteger ('Conexao'     , 'Porta'          , FPorta     );
        FIniFIle.writeString  ('Conexao'     , 'Uses'           , FUserName  );
        FIniFIle.writeString  ('Conexao'     , 'Pass'           , FPassword  );
        FIniFIle.writeString  ('Conexao'     , 'DriverId'       , FDriverID   );
      finally
        FIniFile.Free;
      end;
    End;
End;

end.

