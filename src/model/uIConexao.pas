unit uIConexao;

interface

uses
  Data.DB;

type
  IQuery = interface
  ['{315296D7-EEFB-4015-8B8D-CE0E771CA264}']
    function Query: TObject;
    function Open(ASQL: String) : IQuery;
    function ExecSQL(ASQL: String) : IQuery;
  end;

  IConexao = interface
  ['{2E9C82BE-09E7-47B2-B8CF-7806FF29FB29}']
    function Connection : TObject;
  end;

  IConexaoFactory = interface
  ['{AFE8BFBF-C47F-43D4-A3BB-A8C0BECBDE8D}']
    function Conexao: IConexao;
    function Query: IQuery;
  end;

  IEntidade = interface
  ['{6EFB8E8A-AA6C-42E8-BBCF-63CF0C21083F}']
    function DataSet(AValue: TDataSource): IEntidade;
    procedure Open;
  end;

  IEntidadeProduto = interface
  ['{038DECB1-1B5C-4313-888A-660A725BF6B7}']
    function Produto: IEntidade;
  end;

implementation

end.
