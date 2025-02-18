unit uFiredacConexao;

interface

uses
  uIConexao,
  FireDAC.Comp.Client,
  FireDAC.Phys.FB,
  FireDAC.Stan.Def,
  FireDAC.DApt,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Async;



type
  TFiredacConexao = class(TInterfacedObject, IConexao)
  private
    FConexao: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IConexao;
    function Connection: TObject;
  end;

implementation

uses
  System.SysUtils;

function TFiredacConexao.Connection: TObject;
begin
  Result := FConexao;
end;

constructor TFiredacConexao.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.Params.DriverID := 'FB';
  FConexao.Params.Database := 'localhost/3050:D:\CoreSmart\BASE.FDB';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.Connected := True;
end;

destructor TFiredacConexao.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TFiredacConexao.New: IConexao;
begin
  Result := Self.Create;
end;

end.
