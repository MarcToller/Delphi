object FormManutencaoAluno: TFormManutencaoAluno
  Left = 0
  Top = 0
  Caption = 'FormManutencaoAluno'
  ClientHeight = 538
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object PanelBotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 484
    Width = 475
    Height = 51
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 478
    DesignSize = (
      475
      51)
    object BitBtnGravar: TBitBtn
      Left = 370
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = BitBtnGravarClick
    end
    object BitBtnCancelar: TBitBtn
      Left = 258
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      TabOrder = 1
    end
  end
  object PanelDados: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 475
    Height = 478
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 472
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 64
      Height = 15
      Caption = 'Sobrenome:'
    end
    object Label3: TLabel
      Left = 16
      Top = 84
      Width = 32
      Height = 15
      Caption = 'Email:'
    end
    object Label4: TLabel
      Left = 18
      Top = 118
      Width = 32
      Height = 15
      Caption = 'Idade:'
    end
    object Label5: TLabel
      Left = 18
      Top = 152
      Width = 28
      Height = 15
      Caption = 'Peso:'
    end
    object Label6: TLabel
      Left = 16
      Top = 186
      Width = 35
      Height = 15
      Caption = 'Altura:'
    end
    object EditNome: TEdit
      Left = 96
      Top = 8
      Width = 353
      Height = 23
      MaxLength = 200
      TabOrder = 0
    end
    object EditSobreNome: TEdit
      Left = 96
      Top = 42
      Width = 353
      Height = 23
      MaxLength = 200
      TabOrder = 1
    end
    object EditEmail: TEdit
      Left = 96
      Top = 76
      Width = 353
      Height = 23
      MaxLength = 200
      TabOrder = 2
    end
    object cxCurrencyEditPeso: TcxCurrencyEdit
      Left = 96
      Top = 144
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ',0.00;'
      Properties.MaxValue = 200.000000000000000000
      TabOrder = 4
      Width = 65
    end
    object cxCurrencyEditAltura: TcxCurrencyEdit
      Left = 96
      Top = 178
      EditValue = 0.000000000000000000
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = ',0.00;'
      Properties.MaxValue = 2.700000000000000000
      TabOrder = 5
      Width = 65
    end
    object cxCurrencyEditIdade: TcxCurrencyEdit
      Left = 96
      Top = 110
      EditValue = 0
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.MaxValue = 120.000000000000000000
      TabOrder = 3
      Width = 65
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 216
      Width = 473
      Height = 261
      Align = alBottom
      Caption = 'Fotos'
      TabOrder = 6
      ExplicitTop = 232
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 5
        Top = 60
        Width = 463
        Height = 196
        Align = alClient
        TabOrder = 0
        ExplicitTop = 112
        ExplicitHeight = 144
        object cxGrid1DBLayoutView1: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = 'Nenhuma foto cadastrada'
          OptionsView.ViewMode = lvvmSingleRow
          object cxGrid1DBLayoutViewImagem: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'imagem'
            RepositoryItem = cxEditRepository1ImageItem1
            LayoutItem = cxGrid1DBLayoutView1LayoutItem1
          end
          object cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem
            Parent = cxGrid1DBLayoutView1Group_Root
            CaptionOptions.Layout = clBottom
            CaptionOptions.Visible = False
            SizeOptions.Height = 115
            SizeOptions.Width = 139
            Index = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBLayoutView1
        end
      end
      object BitBtnAdicionarFoto: TBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 22
        Width = 166
        Height = 30
        Hint = 'Segure a tecla CTRL para selecionar m'#250'ltiplas fotos'
        Margins.Top = 5
        Margins.Right = 300
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Adicionar Fotos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtnAdicionarFotoClick
        ExplicitTop = 27
        ExplicitWidth = 463
      end
    end
  end
  object DataSource1: TDataSource
    Left = 92
    Top = 395
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
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'PNG graphics from DevExpress (*.png)|*.png|JPEG Image File (*.jp' +
      'eg)|*.jpeg'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 228
    Top = 239
  end
end
