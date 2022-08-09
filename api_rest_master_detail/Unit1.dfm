object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 501
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 742
    Height = 501
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'aluno_id'
      DataController.KeyFieldNames = 'aluno_id'
      DataController.MasterKeyFieldNames = 'aluno_id'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnDetailExpanding = cxGrid1DBTableView1DataControllerDetailExpanding
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1aluno_id: TcxGridDBColumn
        DataBinding.FieldName = 'aluno_id'
      end
      object cxGrid1DBTableView1nome: TcxGridDBColumn
        DataBinding.FieldName = 'nome'
      end
      object cxGrid1DBTableView1sobrenome: TcxGridDBColumn
        DataBinding.FieldName = 'sobrenome'
      end
      object cxGrid1DBTableView1email: TcxGridDBColumn
        DataBinding.FieldName = 'email'
      end
      object cxGrid1DBTableView1idade: TcxGridDBColumn
        DataBinding.FieldName = 'idade'
      end
      object cxGrid1DBTableView1peso: TcxGridDBColumn
        DataBinding.FieldName = 'peso'
      end
      object cxGrid1DBTableView1altura: TcxGridDBColumn
        DataBinding.FieldName = 'altura'
      end
      object cxGrid1DBTableView1Fotos: TcxGridDBColumn
        DataBinding.FieldName = 'Fotos'
        Visible = False
      end
    end
    object cxGrid1DBLayoutView1: TcxGridDBLayoutView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource2
      DataController.DetailKeyFieldNames = 'aluno_id'
      DataController.KeyFieldNames = 'id'
      DataController.MasterKeyFieldNames = 'aluno_id'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.FocusRect = False
      OptionsView.CarouselMode.BackgroundRecordAlphaLevel = 50
      OptionsView.RecordSize.Height = 350
      OptionsView.RecordSize.Width = 350
      OptionsView.ViewMode = lvvmSingleRow
      object cxGrid1DBLayoutViewItemUrl: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'url'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem1
      end
      object cxGrid1DBLayoutViewItemImagem: TcxGridDBLayoutViewItem
        Caption = 'Foto'
        DataBinding.FieldName = 'imagem'
        RepositoryItem = cxEditRepository1ImageItem1
        LayoutItem = cxGrid1DBLayoutView1LayoutItem2
      end
      object cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Card'
        SizeOptions.Height = 350
        SizeOptions.Width = 350
        ButtonOptions.Buttons = <>
        Hidden = True
        ScrollOptions.Horizontal = smAuto
        ScrollOptions.Vertical = smAuto
        ShowBorder = False
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group_Root
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group_Root
        AlignHorz = ahCenter
        AlignVert = avTop
        SizeOptions.Height = 300
        SizeOptions.Width = 300
        Index = 1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level3: TcxGridLevel
        GridView = cxGrid1DBLayoutView1
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 536
    Top = 296
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:3001/alunos'
    Params = <>
    Left = 120
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 32
    Top = 104
  end
  object RESTResponse1: TRESTResponse
    Left = 32
    Top = 216
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = JSONOnly
    NestedElements = True
    Left = 32
    Top = 160
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 32
    Top = 296
    object FDMemTable1aluno_id: TFloatField
      DisplayLabel = 'ID do Aluno'
      FieldName = 'aluno_id'
    end
    object FDMemTable1nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 10
    end
    object FDMemTable1sobrenome: TWideStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'sobrenome'
      Size = 9
    end
    object FDMemTable1email: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 21
    end
    object FDMemTable1idade: TFloatField
      DisplayLabel = 'Idade'
      FieldName = 'idade'
    end
    object FDMemTable1peso: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'peso'
    end
    object FDMemTable1altura: TFloatField
      DisplayLabel = 'Altura'
      FieldName = 'altura'
    end
    object FDMemTable1Fotos: TWideStringField
      FieldName = 'Fotos'
      Size = 255
    end
  end
  object RESTResponse2: TRESTResponse
    RootElement = '[5].Fotos'
    Left = 200
    Top = 232
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = FDMemTable2
    FieldDefs = <>
    Response = RESTResponse2
    TypesMode = JSONOnly
    NestedElements = True
    Left = 200
    Top = 152
  end
  object FDMemTable2: TFDMemTable
    BeforePost = FDMemTable2BeforePost
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 192
    Top = 288
    object FDMemTable2url: TWideStringField
      FieldName = 'url'
      Size = 100
    end
    object FDMemTable2aluno_id: TFloatField
      FieldName = 'aluno_id'
    end
    object FDMemTable2id: TFloatField
      FieldName = 'id'
    end
    object FDMemTable2filename: TWideStringField
      FieldName = 'filename'
      Size = 23
    end
    object FDMemTable2originalname: TWideStringField
      FieldName = 'originalname'
      Size = 38
    end
    object FDMemTable2Imagem: TBlobField
      FieldName = 'Imagem'
    end
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse2
    Left = 200
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 32
    Top = 360
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable2
    Left = 192
    Top = 360
  end
  object IdHTTP1: TIdHTTP
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'application/x-www-form-urlencoded'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Fire' +
      'fox/12.0'#39
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 336
    Top = 160
  end
  object cxEditRepository1: TcxEditRepository
    Left = 336
    Top = 96
    PixelsPerInch = 96
    object cxEditRepository1ImageItem1: TcxEditRepositoryImageItem
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
      Properties.ShowFocusRect = False
    end
  end
  object RESTClient2: TRESTClient
    BaseURL = 'http://localhost:3001/alunos'
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'authorization'
        Options = [poDoNotEncode]
        Value = 
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZW1haWwi' +
          'OiJtYXJjZWxvMUB5YWhvby5jb20uYnIiLCJpYXQiOjE2NTk5OTM2MTcsImV4cCI6' +
          'MTY2MDU5ODQxN30.QnIczn8IPj4sPuXegpTkqH_jV7mVXU6ceMpgM10i18I'
      end>
    Left = 488
    Top = 128
  end
  object RESTRequest3: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient2
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'bodyF903FD868CF9498A8484E4E1A0071B7B'
        Value = 
          '{"nome": "Marcelo 123456",'#13#10' "sobrenome": "Toller 123456",'#13#10' "em' +
          'ail": "marcelo123456@yahoo.com.br",'#13#10' "idade": 99,'#13#10' "peso": 99.' +
          '9,'#13#10' "altura": 99.7}'
        ContentTypeStr = 'application/json'
      end>
    Response = RESTResponse3
    Left = 552
    Top = 88
  end
  object RESTResponse3: TRESTResponse
    Left = 648
    Top = 120
  end
end
