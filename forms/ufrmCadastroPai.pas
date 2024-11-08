unit ufrmCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls, udmConexao, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmCadastroPai = class(TForm)
    pnlCadastroPai: TPanel;
    dsCadastro: TDataSource;
    fdTransaction: TFDTransaction;
    fdQryCadastro: TFDQuery;
    fdUpdate: TFDUpdateSQL;
    btnSalvar: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPai: TfrmCadastroPai;

implementation

{$R *.dfm}

procedure TfrmCadastroPai.btnSalvarClick(Sender: TObject);
begin
if (fdQryCadastro.State in [dsEdit,dsInsert]) then
begin
  fdTransaction.StartTransaction;
  fdQryCadastro.Post;
  fdTransaction.Commit;
  ShowMessage('Registro inserido com sucesso');
end;
end;

end.
