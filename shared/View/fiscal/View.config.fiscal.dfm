inherited ViewConfigFiscal: TViewConfigFiscal
  Caption = 'Config Fiscal'
  ClientHeight = 756
  ClientWidth = 1056
  OnDestroy = FormDestroy
  ExplicitWidth = 1072
  ExplicitHeight = 795
  TextHeight = 21
  object PC_configuracoes: TPageControl
    Left = 0
    Top = 50
    Width = 1056
    Height = 661
    Cursor = crHandPoint
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ActivePage = tab_emitente
    Align = alClient
    TabHeight = 40
    TabOrder = 0
    object tab_emitente: TTabSheet
      Caption = '[ EMITENTE ]'
      object gbxEmitente: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 1028
        Height = 591
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ EMITENTE ]'
        Enabled = False
        TabOrder = 0
        object lblCNPJ: TLabel
          Left = 13
          Top = 36
          Width = 35
          Height = 21
          Caption = 'CNPJ'
        end
        object lblIe: TLabel
          Left = 200
          Top = 36
          Width = 55
          Height = 21
          Caption = 'Insc.Est.'
        end
        object lblRazaoSocial: TLabel
          Left = 13
          Top = 99
          Width = 85
          Height = 21
          Caption = 'Raz'#227'o Social'
        end
        object lblFantasia: TLabel
          Left = 493
          Top = 99
          Width = 56
          Height = 21
          Caption = 'Fantasia'
        end
        object lblLogradouro: TLabel
          Left = 13
          Top = 161
          Width = 79
          Height = 21
          Caption = 'Logradouro'
        end
        object lblNumero: TLabel
          Left = 588
          Top = 161
          Width = 56
          Height = 21
          Caption = 'N'#250'mero'
        end
        object lblComplemento: TLabel
          Left = 665
          Top = 161
          Width = 97
          Height = 21
          Caption = 'Complemento'
        end
        object lblBairro: TLabel
          Left = 12
          Top = 220
          Width = 40
          Height = 21
          Caption = 'Bairro'
        end
        object lblCodCidade: TLabel
          Left = 330
          Top = 220
          Width = 88
          Height = 21
          Caption = 'C'#243'd. Cidade '
        end
        object lblCidade: TLabel
          Left = 461
          Top = 220
          Width = 48
          Height = 21
          Caption = 'Cidade'
        end
        object lblUF: TLabel
          Left = 855
          Top = 220
          Width = 19
          Height = 21
          Caption = 'UF'
        end
        object lblCEP: TLabel
          Left = 460
          Top = 161
          Width = 27
          Height = 21
          Caption = 'CEP'
        end
        object lblFone: TLabel
          Left = 330
          Top = 161
          Width = 34
          Height = 21
          Caption = 'Fone'
        end
        object lblTipoEmpresa: TLabel
          Left = 383
          Top = 36
          Width = 117
          Height = 21
          Caption = 'Tipo de Empresa:'
        end
        object edtEmitCNPJ: TEdit
          Left = 13
          Top = 63
          Width = 182
          Height = 29
          TabOrder = 0
        end
        object edtEmitIE: TEdit
          Left = 201
          Top = 63
          Width = 176
          Height = 29
          TabOrder = 1
        end
        object edtEmitRazao: TEdit
          Left = 13
          Top = 126
          Width = 477
          Height = 29
          TabOrder = 3
        end
        object edtEmitFantasia: TEdit
          Left = 493
          Top = 126
          Width = 453
          Height = 29
          TabOrder = 4
        end
        object edtEmitFone: TEdit
          Left = 330
          Top = 188
          Width = 125
          Height = 29
          TabOrder = 6
        end
        object edtEmitCEP: TEdit
          Left = 461
          Top = 188
          Width = 123
          Height = 29
          TabOrder = 7
        end
        object edtEmitLogradouro: TEdit
          Left = 13
          Top = 188
          Width = 311
          Height = 29
          TabOrder = 5
        end
        object edtEmitNumero: TEdit
          Left = 590
          Top = 188
          Width = 71
          Height = 29
          TabOrder = 8
        end
        object edtEmitComp: TEdit
          Left = 664
          Top = 188
          Width = 282
          Height = 29
          TabOrder = 9
        end
        object edtEmitBairro: TEdit
          Left = 13
          Top = 247
          Width = 311
          Height = 29
          TabOrder = 10
        end
        object edtEmitCodCidade: TEdit
          Left = 330
          Top = 247
          Width = 125
          Height = 29
          TabOrder = 11
        end
        object edtEmitCidade: TEdit
          Left = 461
          Top = 247
          Width = 388
          Height = 29
          TabOrder = 12
        end
        object edtEmitUF: TEdit
          Left = 855
          Top = 247
          Width = 91
          Height = 29
          TabOrder = 13
        end
        object cbTipoEmpresa: TComboBox
          Left = 385
          Top = 63
          Width = 561
          Height = 29
          Cursor = crHandPoint
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'Simples Nacional'
            'Simples Nacional, excesso sublimite de receita bruta'
            'Regime Normal')
        end
      end
    end
    object tab_certificado: TTabSheet
      Caption = '[ CERT. DIGITAL ]'
      object gbxCertificado: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 1028
        Height = 591
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ CERTIFICADO ]'
        TabOrder = 0
        object lblCaminhoCertificado: TLabel
          Left = 7
          Top = 29
          Width = 62
          Height = 21
          Caption = 'Caminho'
        end
        object lblSenhaCertificado: TLabel
          Left = 8
          Top = 143
          Width = 42
          Height = 21
          Caption = 'Senha'
        end
        object lblNumSerieCertificado: TLabel
          Left = 678
          Top = 85
          Width = 114
          Height = 21
          Caption = 'N'#250'mero de S'#233'rie'
        end
        object sbtnGetCert: TSpeedButton
          Left = 903
          Top = 108
          Width = 23
          Height = 28
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object sbtnNumSerie: TSpeedButton
          Left = 874
          Top = 108
          Width = 26
          Height = 27
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object lblUrlPFX: TLabel
          Left = 8
          Top = 85
          Width = 91
          Height = 21
          Caption = 'URL para PFX'
        end
        object lXmlSign: TLabel
          Left = 657
          Top = 143
          Width = 80
          Height = 21
          Alignment = taRightJustify
          Caption = 'XMLSignLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lHttpLib: TLabel
          Left = 492
          Top = 143
          Width = 50
          Height = 21
          Alignment = taRightJustify
          Caption = 'HttpLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lCryptLib: TLabel
          Left = 331
          Top = 143
          Width = 57
          Height = 21
          Alignment = taRightJustify
          Caption = 'CryptLib'
          Color = clBtnFace
          ParentColor = False
        end
        object lSSLLib: TLabel
          Left = 171
          Top = 143
          Width = 43
          Height = 21
          Alignment = taRightJustify
          Caption = 'SSLLib'
          Color = clBtnFace
          ParentColor = False
        end
        object edtSenha: TEdit
          Left = 8
          Top = 170
          Width = 153
          Height = 29
          PasswordChar = '*'
          TabOrder = 3
        end
        object edtNumSerie: TEdit
          Left = 678
          Top = 108
          Width = 193
          Height = 29
          TabOrder = 2
        end
        object edtURLPFX: TEdit
          Left = 8
          Top = 108
          Width = 667
          Height = 29
          TabOrder = 1
        end
        object cbXmlSignLib: TComboBox
          Left = 654
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 7
          OnChange = cbXmlSignLibChange
        end
        object cbHttpLib: TComboBox
          Left = 491
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 6
          OnChange = cbHttpLibChange
        end
        object cbCryptLib: TComboBox
          Left = 329
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 5
          OnChange = cbCryptLibChange
        end
        object cbSSLLib: TComboBox
          Left = 167
          Top = 170
          Width = 160
          Height = 29
          Style = csDropDownList
          TabOrder = 4
          OnChange = cbSSLLibChange
        end
        object edtCaminho: TSearchBox
          Left = 8
          Top = 52
          Width = 882
          Height = 29
          TabOrder = 0
        end
      end
    end
    object tab_geral: TTabSheet
      Caption = '[ GERAL ]'
      ImageIndex = 1
      object gbxGeral: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 1028
        Height = 591
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ GERAL ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblFormaEmissao: TLabel
          Left = 20
          Top = 239
          Width = 108
          Height = 17
          Caption = 'Forma de Emiss'#227'o'
        end
        object lblFormatoAlerta: TLabel
          Left = 21
          Top = 115
          Width = 87
          Height = 17
          Caption = 'Formato Alerta'
        end
        object lblModeloDocFiscal: TLabel
          Left = 21
          Top = 287
          Width = 152
          Height = 17
          Caption = 'Modelo Documento Fiscal'
        end
        object lblVersaoDocFiscal: TLabel
          Left = 22
          Top = 185
          Width = 146
          Height = 17
          Caption = 'Vers'#227'o Documento Fiscal'
        end
        object lblIdToken: TLabel
          Left = 304
          Top = 239
          Width = 218
          Height = 17
          Caption = 'IdToken/IdCSC (Somente para NFC-e)'
        end
        object lblTokenCSC: TLabel
          Left = 304
          Top = 185
          Width = 196
          Height = 17
          Caption = 'Token/CSC (Somente para NFC-e)'
        end
        object lblCaminhoSchemas: TLabel
          Left = 20
          Top = 65
          Width = 246
          Height = 17
          Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
        end
        object lblLogs: TLabel
          Left = 20
          Top = 19
          Width = 171
          Height = 17
          Caption = 'Caminho para Salvar os Logs'
        end
        object LblSerieNFCE: TLabel
          Left = 391
          Top = 298
          Width = 70
          Height = 17
          Caption = 'Serie NFC-E'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblNumInicialNFCE: TLabel
          Left = 482
          Top = 304
          Width = 64
          Height = 15
          Caption = 'Num. Inicial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LblNumAtualNFCE: TLabel
          Left = 571
          Top = 304
          Width = 61
          Height = 15
          Caption = 'Num. Atual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LblSerieNFE: TLabel
          Left = 675
          Top = 298
          Width = 62
          Height = 17
          Caption = 'Serie NF-E'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblNumInicialNFE: TLabel
          Left = 768
          Top = 304
          Width = 64
          Height = 15
          Caption = 'Num. Inicial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LblNumAtualNFE: TLabel
          Left = 853
          Top = 304
          Width = 61
          Height = 15
          Caption = 'Num. Atual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 291
          Top = 298
          Width = 75
          Height = 15
          Caption = 'Serie Terminal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 486
          Top = 363
          Width = 64
          Height = 15
          Caption = 'Modelo DFE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 568
          Top = 363
          Width = 42
          Height = 15
          Caption = 'Modulo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 769
          Top = 363
          Width = 64
          Height = 15
          Caption = 'Modelo DFE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 851
          Top = 363
          Width = 42
          Height = 15
          Caption = 'Modulo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object ckSalvar: TCheckBox
          Left = 599
          Top = 231
          Width = 289
          Height = 15
          Caption = 'Salvar Arquivos de Envio e Resposta'
          TabOrder = 6
        end
        object cbFormaEmissao: TComboBox
          Left = 20
          Top = 260
          Width = 248
          Height = 25
          TabOrder = 9
        end
        object cbxAtualizarXML: TCheckBox
          Left = 600
          Top = 252
          Width = 145
          Height = 16
          Caption = 'Atualizar XML'
          TabOrder = 7
        end
        object cbxExibirErroSchema: TCheckBox
          Left = 600
          Top = 274
          Width = 201
          Height = 17
          Caption = 'Exibir Erro Schema'
          TabOrder = 8
        end
        object cbModeloDF: TComboBox
          Left = 21
          Top = 308
          Width = 248
          Height = 25
          TabOrder = 11
        end
        object cbxRetirarAcentos: TCheckBox
          Left = 599
          Top = 208
          Width = 273
          Height = 17
          Caption = 'Retirar Acentos dos XMLs enviados'
          TabOrder = 3
        end
        object cbVersaoDF: TComboBox
          Left = 21
          Top = 206
          Width = 248
          Height = 25
          TabOrder = 4
        end
        object edtIdToken: TEdit
          Left = 304
          Top = 260
          Width = 248
          Height = 25
          TabOrder = 10
        end
        object edtToken: TEdit
          Left = 304
          Top = 206
          Width = 248
          Height = 25
          TabOrder = 5
        end
        object edtFormatoAlerta: TEdit
          Left = 21
          Top = 136
          Width = 869
          Height = 25
          TabOrder = 2
          Text = 'edtFormatoAlerta'
        end
        object edtPathLogs: TSearchBox
          Left = 20
          Top = 37
          Width = 869
          Height = 25
          TabOrder = 0
        end
        object edtPathSchemas: TSearchBox
          Left = 20
          Top = 85
          Width = 869
          Height = 25
          TabOrder = 1
        end
        object CheckMostrarPreviewNFCE: TCheckBox
          Left = 599
          Top = 185
          Width = 162
          Height = 17
          Caption = 'Mostrar Preview NFC-E'
          TabOrder = 12
        end
        object EdtNumAtualNFE: TEdit
          Left = 850
          Top = 325
          Width = 72
          Height = 25
          TabOrder = 13
          TextHint = 'Num. Atual'
        end
        object EdtNumInicialNFE: TEdit
          Left = 765
          Top = 325
          Width = 71
          Height = 25
          TabOrder = 14
          TextHint = 'Num. Inicial'
        end
        object EdtSerieNFE: TEdit
          Left = 674
          Top = 325
          Width = 77
          Height = 25
          TabOrder = 15
          TextHint = 'Serie NF-E'
        end
        object EdtNumAtualNFCE: TEdit
          Left = 566
          Top = 325
          Width = 72
          Height = 25
          TabOrder = 16
          TextHint = 'Num. Atual'
        end
        object EdtNumInicialNFCE: TEdit
          Left = 481
          Top = 325
          Width = 71
          Height = 25
          TabOrder = 17
          TextHint = 'Num. Inicial'
        end
        object EdtSerieNFCE: TEdit
          Left = 390
          Top = 325
          Width = 77
          Height = 25
          TabOrder = 18
          TextHint = 'Serie NFC-E'
        end
        object EdtSerieTerminal: TEdit
          Left = 291
          Top = 325
          Width = 61
          Height = 25
          TabOrder = 19
          TextHint = 'Serie NFC-E'
        end
        object CBB_NfeModeloDFE: TComboBox
          Left = 769
          Top = 384
          Width = 67
          Height = 23
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          Items.Strings = (
            '55')
        end
        object CBB_NfeModulo: TComboBox
          Left = 851
          Top = 384
          Width = 78
          Height = 23
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          Items.Strings = (
            'RETAGUARDA'
            'PDV')
        end
        object CBB_NfceModeloDFE: TComboBox
          Left = 486
          Top = 384
          Width = 67
          Height = 23
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          Items.Strings = (
            '65')
        end
        object CBB_NfceModulo: TComboBox
          Left = 568
          Top = 384
          Width = 77
          Height = 23
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          Items.Strings = (
            'RETAGUARDA'
            'PDV')
        end
        object PnlLineNF: TPanel
          Left = 657
          Top = 296
          Width = 3
          Height = 137
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 24
        end
      end
    end
    object tab_webservice: TTabSheet
      Caption = '[ WEB. SERVICE ]'
      ImageIndex = 2
      object gbxWebService: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 366
        Height = 591
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'WebService'
        TabOrder = 1
        object lblUFEmitente: TLabel
          Left = 8
          Top = 21
          Width = 178
          Height = 21
          Caption = 'Selecione UF do Emitente:'
        end
        object lTimeOut: TLabel
          Left = 279
          Top = 151
          Width = 59
          Height = 21
          Caption = 'TimeOut'
          Color = clBtnFace
          ParentColor = False
        end
        object lSSLLib1: TLabel
          Left = 12
          Top = 280
          Width = 53
          Height = 21
          Alignment = taRightJustify
          Caption = 'SSLType'
          Color = clBtnFace
          ParentColor = False
        end
        object cbxVisualizar: TCheckBox
          Left = 8
          Top = 209
          Width = 169
          Height = 17
          Caption = 'Visualizar Mensagem'
          TabOrder = 2
        end
        object cbUF: TComboBox
          Left = 8
          Top = 48
          Width = 249
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 13
          ParentFont = False
          TabOrder = 0
          Text = 'PA'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object rgTipoAmb: TRadioGroup
          Left = 3
          Top = 93
          Width = 249
          Height = 52
          Caption = 'Selecione o Ambiente de Destino'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Produ'#231#227'o'
            'Homologa'#231#227'o')
          TabOrder = 1
        end
        object cbxSalvarSOAP: TCheckBox
          Left = 8
          Top = 184
          Width = 177
          Height = 17
          Caption = 'Salvar envelope SOAP'
          TabOrder = 4
        end
        object seTimeOut: TSpinEdit
          Left = 279
          Top = 178
          Width = 66
          Height = 31
          Increment = 10
          MaxValue = 999999
          MinValue = 1000
          TabOrder = 3
          Value = 5000
        end
        object cbSSLType: TComboBox
          Left = 8
          Top = 307
          Width = 160
          Height = 29
          Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
          Style = csDropDownList
          TabOrder = 5
        end
      end
      object pnlDadosWerService: TPanel
        Left = 386
        Top = 0
        Width = 662
        Height = 611
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object gbProxy: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 164
          Width = 642
          Height = 437
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Caption = 'Proxy'
          TabOrder = 1
          object lblHost: TLabel
            Left = 19
            Top = 32
            Width = 32
            Height = 21
            Caption = 'Host'
          end
          object lblPorta: TLabel
            Left = 219
            Top = 32
            Width = 35
            Height = 21
            Caption = 'Porta'
          end
          object lblUsuario: TLabel
            Left = 19
            Top = 104
            Width = 53
            Height = 21
            Caption = 'Usu'#225'rio'
          end
          object lblSenha: TLabel
            Left = 149
            Top = 104
            Width = 42
            Height = 21
            Caption = 'Senha'
          end
          object edtProxyHost: TEdit
            Left = 19
            Top = 59
            Width = 193
            Height = 29
            TabOrder = 0
          end
          object edtProxyPorta: TEdit
            Left = 219
            Top = 59
            Width = 50
            Height = 29
            TabOrder = 1
          end
          object edtProxyUser: TEdit
            Left = 19
            Top = 129
            Width = 123
            Height = 29
            TabOrder = 2
          end
          object edtProxySenha: TEdit
            Left = 146
            Top = 129
            Width = 123
            Height = 29
            PasswordChar = '*'
            TabOrder = 3
          end
        end
        object gbxRetornoEnvio: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 642
          Height = 134
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alTop
          Caption = 'Retorno de Envio'
          TabOrder = 0
          object lblTentativas: TLabel
            Left = 104
            Top = 59
            Width = 67
            Height = 21
            Caption = 'Tentativas'
          end
          object lblIntervalo: TLabel
            Left = 187
            Top = 59
            Width = 60
            Height = 21
            Caption = 'Intervalo'
          end
          object lblAguardar: TLabel
            Left = 19
            Top = 59
            Width = 63
            Height = 21
            Hint = 
              'Aguardar quantos segundos para primeira consulta de retorno de e' +
              'nvio'
            Caption = 'Aguardar'
          end
          object cbxAjustarAut: TCheckBox
            Left = 19
            Top = 32
            Width = 342
            Height = 17
            Caption = 'Ajustar Automaticamente prop. "Aguardar"'
            TabOrder = 0
          end
          object edtTentativas: TEdit
            Left = 104
            Top = 86
            Width = 57
            Height = 29
            TabOrder = 2
          end
          object edtIntervalo: TEdit
            Left = 187
            Top = 86
            Width = 57
            Height = 29
            TabOrder = 3
          end
          object edtAguardar: TEdit
            Left = 19
            Top = 86
            Width = 57
            Height = 29
            Hint = 
              'Aguardar quantos segundos para primeira consulta de retorno de e' +
              'nvio'
            TabOrder = 1
          end
        end
      end
    end
    object tab_arquivos: TTabSheet
      Caption = '[ ARQUIVOS ]'
      ImageIndex = 4
      object gbxArquivos: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 1028
        Height = 591
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ ARQUIVOS ]'
        TabOrder = 0
        object Label35: TLabel
          Left = 22
          Top = 121
          Width = 132
          Height = 21
          Caption = 'Pasta Arquivos NFe'
        end
        object Label40: TLabel
          Left = 22
          Top = 226
          Width = 182
          Height = 21
          Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
        end
        object Label47: TLabel
          Left = 22
          Top = 175
          Width = 150
          Height = 21
          Caption = 'Pasta Arquivos Evento'
        end
        object Label39: TLabel
          Left = 22
          Top = 280
          Width = 132
          Height = 21
          Caption = 'Pasta Arquivos PDF'
        end
        object Label53: TLabel
          Left = 22
          Top = 331
          Width = 258
          Height = 21
          Caption = 'Pasta Download de XMLs Distribui'#231#227'o'
        end
        object cbxSalvarArqs: TCheckBox
          Left = 716
          Top = 40
          Width = 210
          Height = 17
          Caption = 'Salvar Arquivos'
          TabOrder = 2
        end
        object cbxPastaMensal: TCheckBox
          Left = 335
          Top = 86
          Width = 255
          Height = 17
          Caption = 'Criar Pastas Mensalmente'
          TabOrder = 6
        end
        object cbxAdicionaLiteral: TCheckBox
          Left = 22
          Top = 40
          Width = 307
          Height = 17
          Caption = 'Adicionar Literal no nome das pastas'
          TabOrder = 0
        end
        object cbxEmissaoPathNFe: TCheckBox
          Left = 335
          Top = 63
          Width = 375
          Height = 17
          Caption = 'Salvar Documento pelo campo Data de Emiss'#227'o'
          TabOrder = 4
        end
        object cbxSalvaPathEvento: TCheckBox
          Left = 22
          Top = 86
          Width = 233
          Height = 17
          Caption = 'Salvar Arquivos de Eventos'
          TabOrder = 5
        end
        object cbxSepararPorCNPJ: TCheckBox
          Left = 22
          Top = 63
          Width = 311
          Height = 17
          Caption = 'Separar Arqs pelo CNPJ do Certificado'
          TabOrder = 3
        end
        object cbxSepararPorModelo: TCheckBox
          Left = 335
          Top = 40
          Width = 339
          Height = 17
          Caption = 'Separar Arqs pelo Modelo do Documento'
          TabOrder = 1
        end
        object edtPathNFe: TSearchBox
          Left = 22
          Top = 148
          Width = 790
          Height = 29
          TabOrder = 7
        end
        object edtPathEvento: TSearchBox
          Left = 22
          Top = 199
          Width = 790
          Height = 29
          TabOrder = 8
        end
        object edtPathInu: TSearchBox
          Left = 22
          Top = 253
          Width = 790
          Height = 29
          TabOrder = 9
        end
        object edtPathPDF: TSearchBox
          Left = 22
          Top = 304
          Width = 790
          Height = 29
          TabOrder = 10
        end
        object edtDownloadXML: TSearchBox
          Left = 22
          Top = 358
          Width = 790
          Height = 29
          TabOrder = 11
        end
      end
    end
    object tab_danfe: TTabSheet
      Caption = '[ DANFE / DOC. AUXILIAR ]'
      ImageIndex = 7
      object gbxDanfeDocAux: TGroupBox
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 1028
        Height = 591
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = '[ DANFE / DOC. AUXILIAR ]'
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 40
          Width = 80
          Height = 21
          Caption = 'Logo Marca'
        end
        object rgTipoDanfe: TRadioGroup
          Left = 496
          Top = 120
          Width = 257
          Height = 49
          Caption = 'DANFE'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Retrato'
            'Paisagem')
          TabOrder = 2
        end
        object gbEscPos: TGroupBox
          Left = 16
          Top = 120
          Width = 361
          Height = 329
          Caption = 'EscPos | POSPRINTER'
          TabOrder = 1
          object Label43: TLabel
            Left = 8
            Top = 24
            Width = 53
            Height = 21
            Caption = 'Modelo'
            Color = clBtnFace
            ParentColor = False
          end
          object Label44: TLabel
            Left = 8
            Top = 83
            Width = 35
            Height = 21
            Caption = 'Porta'
            Color = clBtnFace
            ParentColor = False
          end
          object Label45: TLabel
            Left = 8
            Top = 221
            Width = 79
            Height = 21
            Caption = 'Pag.Codigo'
            Color = clBtnFace
            ParentColor = False
          end
          object Label48: TLabel
            Left = 8
            Top = 158
            Width = 56
            Height = 21
            Caption = 'Colunas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label49: TLabel
            Left = 80
            Top = 137
            Width = 55
            Height = 42
            Caption = 'Espa'#231'os'#13#10'Linhas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label50: TLabel
            Left = 144
            Top = 137
            Width = 44
            Height = 42
            Caption = 'Linhas'#13#10'Pular'
            Color = clBtnFace
            ParentColor = False
          end
          object btSerial: TBitBtn
            Left = 210
            Top = 105
            Width = 30
            Height = 30
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232
              3232323E3E3E565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF503200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              565656565656FFFFFFFFFFFF3232322626262626262626262626265032005032
              000000504873FFFFFFFFFFFFFFFFFFFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFF6E
              6E6E32323232323232323232323250320000005025AAFFFFFFFFFFFFFF565656
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656563232323232326E6E6E5032005032
              008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFF50320050320056
              56564A4A4A5050003232325032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
              FFFFFF5656563E3E3E2626265032006262625656565050003232325032005032
              008FFF6B8ED4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050005050006E
              6E6E5656565050003250005032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686865656565656563250005032005032
              008FFF6B48B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323E
              3E3EA4A0A08686866E6E6E565656503200C0C0C02557FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5050004A4A4A3232323232323232323232325032
              00FFFFFF6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            ModalResult = 1
            TabOrder = 2
          end
          object cbxModeloPosPrinter: TComboBox
            Left = 8
            Top = 46
            Width = 233
            Height = 29
            Style = csDropDownList
            TabOrder = 0
          end
          object cbxPorta: TComboBox
            Left = 8
            Top = 105
            Width = 201
            Height = 29
            TabOrder = 1
          end
          object cbxPagCodigo: TComboBox
            Left = 8
            Top = 248
            Width = 101
            Height = 29
            Style = csDropDownList
            TabOrder = 7
          end
          object seColunas: TSpinEdit
            Left = 8
            Top = 180
            Width = 49
            Height = 31
            MaxValue = 9999
            MinValue = 0
            TabOrder = 3
            Value = 0
          end
          object seEspLinhas: TSpinEdit
            Left = 80
            Top = 180
            Width = 49
            Height = 31
            MaxValue = 9999
            MinValue = 0
            TabOrder = 4
            Value = 0
          end
          object seLinhasPular: TSpinEdit
            Left = 144
            Top = 180
            Width = 49
            Height = 31
            MaxValue = 9999
            MinValue = 0
            TabOrder = 5
            Value = 0
          end
          object cbCortarPapel: TCheckBox
            Left = 144
            Top = 244
            Width = 146
            Height = 19
            Hint = 
              'Conecta a Porta Serial a cada comando enviado'#13#10'Desconecta da Por' +
              'ta Serial ap'#243's o envio'
            Caption = 'Cortar Papel'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
        end
        object rgDANFCE: TRadioGroup
          Left = 496
          Top = 192
          Width = 257
          Height = 49
          Caption = 'DANFCE'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Fortes'
            'EscPos'
            'A4')
          TabOrder = 3
        end
        object edtLogoMarca: TSearchBox
          Left = 16
          Top = 67
          Width = 905
          Height = 29
          TabOrder = 0
        end
      end
    end
    object tab_diversos: TTabSheet
      Caption = '[ DIVERSOS ]'
      ImageIndex = 6
      object lblHraUltimaTentativa: TLabel
        Left = 24
        Top = 48
        Width = 228
        Height = 21
        Caption = 'Hora da '#218'ltima Tentativa de Baixa'
      end
      object lblUltNSu: TLabel
        Left = 697
        Top = 48
        Width = 51
        Height = 21
        Caption = 'UltNSU'
      end
      object lblMaxNSU: TLabel
        Left = 817
        Top = 48
        Width = 60
        Height = 21
        Caption = 'MaxNSU'
      end
      object cbxNaoBaixar: TCheckBox
        Left = 360
        Top = 43
        Width = 305
        Height = 34
        Caption = '[ QUERO BAIXAR OS DOCUMENTOS ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtUltNSU: TEdit
        Left = 696
        Top = 75
        Width = 87
        Height = 29
        TabOrder = 1
      end
      object edtTimeUltimaTentativa: TDateTimePicker
        Left = 24
        Top = 75
        Width = 231
        Height = 29
        Date = 44890.000000000000000000
        Time = 0.405434432868787600
        Kind = dtkTime
        TabOrder = 2
      end
      object edtMaxNSU: TEdit
        Left = 817
        Top = 75
        Width = 87
        Height = 29
        Enabled = False
        TabOrder = 3
      end
    end
    object tabParametrosGerais: TTabSheet
      Caption = '[ PARAMETROS ]'
      ImageIndex = 7
      object pagParametrosGerais: TPageControl
        Left = 0
        Top = 0
        Width = 1048
        Height = 611
        ActivePage = TabMenssagens
        Align = alClient
        TabOrder = 0
        object tabFiscal: TTabSheet
          Caption = 'Fiscal'
        end
        object tabPDV: TTabSheet
          Caption = 'PDV'
          ImageIndex = 1
          object PC_ParametrosPDV: TPageControl
            Left = 0
            Top = 0
            Width = 1040
            Height = 575
            ActivePage = tab_emissao
            Align = alClient
            TabOrder = 0
            object tab_emissao: TTabSheet
              Caption = 'Emiss'#227'o Fiscal'
              object lblEmiteFinalVenda: TLabel
                Left = 11
                Top = 13
                Width = 211
                Height = 21
                Caption = 'Emite no Final da Venda Direto'
              end
              object Label6: TLabel
                Left = 11
                Top = 75
                Width = 291
                Height = 21
                Caption = 'Emite no Final da Venda Com SIM ou NAO'
              end
              object cbxEmiteFiscal: TDBComboBox
                Left = 11
                Top = 40
                Width = 214
                Height = 29
                Style = csDropDownList
                CharCase = ecUpperCase
                DataField = 'EMITEFISCALFINALVENDA'
                Items.Strings = (
                  'SIM'
                  'NAO')
                TabOrder = 0
              end
              object dbxEmiteComSimOuNao: TDBComboBox
                Left = 11
                Top = 102
                Width = 294
                Height = 29
                Style = csDropDownList
                CharCase = ecUpperCase
                DataField = 'EMITE_FISCAL_COM_SIM_NAO'
                Items.Strings = (
                  'SIM'
                  'NAO')
                TabOrder = 1
              end
            end
            object tab_fastreport: TTabSheet
              Caption = 'Caminho do FastReport'
              ImageIndex = 1
              object lbl: TLabel
                Left = 16
                Top = 29
                Width = 83
                Height = 21
                Caption = 'Report NF-e'
              end
              object Label4: TLabel
                Left = 16
                Top = 101
                Width = 93
                Height = 21
                Caption = 'Report NFC-e'
              end
              object edtFastFileNFe: TDBEdit
                Left = 16
                Top = 56
                Width = 900
                Height = 29
                DataField = 'FASTFILE'
                TabOrder = 0
              end
              object btnPesquisaFastFile: TButton
                Left = 922
                Top = 53
                Width = 33
                Height = 29
                Caption = '+'
                TabOrder = 1
              end
              object edtFastFileNFCe: TDBEdit
                Left = 16
                Top = 126
                Width = 900
                Height = 29
                DataField = 'FASTFILENFCE'
                TabOrder = 2
              end
              object btnPesquisaFastFileNFCe: TButton
                Left = 922
                Top = 126
                Width = 33
                Height = 29
                Caption = '+'
                TabOrder = 3
              end
            end
            object tab_balanca: TTabSheet
              Caption = 'Configura'#231#227'o da Balan'#231'a'
              ImageIndex = 3
              object Label9: TLabel
                Left = 16
                Top = 16
                Width = 114
                Height = 21
                Caption = 'NOMEBALANCA'
                FocusControl = DBEdit1
              end
              object Label10: TLabel
                Left = 16
                Top = 72
                Width = 93
                Height = 21
                Caption = 'PORTASERIAL'
                FocusControl = DBEdit2
              end
              object Label11: TLabel
                Left = 16
                Top = 128
                Width = 90
                Height = 21
                Caption = 'VELOCIDADE'
                FocusControl = DBEdit3
              end
              object Label12: TLabel
                Left = 16
                Top = 184
                Width = 76
                Height = 21
                Caption = 'NOMEPDV'
                FocusControl = DBEdit4
              end
              object Label13: TLabel
                Left = 16
                Top = 240
                Width = 66
                Height = 21
                Caption = 'MODULO'
                FocusControl = DBEdit5
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 40
                Width = 500
                Height = 29
                CharCase = ecUpperCase
                DataField = 'NOMEBALANCA'
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 16
                Top = 96
                Width = 500
                Height = 29
                CharCase = ecUpperCase
                DataField = 'PORTASERIAL'
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 16
                Top = 152
                Width = 214
                Height = 29
                CharCase = ecUpperCase
                DataField = 'VELOCIDADE'
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 16
                Top = 208
                Width = 500
                Height = 29
                CharCase = ecUpperCase
                DataField = 'NOMEPDV'
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 16
                Top = 264
                Width = 500
                Height = 29
                CharCase = ecUpperCase
                DataField = 'MODULO'
                TabOrder = 4
              end
            end
            object tab_clientepadrao: TTabSheet
              Caption = 'Cliente Pad'#227'o'
              ImageIndex = 4
              object lblCodigoClientePadrao: TLabel
                Left = 3
                Top = 37
                Width = 167
                Height = 21
                Caption = 'Cliente Padr'#227'o da Venda'
              end
              object edtClientePadrao: TDBEdit
                Left = 3
                Top = 64
                Width = 168
                Height = 29
                DataField = 'IDCLIENTEPADRAOVENDA'
                TabOrder = 0
              end
            end
          end
        end
        object tabRetaGuarda: TTabSheet
          Caption = 'Retaguarda'
          ImageIndex = 2
        end
        object tabImpressoras: TTabSheet
          Caption = 'Impressoras'
          ImageIndex = 3
          object LblImpressora80cl: TLabel
            Left = 16
            Top = 11
            Width = 228
            Height = 17
            Caption = 'Impressora para rel'#225'torios 80 colunas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Lblmpressora40Cl: TLabel
            Left = 16
            Top = 67
            Width = 228
            Height = 17
            Caption = 'Impressora para rel'#225'torios 40 colunas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblMarcaImpressora40Cl: TLabel
            Left = 16
            Top = 125
            Width = 193
            Height = 17
            Caption = 'Marca da impressora 40Colunas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbbImpressora80CL: TComboBox
            Left = 16
            Top = 32
            Width = 337
            Height = 25
            Style = csDropDownList
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = '<Nenhuma>'
            Items.Strings = (
              '<Nenhuma>')
          end
          object CbbImpressora40CL: TComboBox
            Left = 16
            Top = 88
            Width = 337
            Height = 25
            Style = csDropDownList
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ItemIndex = 0
            ParentFont = False
            TabOrder = 1
            Text = '<Nenhuma>'
            Items.Strings = (
              '<Nenhuma>')
          end
          object CbbMarcaImpressoraCupom: TComboBox
            Left = 16
            Top = 146
            Width = 337
            Height = 25
            Style = csDropDownList
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ItemIndex = 0
            ParentFont = False
            TabOrder = 2
            Text = '<Nenhuma>'
            Items.Strings = (
              '<Nenhuma>'
              'Elgin'
              'Epson '
              'Control id '
              'Daruma'
              'Tanca '
              'Star'
              'Bermatech'
              'Argox'
              'Jetway')
          end
          object CheckAjustarA4: TCheckBox
            Left = 374
            Top = 37
            Width = 99
            Height = 17
            Caption = 'AJUSTAR A4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
        object TabVenda: TTabSheet
          Caption = 'Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ImageIndex = 4
          ParentFont = False
          object LblReciboVendaV: TLabel
            Left = 16
            Top = 19
            Width = 176
            Height = 17
            Caption = 'Modelo cupom venda a vista'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblReciboVendaP: TLabel
            Left = 16
            Top = 83
            Width = 182
            Height = 17
            Caption = 'Modelo cupom venda a prazo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblReciboPreVenda: TLabel
            Left = 16
            Top = 147
            Width = 201
            Height = 17
            Caption = 'Modelo impresso para pr'#233' venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblReciboOrcamento: TLabel
            Left = 16
            Top = 211
            Width = 206
            Height = 17
            Caption = 'Modelo impresso para or'#231'amento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbbReciboVendaVista: TDBLookupComboBox
            Left = 16
            Top = 48
            Width = 337
            Height = 25
            ImeName = 'CbbReciboVendaVista'
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            TabOrder = 0
          end
          object CbbReciboVendaPrazo: TDBLookupComboBox
            Left = 16
            Top = 106
            Width = 337
            Height = 25
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            TabOrder = 1
          end
          object CbbReciboPreVenda: TDBLookupComboBox
            Left = 16
            Top = 170
            Width = 337
            Height = 25
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            TabOrder = 2
          end
          object CbbReciboOrcamento: TDBLookupComboBox
            Left = 16
            Top = 234
            Width = 337
            Height = 25
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            TabOrder = 3
          end
          object CheckMostrarPreviewVenda: TCheckBox
            Left = 374
            Top = 53
            Width = 137
            Height = 17
            Caption = 'Mostrar Preview'
            TabOrder = 4
          end
          object CheckMostrarPreviewVendaPrazo: TCheckBox
            Left = 374
            Top = 113
            Width = 137
            Height = 17
            Caption = 'Mostrar Preview'
            TabOrder = 5
          end
          object CheckMostrarPreviewPreVenda: TCheckBox
            Left = 374
            Top = 177
            Width = 137
            Height = 17
            Caption = 'Mostrar Preview'
            TabOrder = 6
          end
          object CheckMostrarPreviewOrcamento: TCheckBox
            Left = 374
            Top = 240
            Width = 137
            Height = 17
            Caption = 'Mostrar Preview'
            TabOrder = 7
          end
          object CheckAbrirGavetaPosvenda: TCheckBox
            Left = 507
            Top = 53
            Width = 179
            Height = 17
            Caption = 'Abrir Gaveta Pos Venda'
            TabOrder = 8
          end
        end
        object TabRecibos: TTabSheet
          Caption = 'Recibos'
          ImageIndex = 5
          object LblReciboContasReceber: TLabel
            Left = 8
            Top = 19
            Width = 290
            Height = 17
            Caption = 'Modelo Impresso Para Recibo Contas a Receber'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblReciboContasPagar: TLabel
            Left = 3
            Top = 83
            Width = 277
            Height = 17
            Caption = 'Modelo Impresso Para Recibo Contas a Pagar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblReciboFechamentocaixa: TLabel
            Left = 3
            Top = 147
            Width = 271
            Height = 17
            Caption = 'Modelo Impresso Para Fechamento de Caixa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbbReciboFechamentoCaixa: TDBLookupComboBox
            Left = 3
            Top = 170
            Width = 337
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            ParentFont = False
            TabOrder = 0
          end
          object CbbReciboContasPagar: TDBLookupComboBox
            Left = 3
            Top = 103
            Width = 337
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            ParentFont = False
            TabOrder = 1
          end
          object CbbReciboContasReceber: TDBLookupComboBox
            Left = 3
            Top = 42
            Width = 342
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            KeyField = 'IDRECIBO'
            ListField = 'DESCRICAO'
            ParentFont = False
            TabOrder = 2
          end
          object CheckMostrarPreviewContasReceber: TCheckBox
            Left = 358
            Top = 47
            Width = 137
            Height = 17
            Caption = 'Mostrar Preview'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object CheckMostrarPreviewContasPagar: TCheckBox
            Left = 358
            Top = 107
            Width = 137
            Height = 17
            Caption = 'Mostrar Preview'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object CheckMostrarPreviewFechamentoCaixa: TCheckBox
            Left = 358
            Top = 174
            Width = 141
            Height = 17
            Caption = 'Mostrar Preview'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
        end
        object TabMenssagens: TTabSheet
          Caption = 'Menssagens'
          ImageIndex = 6
          object Label1: TLabel
            Left = 32
            Top = 19
            Width = 133
            Height = 17
            Caption = 'Menssagem de Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 216
            Top = 19
            Width = 164
            Height = 17
            Caption = 'Menssagem de Orcamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 416
            Top = 19
            Width = 167
            Height = 17
            Caption = 'Menssagem de NFC-E/NF-E'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object mmoMenssagemVenda: TMemo
            Left = 24
            Top = 42
            Width = 161
            Height = 81
            MaxLength = 100
            TabOrder = 0
          end
          object MmoMensagemOrcamento: TMemo
            Left = 216
            Top = 42
            Width = 164
            Height = 81
            MaxLength = 100
            TabOrder = 1
          end
          object mmoMenssagemNF: TMemo
            Left = 416
            Top = 42
            Width = 167
            Height = 81
            MaxLength = 100
            TabOrder = 2
          end
        end
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 711
    Width = 1056
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 15329769
    ParentBackground = False
    TabOrder = 1
    object pnlBtnSalvar: TPanel
      AlignWithMargins = True
      Left = 928
      Top = 3
      Width = 125
      Height = 39
      Margins.Left = 0
      Align = alRight
      BevelOuter = bvNone
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 0
      object ShapeBtnSalvar: TShape
        Left = 2
        Top = 2
        Width = 121
        Height = 35
        Align = alClient
        Brush.Color = 5322779
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 1
        ExplicitWidth = 185
        ExplicitHeight = 50
      end
      object btnSalvar: TSpeedButton
        Left = 2
        Top = 2
        Width = 121
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = 'F6 | SALVAR'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF49FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE2FFFFFF48000000000000000000000000000000000000
          000000000000FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE2000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF9FFFFFF77FFFFFF1AFFFFFF1AFFFFFF77FFFFFFF9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF7700000000000000000000000000000000FFFFFF78FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF1A00000000000000000000000000000000FFFFFF1BFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF1900000000000000000000000000000000FFFFFF18FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF7700000000000000000000000000000000FFFFFF77FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF9FFFFFF76FFFFFF1AFFFFFF1AFFFFFF77FFFFFFF9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF88000000000000000000000000000000000000
          000000000000FFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8800000000000000000000000000000000000000000000
          000000000000FFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF800000000000000000000000000000000000000000000000000000
          000000000000FFFFFF4AFFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF80000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Margin = 5
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitTop = 0
      end
    end
  end
  object pnlTopTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 5322779
    ParentBackground = False
    TabOrder = 2
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 247
      Height = 44
      Align = alLeft
      Caption = 'Configura'#231#245'es Fiscais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 37
    end
    object pnlDefinirCaminhos: TPanel
      Left = 816
      Top = 0
      Width = 240
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      Color = 45824
      ParentBackground = False
      TabOrder = 0
      object btnDefinirCaminhos: TSpeedButton
        Left = 0
        Top = 0
        Width = 240
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ DEFINIR CAMINHO DOS ARQUIVOS ]'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitTop = -3
        ExplicitWidth = 300
      end
    end
  end
  object ACBrIntegrador: TACBrIntegrador
    PastaInput = 'C:\Integrador\Input\'
    PastaOutput = 'C:\Integrador\Output\'
    Left = 166
    Top = 478
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 50
    Top = 479
  end
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 20000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeRL
    Left = 58
    Top = 415
  end
  object ACBrNFeDANFCeFortes: TACBrNFeDANFCeFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiSemGeracao
    ImprimeNomeFantasia = True
    FormularioContinuo = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 138
    Top = 479
  end
  object ACBrNFeDANFCeFortesA4: TACBrNFeDANFCeFortesA4
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    FormularioContinuo = True
    Left = 112
    Top = 480
  end
  object ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 4
    CasasDecimais.vUnCom = 4
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiSemGeracao
    FormularioContinuo = True
    PosPrinter = ACBrPosPrinter
    Left = 193
    Top = 479
  end
  object ACBrNFeDANFEFR: TACBrNFeDANFEFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ImprimeTotalLiquido = True
    ExibeCampoDePagamento = eipQuadro
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 162
    Top = 564
  end
  object ACBrNFeDANFeRL: TACBrNFeDANFeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    Usuario = 'ACBr'
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 4
    CasasDecimais.vUnCom = 4
    CasasDecimais.MaskqCom = '###,###,###,##0.00'
    CasasDecimais.MaskvUnCom = '###,###,###,##0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrNFe = ACBrNFe
    ImprimeCodigoEan = True
    ImprimeDescAcrescItem = idaiComValor
    ExibeResumoCanhoto = False
    ExibeCampoFatura = False
    Left = 43
    Top = 567
  end
  object ACBrPosPrinter: TACBrPosPrinter
    Modelo = ppEscPosEpson
    Porta = 'COM9'
    EspacoEntreLinhas = 30
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 5
    Left = 81
    Top = 479
  end
  object ACBrValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 248
    Top = 482
  end
  object frxReport: TfrxReport
    Tag = 1
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 256
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42878.431362407400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ReportTitle1.Visible := <Parametros."LogoCarregado"> <> '#39#39';'
      '  ImgLogo.Visible := <Parametros."LogoCarregado"> <> '#39#39';      '
      
        '  MensagemFiscal.Visible := <Identificacao."MensagemFiscal"> <> ' +
        #39#193'REA DE MENSAGEM FISCAL'#39';'
      'end;'
      ''
      'procedure ValorTributosOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ValorTributos.Visible := <CalculoImposto."VTotTrib"> > 0;'
      'end;'
      ''
      'procedure DadosPagamentoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  ChildTroco.Visible := <CalculoImposto."vTroco"> > 0;'
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ChildContingenciaCabecalho.Visible := <Identificacao."TpEmis">' +
        ' = 9;'
      
        '  ChildContingenciaIdentificacao.Visible := ChildContingenciaCab' +
        'ecalho.Visible;'
      '  Memo25.Visible := not(ChildContingenciaCabecalho.Visible);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 248
    Top = 536
    Datasets = <
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end
      item
        DataSetName = 'Eventos'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'Pagamento'
      end
      item
        DataSetName = 'Inutilizacao'
      end>
    Variables = <
      item
        Name = ' User'
        Value = Null
      end
      item
        Name = 'LinhasImpressas'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 3276.000000000000000000
      PaperSize = 256
      TopMargin = 0.500000000000000000
      Frame.Typ = []
      LargeDesignHeight = True
      MirrorMode = []
      PrintIfEmpty = False
      OnBeforePrint = 'Page1OnBeforePrint'
      object ValorTributos: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.007874015748000000
        Top = 994.016390000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'ValorTributosOnBeforePrint'
        RowCount = 1
        object Memo17: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763779999950000
          Width = 272.126160000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Tributos Incidentes (Lei Federal 12.741/2012): R$ [CalculoImpost' +
              'o."vTotTrib" #n%2,2f] [CalculoImposto."VTribFonte"]')
          ParentFont = False
        end
      end
      object MensagemFiscal: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.897632910000000000
        Top = 582.047620000000000000
        Width = 272.126160000000000000
        RowCount = 1
        Stretched = True
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.220469999999980000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."MensagemFiscal"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object QRCode: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 120.944881890000000000
        Top = 850.394250000000000000
        Width = 272.126160000000000000
        RowCount = 1
        object ImgQrCode: TfrxPictureView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763779999950000
          Width = 272.126160000000000000
          Height = 117.165322600000000000
          Center = True
          Frame.Color = clFuchsia
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456702680000000000
        Top = 355.275820000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'DadosProdutosOnBeforePrint'
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Width = 75.590560940000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 76.031500940000000000
          Width = 196.535599060000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DadosProdutos."DescricaoProduto"]')
          ParentFont = False
        end
        object memqCom: TfrxMemoView
          AllowVectorExport = True
          Top = 13.496065430000000000
          Width = 79.370093390000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."QCom"] [DadosProdutos."UCom"]')
          ParentFont = False
          WordWrap = False
        end
        object memvUnCom: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370078740000000000
          Top = 13.496065430000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VUnCom"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 13.496065430000000000
          Width = 98.267892280000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object DadosProdutosHeader: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 27.590560940000000000
        Top = 306.141930000000000000
        Width = 272.126160000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692913390000000000
          Top = 14.472448270000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UN')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370078740000000000
          Top = 14.472448270000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VL.UNIT')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Top = 1.354328270000000000
          Width = 68.031500940000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 68.472440940000000000
          Top = 1.354328270000000000
          Width = 204.094659060000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Top = 14.472448270000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858267720000000000
          Top = 14.472448270000000000
          Width = 98.267892280000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DadosPagamentoHeader: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.283510940000000000
        Top = 404.409710000000000000
        Width = 272.126160000000000000
        Condition = 'DadosProdutos."ChaveNFe"'
        ReprintOnNewPage = True
        object memTitDadosPagamento: TfrxMemoView
          AllowVectorExport = True
          Top = 2.559059999999990000
          Width = 128.504020000000000000
          Height = 46.488210940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'Qtde. Total de itens'
            'Valor Produtos R$'
            'Descontos R$'
            'Acr'#233'scimos R$')
          ParentFont = False
          WordWrap = False
        end
        object memDadosPagamento: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 2.559060000000000000
          Width = 143.622140000000000000
          Height = 46.488210940000000000
          DataSetName = 'Parametros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."QtdeItens"]'
            '[CalculoImposto."VProd" #n%2,2f]'
            '[CalculoImposto."VDesc" #n%2,2f]'
            '[CalculoImposto."VOutro" #n%2,2f]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor a Pagar R$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 64.472480000000000000
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 49.133890000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<CalculoImposto."ValorApagar"> #n%2,2f]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 61.582715000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR PAGO R$')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DadosPagamento: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.740159920000000000
        Top = 506.457020000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'DadosPagamentoOnBeforePrint'
        Child = frxReport.ChildTroco
        DataSetName = 'Pagamento'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 0.110233779999987000
          Width = 128.504020000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Pagamento."tPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 0.110233779999987000
          Width = 143.622140000000000000
          Height = 12.472440940000000000
          DataSetName = 'Pagamento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pagamento."vPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        PrintChildIfInvisible = True
        Stretched = True
      end
      object Observacoes: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 1035.591220000000000000
        Width = 272.126160000000000000
        Filter = '<InformacoesAdicionais."OBS"> <> '#39#39
        RowCount = 1
        Stretched = True
        object Memo21: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[InformacoesAdicionais."OBS"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.488250000000000000
        Top = 113.385900000000000000
        Width = 272.126160000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Child = frxReport.ChildContingenciaCabecalho
        Stretched = True
        object Memo9: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Top = 52.488250000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da Nota Fiscal de Consumidor Eletr'#244'nica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 57.692950000000000000
          Width = 214.433210000000000000
          Height = 51.023631810000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            'CNPJ: [Emitente."CNPJ"] [Emitente."XNome"]'
            '[Emitente."XLgr"], [Emitente."nro"] - [Emitente."xBairro"]'
            '[Emitente."XMun"], [Emitente."UF"]'
            '[IIF(<Emitente."Fone"><>'#39#39','#39'Fone: '#39'+<Emitente."Fone">,'#39#39')]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object ImgLogo: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 6.000000000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Identificacao: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 143.622140000000000000
        Top = 623.622450000000000000
        Width = 272.126160000000000000
        Child = frxReport.ChildContingenciaIdentificacao
        RowCount = 1
        Stretched = True
        object Memo46: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 0.110189839999975000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulte pela chave de acesso em')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 15.881880000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."URL"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 77.370130000000000000
          Width = 272.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'NFC-e n'#186' [Identificacao."NNF"]   S'#233'rie [Identificacao."Serie" #n' +
              '#000]   [Identificacao."DEmi"] '
            '[Parametros."DescricaoViaEstabelec"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 31.913402909999900000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 106.401670000000000000
          Width = 272.126160000000000000
          Height = 35.905524020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Protocolo de Autoriza'#231#227'o'
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 55.692950000000000000
          Width = 272.126160000000000000
          Height = 17.007839840000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."Consumidor"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Rodape: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.787401570000000000
        Top = 1077.166050000000000000
        Width = 272.126160000000000000
        PrintIfDetailEmpty = True
        RowCount = 1
        Stretched = True
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1.889763780000070000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Sistema"] [Parametros."Site"]')
          ParentFont = False
        end
      end
      object ChildTroco: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 544.252320000000000000
        Width = 272.126160000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object CalculoImpostovTroco: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 143.622140000000000000
          Height = 11.338590000000000000
          DataSetName = 'CalculoImposto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<CalculoImposto."vTroco"> #n%2,2f]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Troco R$')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ChildContingenciaCabecalho: TfrxChild
        FillType = ftBrush
        Fill.BackColor = clScrollBar
        Fill.ForeColor = clGray
        Fill.Style = bsHorizontal
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 204.094620000000000000
        Visible = False
        Width = 272.126160000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 5.559060000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            'EMITIDA EM CONTING'#202'NCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 20.677180000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWindow
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente de autoriza'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ChildContingenciaIdentificacao: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 789.921770000000000000
        Width = 272.126160000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 2.897650000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'EMITIDA EM CONTING'#202'NCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 58.582715000000000000
          Top = 18.015770000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente de autoriza'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object OpenDialogCR: TOpenDialog
    Left = 256
    Top = 588
  end
end
