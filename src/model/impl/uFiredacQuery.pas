unit uFiredacQuery;

interface

uses
  uIConexao, FireDAC.Comp.Client;

type
  TFiredacQuery = class(TInterfacedObject, IQuery)
  private
    FQuery: TFDQuery;
    FConexao: IConexao;
  public
    constructor Create(AValue: IConexao);
    destructor Destroy; override;
    class function New(AValue: IConexao): IQuery;
    function Query: TObject;
    function Open(ASQL: String): IQuery;
    function ExecSQL(ASQL: String): IQuery;
  end;

implementation

uses
  System.SysUtils;

constructor TFiredacQuery.Create(AValue: IConexao);
begin
  FConexao := AValue;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FConexao.Connection);
end;

destructor TFiredacQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TFiredacQuery.ExecSQL(ASQL: String): IQuery;
begin
  Result := Self;
  FQuery.ExecSQL(ASQL);
end;

class function TFiredacQuery.New(AValue: IConexao): IQuery;
begin
  Result := Self.Create(AValue);
end;

function TFiredacQuery.Open(ASQL: String): IQuery;
begin
  Result := Self;
  FQuery.Open(ASQL);
end;

function TFiredacQuery.Query: TObject;
begin
  Result := FQuery;
end;

end.
