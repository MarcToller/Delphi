object Form1: TForm1
  Left = 363
  Top = 165
  Caption = 'Teste Arrasta Grid'
  ClientHeight = 467
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCopy: TButton
    Left = 288
    Top = 424
    Width = 265
    Height = 25
    Caption = 'Copy Highlighted Records'
    TabOrder = 0
  end
  object PanelFrom: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 467
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 11
      Width = 293
      Height = 16
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alTop
      Caption = 'DADOS DE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gDragFrom: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 40
      Width = 297
      Height = 423
      Align = alClient
      DragCursor = crMultiDrag
      DragMode = dmAutomatic
      TabOrder = 0
      DragOpening = False
      object tvDragFrom: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDragOver = tvDragFromDragOver
        OnEndDrag = tvDragFromEndDrag
        OnMouseMove = tvDragFromMouseMove
        OnStartDrag = tvDragFromStartDrag
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsFrom
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.PullFocusing = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvDragFromCodigo: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
          Width = 64
        end
        object tvDragFromDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Width = 136
        end
        object tvDragFromData: TcxGridDBColumn
          DataBinding.FieldName = 'Data'
          Width = 51
        end
      end
      object lvDragFrom: TcxGridLevel
        GridView = tvDragFrom
      end
    end
  end
  object Panel1: TPanel
    Left = 317
    Top = 0
    Width = 349
    Height = 467
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object Label2: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 11
      Width = 339
      Height = 16
      Margins.Left = 5
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'DADOS PARA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gDragTo: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 40
      Width = 341
      Height = 423
      Align = alClient
      DragCursor = crMultiDrag
      DragKind = dkDock
      TabOrder = 0
      object tvDragTo: TcxGridDBTableView
        OnDragDrop = tvDragToDragDrop
        OnDragOver = tvDragToDragOver
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsTo
        DataController.KeyFieldNames = 'PartNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.PullFocusing = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object tvDragToCodigo: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
          Width = 50
        end
        object tvDragToDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Width = 181
        end
        object tvDragToData: TcxGridDBColumn
          DataBinding.FieldName = 'Data'
          Width = 32
        end
      end
      object gDragToDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxViewAssociacoes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSourceAssociacoes
        DataController.DetailKeyFieldNames = 'Codigo'
        DataController.KeyFieldNames = 'Codigo_conta'
        DataController.MasterKeyFieldNames = 'Codigo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnGrouping = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle2
        object cxViewAssociacoesCodigo: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
        end
        object cxViewAssociacoesDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
        end
        object cxViewAssociacoesData: TcxGridDBColumn
          DataBinding.FieldName = 'Data'
        end
        object cxViewAssociacoesCodigoConta: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo_conta'
        end
      end
      object lvDragTo: TcxGridLevel
        GridView = tvDragTo
        object gDragToLevel1: TcxGridLevel
          GridView = cxViewAssociacoes
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 305
    Top = 0
    Width = 12
    Height = 467
    Align = alLeft
  end
  object dsFrom: TDataSource
    DataSet = kbmMemTableFrom
    Left = 48
    Top = 208
  end
  object dsTo: TDataSource
    DataSet = kbmMemTableTo
    Left = 452
    Top = 168
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 200
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object kbmMemTableFrom: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Data'
        DataType = ftDate
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.71.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 96
    Top = 256
    object kbmMemTableFromCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object kbmMemTableFromDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object kbmMemTableFromData: TDateField
      FieldName = 'Data'
    end
  end
  object kbmMemTableTo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.71.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 392
    Top = 224
    object kbmMemTableToCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object kbmMemTableToDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object kbmMemTableToData: TDateField
      FieldName = 'Data'
    end
  end
  object kbmMemTableAssociacoes: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.71.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 417
    Top = 296
    object kbmMemTableAssociacoesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object kbmMemTableAssociacoesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object kbmMemTableAssociacoesData: TDateField
      FieldName = 'Data'
    end
    object kbmMemTableAssociacoesCodigo_conta: TIntegerField
      FieldName = 'Codigo_conta'
    end
  end
  object DataSourceAssociacoes: TDataSource
    DataSet = kbmMemTableAssociacoes
    Left = 548
    Top = 296
  end
end
