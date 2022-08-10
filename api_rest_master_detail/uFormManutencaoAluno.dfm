object FormManutencaoAluno: TFormManutencaoAluno
  Left = 0
  Top = 0
  Caption = 'FormManutencaoAluno'
  ClientHeight = 276
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
    Top = 222
    Width = 475
    Height = 51
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 239
    ExplicitWidth = 609
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
      ExplicitLeft = 504
    end
    object BitBtnCancelar: TBitBtn
      Left = 258
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      TabOrder = 1
      ExplicitLeft = 392
    end
  end
  object PanelDados: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 475
    Height = 216
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -2
    ExplicitWidth = 609
    ExplicitHeight = 223
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
      TabOrder = 3
      Width = 65
    end
    object cxCurrencyEditAltura: TcxCurrencyEdit
      Left = 96
      Top = 178
      EditValue = 0.000000000000000000
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = ',0.00;'
      Properties.MaxValue = 2.700000000000000000
      TabOrder = 4
      Width = 65
    end
    object cxCurrencyEditIdade: TcxCurrencyEdit
      Left = 96
      Top = 110
      EditValue = 0
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.MaxValue = 120.000000000000000000
      TabOrder = 5
      Width = 65
    end
  end
end
