inherited ViewListaEmpresas: TViewListaEmpresas
  Caption = 'Empresa'
  TextHeight = 21
  inherited PnlTopo: TPanel
    inherited ViewFrameCaminho1: TViewFrameCaminho
      inherited PnlBackGound: TPanel
        inherited PnlIcon2: TPanel
          inherited LblTexto1: TLabel
            Caption = 'Administra'#231#227'o'
            ExplicitWidth = 98
          end
        end
        inherited PnlIconText2: TPanel
          inherited LblTexto2: TLabel
            Caption = 'Empresas'
            ExplicitWidth = 69
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
          inherited BtnEditar: TControlListButton
            OnClick = ViewFrameDuasColunaBtnEditarClick
          end
        end
      end
    end
  end
  inherited EdtPesquisa: TSearchBox
    OnChange = EdtPesquisaChange
  end
end
