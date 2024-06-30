object ProviderConexao: TProviderConexao
  Height = 303
  Width = 241
  object FDConnection: TFDConnection
    ConnectedStoredUsage = []
    BeforeConnect = FDConnectionBeforeConnect
    Left = 48
    Top = 32
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 184
  end
  object FDDriverLink: TFDPhysFBDriverLink
    Left = 48
    Top = 104
  end
  object QRY_Aux: TFDQuery
    Connection = FDConnection
    Left = 136
    Top = 184
  end
  object QRY_Usuario: TFDQuery
    Connection = FDConnection
    Left = 136
    Top = 104
  end
  object QRY_Empresa: TFDQuery
    Connection = FDConnection
    Left = 136
    Top = 32
  end
end
