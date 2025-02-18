unit uController;

interface

uses
  uIController, uIConexao;

type
  TController = class(TInterfacedObject, IController)
  private
    FEntidades : IEntidadeProduto;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IController;
    function Entidades : IEntidadeProduto;
    end;

implementation

uses
  uEntidadeFactory;

constructor TController.Create;
begin
  FEntidades := TEntidadesFactory.New;
end;

destructor TController.Destroy;
begin
  inherited;
end;

class function TController.New: IController;
begin
  Result := Self.Create;
end;

function TController.Entidades: IEntidadeProduto;
begin
  Result := FEntidades;
end;

end.
