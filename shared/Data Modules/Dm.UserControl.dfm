inherited DMUserControl: TDMUserControl
  inherited QRY_Usuarios: TFDQuery
    object QRY_UsuariosUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
      Origin = 'UCIDUSER'
    end
    object QRY_UsuariosUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Origin = 'UCUSERNAME'
      Size = 30
    end
    object QRY_UsuariosUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Origin = 'UCLOGIN'
      Size = 30
    end
    object QRY_UsuariosUCPASSWORD: TStringField
      FieldName = 'UCPASSWORD'
      Origin = 'UCPASSWORD'
      Size = 250
    end
    object QRY_UsuariosUCPASSEXPIRED: TStringField
      FieldName = 'UCPASSEXPIRED'
      Origin = 'UCPASSEXPIRED'
      FixedChar = True
      Size = 10
    end
    object QRY_UsuariosUCUSEREXPIRED: TIntegerField
      FieldName = 'UCUSEREXPIRED'
      Origin = 'UCUSEREXPIRED'
    end
    object QRY_UsuariosUCUSERDAYSSUN: TIntegerField
      FieldName = 'UCUSERDAYSSUN'
      Origin = 'UCUSERDAYSSUN'
    end
    object QRY_UsuariosUCEMAIL: TStringField
      FieldName = 'UCEMAIL'
      Origin = 'UCEMAIL'
      Size = 150
    end
    object QRY_UsuariosUCPRIVILEGED: TIntegerField
      FieldName = 'UCPRIVILEGED'
      Origin = 'UCPRIVILEGED'
    end
    object QRY_UsuariosUCTYPEREC: TStringField
      FieldName = 'UCTYPEREC'
      Origin = 'UCTYPEREC'
      FixedChar = True
      Size = 1
    end
    object QRY_UsuariosUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
      Origin = 'UCPROFILE'
    end
    object QRY_UsuariosUCKEY: TStringField
      FieldName = 'UCKEY'
      Origin = 'UCKEY'
      Size = 250
    end
    object QRY_UsuariosUCINATIVE: TIntegerField
      FieldName = 'UCINATIVE'
      Origin = 'UCINATIVE'
    end
    object QRY_UsuariosUCIMAGE: TMemoField
      FieldName = 'UCIMAGE'
      Origin = 'UCIMAGE'
      BlobType = ftMemo
    end
  end
end
