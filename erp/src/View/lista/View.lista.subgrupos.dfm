inherited ViewListaSubGrupos: TViewListaSubGrupos
  Caption = 'SubGrupos'
  TextHeight = 21
  inherited PnlTopo: TPanel
    inherited ViewFrameCaminho1: TViewFrameCaminho
      inherited PnlBackGound: TPanel
        inherited PnlIcon2: TPanel
          inherited LblTexto1: TLabel
            Width = 98
            Caption = 'Administra'#231#227'o'
            ExplicitWidth = 98
          end
        end
        inherited PnlIconText2: TPanel
          inherited LblTexto2: TLabel
            Width = 74
            Caption = 'SubGrupo'
            ExplicitWidth = 74
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
