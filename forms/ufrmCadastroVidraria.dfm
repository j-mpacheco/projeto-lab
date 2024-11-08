inherited frmCadastroVidraria: TfrmCadastroVidraria
  Caption = 'Cadastro Vidraria'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNomeVidraria: TLabel [0]
    Left = 28
    Top = 88
    Width = 162
    Height = 21
    Caption = 'NOME DA VIDRARIA'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object lblVolumeVidraria: TLabel [1]
    Left = 28
    Top = 149
    Width = 179
    Height = 21
    Caption = 'VOLUME DA VIDRARIA'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object lblMaterialVidraria: TLabel [2]
    Left = 28
    Top = 208
    Width = 192
    Height = 21
    Caption = 'MATERIAL DA VIDRARIA'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  inherited pnlCadastroPai: TPanel
    object lblCadastroVidraria: TLabel [0]
      Left = 16
      Top = 12
      Width = 98
      Height = 25
      Caption = 'VIDRARIA'
    end
  end
  object DBEdit2: TDBEdit [4]
    Left = 28
    Top = 107
    Width = 130
    Height = 29
    DataField = 'NOMEVIDRARIA'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [5]
    Left = 28
    Top = 168
    Width = 134
    Height = 29
    DataField = 'VOLUMEVIDRARIA'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [6]
    Left = 28
    Top = 227
    Width = 130
    Height = 29
    DataField = 'MATERIALVIDRARIA'
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
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VIDRARIA_ID'
    UpdateOptions.AutoIncFields = 'IDVIDRARIA'
    UpdateObject = nil
    SQL.Strings = (
      'select * from vidraria')
    object fdQryCadastroIDVIDRARIA: TFDAutoIncField
      FieldName = 'IDVIDRARIA'
      Origin = 'IDVIDRARIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOMEVIDRARIA: TWideStringField
      FieldName = 'NOMEVIDRARIA'
      Origin = 'NOMEVIDRARIA'
      Size = 100
    end
    object fdQryCadastroVOLUMEVIDRARIA: TIntegerField
      FieldName = 'VOLUMEVIDRARIA'
      Origin = 'VOLUMEVIDRARIA'
    end
    object fdQryCadastroMATERIALVIDRARIA: TWideStringField
      FieldName = 'MATERIALVIDRARIA'
      Origin = 'MATERIALVIDRARIA'
      Size = 50
    end
  end
end
