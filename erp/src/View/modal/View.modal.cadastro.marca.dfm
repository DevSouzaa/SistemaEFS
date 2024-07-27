inherited ViewModalCadastroMarca: TViewModalCadastroMarca
  Caption = 'CADASTRO DE MARCA'
  ClientHeight = 274
  ClientWidth = 689
  ExplicitWidth = 689
  ExplicitHeight = 274
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 689
    inherited LblTituloDaTela: TLabel
      Width = 538
      Height = 29
    end
    inherited PnlFecharTela: TPanel
      Left = 579
      inherited lblFechar: TLabel
        Width = 102
        Height = 23
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 226
    Width = 689
    inherited PnlBtnGravar: TPanel
      Left = 536
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
