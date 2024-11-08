unit ufrmListaPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, udmConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmListaPai = class(TForm)
    dbGrid: TDBGrid;
    pnlVidrarias: TPanel;
    pnlBotoes: TPanel;
    btnCadastrar: TBitBtn;
    btnExcluir: TBitBtn;
    btnPesquisar: TBitBtn;
    edtPesquisa: TEdit;
    dsLista: TDataSource;
    fdQryLista: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaPai: TfrmListaPai;

implementation

{$R *.dfm}

end.
