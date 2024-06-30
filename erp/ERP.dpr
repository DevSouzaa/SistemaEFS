program ERP;

uses
  Vcl.Forms,
  View.Base in '..\comuns\view\base\View.Base.pas' {ViewBase},
  View.Principal in 'src\view\principal\View.Principal.pas' {ViewPrincipal},
  Provider.Constantes in '..\comuns\provider\Constants\Provider.Constantes.pas',
  Conexao.model in '..\comuns\Models\Connection\Conexao.model.pas',
  Provider.Conexao in '..\comuns\provider\Conexao\Provider.Conexao.pas' {ProviderConexao: TDataModule},
  View.Base.Tela.Modal in '..\comuns\view\base\View.Base.Tela.Modal.pas' {ViewBaseTelaModal},
  Empresa.model in '..\comuns\Models\Empresa.model.pas',
  PageControlEx in '..\comuns\Terceiros\TDI\PageControlEx.pas',
  TabCloseButton in '..\comuns\Terceiros\TDI\TabCloseButton.pas',
  TDI in '..\comuns\Terceiros\TDI\TDI.pas',
  VisualizaImagensDasGuiasAbertas in '..\comuns\Terceiros\TDI\VisualizaImagensDasGuiasAbertas.pas' {/  Sistema.model in '..\comuns\Models\Sistema.model.pas';},
  Sistema.model in '..\comuns\Models\Sistema.model.pas',
  Enums in '..\comuns\Enums\Enums.pas',
  Usuario.model in '..\comuns\Models\Usuario\Usuario.model.pas',
  Acesso.model in '..\comuns\Models\Usuario\Acesso.model.pas',
  Perfil.model in '..\comuns\Models\Usuario\Perfil.model.pas',
  Acao.model in '..\comuns\Models\Usuario\Acao.model.pas',
  Dm.Principal in '..\comuns\Data Modules\Dm.Principal.pas' {ProviderConexao1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.