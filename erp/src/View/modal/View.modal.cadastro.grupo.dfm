inherited ViewModalCadastroGrupo: TViewModalCadastroGrupo
  Caption = 'ViewModalCadastroGrupo'
  ClientHeight = 282
  ClientWidth = 709
  ExplicitWidth = 709
  ExplicitHeight = 282
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 709
    inherited LblTituloDaTela: TLabel
      Width = 558
      Height = 29
      Caption = 'CADASTRO DE GRUPO'
      ExplicitWidth = 223
    end
    inherited PnlFecharTela: TPanel
      Left = 599
      inherited lblFechar: TLabel
        Width = 102
        Height = 23
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 234
    Width = 709
    inherited PnlBtnGravar: TPanel
      Left = 556
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
end
