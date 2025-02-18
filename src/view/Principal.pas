unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uIController, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFPrincipal = class(TForm)
    Button1: TButton;
    SProduto: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FController : IController;
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses
  uController;

{$R *.dfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  FController
    .Entidades
      .Produto
      .DataSet(SProduto)
    .Open;
end;

end.
