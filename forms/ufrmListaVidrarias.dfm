inherited frmListaVidraria: TfrmListaVidraria
  Caption = 'Vidrarias'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbGrid: TDBGrid
    Color = clSkyBlue
    FixedColor = clSkyBlue
    GradientEndColor = clSkyBlue
    GradientStartColor = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Century Gothic'
    ParentFont = False
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Name = 'Century Gothic'
  end
  inherited pnlVidrarias: TPanel
    Color = clSkyBlue
    ParentBackground = False
    object lblTituloVidraria: TLabel [0]
      Left = 9
      Top = 18
      Width = 96
      Height = 23
      Caption = 'VIDRARIAS'
    end
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlBotoes: TPanel
    Color = clSkyBlue
    ParentBackground = False
    inherited btnCadastrar: TBitBtn
      OnClick = btnCadastrarClick
    end
    inherited btnExcluir: TBitBtn
      OnClick = btnExcluirClick
    end
  end
  inherited fdQryLista: TFDQuery
    SQL.Strings = (
      'select * from vidraria')
  end
end
