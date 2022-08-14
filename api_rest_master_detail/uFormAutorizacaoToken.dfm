object FormAutorizacaoToken: TFormAutorizacaoToken
  Left = 0
  Top = 0
  Caption = 'Token de Autoriza'#231#227'o'
  ClientHeight = 200
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LabelToken: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 10
    Width = 407
    Height = 15
    Margins.Top = 10
    Align = alTop
    Caption = 'Insira um Token v'#225'lido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 127
  end
  object cxMemoToken: TcxMemo
    AlignWithMargins = True
    Left = 3
    Top = 31
    Align = alClient
    Style.TextStyle = [fsBold]
    TabOrder = 0
    Height = 115
    Width = 407
  end
  object PanelBotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 152
    Width = 407
    Height = 45
    Align = alBottom
    TabOrder = 1
    object BitBtnValidar: TBitBtn
      Left = 294
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Validar'
      TabOrder = 0
      OnClick = BitBtnValidarClick
    end
    object BitBtnCancelar: TBitBtn
      Left = 203
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtnCancelarClick
    end
  end
end
