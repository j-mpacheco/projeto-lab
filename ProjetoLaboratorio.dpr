program ProjetoLaboratorio;

uses
  Vcl.Forms,
  ufrmTelaInicial in 'forms\ufrmTelaInicial.pas' {frmTelaInicial},
  ufrmListaPai in 'forms\ufrmListaPai.pas' {frmListaPai},
  udmConexao in 'forms\udmConexao.pas' {dmConexao: TDataModule},
  ufrmCadastroPai in 'forms\ufrmCadastroPai.pas' {frmCadastroPai},
  ufrmListaVidrarias in 'forms\ufrmListaVidrarias.pas' {frmListaVidraria},
  ufrmCadastroVidraria in 'forms\ufrmCadastroVidraria.pas' {frmCadastroVidraria},
  ufrmComum in 'forms\ufrmComum.pas' {frmComum},
  ufrmListaReagentes in 'forms\ufrmListaReagentes.pas' {frmListaReagentes},
  ufrmCadastroReagente in 'forms\ufrmCadastroReagente.pas' {frmCadastroReagente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmTelaInicial, frmTelaInicial);
  Application.CreateForm(TfrmListaVidraria, frmListaVidraria);
  Application.CreateForm(TfrmCadastroVidraria, frmCadastroVidraria);
  Application.CreateForm(TfrmComum, frmComum);
  Application.CreateForm(TfrmListaReagentes, frmListaReagentes);
  Application.CreateForm(TfrmCadastroReagente, frmCadastroReagente);
  Application.Run;
end.
