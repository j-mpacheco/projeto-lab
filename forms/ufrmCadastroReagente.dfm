inherited frmCadastroReagente: TfrmCadastroReagente
  Caption = 'frmCadastroReagente'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNomeReagente: TLabel [0]
    Left = 24
    Top = 85
    Width = 168
    Height = 21
    Caption = 'NOME DO REAGENTE'
    FocusControl = edtNomeReagente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object lblMarcaReagente: TLabel [1]
    Left = 24
    Top = 136
    Width = 182
    Height = 21
    Caption = 'MARCA DO REAGENTE'
    FocusControl = edtMarcaReagente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object lblClassificacaoReagente: TLabel [2]
    Left = 23
    Top = 191
    Width = 251
    Height = 21
    Caption = 'CLASSIFICACAO DO REAGENTE'
    FocusControl = edtClassificacaoReagente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object edtNomeReagente: TDBEdit [4]
    Left = 22
    Top = 105
    Width = 432
    Height = 29
    DataField = 'NOMEREAGENTE'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtMarcaReagente: TDBEdit [5]
    Left = 24
    Top = 156
    Width = 431
    Height = 29
    DataField = 'MARCAREAGENTE'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtClassificacaoReagente: TDBEdit [6]
    Left = 24
    Top = 211
    Width = 364
    Height = 29
    DataField = 'CLASSIFICACAOREAGENTE'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_REAGENTE_ID'
    UpdateOptions.AutoIncFields = 'IDREAGENTE'
    SQL.Strings = (
      'select * from reagente')
    object fdQryCadastroIDREAGENTE: TFDAutoIncField
      FieldName = 'IDREAGENTE'
      Origin = 'IDREAGENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOMEREAGENTE: TWideStringField
      FieldName = 'NOMEREAGENTE'
      Origin = 'NOMEREAGENTE'
      Size = 100
    end
    object fdQryCadastroMARCAREAGENTE: TWideStringField
      FieldName = 'MARCAREAGENTE'
      Origin = 'MARCAREAGENTE'
      Size = 50
    end
    object fdQryCadastroCLASSIFICACAOREAGENTE: TWideStringField
      FieldName = 'CLASSIFICACAOREAGENTE'
      Origin = 'CLASSIFICACAOREAGENTE'
      Size = 50
    end
  end
end
