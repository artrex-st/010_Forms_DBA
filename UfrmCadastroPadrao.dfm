object frmCadastroPadrao: TfrmCadastroPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmCadastroPadrao'
  ClientHeight = 328
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 582
    Height = 50
    Align = alTop
    TabOrder = 0
    object btnAdd: TButton
      Left = 2
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Incluir'
      ImageIndex = 0
      Images = dmConexao.imIcon
      SelectedImageIndex = 13
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnDel: TButton
      Left = 77
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Excluir'
      ImageIndex = 5
      Images = dmConexao.imIcon
      TabOrder = 1
      OnClick = btnDelClick
    end
    object btnEdit: TButton
      Left = 152
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Alterar'
      ImageIndex = 4
      Images = dmConexao.imIcon
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnSave: TButton
      Left = 302
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Salvar'
      ImageIndex = 6
      Images = dmConexao.imIcon
      TabOrder = 4
      OnClick = btnSaveClick
    end
    object btnCancel: TButton
      Left = 227
      Top = 15
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Cancelar'
      ImageIndex = 8
      Images = dmConexao.imIcon
      TabOrder = 3
      OnClick = btnCancelClick
    end
    object btnFirst: TButton
      Left = 377
      Top = 15
      Width = 50
      Height = 33
      Align = alLeft
      ImageAlignment = iaCenter
      ImageIndex = 14
      Images = dmConexao.imIcon
      TabOrder = 5
      OnClick = btnFirstClick
    end
    object btnBack: TButton
      Left = 427
      Top = 15
      Width = 50
      Height = 33
      Align = alLeft
      ImageAlignment = iaCenter
      ImageIndex = 16
      Images = dmConexao.imIcon
      TabOrder = 6
      OnClick = btnBackClick
    end
    object btnNext: TButton
      Left = 477
      Top = 15
      Width = 50
      Height = 33
      Align = alLeft
      ImageAlignment = iaCenter
      ImageIndex = 17
      Images = dmConexao.imIcon
      TabOrder = 7
      OnClick = btnNextClick
    end
    object btnLast: TButton
      Left = 527
      Top = 15
      Width = 50
      Height = 33
      Align = alLeft
      ImageAlignment = iaCenter
      ImageIndex = 15
      Images = dmConexao.imIcon
      TabOrder = 8
      OnClick = btnLastClick
    end
  end
  object btnPesquisa: TButton
    Left = 477
    Top = 56
    Width = 91
    Height = 45
    Caption = 'Pesquisar'
    TabOrder = 1
  end
  object tabela: TFDQuery
    Connection = dmConexao.conexao
    Left = 80
    Top = 256
  end
  object dsTabela: TDataSource
    AutoEdit = False
    DataSet = tabela
    Left = 200
    Top = 256
  end
end
