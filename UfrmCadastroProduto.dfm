inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Cadastro de Produtos'
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblId: TLabel [0]
    Left = 64
    Top = 93
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object lblNome: TLabel [1]
    Left = 64
    Top = 141
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblEstoque: TLabel [2]
    Left = 64
    Top = 189
    Width = 43
    Height = 13
    Caption = 'Estoque:'
  end
  object dbeId: TDBEdit [4]
    Left = 64
    Top = 112
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = dsTabela
    Enabled = False
    TabOrder = 4
  end
  object dbeNome: TDBEdit [5]
    Left = 64
    Top = 160
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = dsTabela
    MaxLength = 45
    TabOrder = 2
  end
  object dbeEstoque: TDBEdit [6]
    Left = 64
    Top = 208
    Width = 121
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = dsTabela
    MaxLength = 14
    TabOrder = 3
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
  inherited tabela: TFDQuery
    SQL.Strings = (
      'select * from produtos')
    Left = 480
    Top = 272
  end
  inherited dsTabela: TDataSource
    Left = 512
    Top = 272
  end
end
