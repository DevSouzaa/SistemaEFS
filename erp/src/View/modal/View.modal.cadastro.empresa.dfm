inherited ViewModalCadastroEmpresas: TViewModalCadastroEmpresas
  Caption = 'Empresas'
  ClientHeight = 397
  ClientWidth = 981
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 981
  ExplicitHeight = 397
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 981
    ExplicitWidth = 981
    inherited LblTituloDaTela: TLabel
      Width = 830
      Caption = 'CADASTRO DE EMPRESA'
      ExplicitWidth = 246
    end
    inherited PnlFecharTela: TPanel
      Left = 871
      ExplicitLeft = 871
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 349
    Width = 981
    ExplicitTop = 349
    ExplicitWidth = 981
    inherited PnlBtnGravar: TPanel
      Left = 828
      ExplicitLeft = 828
      inherited LblBtnGravar: TLabel
        OnClick = LblBtnGravarClick
      end
    end
  end
  object PnlPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 981
    Height = 314
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object lblUF: TLabel
      Left = 855
      Top = 220
      Width = 19
      Height = 21
      Caption = 'UF'
    end
    object lblCidade: TLabel
      Left = 461
      Top = 220
      Width = 48
      Height = 21
      Caption = 'Cidade'
    end
    object lblCodCidade: TLabel
      Left = 330
      Top = 220
      Width = 88
      Height = 21
      Caption = 'C'#243'd. Cidade '
    end
    object lblLogradouro: TLabel
      Left = 13
      Top = 161
      Width = 79
      Height = 21
      Caption = 'Logradouro'
    end
    object lblFone: TLabel
      Left = 330
      Top = 161
      Width = 34
      Height = 21
      Caption = 'Fone'
    end
    object lblCEP: TLabel
      Left = 460
      Top = 161
      Width = 27
      Height = 21
      Caption = 'CEP'
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
    object lblFantasia: TLabel
      Left = 490
      Top = 19
      Width = 56
      Height = 21
      Caption = 'Fantasia'
    end
    object lblRazaoSocial: TLabel
      Left = 10
      Top = 19
      Width = 85
      Height = 21
      Caption = 'Raz'#227'o Social'
    end
    object lblIe: TLabel
      Left = 200
      Top = 92
      Width = 55
      Height = 21
      Caption = 'Insc.Est.'
    end
    object lblCNPJ: TLabel
      Left = 13
      Top = 92
      Width = 35
      Height = 21
      Caption = 'CNPJ'
    end
    object lblTipoEmpresa: TLabel
      Left = 383
      Top = 92
      Width = 117
      Height = 21
      Caption = 'Tipo de Empresa:'
    end
    object lblBairro: TLabel
      Left = 12
      Top = 220
      Width = 40
      Height = 21
      Caption = 'Bairro'
    end
    object edtEmitUF: TEdit
      Left = 855
      Top = 247
      Width = 91
      Height = 29
      TabOrder = 0
    end
    object edtEmitCidade: TEdit
      Left = 461
      Top = 247
      Width = 388
      Height = 29
      TabOrder = 1
    end
    object edtEmitCodCidade: TEdit
      Left = 330
      Top = 247
      Width = 125
      Height = 29
      TabOrder = 2
    end
    object edtEmitBairro: TEdit
      Left = 13
      Top = 247
      Width = 311
      Height = 29
      TabOrder = 3
    end
    object edtEmitLogradouro: TEdit
      Left = 13
      Top = 188
      Width = 311
      Height = 29
      TabOrder = 4
    end
    object edtEmitFone: TEdit
      Left = 330
      Top = 188
      Width = 125
      Height = 29
      TabOrder = 5
    end
    object edtEmitCEP: TEdit
      Left = 461
      Top = 188
      Width = 123
      Height = 29
      TabOrder = 6
    end
    object edtEmitNumero: TEdit
      Left = 590
      Top = 188
      Width = 71
      Height = 29
      TabOrder = 7
    end
    object edtEmitComp: TEdit
      Left = 664
      Top = 188
      Width = 282
      Height = 29
      TabOrder = 8
    end
    object edtEmitFantasia: TEdit
      Left = 490
      Top = 46
      Width = 453
      Height = 29
      TabOrder = 9
    end
    object edtEmitRazao: TEdit
      Left = 10
      Top = 46
      Width = 477
      Height = 29
      TabOrder = 10
    end
    object edtEmitIE: TEdit
      Left = 201
      Top = 119
      Width = 176
      Height = 29
      TabOrder = 11
    end
    object edtEmitCNPJ: TEdit
      Left = 13
      Top = 119
      Width = 182
      Height = 29
      TabOrder = 12
    end
    object cbTipoEmpresa: TComboBoxExpress
      Left = 383
      Top = 119
      Width = 560
      Height = 29
      Style = csDropDownList
      TabOrder = 13
      Items.Strings = (
        'Simples Nacional'
        'Simples Nacional, excesso sublimite de receita bruta'
        'Regime Normal')
    end
  end
end