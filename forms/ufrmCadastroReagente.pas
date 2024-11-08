unit ufrmCadastroReagente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroReagente = class(TfrmCadastroPai)
    fdQryCadastroIDREAGENTE: TFDAutoIncField;
    fdQryCadastroNOMEREAGENTE: TWideStringField;
    fdQryCadastroMARCAREAGENTE: TWideStringField;
    fdQryCadastroCLASSIFICACAOREAGENTE: TWideStringField;
    lblNomeReagente: TLabel;
    edtNomeReagente: TDBEdit;
    lblMarcaReagente: TLabel;
    edtMarcaReagente: TDBEdit;
    lblClassificacaoReagente: TLabel;
    edtClassificacaoReagente: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroReagente: TfrmCadastroReagente;

implementation

{$R *.dfm}
uses
  ufrmComum, ufrmListaReagentes;

procedure TfrmCadastroReagente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  frmListaReagentes.fdQryLista.Close;
  frmListaReagentes.fdQryLista.Open();
  frmListaReagentes.AjustarColunas;
  Close;

end;
procedure TfrmCadastroReagente.FormShow(Sender: TObject);
begin
  inherited;
  fdQryCadastro.Open();
  fdQryCadastro.Insert;
end;

end.
