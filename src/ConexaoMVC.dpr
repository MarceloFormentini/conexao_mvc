program ConexaoMVC;

uses
  Vcl.Forms,
  Principal in 'view\Principal.pas' {FPrincipal},
  uConexaoFactory in 'model\uConexaoFactory.pas',
  uEntidadeFactory in 'model\uEntidadeFactory.pas',
  uEntidadeProduto in 'model\uEntidadeProduto.pas',
  uFiredacConexao in 'model\uFiredacConexao.pas',
  uFiredacQuery in 'model\uFiredacQuery.pas',
  uIConexao in 'model\uIConexao.pas',
  uController in 'controller\uController.pas',
  uIController in 'controller\uIController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
