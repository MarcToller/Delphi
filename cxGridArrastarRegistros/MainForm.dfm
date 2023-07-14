object Form1: TForm1
  Left = 363
  Top = 165
  Caption = 'Drag Test'
  ClientHeight = 467
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 28
    Width = 74
    Height = 16
    Caption = 'Drag From'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 28
    Width = 58
    Height = 16
    Caption = 'Drag To'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gDragFrom: TcxGrid
    Left = 0
    Top = 56
    Width = 265
    Height = 362
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
      DataController.KeyFieldNames = 'PartNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.PullFocusing = True
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvDragFromPartNo: TcxGridDBColumn
        DataBinding.FieldName = 'PartNo'
      end
      object tvDragFromDescription: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
      end
    end
    object lvDragFrom: TcxGridLevel
      GridView = tvDragFrom
    end
  end
  object btnCopy: TButton
    Left = 288
    Top = 424
    Width = 265
    Height = 25
    Caption = 'Copy Highlighted Records'
    TabOrder = 1
    OnClick = CopyRecords
  end
  object gDragTo: TcxGrid
    Left = 287
    Top = 56
    Width = 265
    Height = 362
    DragCursor = crMultiDrag
    DragKind = dkDock
    TabOrder = 2
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
      object tvDragToPartNo: TcxGridDBColumn
        DataBinding.FieldName = 'PartNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Width = 73
      end
      object tvDragToDecription: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
        Width = 190
      end
    end
    object lvDragTo: TcxGridLevel
      GridView = tvDragTo
    end
  end
  object dsFrom: TDataSource
    DataSet = mFrom
    Left = 48
    Top = 208
  end
  object dsTo: TDataSource
    DataSet = mTo
    Left = 452
    Top = 168
  end
  object mTo: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F020000000800000006000700506172744E6F001E00
      000001000C004465736372697074696F6E000100000000000036400103000000
      5151510100000000008040400103000000575757010000000000004640010300
      0000454545010000000000804B40010300000052525201000000000080504001
      030000005454540100000000004053400103000000595959}
    SortOptions = []
    Left = 452
    Top = 220
    object mToPartNo: TFloatField
      FieldName = 'PartNo'
      DisplayFormat = 'PN-00000'
    end
    object mToDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
  end
  object mFrom: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F020000000800000006000700506172744E6F001E00
      000001000C004465736372697074696F6E000100000000000026400102000000
      6161010000000000003640010200000062620100000000008040400102000000
      6363}
    SortOptions = []
    Left = 52
    Top = 156
    object FloatField1: TFloatField
      FieldName = 'PartNo'
      DisplayFormat = 'PN-00000'
    end
    object StringField1: TStringField
      FieldName = 'Description'
      Size = 30
    end
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
  end
end
