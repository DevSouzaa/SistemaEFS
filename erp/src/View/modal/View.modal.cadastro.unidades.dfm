inherited ViewModalCadastroUnidades: TViewModalCadastroUnidades
  Caption = 'CADASTRO DE UNIDADES'
  ClientHeight = 269
  ClientWidth = 698
  ExplicitWidth = 698
  ExplicitHeight = 269
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 698
    inherited LblTituloDaTela: TLabel
      Width = 547
      Height = 29
      Caption = 'CADASTRO DE PESSOAS'
      ExplicitWidth = 241
    end
    inherited PnlFecharTela: TPanel
      Left = 588
      inherited lblFechar: TLabel
        Width = 102
        Height = 23
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 221
    Width = 698
    inherited PnlBtnGravar: TPanel
      Left = 545
      inherited LblBtnGravar: TLabel
        Width = 97
        Height = 36
      end
    end
  end
  object EdtDescricao: TLabeledEdit
    Left = 176
    Top = 96
    Width = 457
    Height = 29
    EditLabel.Width = 82
    EditLabel.Height = 21
    EditLabel.Caption = 'DESCRICAO'
    TabOrder = 2
    Text = ''
  end
  object EdtID: TLabeledEdit
    Left = 24
    Top = 96
    Width = 121
    Height = 29
    EditLabel.Width = 15
    EditLabel.Height = 21
    EditLabel.Caption = 'ID'
    TabOrder = 3
    Text = ''
  end
  object EdtFracao: TLabeledEdit
    Left = 24
    Top = 168
    Width = 137
    Height = 29
    EditLabel.Width = 59
    EditLabel.Height = 21
    EditLabel.Caption = 'FRA'#199#195'O'
    TabOrder = 4
    Text = ''
  end
  object EdtSigla: TLabeledEdit
    Left = 176
    Top = 168
    Width = 121
    Height = 29
    EditLabel.Width = 40
    EditLabel.Height = 21
    EditLabel.Caption = 'SIGLA'
    TabOrder = 5
    Text = ''
  end
  object CheckAtivo: TCheckBox
    Left = 328
    Top = 170
    Width = 97
    Height = 27
    Caption = 'Ativo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
end
