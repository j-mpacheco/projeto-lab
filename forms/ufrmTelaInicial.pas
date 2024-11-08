unit ufrmTelaInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, ufrmListaVidrarias, ufrmListaReagentes;

type
  TfrmTelaInicial = class(TForm)
    lblTitulo: TLabel;
    btnVidrarias: TBitBtn;
    btnReagentes: TBitBtn;
    imgErlenmeyer: TImage;
    imgErlenmeyer2: TImage;
    imgReagentes: TImage;
    imgReagentes2: TImage;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnReagentesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

{$R *.dfm}

procedure TfrmTelaInicial.btnCadastrarClick(Sender: TObject);
begin
    frmListaVidraria.CarregarVidrarias;
    frmListaVidraria.ShowModal;

end;

procedure TfrmTelaInicial.btnReagentesClick(Sender: TObject);
begin
    frmListaReagentes.CarregarReagentes;
    frmListaReagentes.ShowModal;
end;

end.
