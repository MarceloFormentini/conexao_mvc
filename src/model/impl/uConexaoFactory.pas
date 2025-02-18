unit uConexaoFactory;

interface

uses
  uIConexao;

type
  TConexaoFactory = class(TInterfacedObject, IConexaoFactory)
    private
    public
        constructor Create;
        destructor Destroy; override;
        class function New : IConexaoFactory;
        function Conexao : IConexao;
        function Query : IQuery;
    end;

implementation

uses
  uFiredacConexao, uFiredacQuery;

function TConexaoFactory.Conexao: IConexao;
begin
  Result := TFiredacConexao.New;
end;

constructor TConexaoFactory.Create;
begin

end;

destructor TConexaoFactory.Destroy;
begin
  inherited;
end;

class function TConexaoFactory.New: IConexaoFactory;
begin
  Result := Self.Create;
end;

function TConexaoFactory.Query: IQuery;
begin
  Result := TFiredacQuery.New(Self.Conexao);
end;

end.
