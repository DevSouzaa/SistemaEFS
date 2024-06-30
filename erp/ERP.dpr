program ERP;

uses
  Vcl.Forms,
  View.Base in '..\shared\view\base\View.Base.pas' {ViewBase},
  View.Principal in 'src\view\principal\View.Principal.pas' {ViewPrincipal},
  Provider.Constantes in '..\shared\provider\Constants\Provider.Constantes.pas',
  Conexao.model in '..\shared\Models\Connection\Conexao.model.pas',
  Provider.Conexao in '..\shared\provider\Conexao\Provider.Conexao.pas' {ProviderConexao: TDataModule},
  View.Base.Tela.Modal in '..\shared\view\base\View.Base.Tela.Modal.pas' {ViewBaseTelaModal},
  Empresa.model in '..\shared\Models\Empresa.model.pas',
  PageControlEx in '..\shared\Terceiros\TDI\PageControlEx.pas',
  TabCloseButton in '..\shared\Terceiros\TDI\TabCloseButton.pas',
  TDI in '..\shared\Terceiros\TDI\TDI.pas',
  VisualizaImagensDasGuiasAbertas in '..\shared\Terceiros\TDI\VisualizaImagensDasGuiasAbertas.pas' {VisualizaImagensDasGuiasAbertas},
  Sistema.model in '..\shared\Models\Sistema.model.pas',
  Enums in '..\shared\Enums\Enums.pas',
  Usuario.model in '..\shared\Models\Usuario\Usuario.model.pas',
  Acesso.model in '..\shared\Models\Usuario\Acesso.model.pas',
  Perfil.model in '..\shared\Models\Usuario\Perfil.model.pas',
  Acao.model in '..\shared\Models\Usuario\Acao.model.pas',
  Dm.Principal in '..\shared\Data Modules\Dm.Principal.pas' {DmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
