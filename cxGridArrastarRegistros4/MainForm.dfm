object Form1: TForm1
  Left = 363
  Top = 165
  Caption = 'Teste Arrasta Grid'
  ClientHeight = 631
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
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
    Width = 485
    Height = 631
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 11
      Width = 473
      Height = 16
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alTop
      Caption = 'CONTAS DA EMPRESA'
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
      Width = 477
      Height = 587
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
          Visible = False
          Width = 64
        end
        object tvDragFromEstrututral: TcxGridDBColumn
          DataBinding.FieldName = 'Estrutural'
          Width = 113
        end
        object tvDragFromReduzido: TcxGridDBColumn
          DataBinding.FieldName = 'Reduzido'
          Width = 59
        end
        object tvDragFromDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Width = 281
        end
        object tvDragFromAnalitica: TcxGridDBColumn
          Caption = 'Analitica'
          DataBinding.FieldName = 'ContaAnalitica'
          Visible = False
        end
      end
      object lvDragFrom: TcxGridLevel
        GridView = tvDragFrom
      end
    end
  end
  object Panel1: TPanel
    Left = 497
    Top = 0
    Width = 523
    Height = 631
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object Label2: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 11
      Width = 513
      Height = 16
      Margins.Left = 5
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'CONTAS O PLANO REFERENCIAL'
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
      Width = 515
      Height = 587
      Align = alClient
      DragCursor = crMultiDrag
      DragKind = dkDock
      TabOrder = 0
      object tvDragTo: TcxGridDBTableView
        OnDragDrop = tvDragToDragDrop
        OnDragOver = tvDragToDragOver
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SyncMode = False
        DataController.DataSource = dsTo
        DataController.KeyFieldNames = 'Codigo'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
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
          Visible = False
          Width = 50
        end
        object tvDragToEstrutural: TcxGridDBColumn
          DataBinding.FieldName = 'Estrutural'
          Width = 116
        end
        object tvDragToDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Width = 392
        end
        object tvDragToContaAnalitica: TcxGridDBColumn
          DataBinding.FieldName = 'ContaAnalitica'
          Visible = False
        end
      end
      object gDragToDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxViewAssociacoes: TcxGridDBBandedTableView
        DragMode = dmAutomatic
        OnDragDrop = cxViewAssociacoesDragDrop
        OnDragOver = cxViewAssociacoesDragOver
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SyncMode = False
        DataController.DataSource = DataSourceAssociacoes
        DataController.DetailKeyFieldNames = 'Codigo'
        DataController.KeyFieldNames = 'Codigo_conta'
        DataController.MasterKeyFieldNames = 'Codigo'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        Styles.Content = cxStyle2
        Styles.BandHeader = cxStyle3
        Bands = <
          item
            Caption = 'Contas da Empresa:'
            HeaderAlignmentHorz = taLeftJustify
            Styles.Background = cxStyle3
            Styles.Header = cxStyle3
          end>
        object cxViewAssociacoesCodigoDescricao: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CodigoDescricao'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewAssociacoesCodigo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Codigo'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxViewAssociacoesCodigoConta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Codigo_Conta'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
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
    Left = 485
    Top = 0
    Width = 12
    Height = 631
    Align = alLeft
  end
  object dsFrom: TDataSource
    DataSet = FDMemTableFrom
    Left = 48
    Top = 208
  end
  object dsTo: TDataSource
    DataSet = FDMemTableTo
    Left = 612
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
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object DataSourceAssociacoes: TDataSource
    DataSet = FDMemTableAssociacoes
    Left = 548
    Top = 296
  end
  object FDMemTableFrom: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 320
    object FDMemTableFromCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object FDMemTableFromEstrutural: TStringField
      FieldName = 'Estrutural'
      Size = 100
    end
    object FDMemTableFromReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 10
    end
    object FDMemTableFromDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object FDMemTableFromContaAnalitica: TStringField
      FieldName = 'ContaAnalitica'
      Size = 1
    end
  end
  object FDMemTableTo: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 632
    Top = 384
    object FDMemTableToCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object FDMemTableToEstrutural: TStringField
      FieldName = 'Estrutural'
      Size = 100
    end
    object FDMemTableToDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object FDMemTableToContaAnalitica: TStringField
      FieldName = 'ContaAnalitica'
      Size = 1
    end
  end
  object FDMemTableAssociacoes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 648
    Top = 448
    object FDMemTableAssociacoesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object FDMemTableAssociacoesDescricao: TStringField
      FieldName = 'CodigoDescricao'
      Size = 200
    end
    object FDMemTableAssociacoesCodigo_conta: TIntegerField
      FieldName = 'Codigo_conta'
    end
  end
end
