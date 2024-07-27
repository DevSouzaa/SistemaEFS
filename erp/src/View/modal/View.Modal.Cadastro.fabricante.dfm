inherited ViewModalCadastroFabricante: TViewModalCadastroFabricante
  Caption = 'CADASTRO DE FABRICANTE'
  ClientHeight = 278
  ClientWidth = 675
  ExplicitWidth = 675
  ExplicitHeight = 278
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 675
    inherited LblTituloDaTela: TLabel
      Width = 524
      Height = 29
      Caption = 'CADASTRO DE FABRICANTE'
      ExplicitWidth = 277
    end
    inherited PnlFecharTela: TPanel
      Left = 565
      inherited lblFechar: TLabel
        Width = 102
        Height = 23
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Top = 230
    Width = 675
    inherited PnlBtnGravar: TPanel
      Left = 522
      inherited LblBtnGravar: TLabel
        Width = 97
        Height = 36
      end
    end
  end
  object EdtID: TLabeledEdit
    Left = 24
    Top = 96
    Width = 121
    Height = 29
    EditLabel.Width = 15
    EditLabel.Height = 21
    EditLabel.Caption = 'ID'
    TabOrder = 2
    Text = ''
  end
  object EdtDescricao: TLabeledEdit
    Left = 176
    Top = 96
    Width = 457
    Height = 29
    EditLabel.Width = 82
    EditLabel.Height = 21
    EditLabel.Caption = 'DESCRICAO'
    TabOrder = 3
    Text = ''
  end
end
