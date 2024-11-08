unit ufrmCadastroVidraria;

interface

uses
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls, ufrmCadastroPai,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Controls, System.Classes;

type
  TfrmCadastroVidraria = class(TfrmCadastroPai)
    lblCadastroVidraria: TLabel;
    fdQryCadastroIDVIDRARIA: TFDAutoIncField;
    fdQryCadastroNOMEVIDRARIA: TWideStringField;
    fdQryCadastroVOLUMEVIDRARIA: TIntegerField;
    fdQryCadastroMATERIALVIDRARIA: TWideStringField;
    lblNomeVidraria: TLabel;
    DBEdit2: TDBEdit;
    lblVolumeVidraria: TLabel;
    DBEdit3: TDBEdit;
    lblMaterialVidraria: TLabel;
    DBEdit4: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroVidraria: TfrmCadastroVidraria;

implementation

{$R *.dfm}

uses
  ufrmComum, ufrmListaVidrarias;

procedure TfrmCadastroVidraria.btnSalvarClick(Sender: TObject);
begin
  inherited;
  frmListaVidraria.fdQryLista.Close;
  frmListaVidraria.fdQryLista.Open();
  frmListaVidraria.AjustarColunas;
  Close;

end;



procedure TfrmCadastroVidraria.FormShow(Sender: TObject);
begin
  inherited;
  fdQryCadastro.Open();
  fdQryCadastro.Insert;
end;

end.
