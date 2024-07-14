object ProviderConexao: TProviderConexao
  Height = 303
  Width = 241
  object QRY_Aux: TFDQuery
    Connection = FDConn
    Left = 136
    Top = 184
  end
  object QRY_Usuarios: TFDQuery
    Connection = FDConn
    Left = 136
    Top = 104
  end
  object QRY_Empresa: TFDQuery
    Connection = FDConn
    Left = 136
    Top = 32
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\Bancos\FIREBIRD\4.0\EFC\Banco.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3040'
      'CharacterSet=win1252'
      'DriverID=FB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    BeforeConnect = FDConnBeforeConnect
    Left = 49
    Top = 36
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 49
    Top = 110
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 49
    Top = 181
  end
end
