inherited ViewModalCadastroUsuario: TViewModalCadastroUsuario
  Caption = 'ViewModalCadastroUsuario'
  ClientHeight = 653
  ClientWidth = 1013
  OnShow = FormShow
  ExplicitWidth = 1013
  ExplicitHeight = 653
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 1013
    ExplicitWidth = 668
    inherited LblTituloDaTela: TLabel
      Width = 862
      Height = 29
      Caption = 'Cadastro de Usuarios'
      ExplicitWidth = 206
    end
    inherited PnlFecharTela: TPanel
      Left = 903
      ExplicitLeft = 558
      inherited lblFechar: TLabel
        Width = 102
        Height = 23
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 605
    Width = 1013
    ExplicitTop = 361
    ExplicitWidth = 668
    inherited PnlBtnGravar: TPanel
      Left = 860
      ExplicitLeft = 515
      inherited LblBtnGravar: TLabel
        Width = 97
        Height = 36
        OnClick = LblBtnGravarClick
      end
    end
  end
  object PnlFundo: TPanel
    Left = 0
    Top = 35
    Width = 1013
    Height = 570
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 668
    ExplicitHeight = 326
    object Label1: TLabel
      Left = 624
      Top = 0
      Width = 44
      Height = 21
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5395026
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 6
      Width = 15
      Height = 21
      Caption = 'Id'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5395026
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 88
      Top = 3
      Width = 45
      Height = 21
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5395026
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 356
      Top = 6
      Width = 41
      Height = 21
      Caption = 'Login'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5395026
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 832
      Top = 0
      Width = 40
      Height = 21
      Caption = 'Perfis'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5395026
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtID: TEdit
      Left = 20
      Top = 27
      Width = 49
      Height = 29
      TabOrder = 0
    end
    object EdtNome: TEdit
      Left = 88
      Top = 27
      Width = 241
      Height = 29
      TabOrder = 1
    end
    object EdtLogin: TEdit
      Left = 356
      Top = 27
      Width = 243
      Height = 29
      TabOrder = 2
    end
    object EdtSenha: TEdit
      Left = 620
      Top = 27
      Width = 197
      Height = 29
      PasswordChar = '*'
      TabOrder = 3
    end
    object CBXPerfil: TComboBox
      Left = 832
      Top = 27
      Width = 145
      Height = 29
      Style = csDropDownList
      TabOrder = 4
    end
    object CardPanel1: TCardPanel
      Left = 20
      Top = 152
      Width = 973
      Height = 401
      ActiveCard = CardAdm
      Caption = 'CardPanel1'
      TabOrder = 5
      object CardAdm: TCard
        Left = 1
        Top = 1
        Width = 971
        Height = 399
        Caption = 'CardAdm'
        CardIndex = 0
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 0
        object PnlAcoesAdm: TPanel
          Left = 0
          Top = 0
          Width = 971
          Height = 399
          Align = alClient
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = -1
          object PnlAcaoCliente: TPanel
            Left = 25
            Top = 32
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 0
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 192
              object Label6: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'CLIENTE'
                ExplicitWidth = 57
              end
            end
            object CheckInserirCliente: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckEditarCliente: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckListarCliente: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckDeletarCliente: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object PnlAcaoProduto: TPanel
            Left = 216
            Top = 32
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 1
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label7: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'PRODUTO'
                ExplicitWidth = 71
              end
            end
            object CheckInserirProduto: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckEditarProduto: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckListarProduto: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckDeletarProduto: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object PnlAcaoUsuarios: TPanel
            Left = 410
            Top = 32
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 2
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label8: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'USUARIO'
                ExplicitWidth = 65
              end
            end
            object CheckInserirUsuario: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckEditarUsuario: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckListarUsuario: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckDeletarUsuario: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object PnlAcao1: TPanel
            Left = 601
            Top = 32
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 3
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label9: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox13: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox14: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox15: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox16: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel8: TPanel
            Left = 784
            Top = 32
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 4
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label10: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox17: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox18: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox19: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox20: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel10: TPanel
            Left = 25
            Top = 136
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 5
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label11: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox21: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox22: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox23: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox24: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel12: TPanel
            Left = 216
            Top = 136
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 6
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label12: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox25: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox26: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox27: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox28: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel14: TPanel
            Left = 410
            Top = 136
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 7
            object Panel15: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label13: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox29: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox30: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox31: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox32: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel16: TPanel
            Left = 601
            Top = 130
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 8
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label14: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox33: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox34: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox35: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox36: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel18: TPanel
            Left = 784
            Top = 130
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 9
            object Panel19: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label15: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox37: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox38: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox39: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox40: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel20: TPanel
            Left = 216
            Top = 240
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 10
            object Panel21: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label16: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox41: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox42: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox43: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox44: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel22: TPanel
            Left = 25
            Top = 240
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 11
            object Panel23: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label17: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox45: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox46: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox47: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox48: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel24: TPanel
            Left = 410
            Top = 240
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 12
            object Panel25: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label18: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox49: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox50: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox51: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox52: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel26: TPanel
            Left = 601
            Top = 242
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 13
            object Panel27: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label19: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox53: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox54: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox55: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox56: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
          object Panel28: TPanel
            Left = 784
            Top = 244
            Width = 160
            Height = 81
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 14
            object Panel29: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clGray
              ParentBackground = False
              TabOrder = 0
              object Label20: TLabel
                Left = 0
                Top = 0
                Width = 160
                Height = 21
                Align = alClient
                Alignment = taCenter
                Caption = 'Acao'
                ExplicitWidth = 34
              end
            end
            object CheckBox57: TCheckBox
              Left = 8
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Inserir'
              TabOrder = 1
            end
            object CheckBox58: TCheckBox
              Left = 8
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Editar'
              TabOrder = 2
            end
            object CheckBox59: TCheckBox
              Left = 80
              Top = 50
              Width = 97
              Height = 17
              Caption = 'Listar'
              TabOrder = 3
            end
            object CheckBox60: TCheckBox
              Left = 80
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Deletar'
              TabOrder = 4
            end
          end
        end
      end
      object CardCom: TCard
        Left = 1
        Top = 1
        Width = 971
        Height = 399
        Caption = 'CardCom'
        CardIndex = 1
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
        object PnlAcoesCom: TPanel
          Left = 0
          Top = 0
          Width = 971
          Height = 399
          Align = alClient
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 123
          ExplicitTop = 111
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
      end
      object CardFin: TCard
        Left = 1
        Top = 1
        Width = 971
        Height = 399
        Caption = 'CardFin'
        CardIndex = 2
        TabOrder = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
        object PnlAcoesFin: TPanel
          Left = 0
          Top = 0
          Width = 971
          Height = 399
          Align = alClient
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 123
          ExplicitTop = 111
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
      end
      object CardFis: TCard
        Left = 1
        Top = 1
        Width = 971
        Height = 399
        Caption = 'CardFis'
        CardIndex = 3
        TabOrder = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
        object PnlAcoesFis: TPanel
          Left = 0
          Top = 0
          Width = 971
          Height = 399
          Align = alClient
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 123
          ExplicitTop = 111
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
      end
    end
    object PnlGrupo1: TPanel
      Left = 69
      Top = 106
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Caption = 'Administrativo'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = PnlGrupo1Click
    end
    object PnlGrupo2: TPanel
      Left = 277
      Top = 106
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Caption = 'Comercial'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = PnlGrupo2Click
    end
    object PnlGrupo3: TPanel
      Left = 501
      Top = 106
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Caption = 'Financeiro'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = PnlGrupo3Click
    end
    object PnlGrupo4: TPanel
      Left = 735
      Top = 106
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Caption = 'Fiscal'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
      OnClick = PnlGrupo4Click
    end
  end
end
