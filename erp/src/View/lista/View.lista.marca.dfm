inherited ViewListaMarca: TViewListaMarca
  Caption = 'Marcas'
  TextHeight = 21
  inherited PnlTopo: TPanel
    inherited PnlBotoes: TPanel
      inherited PnlBtnNovo: TPanel
        inherited LblBtnNovo: TLabel
          Width = 97
          Height = 37
        end
      end
      inherited PnlBtnEditar: TPanel
        inherited LblBtnEditar: TLabel
          Width = 97
          Height = 37
        end
      end
    end
    inherited ViewFrameCaminho1: TViewFrameCaminho
      inherited PnlBackGound: TPanel
        inherited PnlIcon2: TPanel
          inherited LblTexto1: TLabel
            Width = 106
            Height = 43
            Caption = 'Administra'#231#227'o'
            ExplicitWidth = 106
          end
        end
        inherited PnlIconText2: TPanel
          inherited LblTexto2: TLabel
            Width = 312
            Height = 43
            Caption = 'Marcas'
            ExplicitWidth = 312
          end
        end
      end
    end
  end
  inherited CadPanel_Dados: TCardPanel
    inherited Card_DuasColuna: TCard
      inherited ViewFrameDuasColuna: TViewFrameDuasColuna
        inherited ControlList1: TControlList
          OnBeforeDrawItem = ViewFrameDuasColunaControlList1BeforeDrawItem
          inherited VirtualImage1: TVirtualImage
            ImageIndex = 2
          end
        end
      end
    end
  end
end