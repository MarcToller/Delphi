object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 608
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 875
    Height = 511
    Align = alClient
    TabOrder = 0
    object cxGridViewMaster: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
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
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Nenhum aluno cadastrado'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
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
      OptionsCustomize.ItemFiltering = False
      OptionsView.FocusRect = False
      OptionsView.CarouselMode.BackgroundRecordAlphaLevel = 50
      OptionsView.RecordSize.Height = 350
      OptionsView.RecordSize.Width = 350
      OptionsView.ViewMode = lvvmSingleRow
      object cxGrid1DBLayoutViewItemUrl: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'url'
        LayoutItem = cxLayoutViewDetailLayoutItem1
        Options.ShowEditButtons = isebNever
      end
      object cxGrid1DBLayoutViewItemImagem: TcxGridDBLayoutViewItem
        Caption = 'Foto'
        DataBinding.FieldName = 'imagem'
        RepositoryItem = cxEditRepository1ImageItem1
        LayoutItem = cxLayoutViewDetailLayoutItem2
        Options.ShowEditButtons = isebNever
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
    Width = 875
    Height = 65
    Align = alTop
    TabOrder = 1
    object BitBtnAlterar: TBitBtn
      Left = 127
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 0
      OnClick = BitBtnAlterarClick
    end
    object BitBtnExcluir: TBitBtn
      Left = 232
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtnExcluirClick
    end
    object BitBtnIncluir: TBitBtn
      Left = 23
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 2
      OnClick = BitBtnIncluirClick
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 576
    Width = 875
    Height = 32
    Align = alBottom
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Usu'#225'rio:'
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Token expira em:'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
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
      Size = 50
    end
    object FDMemTableGridMastersobrenome: TWideStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'sobrenome'
      Size = 50
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
    object FDMemTableGridDetailCaminhoFotoUpload: TStringField
      FieldName = 'CaminhoFotoUpload'
      Visible = False
      Size = 300
    end
    object FDMemTableGridDetailExcluirFoto: TBooleanField
      FieldName = 'ExcluirFoto'
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
        Value = '{}'
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
  object RESTClientFotos: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://168.138.248.33:3001/fotos'
    Params = <>
    Left = 632
    Top = 224
  end
  object RESTRequestFotos: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientFotos
    Method = rmPOST
    Params = <
      item
        Kind = pkFILE
        Name = 'foto'
        Value = 
          'D:\Marcelo\ScreenShotCaptor\Screenshot - 20_07_2022 , 20_45_33.p' +
          'ng'
      end
      item
        Name = 'aluno_id'
        Value = '10'
      end>
    Response = RESTResponseFotos
    Left = 632
    Top = 160
  end
  object RESTResponseFotos: TRESTResponse
    Left = 632
    Top = 112
  end
  object RESTClientToken: TRESTClient
    BaseURL = 'http://168.138.248.33:3001/tokens'
    Params = <>
    Left = 432
    Top = 536
  end
  object RESTRequestToken: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientToken
    Params = <>
    Response = RESTResponseToken
    Left = 432
    Top = 480
  end
  object RESTResponseToken: TRESTResponse
    Left = 432
    Top = 424
  end
end
