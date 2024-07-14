inherited ViewModalCadastroProduto: TViewModalCadastroProduto
  Caption = 'CadastroProdutos'
  ClientHeight = 663
  ClientWidth = 891
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 891
  ExplicitHeight = 663
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 891
    ExplicitWidth = 891
    inherited LblTituloDaTela: TLabel
      Width = 212
      Caption = 'Cadastro de Produtos'
      ExplicitWidth = 212
    end
    inherited PnlFecharTela: TPanel
      Left = 781
      ExplicitLeft = 781
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 615
    Width = 891
    ExplicitTop = 615
    ExplicitWidth = 891
    inherited PnlBtnGravar: TPanel
      Left = 738
      ExplicitLeft = 738
      inherited LblBtnGravar: TLabel
        OnClick = LblBtnGravarClick
      end
    end
  end
  object PnlPrincipal: TPanel
    Left = 0
    Top = 35
    Width = 891
    Height = 580
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 3
      Width = 15
      Height = 21
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 104
      Top = 3
      Width = 42
      Height = 21
      Caption = 'Nome'
    end
    object Label5: TLabel
      Left = 400
      Top = 61
      Width = 71
      Height = 21
      Caption = 'Referencia'
    end
    object Label6: TLabel
      Left = 15
      Top = 61
      Width = 36
      Height = 21
      Caption = 'NCM'
    end
    object Label7: TLabel
      Left = 296
      Top = 133
      Width = 73
      Height = 21
      Caption = 'Sub Grupo'
    end
    object Label8: TLabel
      Left = 672
      Top = 61
      Width = 117
      Height = 21
      Caption = 'Codigo de Barras'
    end
    object Label10: TLabel
      Left = 16
      Top = 133
      Width = 43
      Height = 21
      Caption = 'Grupo'
    end
    object Label11: TLabel
      Left = 13
      Top = 259
      Width = 81
      Height = 21
      Caption = 'Observacao'
    end
    object Label12: TLabel
      Left = 135
      Top = 197
      Width = 70
      Height = 21
      Caption = 'Fabricante'
    end
    object Label3: TLabel
      Left = 15
      Top = 197
      Width = 58
      Height = 21
      Caption = 'Unidade'
    end
    object Label4: TLabel
      Left = 585
      Top = 135
      Width = 42
      Height = 21
      Caption = 'Marca'
    end
    object Label19: TLabel
      Left = 104
      Top = 61
      Width = 106
      Height = 21
      Caption = 'DEscricao NCM'
    end
    object EdtID: TEdit
      Left = 16
      Top = 24
      Width = 65
      Height = 29
      TabOrder = 0
    end
    object EdtNome: TEdit
      Left = 104
      Top = 24
      Width = 513
      Height = 29
      TabOrder = 1
    end
    object Edt_Referencia: TEdit
      Left = 400
      Top = 88
      Width = 265
      Height = 29
      TabOrder = 2
    end
    object Edt_CodBarras: TEdit
      Left = 672
      Top = 88
      Width = 201
      Height = 29
      TabOrder = 3
    end
    object Mm_OBS: TMemo
      Left = 14
      Top = 281
      Width = 857
      Height = 64
      TabOrder = 4
    end
    object CardPanel_Detalhes: TCardPanel
      Left = 16
      Top = 352
      Width = 862
      Height = 222
      ActiveCard = Card_Valores
      BevelOuter = bvNone
      TabOrder = 5
      object Card_Valores: TCard
        Left = 0
        Top = 0
        Width = 862
        Height = 222
        Caption = 'Card_Valores'
        CardIndex = 0
        TabOrder = 0
        object CBX_CUSTO: TGroupBox
          Left = 8
          Top = 1
          Width = 330
          Height = 208
          Caption = 'CUSTO / VENDA'
          TabOrder = 0
          object Label9: TLabel
            Left = 3
            Top = 22
            Width = 67
            Height = 17
            Caption = 'Custo Inicial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 174
            Top = 22
            Width = 96
            Height = 17
            Caption = 'Custo de Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 4
            Top = 75
            Width = 78
            Height = 17
            Caption = 'Valor de Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object labelOutrasDesp: TLabel
            Left = 4
            Top = 130
            Width = 93
            Height = 17
            Caption = 'Outras Despesas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object EDT_CUSTOINICIAL: TJvCalcEdit
            AlignWithMargins = True
            Left = 2
            Top = 44
            Width = 121
            Height = 29
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 0
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
          object EDT_VALORFRETE: TJvCalcEdit
            AlignWithMargins = True
            Left = 2
            Top = 97
            Width = 121
            Height = 29
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
          object EDT_OUTRASDESPESAS: TJvCalcEdit
            AlignWithMargins = True
            Left = 2
            Top = 152
            Width = 121
            Height = 29
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 2
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
          object EDT_CUSTOENTRADA: TJvCalcEdit
            AlignWithMargins = True
            Left = 174
            Top = 44
            Width = 121
            Height = 29
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 3
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
        end
        object CBX_FISCAL: TGroupBox
          Left = 344
          Top = 0
          Width = 153
          Height = 209
          Caption = 'FISCAL'
          TabOrder = 1
          object Label14: TLabel
            Left = 14
            Top = 86
            Width = 13
            Height = 17
            Caption = 'IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 11
            Top = 28
            Width = 65
            Height = 17
            Caption = 'PIS/COFINS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 11
            Top = 148
            Width = 29
            Height = 17
            Caption = 'ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object EDT_ICMS: TEdit
            Left = 11
            Top = 171
            Width = 118
            Height = 29
            TabOrder = 0
          end
          object EDT_IPI: TEdit
            Left = 11
            Top = 113
            Width = 118
            Height = 29
            TabOrder = 1
          end
          object EDT_PISCOFINS: TEdit
            Left = 11
            Top = 51
            Width = 118
            Height = 29
            TabOrder = 2
          end
        end
        object CBX_OUTROS: TGroupBox
          Left = 514
          Top = -1
          Width = 341
          Height = 210
          Caption = 'OUTROS'
          TabOrder = 2
          object Label16: TLabel
            Left = 22
            Top = 28
            Width = 81
            Height = 17
            Caption = 'Margem Lucro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 174
            Top = 30
            Width = 67
            Height = 17
            Caption = 'Valor Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 214
            Top = 133
            Width = 44
            Height = 17
            Caption = 'Estoque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 262
            Top = 154
            Width = 42
            Height = 41
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EDT_MARGEMLUCRO: TJvCalcEdit
            AlignWithMargins = True
            Left = 21
            Top = 50
            Width = 121
            Height = 40
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 0
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
          object EDT_VALORVENDA: TJvCalcEdit
            AlignWithMargins = True
            Left = 173
            Top = 52
            Width = 121
            Height = 40
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
          object EDT_ESTOQUE: TJvCalcEdit
            AlignWithMargins = True
            Left = 24
            Top = 155
            Width = 233
            Height = 40
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = False
            ParentFlat = False
            Alignment = taCenter
            ButtonFlat = True
            ClickKey = 0
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5395026
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            FormatOnEditing = True
            ImageKind = ikCustom
            ParentFont = False
            ShowButton = False
            TabOrder = 2
            Value = 1.000000000000000000
            ClipboardCommands = []
            DecimalPlacesAlwaysShown = True
          end
        end
      end
    end
    object Check_Ativo: TCheckBox
      Left = 625
      Top = 30
      Width = 128
      Height = 17
      Caption = 'Ativo/Inativo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckFracionar: TCheckBox
      Left = 774
      Top = 29
      Width = 97
      Height = 17
      Caption = 'Fracionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object EDT_NCM: TEdit
      Left = 15
      Top = 88
      Width = 84
      Height = 29
      TabOrder = 8
    end
    object Edt_DescricaoNCM: TEdit
      Left = 105
      Top = 88
      Width = 289
      Height = 29
      TabOrder = 9
    end
    object CBB_Grupo: TComboBoxExpress
      Left = 15
      Top = 160
      Width = 250
      Height = 29
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      TabOrder = 10
    end
    object CBB_SubGrupo: TComboBoxExpress
      Left = 296
      Top = 160
      Width = 265
      Height = 29
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      TabOrder = 11
    end
    object CBB_Fabricante: TComboBoxExpress
      Left = 135
      Top = 224
      Width = 301
      Height = 29
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      TabOrder = 12
    end
    object CBB_Unidade: TComboBoxExpress
      Left = 15
      Top = 224
      Width = 91
      Height = 29
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      TabOrder = 13
    end
    object CBB_Marcas: TComboBoxExpress
      Left = 585
      Top = 162
      Width = 264
      Height = 29
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      TabOrder = 14
    end
  end
end