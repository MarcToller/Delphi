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
    Top = 65
    Width = 742
    Height = 436
    Align = alClient
    TabOrder = 0
    object cxGridViewMaster: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSourceGridMaster
      DataController.DetailKeyFieldNames = 'aluno_id'
      DataController.KeyFieldNames = 'aluno_id'
      DataController.MasterKeyFieldNames = 'aluno_id'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnDetailExpanding = cxGrid1DBTableView1DataControllerDetailExpanding
      DataController.OnDetailExpanded = cxGridViewMasterDataControllerDetailExpanded
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object cxGridViewMasteraluno_id: TcxGridDBColumn
        DataBinding.FieldName = 'aluno_id'
        Width = 61
      end
      object cxGridViewMasternome: TcxGridDBColumn
        DataBinding.FieldName = 'nome'
        Width = 153
      end
      object cxGridViewMastersobrenome: TcxGridDBColumn
        DataBinding.FieldName = 'sobrenome'
        Width = 78
      end
      object cxGridViewMasteremail: TcxGridDBColumn
        DataBinding.FieldName = 'email'
        Width = 175
      end
      object cxGridViewMasteridade: TcxGridDBColumn
        DataBinding.FieldName = 'idade'
        Width = 86
      end
      object cxGridViewMasterpeso: TcxGridDBColumn
        DataBinding.FieldName = 'peso'
        Width = 85
      end
      object cxGridViewMasteraltura: TcxGridDBColumn
        DataBinding.FieldName = 'altura'
        Width = 87
      end
      object cxGridViewMasterFotos: TcxGridDBColumn
        DataBinding.FieldName = 'Fotos'
        Visible = False
      end
    end
    object cxLayoutViewDetail: TcxGridDBLayoutView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSourceGridDetail
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
        LayoutItem = cxLayoutViewDetailLayoutItem1
      end
      object cxGrid1DBLayoutViewItemImagem: TcxGridDBLayoutViewItem
        Caption = 'Foto'
        DataBinding.FieldName = 'imagem'
        RepositoryItem = cxEditRepository1ImageItem1
        LayoutItem = cxLayoutViewDetailLayoutItem2
      end
      object cxLayoutViewDetailGroup_Root: TdxLayoutGroup
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
      object cxLayoutViewDetailLayoutItem1: TcxGridLayoutItem
        Parent = cxLayoutViewDetailGroup_Root
        Index = 0
      end
      object cxLayoutViewDetailLayoutItem2: TcxGridLayoutItem
        Parent = cxLayoutViewDetailGroup_Root
        AlignHorz = ahCenter
        AlignVert = avTop
        SizeOptions.Height = 300
        SizeOptions.Width = 300
        Index = 1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGridViewMaster
      object cxGrid1Level3: TcxGridLevel
        GridView = cxLayoutViewDetail
      end
    end
  end
  object PanelManutencao: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 65
    Align = alTop
    TabOrder = 1
    object BitBtnIncluir: TBitBtn
      Left = 23
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = BitBtnIncluirClick
    end
    object BitBtnAlterar: TBitBtn
      Left = 127
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = BitBtnAlterarClick
    end
    object BitBtnExcluir: TBitBtn
      Left = 232
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = BitBtnExcluirClick
    end
  end
  object RESTClientConsultaGrid: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:3001/alunos'
    Params = <>
    Left = 112
    Top = 256
  end
  object RESTRequestGridMaster: TRESTRequest
    Client = RESTClientConsultaGrid
    Params = <>
    Response = RESTResponseGridMaster
    Left = 32
    Top = 296
  end
  object RESTResponseGridMaster: TRESTResponse
    Left = 32
    Top = 360
  end
  object RESTResponseDataSetAdapterMaster: TRESTResponseDataSetAdapter
    Dataset = FDMemTableGridMaster
    FieldDefs = <>
    Response = RESTResponseGridMaster
    TypesMode = JSONOnly
    NestedElements = True
    Left = 32
    Top = 328
  end
  object FDMemTableGridMaster: TFDMemTable
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
    Top = 392
    object FDMemTableGridMasteraluno_id: TFloatField
      DisplayLabel = 'ID do Aluno'
      FieldName = 'aluno_id'
    end
    object FDMemTableGridMasternome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 10
    end
    object FDMemTableGridMastersobrenome: TWideStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'sobrenome'
      Size = 9
    end
    object FDMemTableGridMasteremail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object FDMemTableGridMasteridade: TFloatField
      DisplayLabel = 'Idade'
      FieldName = 'idade'
    end
    object FDMemTableGridMasterpeso: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'peso'
    end
    object FDMemTableGridMasteraltura: TFloatField
      DisplayLabel = 'Altura'
      FieldName = 'altura'
    end
    object FDMemTableGridMasterFotos: TWideStringField
      FieldName = 'Fotos'
      Size = 255
    end
  end
  object RESTResponseGridDetail: TRESTResponse
    RootElement = '[0].Fotos'
    Left = 192
    Top = 360
  end
  object RESTResponseDataSetAdapterDetail: TRESTResponseDataSetAdapter
    Dataset = FDMemTableGridDetail
    FieldDefs = <>
    Response = RESTResponseGridDetail
    TypesMode = JSONOnly
    NestedElements = True
    Left = 192
    Top = 328
  end
  object FDMemTableGridDetail: TFDMemTable
    BeforePost = FDMemTableGridDetailBeforePost
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
    Top = 392
    object FDMemTableGridDetailurl: TWideStringField
      FieldName = 'url'
      Size = 100
    end
    object FDMemTableGridDetailaluno_id: TFloatField
      FieldName = 'aluno_id'
    end
    object FDMemTableGridDetailid: TFloatField
      FieldName = 'id'
    end
    object FDMemTableGridDetailfilename: TWideStringField
      FieldName = 'filename'
      Size = 23
    end
    object FDMemTableGridDetailoriginalname: TWideStringField
      FieldName = 'originalname'
      Size = 38
    end
    object FDMemTableGridDetailImagem: TBlobField
      FieldName = 'Imagem'
    end
  end
  object RESTRequestGridDetail: TRESTRequest
    Client = RESTClientConsultaGrid
    Params = <>
    Response = RESTResponseGridDetail
    Left = 192
    Top = 296
  end
  object DataSourceGridMaster: TDataSource
    DataSet = FDMemTableGridMaster
    Left = 32
    Top = 424
  end
  object DataSourceGridDetail: TDataSource
    DataSet = FDMemTableGridDetail
    Left = 192
    Top = 424
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
    Left = 352
    Top = 240
  end
  object cxEditRepositoryImagens: TcxEditRepository
    Left = 352
    Top = 192
    PixelsPerInch = 96
    object cxEditRepository1ImageItem1: TcxEditRepositoryImageItem
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
      Properties.ShowFocusRect = False
    end
  end
  object RESTClientManutencao: TRESTClient
    BaseURL = 'http://localhost:3001/alunos'
    Params = <>
    Left = 488
    Top = 232
  end
  object RESTRequestManutencao: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientManutencao
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
    Left = 488
    Top = 280
  end
  object RESTResponse3: TRESTResponse
    Left = 488
    Top = 328
  end
end
