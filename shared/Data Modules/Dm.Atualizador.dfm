inherited DmAtualizador: TDmAtualizador
  OnCreate = DataModuleCreate
  inherited QRY_Aux: TFDQuery
    Left = 8
  end
  inherited QRY_Usuarios: TFDQuery
    Left = 8
  end
  inherited QRY_Empresa: TFDQuery
    Left = 8
  end
  object FDScript_DDLs: TFDScript
    SQLScripts = <>
    Connection = FDConn
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 147
    Top = 87
  end
  object FDScript_Atualizador: TFDScript
    SQLScripts = <>
    Connection = FDConn
    Params = <>
    Macros = <>
    Left = 147
    Top = 149
  end
end
