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
        PopupMenu = PopupMenuFrom
        OnDragOver = tvDragFromDragOver
        OnEndDrag = tvDragFromEndDrag
        OnMouseMove = tvDragFromMouseMove
        OnStartDrag = tvDragFromStartDrag
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = tvDragFromCustomDrawCell
        DataController.DataSource = dsFrom
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.PullFocusing = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object tvDragFromCodigo: TcxGridDBColumn
          DataBinding.FieldName = 'PlanoContasID'
          Visible = False
          Width = 64
        end
        object tvDragFromEstrututral: TcxGridDBColumn
          DataBinding.FieldName = 'Estrutural'
          Width = 88
        end
        object tvDragFromReduzido: TcxGridDBColumn
          DataBinding.FieldName = 'Reduzido'
          Width = 57
        end
        object tvDragFromDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          OnGetCellHint = tvDragFromDescricaoGetCellHint
          Width = 243
        end
        object tvDragFromAnalitica: TcxGridDBColumn
          Caption = 'Analitica'
          DataBinding.FieldName = 'ContaAnalitica'
          Visible = False
        end
        object tvDragFromDescricaoReferencial: TcxGridDBColumn
          DataBinding.FieldName = 'DescricaoReferencial'
          Width = 75
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
        PopupMenu = PopupMenuTo
        OnDragDrop = tvDragToDragDrop
        OnDragOver = tvDragToDragOver
        Navigator.Buttons.CustomButtons = <>
        OnCanFocusRecord = tvDragToCanFocusRecord
        OnCustomDrawCell = tvDragToCustomDrawCell
        DataController.DataModeController.SyncMode = False
        DataController.DataSource = dsTo
        DataController.DetailKeyFieldNames = 'ReferencialID'
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.OnBeforeChange = tvDragToDataControllerFilterBeforeChange
        DataController.KeyFieldNames = 'ReferencialID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDetailExpanding = tvDragToDataControllerDetailExpanding
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OnGroupRowExpanding = tvDragToGroupRowExpanding
        object tvDragToCodigo: TcxGridDBColumn
          DataBinding.FieldName = 'ReferencialID'
          Visible = False
          Options.Editing = False
          Width = 50
        end
        object tvDragToEstrutural: TcxGridDBColumn
          DataBinding.FieldName = 'Estrutural'
          Options.Editing = False
          Width = 99
        end
        object tvDragToDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Options.Editing = False
          Width = 290
        end
        object tvDragToContaAnalitica: TcxGridDBColumn
          DataBinding.FieldName = 'ContaAnalitica'
          Visible = False
          Options.Editing = False
        end
        object tvDragToQtdAssociacoes: TcxGridDBColumn
          Caption = 'Qtd'
          DataBinding.FieldName = 'QtdAssociacoes'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          VisibleForCustomization = False
          Width = 30
        end
        object tvDragToBotaoExcluir: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.AutoSelect = False
          Properties.Buttons = <
            item
              Caption = 'Excluir'
              Default = True
              Glyph.SourceDPI = 120
              Glyph.SourceHeight = 12
              Glyph.SourceWidth = 12
              Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                61000000DD49444154384F6364A0103052A89F01C5804BC1C175BFBE7F5737D9
                B62D1A9BC167BCBC96B27172DED45BBBB609260F3700A4594856B69C938FEFEF
                FD336736A31B02D2AC6862E2FBFDD327E6778F1F77C20C811B0055E0C72528C8
                F3EDFDFBCFC886C03473090AF27E7BFFFECBFD336736C12C40F1023643404E05
                D98C4D33480E2310D10D0129C2A519AB0120416443407C7467230730D66844F6
                33D4009430C16B007A8041BD8011B018D188E4749400830622D6D84109037C51
                852F8AD11352053421C1E319E6549821D084D4819190400A294ACAE4662A8A73
                2300BEBDD011B13740D10000000049454E44AE426082}
              Kind = bkGlyph
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = tvDragToColumn1PropertiesButtonClick
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000DD49444154384F6364A0103052A89F01C5804BC1C175BFBE7F5737D9
            B62D1A9BC167BCBC96B27172DED45BBBB609260F3700A4594856B69C938FEFEF
            FD336736A31B02D2AC6862E2FBFDD327E6778F1F77C20C811B0055E0C72528C8
            F3EDFDFBCFC886C03473090AF27E7BFFFECBFD336736C12C40F1023643404E05
            D98C4D33480E2310D10D0129C2A519AB0120416443407C7467230730D66844F6
            33D4009430C16B007A8041BD8011B018D188E4749400830622D6D84109037C51
            852F8AD11352053421C1E319E6549821D084D4819190400A294ACAE4662A8A73
            2300BEBDD011B13740D10000000049454E44AE426082}
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 30
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.AutoWidthSizable = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.ShowCaption = False
          Width = 30
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
        OnCanFocusRecord = cxViewAssociacoesCanFocusRecord
        OnCustomDrawCell = cxViewAssociacoesCustomDrawCell
        DataController.DataSource = DataSourceAssociacoes
        DataController.DetailKeyFieldNames = 'ID_Referencial'
        DataController.KeyFieldNames = 'ID_ContaContabil'
        DataController.MasterKeyFieldNames = 'ReferencialID'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.FocusRect = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        OptionsView.FixedBandSeparatorColor = clNone
        OptionsView.FixedBandSeparatorWidth = 0
        Styles.Content = cxStyle2
        Styles.BandHeader = cxStyle3
        Bands = <
          item
            Caption = 'Bot'#227'o Excluir'
            FixedKind = fkLeft
            Options.Moving = False
            Options.Sizing = False
          end
          item
            Caption = 'Campos'
            HeaderAlignmentHorz = taLeftJustify
            Styles.Background = cxStyle3
            Styles.Header = cxStyle3
          end>
        object cxViewAssociacoesColumn1: TcxGridDBBandedColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'Excluir'
              Default = True
              Glyph.SourceDPI = 120
              Glyph.SourceHeight = 12
              Glyph.SourceWidth = 12
              Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                61000000DD49444154384F6364A0103052A89F01C5804BC1C175BFBE7F5737D9
                B62D1A9BC167BCBC96B27172DED45BBBB609260F3700A4594856B69C938FEFEF
                FD336736A31B02D2AC6862E2FBFDD327E6778F1F77C20C811B0055E0C72528C8
                F3EDFDFBCFC886C03473090AF27E7BFFFECBFD336736C12C40F1023643404E05
                D98C4D33480E2310D10D0129C2A519AB0120416443407C7467230730D66844F6
                33D4009430C16B007A8041BD8011B018D188E4749400830622D6D84109037C51
                852F8AD11352053421C1E319E6549821D084D4819190400A294ACAE4662A8A73
                2300BEBDD011B13740D10000000049454E44AE426082}
              Kind = bkGlyph
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxViewAssociacoesColumn1PropertiesButtonClick
          Styles.Content = cxStyle2
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewAssociacoesCodigoDescricao: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CodigoDescricao'
          Options.Editing = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxViewAssociacoesCodigo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID_Referencial'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxViewAssociacoesCodigoConta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID_ContaContabil'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
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
      Color = clGreen
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
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object DataSourceAssociacoes: TDataSource
    DataSet = FDMemTableAssociacoes
    Left = 548
    Top = 296
  end
  object FDMemTableFrom: TFDMemTable
    FilterOptions = [foCaseInsensitive]
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
      FieldName = 'PlanoContasID'
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
    object FDMemTableFromDescricaoReferencial: TStringField
      FieldName = 'DescricaoReferencial'
      Size = 200
    end
  end
  object FDMemTableTo: TFDMemTable
    FilterOptions = [foCaseInsensitive]
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
      FieldName = 'ReferencialID'
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
    object FDMemTableToQtdAssociacoes: TIntegerField
      Alignment = taCenter
      FieldName = 'QtdAssociacoes'
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
      FieldName = 'ID_Referencial'
    end
    object FDMemTableAssociacoesDescricao: TStringField
      FieldName = 'CodigoDescricao'
      Size = 200
    end
    object FDMemTableAssociacoesCodigo_conta: TIntegerField
      FieldName = 'ID_ContaContabil'
    end
  end
  object TimerExclusaoIndividual: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerExclusaoIndividualTimer
    Left = 561
    Top = 216
  end
  object PopupMenuFrom: TPopupMenu
    Images = ImageListPopUpMenuFrom
    OnPopup = PopupMenuFromPopup
    Left = 368
    Top = 312
    object Excluirassociao1: TMenuItem
      Caption = 'Excluir associa'#231#227'o com '
      ImageIndex = 0
      OnClick = Excluirassociao1Click
    end
    object localizarnoPlanoReferencial1: TMenuItem
      Caption = 'localizar no Plano Referencial'
      ImageIndex = 1
      OnClick = localizarnoPlanoReferencial1Click
    end
  end
  object ImageListPopUpMenuFrom: TImageList
    Left = 240
    Top = 400
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5A99A00A4948300EAE7E3000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E8D7B00AA9A87009E8D7B00EAE7
      E300000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      E7008888DC000000000000000000000000000000000000000000000000008888
      DC00A8A8E700000000000000000000000000EAE7E3009F8F7C00AA9A87009E8D
      7B00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A8E7007373
      E3008282EB008888DC00000000000000000000000000000000008888DC008282
      EB007373E300A8A8E7000000000000000000000000FFEAE7E3009F8F7C00AA9A
      8700A99A8900000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008888DC008383
      EC008F8FF7008282EB008888DC0000000000000000008888DC008282EB008F8F
      F7008383EC008888DC000000000000000000000000FF000000FFF1EEED00A99A
      8A00A9998600AA9C8B00000000FFD8D1CB00AC9D8B009C8B78009C8B7800AC9D
      8B00D8D1CB00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008888
      DC008383EC008F8FF7008282EB008888DC008888DC008282EB008F8FF7008383
      EC008888DC00000000000000000000000000000000FF000000FF000000FF0000
      00FFAA9C8C009C8B77009F8E7B00B3A28E00E7D4BB00FFEDD100FFEDD100E6D4
      BA00B3A38F00AC9D8C00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008888DC008383EC008F8FF7008282EB008282EB008F8FF7008383EC008888
      DC0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFA08F7C00CEBCA500FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100CDBCA400AC9D8C00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008888DC008383EC008F8FF7008F8FF7008383EC008888DC000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFD1CAC100B9A89400FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100FFEDD100B2A18D00D8D1CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008888DC008282EB008F8FF7008F8FF7008282EB008888DC000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFAC9D8B00E6D4BA00FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100FFEDD100E0CDB400AC9D8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008888DC008282EB008F8FF7008383EC008383EC008F8FF7008282EB008888
      DC0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF9C8B7800FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100FFEDD100FFEDD1009C8B78000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008888
      DC008282EB008F8FF7008383EC008888DC008888DC008383EC008F8FF7008282
      EB008888DC00000000000000000000000000000000FF000000FF000000FF0000
      00FF9C8B7800FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100FFEDD100FFEDD1009C8B78000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008888DC008282
      EB008F8FF7008383EC008888DC0000000000000000008888DC008383EC008F8F
      F7008282EB008888DC000000000000000000000000FF000000FF000000FF0000
      00FFAC9D8B00E6D4BA00FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100FFEDD100E6D4BA00AC9D8D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A8E7007474
      E3008383EC008888DC00000000000000000000000000000000008888DC008383
      EC007474E300A8A8E7000000000000000000000000FF000000FF000000FF0000
      00FFD1CAC100B8A89300FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100FFEDD100B2A28E00D8D1CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      E7008888DC000000000000000000000000000000000000000000000000008888
      DC00A8A8E700000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFAC9D8C00DAC8AF00FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFEDD100CDBCA400AC9D8D00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFAC9D8D00B8A99300E6D4BA00FFEDD100FFEDD100E6D4
      BA00B2A28E00AC9D8D00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFD1CAC100AC9D8D009C8B78009C8B7800AC9D
      8C00D8D2CB00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF1FFF00000000FFFF0FFF00000000
      E7E70FFF00000000C3C387FF00000000C183C20700000000E007F00300000000
      F00FF80100000000F81FF00000000000F81FF00000000000F00FF00000000000
      E007F00000000000C183F00000000000C3C3F00000000000E7E7F80100000000
      FFFFFC0300000000FFFFFE070000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenuTo: TPopupMenu
    Images = ImageListPopUpMenuFrom
    OnPopup = PopupMenuToPopup
    Left = 785
    Top = 216
    object ExcluirtodasasassociaesdestaConta1: TMenuItem
      Caption = 'Excluir TODAS as associa'#231#245'es desta Conta Referencial'
      ImageIndex = 0
      OnClick = ExcluirtodasasassociaesdestaConta1Click
    end
  end
end
