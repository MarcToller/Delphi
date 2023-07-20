inherited FormAssociacaoDinamicaPlanoContas: TFormAssociacaoDinamicaPlanoContas
  BorderStyle = bsSizeable
  Caption = 'Configura'#231#245'es do SPED ECF'
  ClientHeight = 703
  ClientWidth = 816
  Constraints.MinHeight = 742
  Constraints.MinWidth = 831
  OpcoesGerais.VerificarResolucaoPadrao = True
  ExplicitWidth = 832
  ExplicitHeight = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoesInferiores: TDTCPanel
    Top = 653
    Width = 816
    ExplicitTop = 653
    ExplicitWidth = 816
    inherited BitBtnConfirma: TBitBtnDTC
      Left = 626
      Caption = '&Salvar'
      ConstanteDeImagem = 'IMG_Salvar_R16 '
      ExplicitLeft = 626
    end
    inherited BitBtnSair: TBitBtnDTC
      Left = 721
      ExplicitLeft = 721
    end
  end
  object PanelDados: TPanel [1]
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 816
    Height = 650
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    object TreeViewConfigGeral: TTreeView
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 191
      Height = 640
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = ImageListDTC16
      Indent = 35
      ParentFont = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      OnKeyDown = TreeViewConfigGeralKeyDown
    end
    object PageControlDados: TDTCPageControl
      AlignWithMargins = True
      Left = 204
      Top = 3
      Width = 605
      Height = 640
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = TabSheetAssociacoes
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 636
      ClientRectLeft = 4
      ClientRectRight = 601
      ClientRectTop = 24
      object TabSheetAssociacoes: TDTCTabSheet
        Caption = 'Registros'
        Color = clBtnFace
        ImageIndex = 1
        ParentColor = False
        object ImagePossuiAssociacao: TImage
          Left = 148
          Top = 136
          Width = 105
          Height = 105
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C00000021744558745469746C65004170
            706C793B4F4B3B436865636B3B426172733B526962626F6E3B6463C868000000
            B64944415478DA63FCFFFF3F03258091EA0694AF9841943E20FE4FAE011E405C
            07C43E40FC8E5403409A3700313B109F00622B520C40D6FC13880381783B8A01
            40CDCC40EA2FB19A51C200A85919486D05E20C203E408C66B80140CD9C40F615
            205602E26F40EC0D3504AF6674170403A96540CC0635A40D886B91340700F10E
            8CF8440B832020B51C6A080CE0D48C610016437E41356F67C001704523C89085
            401C09C45B18F0007CE94014885F331000D4CF4CA402000BDF69768BFDF6B200
            00000049454E44AE426082}
        end
        object cxGridAssociacoes: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 88
          Width = 591
          Height = 484
          Align = alClient
          TabOrder = 2
          LevelTabs.Images = ImageListDTC16
          LevelTabs.Style = 11
          object cxViewRegistros: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            OnFocusedRecordChanged = cxViewRegistrosFocusedRecordChanged
            DataController.DetailKeyFieldNames = 'ID_PLANO_ECF_PAI'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.FixedBandSeparatorWidth = 1
            Styles.Selection = cxStyleLinhaSelecionada
            Bands = <
              item
                Caption = 'C'#243'digo'
                FixedKind = fkLeft
                Width = 70
              end
              item
                Caption = 'Descri'#231#227'o'
                HeaderAlignmentHorz = taLeftJustify
              end
              item
                Caption = 'Associa'#231#245'es'
                FixedKind = fkRight
              end>
            object cxViewRegistrosID_PLANO_ECF_PAI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID_PLANO_ECF_PAI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxViewRegistrosCODIGO_EXTERNO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO_ITEM_REGISTRO'
              HeaderGlyph.SourceDPI = 96
              HeaderGlyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF00000000000000008F7966FF0000
                00008F7966FF8F7966FF000000008F7966FF000000008F7966FF8F7966FF8F79
                66FF000000008F7966FF000000008F7966FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000}
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.ShowEditButtons = isebNever
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Options.VertSizing = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxViewRegistrosDESCRICAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DESCRICAO'
              HeaderGlyph.SourceDPI = 96
              HeaderGlyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                00000000000000000000040809103D6C85DC3B6A82D904080910000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000408091040718BE26CAED1FF5894B4FA3B6A82D9040809100000
                0000000000000000000000000000000000000000000000000000000000000000
                00000408091040718BE26CAED1FF85CEF5FF85CEF5FF5894B4FA3B6A82D90408
                0910000000000000000000000000000000000000000000000000000000000408
                091040718BE26CAED1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF5894B4FA3B6A
                82D9040809100000000000000000000000000000000000000000040809104071
                8BE26CAED1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF5894
                B4FA3B6A82D9040809100000000000000000000000000408091040718BE26CAE
                D1FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF5894B4FA3B6A82D90408091000000000000000003D6C85DC6CAED1FF85CE
                F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF64A1C3F73B6A82D904080910000000003B6A82D966A6C7F585CE
                F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF85CEF5FF67A6C7F63B6A82D904080910040809103B6A81D866A6
                C7F585CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF85CEF5FF85CEF5FF67A6C7F63B6A82D900000000040809103B6A
                81D866A6C7F585CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF447A96FF00000000000000000408
                09103B6A81D866A6C7F585CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF447A96FF00000000000000000000
                0000040809103B6A81D866A6C7F585CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF447A96FF00000000000000000000
                000000000000040809103B6A81D866A6C7F585CEF5FF85CEF5FF85CEF5FF85CE
                F5FF85CEF5FF548EAEFF548EAEFF85CEF5FF447A96FF00000000000000000000
                00000000000000000000040809103B6A81D866A6C7F585CEF5FF85CEF5FF85CE
                F5FF85CEF5FF548EAEFF548FAEFF85CEF5FF447A96FF00000000000000000000
                0000000000000000000000000000040809103B6A81D866A6C7F585CEF5FF85CE
                F5FF85CEF5FF85CEF5FF85CEF5FF79BEE3FF447A96FF00000000000000000000
                000000000000000000000000000000000000040809103B6A81D8447A96FF447A
                96FF447A96FF447A96FF447A96FF447A96FF1E36426A}
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.ShowEditButtons = isebNever
              Options.GroupFooters = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Options.VertSizing = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxViewRegistrosBotao: TcxGridDBBandedColumn
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  ImageIndex = 0
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D360400000000000036000000280000001000000010000000010020000000
                    000000000000C40E0000C40E00000000000000000000776B5CBF918170EA1D1A
                    1630000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000968573F5AA9A87FF9786
                    74F61D1A16300000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000001D1A1630978774F5AA9A
                    87FF978674F60A09071000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000001D1A16309787
                    74F5AA9A87FF8B7C6BDF0A090710000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000001411
                    0F208D7E6EE1A49481F8867867D90A0907103B342D608B7C6ADC9C8B78FF9C8B
                    78FF8B7C6ADC3B342D6000000000000000000000000000000000000000000000
                    00000A090710857767D89C8B77FF9C8B78FAAA9985F4E7D4BBFFFFEDD1FFFFED
                    D1FFE6D4BAFFA99985F3887968D90A0907100000000000000000000000000000
                    0000000000000A0907109C8B78F9CEBCA5FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFCDBCA4FF887968D90000000000000000000000000000
                    000000000000443D3470AD9C88F1FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFFFEDD1FFA99884F43B342D6000000000000000000000
                    0000000000008B7C6ADCE6D4BAFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFFFEDD1FFE0CDB4FF8B7C6ADC00000000000000000000
                    0000000000009C8B78FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FF9C8B78FF00000000000000000000
                    0000000000009C8B78FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FF9C8B78FF00000000000000000000
                    0000000000008B7C6ADCE6D4BAFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFFFEDD1FFE6D4BAFF8A7B6BDB00000000000000000000
                    000000000000443D3470AC9C87F1FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFFFEDD1FFA89884F33B342D6000000000000000000000
                    00000000000000000000887968D9DAC8AFFFFFEDD1FFFFEDD1FFFFEDD1FFFFED
                    D1FFFFEDD1FFFFEDD1FFCDBCA4FF877868D80000000000000000000000000000
                    000000000000000000000A090710877868D8AB9C86F0E6D4BAFFFFEDD1FFFFED
                    D1FFE6D4BAFFA89884F3877868D80A0907100000000000000000000000000000
                    000000000000000000000000000000000000443D34708A7B6BDB9C8B78FF9C8B
                    78FF8A7B6ADB3A342D5F000000000000000000000000}
                  Kind = bkGlyph
                end>
              Properties.ClickKey = 115
              Properties.ViewStyle = vsButtonsOnly
              HeaderAlignmentHorz = taCenter
              HeaderGlyph.SourceDPI = 96
              HeaderGlyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000003C5683D04A6A
                A1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6A
                A1FF4A6AA1FF4A6AA1FF415C8CD90000000000000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FF381F2F4000000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FFE07BBCFF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF7DA2DCFF92B9F3FF9CC4FFFF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FFE07BBCFF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF97BEF9FF6E91CAFF4F6FA7FF597BB2FF82A8E2FF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FFE07BBCFF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF5E80B8FF4A6AA1FF6386BEFF5E80B8FF4A6AA1FF82A8
                E2FF9CC4FFFF9CC4FFFF4A6AA1FFB86793CF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF87ADE7FF7397D0FF789CD6FF5475ACFF4A6AA1FF7397
                D0FF9CC4FFFF9CC4FFFF4A6AA1FFFFB066FF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF82A8E2FF4F6FA7FF4A6AA1FF4A6AA1FF5E80B8FF97BE
                F9FF9CC4FFFF9CC4FFFF4A6AA1FFFFB066FF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF5E80B8FF4A6AA1FF6E91CAFF82A8E2FF82A8E2FF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FFFFB066FF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF7397D0FF4A6AA1FF597BB2FF4F6FA7FF4F6FA7FF97BE
                F9FF9CC4FFFF9CC4FFFF4A6AA1FFC79054CF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF82A8E2FF5475ACFF6E91CAFF92B9F3FF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FF85CC7FFF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF8DB3EDFF97BEF9FF9CC4FFFF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FF85CC7FFF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FF85CC7FFF00000000000000004A6AA1FF4A6A
                A1FF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4FFFF9CC4
                FFFF9CC4FFFF9CC4FFFF4A6AA1FF63995FBF00000000000000003C5683D04A6A
                A1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6AA1FF4A6A
                A1FF4A6AA1FF4A6AA1FF415D8BD80000000000000000}
              HeaderGlyphAlignmentHorz = taCenter
              HeaderHint = 
                'Seleciona as contas cont'#225'beis para associa'#231#227'o com a tabela din'#226'm' +
                'ica do SPED'
              MinWidth = 41
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
              Options.Sorting = False
              Options.VertSizing = False
              Width = 41
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxViewRegistrosTemAssociacao: TcxGridDBBandedColumn
              DataBinding.FieldName = 'POSSUI_CONTA_ASSOCIADA'
              HeaderAlignmentHorz = taCenter
              HeaderGlyph.SourceDPI = 96
              HeaderGlyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000069442190AF7138F05D3C
                1E80000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000BA793CFFBA793CFFA36A
                34E000000000000000004D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D40
                36FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF5D3C1E80AE7138EF6944
                2190000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000069442190AF7138F05D3C
                1E80000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000BA793CFFBA793CFFA36A
                34E000000000000000004D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D40
                36FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF5D3C1E80AE7138EF6944
                2190000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000069442190AF7138F05D3C
                1E80000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000BA793CFFBA793CFFA36A
                34E000000000000000004D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D40
                36FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF5D3C1E80AE7138EF6944
                2190000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000}
              HeaderGlyphAlignmentHorz = taCenter
              HeaderHint = 
                'Indica se existe alguma associa'#231#227'o entre o '#237'tem da tabela din'#226'mi' +
                'ca com alguma conta cont'#225'bil'
              MinWidth = 36
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringWithFindPanel = False
              Options.Focusing = False
              Options.IgnoreTimeForFiltering = False
              Options.IncSearch = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.ShowEditButtons = isebNever
              Options.EditAutoHeight = ieahNone
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Options.VertSizing = False
              Width = 36
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxViewRegistrosTipoConta: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TIPO_CONTA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxViewRegistrosPosicaoRegistro: TcxGridDBBandedColumn
              DataBinding.FieldName = 'POSICAO_REGISTRO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxViewPlanoContas: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DetailKeyFieldNames = 'ID_PLANO_ECF_FILHO'
            DataController.MasterKeyFieldNames = 'ID_PLANO_ECF_PAI'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.BandMoving = False
            OptionsCustomize.BandsQuickCustomizationReordering = qcrDisabled
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.BandHeaders = False
            Styles.Content = cxStyleCorGrid
            Bands = <
              item
              end>
            object cxViewPlanoContasID_PLANO_CONTAS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID_PLANO_CONTAS'
              Visible = False
              Options.Focusing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxViewPlanoContasID_PLANO_ECF_FILHO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID_PLANO_ECF_FILHO'
              Visible = False
              Options.Focusing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxViewPlanoContasESTRUTURAL: TcxGridDBBandedColumn
              Caption = 'Estrutural'
              DataBinding.FieldName = 'ESTRUTURAL'
              Options.Focusing = False
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxViewPlanoContasREDUZIDO: TcxGridDBBandedColumn
              Caption = 'Reduzido'
              DataBinding.FieldName = 'REDUZIDO'
              Options.Focusing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxViewPlanoContasDESCRICAO: TcxGridDBBandedColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Focusing = False
              Width = 415
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cxLevelRegistros: TcxGridLevel
            GridView = cxViewRegistros
            Options.DetailTabsPosition = dtpTop
            object cxLevelPlanoContas: TcxGridLevel
              Caption = 'Contas associadas'
              GridView = cxViewPlanoContas
              ImageIndex = 3
              Options.DetailTabsPosition = dtpTop
            end
          end
        end
        object PanelDescricaoRegistro: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 591
          Height = 41
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object LabelDescricaoRegistro: TDTCLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Margins.Left = 3
            Margins.Top = 3
            Margins.Right = 3
            Align = alClient
            AutoSize = False
            Caption = 'LabelDescricaoRegistro'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.WordWrap = True
            Gravar = False
            Height = 31
            Width = 581
          end
        end
        object PanelBotoesExpansao: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 578
          Width = 591
          Height = 31
          Align = alBottom
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 3
          object BitBtnDTCExpandirTodos: TBitBtnDTC
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 134
            Height = 25
            Align = alLeft
            Caption = 'Expandir associados'
            TabOrder = 0
            OnClick = BitBtnDTCExpandirTodosClick
            ConstanteDeImagem = 'IMG_AvancarDuplo_R16'
          end
          object BitBtnDTCRestaurarAssociacoesPadrao: TBitBtnDTC
            AlignWithMargins = True
            Left = 143
            Top = 3
            Width = 190
            Height = 25
            Align = alLeft
            Caption = '&Restaurar associa'#231#245'es padr'#245'es'
            TabOrder = 1
            OnClick = BitBtnDTCRestaurarAssociacoesPadraoClick
            ConstanteDeImagem = 'IMG_ATUALIZACOES_R16'
          end
          object BitBtnDTCLimparAssociacoes: TBitBtnDTC
            AlignWithMargins = True
            Left = 339
            Top = 3
            Width = 190
            Height = 25
            Align = alLeft
            Caption = '&Excluir todas as associa'#231#245'es'
            TabOrder = 2
            OnClick = BitBtnDTCLimparAssociacoesClick
            ConstanteDeImagem = 'IMG_EXCLUIR_R16'
          end
        end
        object PanelPesquisa: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 47
          Width = 591
          Height = 38
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            587
            34)
          object LabelPesquisaRegistros: TLabel
            Left = 8
            Top = 10
            Width = 46
            Height = 13
            Caption = 'Pesquisa:'
          end
          object CheckBoxSomenteComAssociacao: TCheckBox
            Left = 407
            Top = 9
            Width = 138
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Somente com associa'#231#227'o'
            TabOrder = 1
            OnClick = CheckBoxSomenteComAssociacaoClick
          end
          object BitBtnDTCLimparPesquisa: TBitBtnDTC
            Left = 553
            Top = 4
            Width = 25
            Height = 25
            Anchors = [akTop, akRight]
            TabOrder = 2
            OnClick = BitBtnDTCLimparPesquisaClick
            ConstanteDeImagem = 'IMG_LIMPAR_R16'
          end
          object cxTextEditPesquisaRegistros: TcxTextEdit
            Left = 59
            Top = 5
            Anchors = [akLeft, akTop, akRight]
            AutoSize = False
            ParentFont = False
            Properties.OnChange = cxTextEditPesquisaRegistrosPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsItalic]
            Style.IsFontAssigned = True
            StyleFocused.TextStyle = []
            TabOrder = 0
            OnKeyDown = cxTextEditPesquisaRegistrosKeyDown
            Height = 23
            Width = 344
          end
        end
      end
    end
    object cxSplitterDivisorControles: TcxSplitter
      Left = 197
      Top = 0
      Width = 4
      Height = 646
      Align = alLeft
    end
  end
  inherited HintStyle: TcxHintStyleController
    Left = 1
    Top = 0
  end
  object DTCMultiplaSelecaoContasContabeis: TDTCMultiplaSelecao
    OnItemAlterado = DTCMultiplaSelecaoContasContabeisItemAlterado
    OnAntesSelecionarRegistroFocado = DTCMultiplaSelecaoContasContabeisAntesSelecionarRegistroFocado
    BotoesSelecaoMultipla = []
    TituloForm = 'Sele'#231#227'o de itens'
    PermitirOrdenarColunas = False
    Left = 29
  end
  object cxStyleRepositoryPlanoContas: TcxStyleRepository
    Left = 57
    PixelsPerInch = 96
    object cxStyleCorGrid: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = cl3DLight
      TextColor = clGray
    end
    object cxStyleBandBackground: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clHighlight
      TextColor = clBtnFace
    end
    object cxStyleLinhaSelecionada: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
  end
  object ImageListDTC16: TImageListDTC
    SourceDPI = 96
    ConstantesDeImagem = <
      item
        ConstanteDeImagem = 'IMG_SPED_R16'
      end
      item
        ConstanteDeImagem = 'IMG_Parametros_R16'
      end
      item
        ConstanteDeImagem = 'IMG_TabelaDiversosValoresReferencia_R16'
      end
      item
        ConstanteDeImagem = 'IMG_PlanoContas_R16'
      end
      item
        ConstanteDeImagem = 'IMG_Simples_R16'
      end
      item
        ConstanteDeImagem = 'IMG_IBGE_R16'
      end>
    FormatVersion = 1
    DesignInfo = 85
  end
end
