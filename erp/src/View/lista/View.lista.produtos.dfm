inherited ViewListaProdutos: TViewListaProdutos
  Margins.Left = 5
  Caption = 'Produtos'
  ClientWidth = 1021
  ExplicitWidth = 1021
  TextHeight = 21
  inherited PnlTopo: TPanel
    Width = 1021
    ExplicitWidth = 1021
    inherited PnlBotoes: TPanel
      Left = 648
      ExplicitLeft = 648
      inherited PnlBtnNovo: TPanel
        inherited LblBtnNovo: TLabel
          Width = 97
          Height = 37
          OnClick = LblBtnNovoClick
        end
      end
      inherited PnlBtnEditar: TPanel
        Visible = False
        inherited LblBtnEditar: TLabel
          Width = 97
          Height = 37
          OnClick = LblBtnEditarClick
        end
      end
    end
    inherited ViewFrameCaminho1: TViewFrameCaminho
      Width = 648
      ExplicitWidth = 648
      inherited PnlBackGound: TPanel
        Width = 648
        ExplicitWidth = 648
        inherited PnlIcon: TPanel
          inherited ImgIconEscura: TImage
            Picture.Data = {
              0B54504E474772617068696336100000424D3610000000000000360000002800
              0000200000002000000001002000000000000010000000000000000000000000
              000000000000FFFFFF01FCD4C95BFBD5C888FBD5C888FBD5C888FBD5C888FBD5
              C888FBD5C888FBD5C888FBD5C888FBD5C888FBD5C888FBD4C985FBD5C74A0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000FFD1C81CFCD4C871F9D5C92B000000000000000000000000000000000000
              000000000000FCD5CA5CFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFAD3
              CA35000000000000000000000000000000000000000000000000000000000000
              0000FCD4C9C8FCD5C9FFFBD4C8EAFFFFAA030000000000000000000000000000
              000000000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD6C9130000000000000000000000000000
              000000000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD6C9130000000000000000000000000000
              000000000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD6C9130000000000000000000000000000
              000000000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000FFFFFF01FFD2C311FFD2C311FFD2C311FFD2
              C311FBD5C9EDFCD5C9FFFCD5C9FFFFD3CC23FFD2C311FFD2C311FFD2C311FFFF
              AA0300000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FFDACE15FBD5C8DCFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFBD4
              C8EAF9D5C92BFBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FBD4C74EFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD4C972FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FFD4BF0CFCD5C8B8FBD5C9EEFBD5C9EEFBD5C9EEFBD5
              C9EEFBD4C8FEFCD5C9FFFCD5C9FFFBD5C8EFFBD5C9EEFBD5C9EEFBD5C9EEFCD4
              C9C8FFD1C81CFBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD6C9130000000000000000000000000000
              000000000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD6C9130000000000000000000000000000
              000000000000FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD6C9130000000000000000000000000000
              000000000000FCD4C87FFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C859000000000000000000000000000000000000000000000000000000000000
              0000FBD4C8ECFCD5C9FFFCD5C9FFFFD4C6120000000000000000000000000000
              000000000000FBD3C94CFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFBD5C8FAFFD3
              C729000000000000000000000000000000000000000000000000000000000000
              0000FCD5C8B8FCD5C9FFFBD5C8DCFFFFFF010000000000000000000000000000
              00000000000000000000FAD5C737FCD5C955FCD5C955FCD5C955FCD5C955FCD5
              C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FFD4C82A0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000FFD4BF0CFBD4C74EFFD0C516000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000FAD4CB36FCD5C955FCD5C955FCD5C955FCD5C955FCD5
              C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FFD3C7290000
              0000000000000000000000000000FFD3C729FCD5C955FCD5C955FCD5C955FCD5
              C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FCD5C955FAD3
              CA3500000000FBD6C84BFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFBD5C8FAFFD3
              C7290000000000000000FFD4C82AFBD5C8FAFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C74AFCD4C87FFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C8590000000000000000FCD4C859FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD4C87FFBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FBD5C980FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD4
              C95A0000000000000000FCD4C95AFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFBD5C980FCD5CA5CFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFAD4
              CB360000000000000000FAD5C737FCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5C9FFFCD5
              C9FFFCD4C95BFFFFFF02FCD5CA5CFCD4C977FCD4C977FCD4C977FCD4C977FCD4
              C977FCD4C977FCD4C977FCD4C977FCD4C977FCD4C977FCD4C977FBD6C84B0000
              0000000000000000000000000000FBD3C94CFCD4C977FCD4C977FCD4C977FCD4
              C977FCD4C977FCD4C977FCD4C977FCD4C977FCD4C977FCD4C977FCD4C977FCD5
              CA5CFFFFFF01}
          end
        end
        inherited PnlIcon2: TPanel
          inherited LblTexto1: TLabel
            Width = 106
            Height = 43
            Caption = 'Estoque'
            ExplicitWidth = 55
          end
        end
        inherited PnlIconText2: TPanel
          inherited LblTexto2: TLabel
            Width = 312
            Height = 43
            Caption = 'Produtos'
            ExplicitWidth = 67
          end
        end
      end
    end
  end
  inherited PnlRodaPe: TPanel
    Width = 1021
    ExplicitWidth = 1021
  end
  inherited CadPanel_Dados: TCardPanel
    Width = 1021
    ExplicitWidth = 1021
    inherited Card_Vazio: TCard
      Width = 1019
      ExplicitWidth = 1019
      inherited ImgVazio: TImage
        Width = 1019
        Align = alTop
        ExplicitWidth = 1019
      end
    end
    inherited Card_DuasColuna: TCard
      Width = 1019
      ExplicitWidth = 1019
      inherited ViewFrameDuasColuna: TViewFrameDuasColuna
        Width = 1019
        ExplicitWidth = 1019
        inherited ControlList1: TControlList
          Width = 1019
          OnBeforeDrawItem = ViewFrameDuasColunaControlList1BeforeDrawItem
          ExplicitWidth = 1019
          inherited VirtualImage1: TVirtualImage
            ImageIndex = 2
          end
          inherited BtnEditar: TControlListButton
            Left = 925
            OnClick = ViewFrameDuasColunaBtnEditarClick
            ExplicitLeft = 925
          end
        end
      end
    end
  end
  inherited EdtPesquisa: TSearchBox
    Width = 1021
    OnChange = EdtPesquisaChange
    ExplicitWidth = 1021
  end
end
