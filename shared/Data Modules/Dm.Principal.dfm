inherited DmPrincipal: TDmPrincipal
  Width = 338
  inherited QRY_Empresa: TFDQuery
    ChangeAlertName = 'QRY_Empresa'
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
  end
  object QRY_Acesso: TFDQuery
    Connection = FDConn
    Left = 224
    Top = 40
  end
end
