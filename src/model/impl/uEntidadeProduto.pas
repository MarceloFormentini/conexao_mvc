unit uEntidadeProduto;

interface

uses
  Data.DB,
  uIConexao;

type
  TEntidadeProduto = class(TInterfacedObject, IEntidade)
  private
    FQuery: IQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IEntidade;
    function DataSet(AValue: TDataSource): IEntidade;
    procedure Open;
  end;

implementation

uses
  uConexaoFactory;

constructor TEntidadeProduto.Create;
begin
  FQuery := TConexaoFactory.New.Query;
end;

function TEntidadeProduto.DataSet(AValue: TDataSource): IEntidade;
begin
  Result := Self;
  AValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TEntidadeProduto.Destroy;
begin
  inherited;
end;

class function TEntidadeProduto.New: IEntidade;
begin
  Result := Self.Create;
end;

procedure TEntidadeProduto.Open;
begin
  FQuery.Open('SELECT * FROM PRODUTO');
end;

end.
