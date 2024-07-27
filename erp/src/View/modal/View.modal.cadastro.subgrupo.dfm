inherited ViewModalCadastroSubGrupo: TViewModalCadastroSubGrupo
  Caption = 'ViewModalCadastroSubGrupo'
  ClientHeight = 296
  ClientWidth = 687
  ExplicitWidth = 687
  ExplicitHeight = 296
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 687
    inherited LblTituloDaTela: TLabel
      Width = 536
      Height = 29
      Caption = 'CADASTRO DE SUB GRUPO'
      ExplicitWidth = 269
    end
    inherited PnlFecharTela: TPanel
      Left = 577
      inherited lblFechar: TLabel
        Width = 102
        Height = 23
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 248
    Width = 687
    inherited PnlBtnGravar: TPanel
      Left = 534
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
