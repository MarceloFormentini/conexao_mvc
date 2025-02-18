unit uEntidadeFactory;

interface

uses
  uIConexao;

type
  TEntidadesFactory = class(TInterfacedObject, IEntidadeProduto)
  private
    FProduto: IEntidade;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IEntidadeProduto;
    function Produto: IEntidade;
  end;

implementation

uses
  uEntidadeProduto;

constructor TEntidadesFactory.Create;
begin

end;

destructor TEntidadesFactory.Destroy;
begin
  inherited;
end;

class function TEntidadesFactory.New: IEntidadeProduto;
begin
  Result := Self.Create;
end;

function TEntidadesFactory.Produto: IEntidade;
begin
  if not Assigned(FProduto) then
    FProduto := TEntidadeProduto.New;
  Result := FProduto;
end;

end.
