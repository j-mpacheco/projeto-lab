unit ufrmComum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Comp.Client, Data.DB;

type
  TfrmComum = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComum: TfrmComum;
  fdQryLista: TFDQuery;

implementation

{$R *.dfm}

end.
