unit ufrmListaReagentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmListaPai, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmListaReagentes = class(TfrmListaPai)
    lblTituloReagentes: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarReagentes;
    procedure AjustarColunas;
  end;

var
  frmListaReagentes: TfrmListaReagentes;



implementation

{$R *.dfm}

uses
  ufrmCadastroReagente, Math;

procedure TfrmListaReagentes.btnCadastrarClick(Sender: TObject);
begin
  inherited;
    frmCadastroReagente.ShowModal;
end;

procedure TfrmListaReagentes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if not fdQryLista.IsEmpty then // Verifica se há registros
  begin
    if MessageDlg('Tem certeza que deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      // Executa a exclusão do registro atual
      fdQryLista.Delete;
      // Opcionalmente, você pode recarregar a lista após a exclusão
      CarregarReagentes;
    end;
  end
  else
  begin
    ShowMessage('Nenhum registro selecionado para excluir.');
  end;
end;

procedure TfrmListaReagentes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  fdQryLista.Close;
  // Adicionando o caractere '%' ao redor do texto de pesquisa
  fdQryLista.SQL.Text := 'SELECT NOMEREAGENTE AS "NOME", MARCAREAGENTE AS "MARCA", CLASSIFICACAOREAGENTE AS "CLASS." FROM REAGENTE WHERE NOMEREAGENTE LIKE :NomeReagente';
  // Definindo o parâmetro com o valor desejado
  fdQryLista.Params.ParamByName('NomeReagente').AsString := '%' + edtPesquisa.Text + '%';
  fdQryLista.Open;
end;

procedure TfrmListaReagentes.CarregarReagentes;
begin
  fdQryLista.Close;
  fdQryLista.SQL.Text := 'SELECT NOMEREAGENTE AS "NOME", MARCAREAGENTE AS "MARCA", CLASSIFICACAOREAGENTE AS "CLASS." FROM REAGENTE';
  fdQryLista.Open;
end;

procedure TfrmListaReagentes.AjustarColunas();
var
  I, MaxWidth: Integer;
  Texto: string;
begin
  // Percorre todas as colunas do DBGrid
  for I := 0 to dbGrid.Columns.Count - 1 do
  begin
    MaxWidth := 0;
    // Percorre todas as linhas da coluna para encontrar o maior texto
    dbGrid.DataSource.DataSet.First;
    while not dbGrid.DataSource.DataSet.Eof do
    begin
      Texto := dbGrid.DataSource.DataSet.Fields[I].AsString;
      // Calcula a largura do texto
      MaxWidth := Max(MaxWidth, dbGrid.Canvas.TextWidth(Texto));
      dbGrid.DataSource.DataSet.Next;
    end;
    // Ajusta a largura da coluna para a maior largura encontrada
    dbGrid.Columns[I].Width := MaxWidth + 20; // +10 para um pequeno espaço extra
  end;
end;

procedure TfrmListaReagentes.FormShow(Sender: TObject);
begin
AjustarColunas;
end;



end.
