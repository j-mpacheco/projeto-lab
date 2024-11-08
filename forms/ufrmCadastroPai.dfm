object frmCadastroPai: TfrmCadastroPai
  Left = 0
  Top = 0
  Caption = 'Cadastro Pai'
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
  object pnlCadastroPai: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 49
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object btnSalvar: TBitBtn
      Left = 448
      Top = 14
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSalvarClick
    end
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 448
    Top = 128
  end
  object fdTransaction: TFDTransaction
    Connection = dmConexao.fdConexao
    Left = 448
    Top = 184
  end
  object fdQryCadastro: TFDQuery
    Connection = dmConexao.fdConexao
    UpdateObject = fdUpdate
    Left = 448
    Top = 248
  end
  object fdUpdate: TFDUpdateSQL
    Connection = dmConexao.fdConexao
    Left = 448
    Top = 88
  end
end
