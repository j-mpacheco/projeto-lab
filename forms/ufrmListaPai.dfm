object frmListaPai: TfrmListaPai
  Left = 0
  Top = 0
  Caption = 'Lista Pai'
  ClientHeight = 297
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbGrid: TDBGrid
    Left = 0
    Top = 57
    Width = 456
    Height = 240
    Align = alClient
    DataSource = dsLista
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlVidrarias: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 57
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnPesquisar: TBitBtn
      Left = 461
      Top = 12
      Width = 76
      Height = 35
      Caption = 'PESQUISAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtPesquisa: TEdit
      Left = 335
      Top = 14
      Width = 121
      Height = 31
      TabOrder = 1
    end
  end
  object pnlBotoes: TPanel
    Left = 456
    Top = 57
    Width = 91
    Height = 240
    Align = alRight
    TabOrder = 2
    object btnCadastrar: TBitBtn
      Left = 16
      Top = 24
      Width = 57
      Height = 49
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnExcluir: TBitBtn
      Left = 16
      Top = 79
      Width = 57
      Height = 49
      Caption = '-'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object dsLista: TDataSource
    DataSet = fdQryLista
    Left = 352
    Top = 152
  end
  object fdQryLista: TFDQuery
    Connection = dmConexao.fdConexao
    Left = 352
    Top = 208
  end
end
