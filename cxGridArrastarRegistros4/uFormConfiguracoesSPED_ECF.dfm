inherited FormConfiguracoesSPED_ECF: TFormConfiguracoesSPED_ECF
  OpcoesGerais.VerificarResolucaoPadrao = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelDados: TPanel
    inherited PageControlDados: TDTCPageControl
      Properties.ActivePage = TabSheetInformacoesGerais
      object TabSheetInformacoesGerais: TDTCTabSheet [0]
        Caption = 'Informa'#231#245'es Gerais'
        object PanelBotoesAssociacoes: TPanel
          Left = 0
          Top = 572
          Width = 601
          Height = 40
          Align = alBottom
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
        end
        object ScrollBoxDados: TScrollBox
          Left = 0
          Top = 0
          Width = 601
          Height = 572
          HorzScrollBar.Range = 485
          VertScrollBar.Position = 198
          VertScrollBar.Range = 770
          Align = alClient
          AutoScroll = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          ParentBackground = True
          TabOrder = 1
          StyleElements = [seFont, seClient]
          DesignSize = (
            584
            572)
          object GroupBoxAnoExercicio: TDTCGroupBox
            Left = 10
            Top = -195
            Margins.Left = 10
            Margins.Right = 10
            Caption = ' Exerc'#237'cio: '
            TabOrder = 0
            Height = 45
            Width = 101
            object SpinEditExercicio: TSpinEdit
              Left = 9
              Top = 16
              Width = 57
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 2014
              OnChange = SpinEditExercicioChange
            end
          end
          object LabelFormaTributacao: TDTCLabel
            Left = 10
            Top = -144
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Forma de tributa'#231#227'o do lucro'
            Gravar = False
          end
          object DTCComboBoxFormaTributacao: TDTCComboBox
            Left = 10
            Top = -127
            Width = 144
            Height = 21
            Hint = 'Forma de tributa'#231#227'o do lucro.'
            Margins.Left = 10
            Margins.Top = 3
            Margins.Right = 10
            Margins.Bottom = 3
            ItemHeight = 15
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MensagemItemDesabilitado = 'Item Desabilitado.'
            UtilizaDesabilitarItem = False
            LarguraCaixaItens = 0
            MostrarHintItens = False
            AlterarVazioParaNuloAoGravar = False
            Gravar = True
            GravarItemIndex = False
            GravarOrdemReal = False
            GravarValues = True
            Tag2 = 0
            IndiceItenIndex = 0
          end
          object LabelApuracaoIRPJ_CSLL: TDTCLabel
            Left = 174
            Top = -144
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Apura'#231#227'o do IRPJ e da CSLL'
            Gravar = False
          end
          object DTCComboBoxApuracaoIRPJ_CSLL: TDTCComboBox
            Left = 174
            Top = -127
            Width = 144
            Height = 21
            Hint = 'Apura'#231#227'o do IRPJ e da CSLL.'
            Margins.Left = 10
            Margins.Top = 3
            Margins.Right = 10
            Margins.Bottom = 3
            ItemHeight = 15
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MensagemItemDesabilitado = 'Item Desabilitado.'
            UtilizaDesabilitarItem = False
            LarguraCaixaItens = 0
            MostrarHintItens = False
            AlterarVazioParaNuloAoGravar = False
            Gravar = True
            GravarItemIndex = False
            GravarOrdemReal = False
            GravarValues = True
            Tag2 = 0
            IndiceItenIndex = 0
          end
          object LabelQualificacaoPessoaJuridica: TDTCLabel
            Left = 334
            Top = -144
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Qualifica'#231#227'o da pessoa jur'#237'dica:'
            Gravar = False
          end
          object DTCComboBoxQualificacaoPessoaJuridica: TDTCComboBox
            Left = 334
            Top = -127
            Width = 228
            Height = 21
            Hint = 'Qualifica'#231#227'o da pessoa jur'#237'dica.'
            Margins.Left = 10
            Margins.Top = 3
            Margins.Right = 10
            Margins.Bottom = 3
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 15
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MensagemItemDesabilitado = 'Item Desabilitado.'
            UtilizaDesabilitarItem = False
            LarguraCaixaItens = 0
            MostrarHintItens = False
            AlterarVazioParaNuloAoGravar = False
            Gravar = True
            GravarItemIndex = False
            GravarOrdemReal = False
            GravarValues = True
            Tag2 = 0
            IndiceItenIndex = 0
          end
          object LabelTipoEntidade: TDTCLabel
            Left = 10
            Top = -100
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Tipo de entidade:'
            Gravar = False
          end
          object DTCComboBoxTipoEntidade: TDTCComboBox
            Left = 10
            Top = -83
            Width = 144
            Height = 21
            Hint = 'Tipo de entidade.'
            Margins.Left = 10
            Margins.Top = 3
            Margins.Right = 10
            Margins.Bottom = 3
            ItemHeight = 15
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MensagemItemDesabilitado = 'Item Desabilitado.'
            UtilizaDesabilitarItem = False
            LarguraCaixaItens = 0
            MostrarHintItens = False
            AlterarVazioParaNuloAoGravar = False
            Gravar = True
            GravarItemIndex = False
            GravarOrdemReal = False
            GravarValues = True
            Tag2 = 0
            IndiceItenIndex = 0
          end
          object LabelFormaEscrituracao: TDTCLabel
            Left = 174
            Top = -100
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Forma de escritura'#231#227'o'
            Gravar = False
          end
          object DTCComboBoxFormaDeEscrituracao: TDTCComboBox
            Left = 174
            Top = -83
            Width = 144
            Height = 21
            Hint = 'Forma de escritura'#231#227'o.'
            Margins.Left = 10
            Margins.Top = 3
            Margins.Right = 10
            Margins.Bottom = 3
            ItemHeight = 15
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MensagemItemDesabilitado = 'Item Desabilitado.'
            UtilizaDesabilitarItem = False
            LarguraCaixaItens = 0
            MostrarHintItens = False
            AlterarVazioParaNuloAoGravar = False
            Gravar = False
            GravarItemIndex = False
            GravarOrdemReal = False
            GravarValues = True
            Tag2 = 0
            IndiceItenIndex = 0
          end
          object GroupBoxparticipacoesDoacoes: TDTCGroupBox
            Left = 334
            Top = -99
            Margins.Left = 10
            Margins.Right = 10
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 11
            DesignSize = (
              228
              118)
            Height = 118
            Width = 228
            object DTCCheckBoxParticipacoesExterior: TDTCCheckBox
              Left = 6
              Top = 4
              Width = 206
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Participa'#231#245'es no exterior'
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxDoacoes: TDTCCheckBox
              Left = 6
              Top = 19
              Width = 206
              Height = 17
              Hint = 'Doa'#231#245'es a Campanhas Eleitorais'
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Doa'#231#245'es a campanhas eleitorais'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxIsencaoImposto: TDTCCheckBox
              Left = 6
              Top = 34
              Width = 206
              Height = 17
              Hint = 'Isen'#231#227'o e Redu'#231#227'o do Imposto'
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Isen'#231#227'o e redu'#231#227'o do imposto'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxFinorFinamFures: TDTCCheckBox
              Left = 6
              Top = 49
              Width = 206
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Finor/Finam/Funres'
              TabOrder = 3
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxLucroExploracao: TDTCCheckBox
              Left = 6
              Top = 64
              Width = 206
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Lucro da explora'#231#227'o'
              TabOrder = 4
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxAtividadeRural: TDTCCheckBox
              Left = 6
              Top = 79
              Width = 206
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Atividade rural'
              TabOrder = 5
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxParticipacaoConsorcioEmpresa: TDTCCheckBox
              Left = 6
              Top = 94
              Width = 206
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Participa'#231#227'o em cons'#243'rcios de emp.'
              TabOrder = 6
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
          end
          object GroupBoxCodigosNaturezaAtividades: TDTCGroupBox
            Left = 10
            Top = -55
            Margins.Left = 10
            Margins.Right = 10
            TabOrder = 12
            Height = 26
            Width = 308
            object DTCCheckBoxAdministradoraFundos: TDTCCheckBox
              Left = 5
              Top = 7
              Width = 316
              Height = 14
              Hint = 'Administradora de Fundos e Clubes de Investimento'
              Caption = 'Administradora de fundos e clubes de investimento'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
          end
          object GroupBoxExterior: TDTCGroupBox
            Left = 10
            Top = -23
            Margins.Left = 10
            Margins.Right = 10
            TabOrder = 13
            Height = 42
            Width = 308
            object DTCCheckBoxOperacoesExteriorPessoaVinculada: TDTCCheckBox
              Left = 5
              Top = 21
              Width = 293
              Height = 17
              Caption = 'Opera'#231#245'es pessoa vinc./Interp. pessoa/Pa'#237's tribut.'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              WordWrap = True
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxOperacoesComExterior: TDTCCheckBox
              Left = 5
              Top = 5
              Width = 293
              Height = 17
              Caption = 'Opera'#231#245'es com o exterior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
          end
          object GroupBoxIPI: TDTCGroupBox
            Left = 10
            Top = 25
            Margins.Left = 10
            Margins.Right = 10
            TabOrder = 14
            Height = 46
            Width = 308
            object DTCCheckBoxAtivosNoExterior: TDTCCheckBox
              Left = 140
              Top = 7
              Width = 130
              Height = 16
              Caption = 'Ativos no exterior'
              TabOrder = 2
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxOptanteRefis: TDTCCheckBox
              Left = 5
              Top = 6
              Width = 127
              Height = 17
              Caption = 'Optante pelo Refis'
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxOptantePaes: TDTCCheckBox
              Left = 5
              Top = 22
              Width = 127
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = 'Optante pelo Paes'
              ParentBiDiMode = False
              TabOrder = 1
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
          end
          object GroupBoxPjSujeitoAliqCSLL: TDTCGroupBox
            Left = 334
            Top = 25
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 15
            DesignSize = (
              228
              46)
            Height = 46
            Width = 228
            object LabelPjSujeitoAliqCSLL: TDTCLabel
              Left = 9
              Top = 17
              Caption = 'PJ sujeita '#224' aliquota da CSLL:'
              Gravar = False
            end
            object DTCComboBoxPjSujeitoAliqCSLL: TDTCComboBox
              Left = 158
              Top = 12
              Width = 63
              Height = 21
              Hint = 'Apura'#231#227'o do IRPJ e da CSLL.'
              Margins.Left = 10
              Margins.Top = 3
              Margins.Right = 10
              Margins.Bottom = 3
              ItemHeight = 15
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              CorAoEntrar = 12058623
              CorAoSair = clWindow
              MensagemItemDesabilitado = 'Item Desabilitado.'
              UtilizaDesabilitarItem = False
              LarguraCaixaItens = 0
              MostrarHintItens = False
              AlterarVazioParaNuloAoGravar = False
              Gravar = True
              GravarItemIndex = False
              GravarOrdemReal = False
              GravarValues = True
              Tag2 = 0
              IndiceItenIndex = 0
            end
            object DTCCheckBoxPJSujAliq15: TDTCCheckBox
              Left = 9
              Top = 26
              Width = 205
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'PJ sujeita '#224' aliquota da CSLL de 15%'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
          end
          object GroupBoxOpcoesSPED_ECF: TDTCGroupBox
            Left = 10
            Top = 76
            Margins.Left = 10
            Margins.Right = 10
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 16
            DesignSize = (
              552
              104)
            Height = 104
            Width = 552
            object DTCCheckBoxPJArtigos48ou49: TDTCCheckBox
              Left = 5
              Top = 5
              Width = 526
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'PJ enquadrada nos artigos 48 ou 49 da IN RFB n'#186' 1.312/2012 '
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxParticEquivPatrimonial: TDTCCheckBox
              Left = 5
              Top = 20
              Width = 526
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Participa'#231#227'o avaliada pelo m'#233'todo de equival'#234'ncia patrimonial'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxPJVendasFimExportacao: TDTCCheckBox
              Left = 5
              Top = 35
              Width = 526
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 
                'PJ efetuou vendas a empresa comercial exportadora com fim espec'#237 +
                'fico de exporta'#231#227'o'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxRecebExteriorNaoResid: TDTCCheckBox
              Left = 5
              Top = 50
              Width = 526
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Recebimentos do exterior ou de n'#227'o residentes'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxPJComExportadora: TDTCCheckBox
              Left = 5
              Top = 81
              Width = 526
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'PJ comercial exportadora'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxPagtoExteriorNaoResid: TDTCCheckBox
              Left = 5
              Top = 65
              Width = 526
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Pagamentos ao exterior ou de n'#227'o residentes'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
          end
          object GroupBoxInformacoesEconomicas: TDTCGroupBox
            Left = 10
            Top = 242
            Margins.Left = 10
            Margins.Right = 10
            Anchors = [akLeft, akTop, akRight]
            Caption = '   Informa'#231#245'es econ'#244'micas   '
            TabOrder = 18
            DesignSize = (
              552
              222)
            Height = 222
            Width = 552
            object DTCCheckBoxComercioEletronico: TDTCCheckBox
              Left = 5
              Top = 80
              Width = 536
              Height = 17
              Hint = 'Com'#233'rcio Eletr'#244'nico e Tecnologia da Informa'#231#227'o'
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Com'#233'rcio eletr'#244'nico e tecnologia da informa'#231#227'o'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxRoyaltiesRecebidos: TDTCCheckBox
              Left = 5
              Top = 65
              Width = 536
              Height = 17
              Hint = 'Royalties Recebidos do Brasil e do Exterior'
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Royalties recebidos do Brasil e do exterior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxInovacaoTecnologica: TDTCCheckBox
              Left = 5
              Top = 95
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Inova'#231#227'o e desenvolvimento tecnol'#243'gico'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxRoyaltiesPagosBeneficiarios: TDTCCheckBox
              Left = 5
              Top = 49
              Width = 536
              Height = 17
              Hint = 'Royalties Pagos a Benefici'#225'rios do Brasil e do Exterior'
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Royalties pagos a benefici'#225'rios do Brasil e do exterior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxRendimentosServicos: TDTCCheckBox
              Left = 5
              Top = 34
              Width = 536
              Height = 17
              Hint = 
                'Rendimentos relativos a servi'#231'os, juros e dividendos recebidos d' +
                'o Brasil e do exterior'
              Anchors = [akLeft, akTop, akRight]
              Caption = 
                'Rendimentos relativos a servi'#231'os, juros e dividendos recebidos d' +
                'o Brasil e do exterior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              WordWrap = True
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxPagamentosServicos: TDTCCheckBox
              Left = 5
              Top = 19
              Width = 536
              Height = 17
              Hint = 
                'Pagamentos ou Remessas a T'#237'tulo de Servi'#231'os, Juros e Dividendos ' +
                'a Benefici'#225'rios do Brasil e do Exterior'
              Anchors = [akLeft, akTop, akRight]
              Caption = 
                'Pagamentos ou remessas a t'#237'tulo de servi'#231'os, juros e dividendos ' +
                'a benefici'#225'rios do Brasil e do exterior'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxCapacitacaoInformatica: TDTCCheckBox
              Left = 5
              Top = 125
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Capacita'#231#227'o de informa'#231#227'o e inclus'#227'o digital'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              WordWrap = True
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxPJRepesRecap: TDTCCheckBox
              Left = 5
              Top = 140
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'PJ habilitada regimes especiais'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxPoloIndustrial: TDTCCheckBox
              Left = 5
              Top = 110
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'P'#243'lo industrial de Manaus e Amaz'#244'nia Ocidental'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxZonaProcessExportacao: TDTCCheckBox
              Left = 5
              Top = 155
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Zona de processamento de exporta'#231#227'o'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxAreaLivreComercio: TDTCCheckBox
              Left = 5
              Top = 170
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = #193'reas de livre com'#233'rcio'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxEntidadeGrupoMultinacional: TDTCCheckBox
              Left = 5
              Top = 185
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 
                'A pessoa jur'#237'dica '#233' entidade de grupo multinacional, nos termos ' +
                'a Instru'#231#227'o Normativa RFB n'#186' 1.681/2016'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
            object DTCCheckBoxDEREX: TDTCCheckBox
              Left = 5
              Top = 201
              Width = 536
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              Caption = 
                'Declara'#231#227'o sobre utiliza'#231#227'o dos recursos em moeda estrangeira de' +
                'correntes do recebimento (DEREX)'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = True
            end
          end
          object RadioGroupRegimeCaixaCompetencia: TRadioGroup
            Left = 10
            Top = 185
            Width = 552
            Height = 52
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Regime de Apura'#231#227'o de Impostos'
            Columns = 2
            Items.Strings = (
              'Regime de Caixa'
              'Regime de Compet'#234'ncia')
            TabOrder = 17
            OnClick = RadioGroupRegimeCaixaCompetenciaClick
          end
          object GroupBoxReg0021: TGroupBox
            Left = 10
            Top = 471
            Width = 552
            Height = 94
            Anchors = [akLeft, akTop, akRight]
            Caption = 
              'Par'#226'metros de Identifica'#231#227'o dos Tipos de Programa (Registro 0021' +
              ')'
            TabOrder = 19
            object DTCCheckBoxRepes: TDTCCheckBox
              Left = 40
              Top = 21
              Width = 60
              Height = 17
              Hint = 
                'Habilitada no Regime Especial de Tributa'#231#227'o para a Plataforma de' +
                ' Exporta'#231#227'o de Servi'#231'os de Tecnologia da Informa'#231#227'o (Repes), ins' +
                'titu'#237'do pela Lei n'#186' 11.196, de 2005, com as altera'#231#245'es introduzi' +
                'das pela Lei n'#186' 11.774, de 17 de setembro de 2008, regulamentado' +
                ' pelo Decreto n'#186' 5.712, de 2 de mar'#231'o de 2006, com as altera'#231#245'es' +
                ' introduzidas pelo Decreto n'#186' 6.887, de 25 de junho de 2009'
              Caption = 'Repes'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              PermiteLimpar = False
              Gravar = False
            end
            object DTCCheckBoxRecap: TDTCCheckBox
              Left = 40
              Top = 38
              Width = 60
              Height = 17
              Hint = 
                'Habilitada no Regime Especial de Aquisi'#231#227'o de Bens de Capital pa' +
                'ra Empresas Exportadoras (Recap) institu'#237'do pela Lei n'#186' 11.196, ' +
                'de 2005, com as altera'#231#245'es introduzidas pela Lei n'#186' 11.774, de 2' +
                '008, regulamentado pelo Decreto n'#186' 5.649, de 29 de dezembro de 2' +
                '005, com as altera'#231#245'es introduzidas pelo Decreto n'#186' 6.887, de 20' +
                '09'
              HelpType = htKeyword
              Caption = 'Recap'
              TabOrder = 1
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxPadis: TDTCCheckBox
              Left = 40
              Top = 55
              Width = 60
              Height = 17
              Hint = 
                'Executora de projeto aprovado no '#226'mbito do Programa de Apoio ao ' +
                'Desenvolvimento Tecnol'#243'gico da Ind'#250'stria de Semicondutores (Padi' +
                's), institu'#237'do pela Lei n'#186' 11.484, de 31 de maio de 2007, com al' +
                'tera'#231#245'es introduzidas pelo art. 20 c/c art. 139, I, '#8220'd'#8221' da Lei n' +
                #186' 12.249, de 11 de junho de 2010, regulamentado pelo Decreto n'#186' ' +
                '6.233, de 11 de outubro de 2007, com as altera'#231#245'es introduzidas ' +
                'pelo Decreto n'#186' 6.887, de 2009'
              Caption = 'Padis'
              TabOrder = 2
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxPatvd: TDTCCheckBox
              Left = 40
              Top = 72
              Width = 60
              Height = 17
              Hint = 
                'Executora de projeto aprovado no '#226'mbito do Programa de Apoio ao ' +
                'Desenvolvimento Tecnol'#243'gico da Ind'#250'stria de Equipamentos para TV' +
                ' Digital (PATVD), institu'#237'do pela Lei n'#186' 11.484, de 2007, regula' +
                'mentado pelo Decreto n'#186' 6.234, de 11 de outubro de 2007'
              Caption = 'Patvd'
              TabOrder = 3
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxReidi: TDTCCheckBox
              Left = 152
              Top = 21
              Width = 65
              Height = 17
              Hint = 
                'Habilitada ou co-habilitada no Regime Especial de Incentivos par' +
                'a o Desenvolvimento da Infraestrutura (Reidi), institu'#237'do pela L' +
                'ei n'#186' 11.488, de 15 de junho de 2007, com as altera'#231#245'es introduz' +
                'idas pela Lei n'#186' 11.727, de 23 de junho de 2008, e pelo art. 21 ' +
                'c/c art. 139, I, '#8220'd'#8221' da Lei n'#186' 12.249, de 2010, regulamentado pe' +
                'lo Decreto n'#186' 6.144, de 3 de julho de 2007, com as altera'#231#245'es in' +
                'troduzidas pelo Decreto n'#186' 6.167, de 24 de julho de 2007 e pelo ' +
                'Decreto n'#186' 6.416, de 28 de mar'#231'o de 2008'
              Caption = 'Reidi'
              TabOrder = 4
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxRepenec: TDTCCheckBox
              Left = 152
              Top = 38
              Width = 65
              Height = 17
              Hint = 
                'Habilitada ou co-habilitada no Regime Especial de Incentivos par' +
                'a o Desenvolvimento da Infraestrutura da Ind'#250'stria Petrol'#237'fera d' +
                'as Regi'#245'es Norte, Nordeste e Centro-Oeste (Repenec), institu'#237'do ' +
                'pela Lei n'#186' 12.249, de 2010, regulamentado pelo Decreto n'#186' 7.320' +
                ', de 28 de setembro de 2010'
              Caption = 'Repenec'
              TabOrder = 5
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxReicomp: TDTCCheckBox
              Left = 152
              Top = 55
              Width = 65
              Height = 17
              Hint = 
                'Habilitada no Regime Especial de Incentivo a Computadores para U' +
                'so Educacional (Reicomp), institu'#237'do pela Lei n'#186' 12.715, de 17 d' +
                'e setembro de 2012, regulamentado e o Decreto n'#186' 7.750, de 8 de ' +
                'junho de 2012'
              Caption = 'Reicomp'
              TabOrder = 6
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxRetaero: TDTCCheckBox
              Left = 152
              Top = 72
              Width = 65
              Height = 17
              Hint = 
                'Habilitada no Regime Especial para a Ind'#250'stria Aeron'#225'utica Brasi' +
                'leira (Retaero), institu'#237'do pela Lei n'#186' 12.249, de 2010'
              Caption = 'Retaero'
              TabOrder = 7
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxRecine: TDTCCheckBox
              Left = 274
              Top = 21
              Width = 100
              Height = 17
              Hint = 
                'Detentora de projeto de exibi'#231#227'o cinematogr'#225'fica aprovado no '#226'mb' +
                'ito do Regime Especial de Tributa'#231#227'o para Desenvolvimento da Ati' +
                'vidade de Exibi'#231#227'o Cinematogr'#225'fica (Recine), institu'#237'do pela Lei' +
                ' n'#186' 12.599, de 23 de mar'#231'o de 2012, regulamentada pelo Decreto n' +
                #186' 7.729, de 25 de maio de 2012'
              Caption = 'Recine'
              TabOrder = 8
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxResiduosSolid: TDTCCheckBox
              Left = 274
              Top = 38
              Width = 100
              Height = 17
              Hint = 
                'Cujos estabelecimentos industriais fa'#231'am jus a cr'#233'dito presumido' +
                ' do IPI na aquisi'#231#227'o de res'#237'duos s'#243'lidos, de que trata a Lei n'#186' ' +
                '12.375, de 30 de dezembro de 2010, regulamentada pelo Decreto n'#186 +
                ' 7.619, de 21 de novembro de 2011'
              Caption = 'Residuos S'#243'lidos'
              TabOrder = 9
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxRecopa: TDTCCheckBox
              Left = 274
              Top = 55
              Width = 100
              Height = 17
              Hint = 
                'Habilitada ou co-habilitada no Regime Especial de Tributa'#231#227'o par' +
                'a constru'#231#227'o, amplia'#231#227'o, reforma ou moderniza'#231#227'o de est'#225'dios de ' +
                'futebol (Recopa), institu'#237'do pela Lei n'#186' 12.350, de 20 de dezemb' +
                'ro de 2010, arts. 17 a 21, regulamentada pelo Decreto n'#186' 7.319, ' +
                'de 28 de setembro de 2010'
              Caption = 'Recopa'
              TabOrder = 10
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxCopaDoMundo: TDTCCheckBox
              Left = 274
              Top = 72
              Width = 100
              Height = 17
              Hint = 
                'Habilitada para fins de frui'#231#227'o dos benef'#237'cios fiscais, n'#227'o abra' +
                'ngidos na al'#237'nea anterior, relativos '#224' realiza'#231#227'o, no Brasil, da' +
                ' Copa das Confedera'#231#245'es FIFA 2013 e da Copa do Mundo FIFA 2014, ' +
                'de que trata a Lei n'#186' 12.350, de 2010, regulamentada pelo Decret' +
                'o n'#186' 7.578, e 11 de outubro de 2011'
              Caption = 'Copa do Mundo'
              TabOrder = 11
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxRetid: TDTCCheckBox
              Left = 426
              Top = 21
              Width = 87
              Height = 17
              Hint = 
                'Benefici'#225'ria do Regime Especial Tribut'#225'rio para a Ind'#250'stria de D' +
                'efesa (Retid), nos termos e condi'#231#245'es estabelecidos na Lei n'#186' 12' +
                '.598, de 22 de mar'#231'o de 2012'
              Caption = 'Retid'
              TabOrder = 12
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxRepnblRedes: TDTCCheckBox
              Left = 426
              Top = 38
              Width = 87
              Height = 17
              Hint = 
                'Habilitada ou co-habilitada no Regime Especial de Tributa'#231#227'o do ' +
                'Programa Nacional de Banda Larga para Implanta'#231#227'o de Redes de Te' +
                'lecomunica'#231#245'es (REPNBL-Redes), institu'#237'do pela Lei n'#186' 12.715, de' +
                ' 17 de setembro de 2012, regulamentada pelo Decreto n'#186' 7.921, de' +
                ' 15 de fevereiro de 2013'
              Caption = 'Repnbl Redes'
              TabOrder = 13
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxReif: TDTCCheckBox
              Left = 426
              Top = 55
              Width = 87
              Height = 17
              Hint = 
                'Habilitada ou co-habilitada no Regime Especial de Incentivo ao D' +
                'esenvolvimento da Infraestrutura da Ind'#250'stria de Fertilizantes -' +
                ' REIF, institu'#237'do pela Lei n'#186' 12.794, de 02 de abril de 2013'
              Caption = 'Reif'
              TabOrder = 14
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
            object DTCCheckBoxOlimpiadas: TDTCCheckBox
              Left = 426
              Top = 72
              Width = 87
              Height = 17
              Hint = 
                'Habilitada para fins de frui'#231#227'o dos benef'#237'cios fiscais, relativo' +
                's '#224' realiza'#231#227'o, no Brasil, dos Jogos Ol'#237'mpicos de 2016 e dos Jog' +
                'os Paraol'#237'mpicos de 2016, de que trata a Lei n'#186' 12.780, de 2013'
              Caption = 'Olimp'#237'adas'
              TabOrder = 15
              CorAoEntrar = clWindowText
              CorAoSair = clWindowText
              Gravar = False
            end
          end
        end
      end
      inherited TabSheetAssociacoes: TDTCTabSheet
        inherited cxGridAssociacoes: TcxGrid
          inherited cxViewRegistros: TcxGridDBBandedTableView
            inherited cxViewRegistrosCODIGO_EXTERNO: TcxGridDBBandedColumn
              IsCaptionAssigned = True
            end
            inherited cxViewRegistrosDESCRICAO: TcxGridDBBandedColumn
              IsCaptionAssigned = True
            end
            inherited cxViewRegistrosBotao: TcxGridDBBandedColumn
              IsCaptionAssigned = True
            end
            inherited cxViewRegistrosTemAssociacao: TcxGridDBBandedColumn
              IsCaptionAssigned = True
            end
          end
        end
        inherited PanelDescricaoRegistro: TPanel
          inherited LabelDescricaoRegistro: TDTCLabel
            Style.IsFontAssigned = True
          end
        end
        inherited PanelPesquisa: TPanel
          inherited cxTextEditPesquisaRegistros: TcxTextEdit
            Style.IsFontAssigned = True
          end
        end
      end
      object TabSheetN615: TDTCTabSheet
        Caption = 'Registro N615'
        ImageIndex = 2
        object GroupBoxRegistroN615: TDTCGroupBox
          Left = 12
          Top = 20
          Caption = 'INFORMA'#199#213'ES DA BASE DE C'#193'LCULO DOS INCENTIVOS FISCAIS'
          ParentFont = False
          TabOrder = 0
          Height = 257
          Width = 405
          object LabelIncentFINOR: TDTCLabel
            Left = 16
            Top = 95
            Caption = 'Percentual do incentivo FINOR (at'#233' 6%). '
            Gravar = False
          end
          object LabelIncentFINAM: TDTCLabel
            Left = 16
            Top = 126
            Caption = 'Percentual do incentivo FINAM (at'#233' 6%).'
            Gravar = False
          end
          object LabelIncentFUNRES: TDTCLabel
            Left = 16
            Top = 154
            Caption = 'Percentual do incentivo FUNRES (at'#233' 9%). '
            Gravar = False
          end
          object LabelPeriodoTributacaoN615: TDTCLabel
            Left = 16
            Top = 47
            Caption = 'Per'#237'odo tributa'#231#227'o:'
            Gravar = False
          end
          object DTCCurrencyEditInecntFUNRES: TDTCCurrencyEdit
            Left = 229
            Top = 148
            Width = 116
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DecimalPlaces = 4
            DisplayFormat = ',0.00%;'
            MaxValue = 9.000000000000000000
            TabOrder = 3
            Value = 0.000000000000000000
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MostrarBotaoCalculadora = False
            NumGlyphs = 2
            Gravar = False
            AutoIncremento = False
            Tag2 = 0
          end
          object DTCCurrencyEditIncentFINAM: TDTCCurrencyEdit
            Left = 229
            Top = 120
            Width = 116
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = ',0.00%;'
            MaxValue = 6.000000000000000000
            TabOrder = 2
            Value = 0.000000000000000000
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MostrarBotaoCalculadora = False
            NumGlyphs = 2
            Gravar = True
            AutoIncremento = False
            Tag2 = 0
          end
          object DTCCurrencyEditIncentFINOR: TDTCCurrencyEdit
            Left = 229
            Top = 92
            Width = 116
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = ',0.00%;'
            MaxValue = 6.000000000000000000
            TabOrder = 1
            Value = 0.000000000000000000
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MostrarBotaoCalculadora = False
            NumGlyphs = 2
            Gravar = True
            AutoIncremento = False
            Tag2 = 0
          end
          object DTCComboBoxPeriodosTributacaoN615: TDTCComboBox
            Left = 200
            Top = 40
            Width = 145
            Height = 21
            ItemHeight = 15
            TabOrder = 0
            OnChange = DTCComboBoxPeriodosTributacaoN615Change
            CorAoEntrar = 12058623
            CorAoSair = clWindow
            MensagemItemDesabilitado = 'Item Desabilitado.'
            UtilizaDesabilitarItem = False
            LarguraCaixaItens = 0
            MostrarHintItens = False
            AlterarVazioParaNuloAoGravar = False
            Gravar = False
            GravarItemIndex = False
            GravarOrdemReal = False
            GravarValues = False
            GravarValuesComValor = False
            Tag2 = 0
            IndiceItenIndex = 0
          end
          object BitBtnDTCGravaIncentFiscal: TBitBtnDTC
            Left = 268
            Top = 200
            Width = 75
            Height = 25
            Caption = 'Gravar'
            TabOrder = 4
            OnClick = BitBtnDTCGravaIncentFiscalClick
          end
        end
      end
      object TabSheetY570: TDTCTabSheet
        Caption = 'Registro Y570'
        ImageIndex = 3
        DesignSize = (
          601
          612)
        object GroupBoxY570: TGroupBox
          Left = 16
          Top = 32
          Width = 565
          Height = 249
          Anchors = [akLeft, akTop, akRight]
          Caption = 'DEMONSTRATIVO DO IMPOSTO DE RENDA E CSLL RETIDOS NA FONTE'
          TabOrder = 0
          DesignSize = (
            565
            249)
          object RadioGroupSistemaY570: TRadioGroup
            Left = 19
            Top = 32
            Width = 531
            Height = 49
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Sistema de origem das informa'#231#245'es'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Contabmillenium'
              'WinLivros')
            TabOrder = 0
            OnClick = RadioGroupSistemaY570Click
          end
          object GroupBoxCodigoRecolhimentoY570: TGroupBox
            Left = 19
            Top = 96
            Width = 531
            Height = 134
            Anchors = [akLeft, akTop, akRight]
            Caption = 'C'#243'digos de Recolhimento:'
            TabOrder = 1
            object LabelImpostoDeRendaY570: TLabel
              Left = 21
              Top = 23
              Width = 110
              Height = 13
              Caption = 'Imposto de Renda (IR)'
            end
            object LabelContribSocialY570: TLabel
              Left = 21
              Top = 82
              Width = 124
              Height = 13
              Caption = 'Contribui'#231#227'o Social (CSLL)'
            end
            object DTCCurrencyEdit_IR_Y570: TDTCCurrencyEdit
              Left = 17
              Top = 45
              Width = 76
              Height = 21
              DisplayFormat = '0000.00'
              TabOrder = 0
              Value = 0.000000000000000000
              OnExit = DTCCurrencyEdit_IR_Y570Exit
              OnKeyPress = DTCCurrencyEdit_IR_Y570KeyPress
              CorAoEntrar = 12058623
              CorAoSair = clWindow
              BotaoDePesquisa = DtcBitBtnPesquisa_IR_Y570
              MostrarBotaoCalculadora = False
              Campo = 'CODIGO'
              Gravar = True
              AutoIncremento = False
              Tag2 = 0
            end
            object DTCJvDBLookupCombo_IR_Y570: TDTCJvDBLookupCombo
              Left = 95
              Top = 45
              Width = 404
              Height = 21
              LookupField = 'CODIGO'
              LookupDisplay = 'CODIGO;DESCRICAO;PERCENTUAL'
              LookupDisplayIndex = 1
              TabOrder = 1
              OnChange = DTCJvDBLookupCombo_IR_Y570Change
              BotaoDePesquisa = DtcBitBtnPesquisa_IR_Y570
              CorAoEntrar = 12058623
              CorAoSair = clWindow
              Campo = 'CODIGO'
              Gravar = False
              Tag2 = 0
              HintLookup.CaracteresPorLinha = 85
              HintLookup.Cor = 16708037
              HintLookup.Left = 0
            end
            object DtcBitBtnPesquisa_IR_Y570: TDtcBitBtnPesquisa
              Left = 503
              Top = 44
              Width = 23
              Height = 24
              Hint = 'Clique aqui ou pressione F4 para abrir a pesquisa.'
              ParentShowHint = False
              ShowHint = True
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 2
              TabStop = False
              ConstanteDeImagem = 'IMG_TeclaF4_16 '
              CamposRetorno = 'CODIGO'
              RetornoAutomatico = True
              DadosFormPesquisa.IdentificadorForm = '{FA8C48F4-B1E1-4907-910C-A755095B0BEE}'
            end
            object DTCCurrencyEdit_CSLL_Y570: TDTCCurrencyEdit
              Left = 17
              Top = 102
              Width = 76
              Height = 21
              DisplayFormat = '0000.00'
              TabOrder = 3
              Value = 0.000000000000000000
              OnExit = DTCCurrencyEdit_CSLL_Y570Exit
              OnKeyPress = DTCCurrencyEdit_CSLL_Y570KeyPress
              CorAoEntrar = 12058623
              CorAoSair = clWindow
              BotaoDePesquisa = DtcBitBtnPesquisa_CSLL_Y570
              MostrarBotaoCalculadora = False
              Campo = 'CODIGO'
              Gravar = True
              AutoIncremento = False
              Tag2 = 0
            end
            object DTCJvDBLookupCombo_CSLL_Y570: TDTCJvDBLookupCombo
              Left = 95
              Top = 102
              Width = 404
              Height = 21
              LookupField = 'CODIGO'
              LookupDisplay = 'CODIGO;DESCRICAO;PERCENTUAL'
              LookupDisplayIndex = 1
              TabOrder = 4
              OnChange = DTCJvDBLookupCombo_CSLL_Y570Change
              BotaoDePesquisa = DtcBitBtnPesquisa_CSLL_Y570
              CorAoEntrar = 12058623
              CorAoSair = clWindow
              Campo = 'CODIGO'
              Gravar = False
              Tag2 = 0
              HintLookup.CaracteresPorLinha = 85
              HintLookup.Cor = 16708037
              HintLookup.Left = 0
            end
            object DtcBitBtnPesquisa_CSLL_Y570: TDtcBitBtnPesquisa
              Left = 503
              Top = 100
              Width = 23
              Height = 24
              Hint = 'Clique aqui ou pressione F4 para abrir a pesquisa.'
              ParentShowHint = False
              ShowHint = True
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 5
              TabStop = False
              ConstanteDeImagem = 'IMG_TeclaF4_16 '
              CamposRetorno = 'CODIGO'
              RetornoAutomatico = True
              DadosFormPesquisa.IdentificadorForm = '{FA8C48F4-B1E1-4907-910C-A755095B0BEE}'
            end
          end
        end
      end
    end
  end
  inherited cxStyleRepositoryPlanoContas: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImageListDTC16: TImageListDTC
    FormatVersion = 1
  end
end
