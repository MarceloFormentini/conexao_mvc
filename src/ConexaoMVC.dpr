program ConexaoMVC;

uses
  Vcl.Forms,
  Principal in 'view\Principal.pas' {FPrincipal},
  uIConexao in 'model\interface\uIConexao.pas',
  uConexaoFactory in 'model\impl\uConexaoFactory.pas',
  uEntidadeFactory in 'model\impl\uEntidadeFactory.pas',
  uEntidadeProduto in 'model\impl\uEntidadeProduto.pas',
  uFiredacConexao in 'model\impl\uFiredacConexao.pas',
  uFiredacQuery in 'model\impl\uFiredacQuery.pas',
  uController in 'controller\impl\uController.pas',
  uIController in 'controller\interface\uIController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
