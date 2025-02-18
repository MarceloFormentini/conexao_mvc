program ConexaoMVC;

uses
  Vcl.Forms,
  Principal in 'src\view\Principal.pas' {FPrincipal},
  uConexaoFactory in 'src\model\uConexaoFactory.pas',
  uEntidadeFactory in 'src\model\uEntidadeFactory.pas',
  uEntidadeProduto in 'src\model\uEntidadeProduto.pas',
  uFiredacConexao in 'src\model\uFiredacConexao.pas',
  uFiredacQuery in 'src\model\uFiredacQuery.pas',
  uIConexao in 'src\model\uIConexao.pas',
  uController in 'src\controller\uController.pas',
  uIController in 'src\controller\uIController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
