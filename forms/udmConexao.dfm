object dmConexao: TdmConexao
  OldCreateOrder = True
  Height = 150
  Width = 215
  object fdConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Aluno\Desktop\ProjetoLaboratorio\bd\LABORATORI' +
        'O.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 72
    Top = 56
  end
end
