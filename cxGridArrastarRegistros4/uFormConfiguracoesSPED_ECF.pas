unit uFormConfiguracoesSPED_ECF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, pformpadrao, cxGraphics,
  Vcl.Menus, cxClasses, dxCustomHint, cxHint, Vcl.StdCtrls, cxButtons, uComponentesControleAcesso, uImagensDTC, Vcl.ExtCtrls, Vcl.ComCtrls,
  uCustomDtcComponentes, DTCComponentes, Vcl.Samples.Spin, cxControls, cxStyles, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Spring.Collections,
  uAcaoConfiguracoesSPED_ECF, uAtributoEnumerado, uDTCMultiplaSelecao,
  uEntidadeInformacoesGeraisSpedEcf, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, uAcaoPercentApuracaoIncentFiscais, uEntidadeORMSPED_ECF_IncentFiscais,
  uConstantesSpedEcf, uDTCTipos, cxSplitter, Data.DB, Vcl.Imaging.pngimage, uStringManipulacao, uAcaoPlanoReferencial,
  cxPC, System.ImageList, Vcl.ImgList, cxContainer, cxGroupBox, cxLabel,
  Vcl.Buttons, uFactoryAcao, uEntidadeFiscalConfiguracoes,
  uCustomDTCBitBtnPesquisa, DTCBitBtnPesquisa, JvExControls, JvDBLookup,
  uCustomDtcComponentesDB, uAcaoReceitas, System.Generics.Collections,
  cxTextEdit, cxImageList, uFormAssociacaoDinamicaPlanoContas,
  uFiltros, uConstantesAssociacaoDinamicaPlanoContas, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxButtonEdit,
  dxScreenTip;

type
  TTipoCodRecolhimentoY570 = (crY570IR, cry570CSLL);

  TFormConfiguracoesSPED_ECF = class(TFormAssociacaoDinamicaPlanoContas)
    TabSheetInformacoesGerais: TDTCTabSheet;
    PanelBotoesAssociacoes: TPanel;
    ScrollBoxDados: TScrollBox;
    GroupBoxAnoExercicio: TDTCGroupBox;
    SpinEditExercicio: TSpinEdit;
    LabelFormaTributacao: TDTCLabel;
    DTCComboBoxFormaTributacao: TDTCComboBox;
    LabelApuracaoIRPJ_CSLL: TDTCLabel;
    DTCComboBoxApuracaoIRPJ_CSLL: TDTCComboBox;
    LabelQualificacaoPessoaJuridica: TDTCLabel;
    DTCComboBoxQualificacaoPessoaJuridica: TDTCComboBox;
    LabelTipoEntidade: TDTCLabel;
    DTCComboBoxTipoEntidade: TDTCComboBox;
    LabelFormaEscrituracao: TDTCLabel;
    DTCComboBoxFormaDeEscrituracao: TDTCComboBox;
    GroupBoxparticipacoesDoacoes: TDTCGroupBox;
    DTCCheckBoxParticipacoesExterior: TDTCCheckBox;
    DTCCheckBoxDoacoes: TDTCCheckBox;
    DTCCheckBoxIsencaoImposto: TDTCCheckBox;
    DTCCheckBoxFinorFinamFures: TDTCCheckBox;
    DTCCheckBoxLucroExploracao: TDTCCheckBox;
    DTCCheckBoxAtividadeRural: TDTCCheckBox;
    DTCCheckBoxParticipacaoConsorcioEmpresa: TDTCCheckBox;
    GroupBoxCodigosNaturezaAtividades: TDTCGroupBox;
    DTCCheckBoxAdministradoraFundos: TDTCCheckBox;
    GroupBoxExterior: TDTCGroupBox;
    DTCCheckBoxOperacoesExteriorPessoaVinculada: TDTCCheckBox;
    DTCCheckBoxOperacoesComExterior: TDTCCheckBox;
    GroupBoxIPI: TDTCGroupBox;
    DTCCheckBoxAtivosNoExterior: TDTCCheckBox;
    DTCCheckBoxOptanteRefis: TDTCCheckBox;
    DTCCheckBoxOptantePaes: TDTCCheckBox;
    GroupBoxPjSujeitoAliqCSLL: TDTCGroupBox;
    LabelPjSujeitoAliqCSLL: TDTCLabel;
    DTCComboBoxPjSujeitoAliqCSLL: TDTCComboBox;
    DTCCheckBoxPJSujAliq15: TDTCCheckBox;
    GroupBoxOpcoesSPED_ECF: TDTCGroupBox;
    DTCCheckBoxPJArtigos48ou49: TDTCCheckBox;
    DTCCheckBoxParticEquivPatrimonial: TDTCCheckBox;
    DTCCheckBoxPJVendasFimExportacao: TDTCCheckBox;
    DTCCheckBoxRecebExteriorNaoResid: TDTCCheckBox;
    DTCCheckBoxPJComExportadora: TDTCCheckBox;
    DTCCheckBoxPagtoExteriorNaoResid: TDTCCheckBox;
    GroupBoxInformacoesEconomicas: TDTCGroupBox;
    DTCCheckBoxComercioEletronico: TDTCCheckBox;
    DTCCheckBoxRoyaltiesRecebidos: TDTCCheckBox;
    DTCCheckBoxInovacaoTecnologica: TDTCCheckBox;
    DTCCheckBoxRoyaltiesPagosBeneficiarios: TDTCCheckBox;
    DTCCheckBoxRendimentosServicos: TDTCCheckBox;
    DTCCheckBoxPagamentosServicos: TDTCCheckBox;
    DTCCheckBoxCapacitacaoInformatica: TDTCCheckBox;
    DTCCheckBoxPJRepesRecap: TDTCCheckBox;
    DTCCheckBoxPoloIndustrial: TDTCCheckBox;
    DTCCheckBoxZonaProcessExportacao: TDTCCheckBox;
    DTCCheckBoxAreaLivreComercio: TDTCCheckBox;
    DTCCheckBoxEntidadeGrupoMultinacional: TDTCCheckBox;
    DTCCheckBoxDEREX: TDTCCheckBox;
    RadioGroupRegimeCaixaCompetencia: TRadioGroup;
    GroupBoxReg0021: TGroupBox;
    DTCCheckBoxRepes: TDTCCheckBox;
    DTCCheckBoxRecap: TDTCCheckBox;
    DTCCheckBoxPadis: TDTCCheckBox;
    DTCCheckBoxPatvd: TDTCCheckBox;
    DTCCheckBoxReidi: TDTCCheckBox;
    DTCCheckBoxRepenec: TDTCCheckBox;
    DTCCheckBoxReicomp: TDTCCheckBox;
    DTCCheckBoxRetaero: TDTCCheckBox;
    DTCCheckBoxRecine: TDTCCheckBox;
    DTCCheckBoxResiduosSolid: TDTCCheckBox;
    DTCCheckBoxRecopa: TDTCCheckBox;
    DTCCheckBoxCopaDoMundo: TDTCCheckBox;
    DTCCheckBoxRetid: TDTCCheckBox;
    DTCCheckBoxRepnblRedes: TDTCCheckBox;
    DTCCheckBoxReif: TDTCCheckBox;
    DTCCheckBoxOlimpiadas: TDTCCheckBox;
    TabSheetN615: TDTCTabSheet;
    GroupBoxRegistroN615: TDTCGroupBox;
    LabelIncentFINOR: TDTCLabel;
    LabelIncentFINAM: TDTCLabel;
    LabelIncentFUNRES: TDTCLabel;
    LabelPeriodoTributacaoN615: TDTCLabel;
    DTCCurrencyEditInecntFUNRES: TDTCCurrencyEdit;
    DTCCurrencyEditIncentFINAM: TDTCCurrencyEdit;
    DTCCurrencyEditIncentFINOR: TDTCCurrencyEdit;
    DTCComboBoxPeriodosTributacaoN615: TDTCComboBox;
    BitBtnDTCGravaIncentFiscal: TBitBtnDTC;
    TabSheetY570: TDTCTabSheet;
    GroupBoxY570: TGroupBox;
    RadioGroupSistemaY570: TRadioGroup;
    GroupBoxCodigoRecolhimentoY570: TGroupBox;
    LabelImpostoDeRendaY570: TLabel;
    LabelContribSocialY570: TLabel;
    DTCCurrencyEdit_IR_Y570: TDTCCurrencyEdit;
    DTCJvDBLookupCombo_IR_Y570: TDTCJvDBLookupCombo;
    DtcBitBtnPesquisa_IR_Y570: TDtcBitBtnPesquisa;
    DTCCurrencyEdit_CSLL_Y570: TDTCCurrencyEdit;
    DTCJvDBLookupCombo_CSLL_Y570: TDTCJvDBLookupCombo;
    DtcBitBtnPesquisa_CSLL_Y570: TDtcBitBtnPesquisa;
    procedure BitBtnDTCGravaIncentFiscalClick(Sender: TObject);
    procedure DTCComboBoxPeriodosTributacaoN615Change(Sender: TObject);
    procedure SpinEditExercicioChange(Sender: TObject);
    procedure CheckBoxSomenteComAssociacaoClick(Sender: TObject);
    procedure DTCCurrencyEdit_CSLL_Y570Exit(Sender: TObject);
    procedure DTCCurrencyEdit_CSLL_Y570KeyPress(Sender: TObject; var Key: Char);
    procedure DTCCurrencyEdit_IR_Y570Exit(Sender: TObject);
    procedure DTCCurrencyEdit_IR_Y570KeyPress(Sender: TObject; var Key: Char);
    procedure DTCJvDBLookupCombo_CSLL_Y570Change(Sender: TObject);
    procedure DTCJvDBLookupCombo_IR_Y570Change(Sender: TObject);
    procedure RadioGroupRegimeCaixaCompetenciaClick(Sender: TObject);
    procedure RadioGroupSistemaY570Click(Sender: TObject);
  private
  { Fields }
    FAcaoConfiguracoesSPED_ECF : TAcaoConfiguracoesSPED_ECF;
    FCodigoRecolhimentoDigitado : Boolean;
    FAcaoPlanoReferencial: TAcaoPlanoReferencial;
    FAcaoPercentApuracaoIncentFiscais: TAcaoPercentApuracaoIncentFiscais;
    FAcaoReceitas: TAcaoReceitas;
    FAlterouInformacoesGerais: Boolean;

    FEntidadeInformacoesGeraisSpedEcf: TEntidadeInformacoesGeraisSpedEcf;
    FValidouRegimeApuracao : Boolean;
    FWinLivrosNaBase: Boolean;
    FAnoN615: Integer;

  { Getters / Setters }
    function GetEntidadeInformacoesGeraisSpedEcf: TEntidadeInformacoesGeraisSpedEcf;
    function GetFormaEscrituracaoContabil: Boolean;
    function RetornaOpcaoRegimeApuracao: Integer;
    function RegimeApuracaoCaixa: Boolean;
    procedure EventoHelpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure CriarBotoesHelpRegistro0021;

    procedure FiltrarRegistros;
    /// <summary> Questiona o usuário se ele deseja sair mesmo havendo alterações na tela </summary>
    /// <param name="ASender"> Instância do objeto </param>
    /// <param name="CanClose"> Variável que controle para sabe se pode fechar o form </param>
    procedure OnPodeFecharTela(ASender: TObject; var CanClose: Boolean);

  { Components events }
    // *** Componentes do Form
    /// <summary> Evento disparado ao trocar a forma de apuração o IRPJ e da CSLL </summary>
    /// <param name="ASender"> Instância do objeto </param>
    procedure OnAlterarApuracaoIrpjCsll(ASender: TObject);
    /// <summary> Evento disparado no click do botão confirmar. </summary>
    /// <param name="ASender"> Instância do objeto </param>
    procedure OnConfirmar(ASender: TObject);


    procedure ValidaCodigoRecolhimentoY570(ATipoCodRecolhimentoY570: TTipoCodRecolhimentoY570);

    /// <summary> Aplica a validação dos parâmetros do registro 0020 nos componentes da tela </summary>
    procedure AplicarValidacaoDosParametrosDoRegistro0020;
    /// <summary> Carrega as combos na aba informações gerais </summary>
    procedure CarregarCombosInformacoesGerais;

    procedure ConfigurarCombosReceita;

    procedure ConfigurarOpcoesSistemaOrigemY570;

    procedure CarregarCodigoReceitaY570;

    /// <summary> Carrega as configurações gerais do SPED ECF </summary>
    procedure CarregarInformacoesGerais;
    /// <summary> Carrega os percentuais de incentivo do registro N615 </summary>
    procedure CarregaPercentuaisIncentivoRegistroN615;
    /// <summary> Carrega os períodos do incentivos fiscais do registro N615 </summary>
    procedure CarregarPeriodosIncentivosFiscaisRegistroN615;
    /// <summary> Confirgura os componentes referentes a aliquota da CSLL </summary>
    procedure ConfigurarPjAliquotaCSLL;
    /// <summary> Atribuí o ponteiro do método "OnDefinirRegistrosHabilitados" aos evento OnChange e OnClick dos componentes da aba informações gerais </summary>

    /// <summary> Obtem os dados da tela e seta na entidade "EntidadeInformacoesGeraisSpedEcf" </summary>
    procedure DefinirInformacoesGeraisSpedEcfNaEntidade(ASalvando: Boolean = False);
    /// <summary> Deixa somente a aba Informações gerais vísivel </summary>
    procedure DeixarSomenteAbaNegocioPrincipalVisivel;
    /// <summary> Insere os percentuais de incentivo do registro N615 </summary>
    procedure InserirPercentuaisIncentivoRegistroN615;
  { Properties }
    /// <summary> Instância da entidade que contem as informações de configuração geral do SPED ECF </summary>
    property EntidadeInformacoesGeraisSpedEcf: TEntidadeInformacoesGeraisSpedEcf read GetEntidadeInformacoesGeraisSpedEcf;
    /// <summary> Retorna verdadeiro se a forma de escrituração for contábil </summary>
    property FormaEscrituracaoContabil: Boolean read GetFormaEscrituracaoContabil;

    const
      cConstTextoPesquisaRegistros = 'Digite o Código ou Descrição para localizar (CTRL + L)';
  protected
  { Methods (Override) }
    function CondicaoCarregarRegistros: Boolean; override;
    function RetornaImagemIndexBloco: Integer; override;
    procedure DoShow; override;
    class function RetornaTipoAssociacaoDinamica: TTipoNegocioAssociacaoContas; override;
    function RetornaAnoExercicio: Numerico; override;
    function RetornaTipoGrupoAssociacoesContasSet: TTipoBlocoTabelaAssociacaoDinamicaContasSet; override;
    function PermitirSelecaoMesmaContaItensDiferentes: Boolean; override;
    procedure DefinirRegistrosHabilitados; override;
    procedure DefinirEventoDosComponentes; override;
    procedure OnDefinirRegistrosHabilitados(ASender: TObject); override;
    procedure CriarCamposAdicionaisArvore; override;
    procedure OnClicarItensArvore(ASender: TObject); override;
    function RetornaFiltroAdicional: IFiltro; override;
  public
  { Constructor / Destructor }
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

  end;

implementation

uses
  uSystemUtils, uVariantManipulacao, uDtcForms, uAcaoAmbienteSistema, uDtcConsts, uConstantesPlanoContas, uAcaoFiscalConfiguracoes,
  uAcaoConexaoBancoDados, uAcaoAssociacaoDinamicaPlanoContas;

{$R *.dfm}

{ TFormConfiguracoesSPED_ECF }

procedure TFormConfiguracoesSPED_ECF.AfterConstruction;
begin
  FWinLivrosNaBase := TAcaoConexaoBancoDados.SistemaIntegradoNaBase(SiglaWL);

  FAcaoConfiguracoesSPED_ECF        := TFactoryAcao.CreateObjeto<TAcaoConfiguracoesSPED_ECF>;
  FAcaoPlanoReferencial             := TFactoryAcao.CreateObjeto<TAcaoPlanoReferencial>;
  FAcaoPercentApuracaoIncentFiscais := TFactoryAcao.CreateObjeto<TAcaoPercentApuracaoIncentFiscais>;
  FAcaoReceitas                     := TFactoryAcao.CreateObjeto<TAcaoReceitas>;

  CarregarCombosInformacoesGerais;
  CarregarInformacoesGerais;
  ConfigurarCombosReceita;

  inherited;

  IdControleAcesso := '{2A0CE7EB-3A48-4BEF-A107-EB5D8FE8B1CA}';
  AplicarValidacaoDosParametrosDoRegistro0020;

  FAnoN615 := 0;
  BitBtnConfirma.Visible := true;

  BitBtnDTCRestaurarAssociacoesPadrao.Parent         := PanelBotoesAssociacoes;
  BitBtnDTCLimparAssociacoes.Parent                  := BitBtnDTCRestaurarAssociacoesPadrao.Parent;
  BitBtnDTCRestaurarAssociacoesPadrao.Margins.Top    := 5;
  BitBtnDTCLimparAssociacoes.Margins.Top             := 5;
  BitBtnDTCRestaurarAssociacoesPadrao.Margins.Bottom := 5;
  BitBtnDTCLimparAssociacoes.Margins.Bottom          := 5;

  FValidouRegimeApuracao := False;
  FCodigoRecolhimentoDigitado := False;
  FEntidadeInformacoesGeraisSpedEcf := nil;
  ScrollBoxDados.VertScrollBar.Position := 0;


  ConfigurarOpcoesSistemaOrigemY570;

  CriarBotoesHelpRegistro0021;

  HelpContext := 312151;
end;

procedure TFormConfiguracoesSPED_ECF.AplicarValidacaoDosParametrosDoRegistro0020;
var
  vHabilitarControle: Boolean;
  vFormaEscrituracaoAtual: TFormaEscrituracaoSpedEcf;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IMUNE_ISENTA_DESOBRIGADA </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IMUNE_ISENTA_DESOBRIGADA;
  begin
    vHabilitarControle := not((EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]) and
                              (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ApuracaoIrpjCsll = aicseDesobrigada));

    LabelPjSujeitoAliqCSLL.Enabled := vHabilitarControle;
    DTCComboBoxPjSujeitoAliqCSLL.Enabled := vHabilitarControle;
    DTCCheckBoxPJSujAliq15.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCComboBoxPjSujeitoAliqCSLL.ItemIndex := 0;
      DTCCheckBoxPJSujAliq15.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_ADM_FUN_CLU </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_ADM_FUN_CLU;
  begin
    vHabilitarControle := (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao = ftseImune) and
                          (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.TipoDeEntidade in [teseEntidadeFechadaPrevCompl,
                                                                                                    teseAssociacaoPoupancaEmprestimo,
                                                                                                    teseteseEntidadeAbertaPrevComplSemFinsLucr]);

    DTCCheckBoxAdministradoraFundos.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxAdministradoraFundos.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_OP_VINC </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_OP_VINC;
  begin
    DTCCheckBoxOperacoesExteriorPessoaVinculada.Enabled := DTCCheckBoxOperacoesComExterior.Checked;
    if not DTCCheckBoxOperacoesExteriorPessoaVinculada.Enabled then
    begin
      DTCCheckBoxOperacoesExteriorPessoaVinculada.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_PART_EXT </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_PART_EXT;
  begin
    vHabilitarControle := not((EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]) or
                              ((EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftsePresumido, ftsePresumidoArbitrado]) and not DTCCheckBoxOptanteRefis.Checked));

    DTCCheckBoxParticipacoesExterior.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxParticipacoesExterior.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_ATIV_RURA </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_ATIV_RURAL;
  begin
    vHabilitarControle := not(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica in [qpjsePJComponenteSistemaFinanceiro,
                                                                                                                   qpjseSociedadeSeguradora]);

    DTCCheckBoxAtividadeRural.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxAtividadeRural.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_LUC_EXP </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_LUC_EXP;
  begin
    vHabilitarControle := (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica in [qpjsePJEmGeral]) and
                          (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseReal, ftseRealArbitrado, ftsePresumidoReal, ftsePresumidoRealArbitrado]);

    DTCCheckBoxLucroExploracao.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxLucroExploracao.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_RED_ISEN </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_RED_ISEN;
  begin
    vHabilitarControle := (DTCCheckBoxOptanteRefis.Checked) and
                          (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica = qpjsePJEmGeral) and
                          (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftsePresumido, ftsePresumidoArbitrado]);

    DTCCheckBoxIsencaoImposto.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxIsencaoImposto.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IND_FIN </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IND_FIN;
  begin
    vHabilitarControle := (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseReal, ftseRealArbitrado, ftsePresumidoReal, ftsePresumidoRealArbitrado]);

    DTCCheckBoxFinorFinamFures.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxFinorFinamFures.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IMUNE_ISENTA_REGRA_PREENCHIMENTO_PJ </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IMUNE_ISENTA_REGRA_PREENCHIMENTO_PJ;
  begin
    vHabilitarControle := not(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]) and
                          (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica = qpjsePJEmGeral);

    DTCCheckBoxPJVendasFimExportacao.Enabled := vHabilitarControle;
    DTCCheckBoxPJComExportadora.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxPJVendasFimExportacao.Checked := False;
      DTCCheckBoxPJComExportadora.Checked := False;
    end;
  end;
  /// <summary> Aplica as regras REGRA_PREENCHIMENTO_ATIV_13 e REGRA_PREENCHIMENTO_PJ </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_ATIV_13_REGRA_PREENCHIMENTO_PJ;
  begin
    vHabilitarControle := not(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.TipoDeEntidade = teseFifaEntidadesRelacionadas) and
                          (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica = qpjsePJEmGeral);

    DTCCheckBoxAtivosNoExterior.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxAtivosNoExterior.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_ATIV_13 </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_ATIV_13;
  begin
    vHabilitarControle := not(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.TipoDeEntidade = teseFifaEntidadesRelacionadas);

    DTCCheckBoxParticipacaoConsorcioEmpresa.Enabled := vHabilitarControle;
    DTCCheckBoxParticEquivPatrimonial.Enabled := vHabilitarControle;
    DTCCheckBoxRecebExteriorNaoResid.Enabled := vHabilitarControle;
    DTCCheckBoxPagtoExteriorNaoResid.Enabled := vHabilitarControle;
    DTCCheckBoxComercioEletronico.Enabled := vHabilitarControle;
    DTCCheckBoxRoyaltiesRecebidos.Enabled := vHabilitarControle;
    DTCCheckBoxRoyaltiesPagosBeneficiarios.Enabled := vHabilitarControle;
    DTCCheckBoxRendimentosServicos.Enabled := vHabilitarControle;
    DTCCheckBoxPagamentosServicos.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxParticipacaoConsorcioEmpresa.Checked := False;
      DTCCheckBoxParticEquivPatrimonial.Checked := False;
      DTCCheckBoxRecebExteriorNaoResid.Checked := False;
      DTCCheckBoxPagtoExteriorNaoResid.Checked := False;
      DTCCheckBoxComercioEletronico.Checked := False;
      DTCCheckBoxRoyaltiesRecebidos.Checked := False;
      DTCCheckBoxRoyaltiesPagosBeneficiarios.Checked := False;
      DTCCheckBoxRendimentosServicos.Checked := False;
      DTCCheckBoxPagamentosServicos.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHIMENTO_IMUNE_ISENTA </summary>
  procedure DesabilitarControlesREGRA_PREENCHIMENTO_IMUNE_ISENTA;
  begin
    vHabilitarControle := not(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]);

    DTCCheckBoxOperacoesComExterior.Enabled := vHabilitarControle;
    DTCCheckBoxInovacaoTecnologica.Enabled := vHabilitarControle;
    DTCCheckBoxCapacitacaoInformatica.Enabled := vHabilitarControle;
    DTCCheckBoxPJRepesRecap.Enabled := vHabilitarControle;
    DTCCheckBoxPoloIndustrial.Enabled := vHabilitarControle;
    DTCCheckBoxZonaProcessExportacao.Enabled := vHabilitarControle;
    DTCCheckBoxAreaLivreComercio.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCCheckBoxOperacoesComExterior.Checked := False;
      DTCCheckBoxInovacaoTecnologica.Checked := False;
      DTCCheckBoxCapacitacaoInformatica.Checked := False;
      DTCCheckBoxPJRepesRecap.Checked := False;
      DTCCheckBoxPoloIndustrial.Checked := False;
      DTCCheckBoxZonaProcessExportacao.Checked := False;
      DTCCheckBoxAreaLivreComercio.Checked := False;
    end;
  end;
  /// <summary> Aplica a regra REGRA_COD_QUALIF_PJ </summary>
  procedure DesabilitarControlesREGRA_COD_QUALIF_PJ;
  begin
    vHabilitarControle := not(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]);

    DTCComboBoxQualificacaoPessoaJuridica.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCComboBoxQualificacaoPessoaJuridica.ItemIndex := DTCComboBoxQualificacaoPessoaJuridica.Values.IndexOf(TEnumeradoValores.Valor<TQualificacaoPessoaJuridicaSpedEcf>(qpjseNaoSeAplica));
    end;
  end;
  /// <summary> Aplica a regra REGRA_NAO_PREENCHER_IMUNE </summary>
  procedure DesabilitarControlesREGRA_NAO_PREENCHER_IMUNE;
  begin
    vHabilitarControle := (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]);

    DTCComboBoxTipoEntidade.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCComboBoxTipoEntidade.ItemIndex := DTCComboBoxTipoEntidade.Values.IndexOf(TEnumeradoValores.Valor<TTipoEntidadeSpedEcf>(teseNaoSeAplica));
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHER_TIP_ESC </summary>
  procedure DesabilitarControlesREGRA_PREENCHER_TIP_ESC;
  begin
    vHabilitarControle := False;

    vHabilitarControle := (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftsePresumidoReal, ftsePresumidoRealArbitrado, ftsePresumido,
                                                                                                     ftsePresumidoArbitrado, ftseImune, ftseIsenta]);

    DTCComboBoxFormaDeEscrituracao.Enabled := vHabilitarControle;

    if not vHabilitarControle then
    begin
      DTCComboBoxFormaDeEscrituracao.ItemIndex := DTCComboBoxFormaDeEscrituracao.Values.IndexOf(TEnumeradoValores.Valor<TFormaEscrituracaoSpedEcf>(feseNaoMarcado));
    end;
  end;
  /// <summary> Aplica a regra REGRA_PREENCHER_IMUNE </summary>
  procedure DesabilitarControlesREGRA_PREENCHER_IMUNE;
  begin
    vHabilitarControle := (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftseImune, ftseIsenta]);

    DTCComboBoxTipoEntidade.Enabled := vHabilitarControle;
    if not vHabilitarControle then
    begin
      DTCComboBoxTipoEntidade.ItemIndex := DTCComboBoxTipoEntidade.Values.IndexOf(TEnumeradoValores.Valor<TTipoEntidadeSpedEcf>(teseNaoSeAplica));
    end;
  end;

  procedure DesabilitarControlesREGRA_FORMA_APURACAO_LUCRO_PRESUMIDO;
  begin
    vHabilitarControle := not (EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao in [ftsePresumido, ftsePresumidoReal]);

    DTCComboBoxApuracaoIRPJ_CSLL.Enabled := vHabilitarControle;

    if not DTCComboBoxApuracaoIRPJ_CSLL.Enabled then
      DTCComboBoxApuracaoIRPJ_CSLL.ItemIndex := DTCComboBoxApuracaoIRPJ_CSLL.Values.IndexOf(TEnumeradoValores.Valor<TApuracaoIrpjCsllSpedEcf>(aicseTrimestral));

    RadioGroupRegimeCaixaCompetencia.Enabled := not vHabilitarControle;
    RadioGroupRegimeCaixaCompetencia.Update;
  end;

  procedure DesabilitarControlesREGRA_IND_PJ_HAB;
  var
    vInd: Integer;
  begin
    for vInd := 0 to (GroupBoxReg0021.ControlCount - 1) do
    begin
      if GroupBoxReg0021.Controls[vInd] is TDTCCheckBox then
      begin
        (GroupBoxReg0021.Controls[vInd] as TDTCCheckBox).Enabled := DTCCheckBoxPJRepesRecap.Checked;
        GroupBoxReg0021.Update;
      end;
    end;
  end;

begin
  vFormaEscrituracaoAtual := EntidadeInformacoesGeraisSpedEcf.Configuracoes.FormaEscrituracao;

  DefinirInformacoesGeraisSpedEcfNaEntidade;

  // Se trocou a forma de escrituração limpa o ultimo registro habilitado para poder carregá-lo novamente
  if vFormaEscrituracaoAtual <> EntidadeInformacoesGeraisSpedEcf.Configuracoes.FormaEscrituracao then
  begin
    FItemArvoreSelecionado := rseNenhum;
  end;

  vHabilitarControle := False;

  DesabilitarControlesREGRA_PREENCHIMENTO_IMUNE_ISENTA_DESOBRIGADA;
  DesabilitarControlesREGRA_PREENCHIMENTO_IND_ADM_FUN_CLU;
  DesabilitarControlesREGRA_PREENCHIMENTO_IND_OP_VINC;
  DesabilitarControlesREGRA_PREENCHIMENTO_IND_PART_EXT;
  DesabilitarControlesREGRA_PREENCHIMENTO_IND_ATIV_RURAL;
  DesabilitarControlesREGRA_PREENCHIMENTO_IND_LUC_EXP;
  DesabilitarControlesREGRA_PREENCHIMENTO_IND_FIN;
  DesabilitarControlesREGRA_PREENCHIMENTO_IMUNE_ISENTA_REGRA_PREENCHIMENTO_PJ;
  DesabilitarControlesREGRA_PREENCHIMENTO_ATIV_13_REGRA_PREENCHIMENTO_PJ;
  DesabilitarControlesREGRA_PREENCHIMENTO_ATIV_13;
  DesabilitarControlesREGRA_PREENCHIMENTO_IMUNE_ISENTA;
  DesabilitarControlesREGRA_COD_QUALIF_PJ;
  DesabilitarControlesREGRA_NAO_PREENCHER_IMUNE;
  DesabilitarControlesREGRA_PREENCHER_TIP_ESC;
  DesabilitarControlesREGRA_PREENCHER_IMUNE;
  DesabilitarControlesREGRA_FORMA_APURACAO_LUCRO_PRESUMIDO;
  DesabilitarControlesREGRA_IND_PJ_HAB;
end;

procedure TFormConfiguracoesSPED_ECF.BeforeDestruction;
begin
  TSystemUtils.FreeAndNilDtc(FAcaoPercentApuracaoIncentFiscais);
  TSystemUtils.FreeAndNilDtc(FAcaoPlanoReferencial);
  TSystemUtils.FreeAndNilDtc(FAcaoReceitas);
  TSystemUtils.FreeAndNilDtc(FAcaoConfiguracoesSPED_ECF);  
  inherited;
end;

procedure TFormConfiguracoesSPED_ECF.BitBtnDTCGravaIncentFiscalClick(Sender: TObject);
begin
  inherited;
  InserirPercentuaisIncentivoRegistroN615;
end;

procedure TFormConfiguracoesSPED_ECF.CarregaPercentuaisIncentivoRegistroN615;
var
  vEntidadeSPED_ECF_IncentFiscais: TEntidadeORMSPED_ECF_IncentFiscais;
begin
  vEntidadeSPED_ECF_IncentFiscais := nil;
  try
    vEntidadeSPED_ECF_IncentFiscais := FAcaoPercentApuracaoIncentFiscais.RetornaPercentuaisPeriodo(DTCComboBoxPeriodosTributacaoN615.ValueSelecionadoString);

    DTCCurrencyEditIncentFINOR.Value := vEntidadeSPED_ECF_IncentFiscais.PercentualFinor;
    DTCCurrencyEditIncentFINAM.Value := vEntidadeSPED_ECF_IncentFiscais.PercentualFinam;
    DTCCurrencyEditInecntFUNRES.Value := vEntidadeSPED_ECF_IncentFiscais.PercentualFunres;

    TDtcForms.Clicar(DTCCurrencyEditIncentFINOR.Handle);
  finally
    TSystemUtils.FreeAndNilDtc(vEntidadeSPED_ECF_IncentFiscais);
  end;
end;

procedure TFormConfiguracoesSPED_ECF.CarregarPeriodosIncentivosFiscaisRegistroN615;
var
  vApuracaoIrpjCsll: Enumerado<TApuracaoIrpjCsllSpedEcf>;
begin

  if TabSheetN615.TabVisible and (FAnoN615 <> SpinEditExercicio.Value) then
  begin
    FAnoN615 := SpinEditExercicio.Value;

    DTCCurrencyEditIncentFINOR.Clear;
    DTCCurrencyEditIncentFINAM.Clear;
    DTCCurrencyEditInecntFUNRES.Clear;

    if not vApuracaoIrpjCsll.TrySetValue(DTCComboBoxApuracaoIRPJ_CSLL.ValueSelecionadoString) then
    begin
      vApuracaoIrpjCsll := aicseTrimestral;
    end;
    FAcaoPercentApuracaoIncentFiscais.CarregarMemTableIncentFiscais(FAnoN615, vApuracaoIrpjCsll.DescricaoCurta);
    FAcaoPercentApuracaoIncentFiscais.CarregarComboIncentFiscais(DTCComboBoxPeriodosTributacaoN615.Items, DTCComboBoxPeriodosTributacaoN615.Values, vApuracaoIrpjCsll.DescricaoCurta);

    DTCComboBoxPeriodosTributacaoN615.IndiceItenIndex := 0;
  end;
end;

procedure TFormConfiguracoesSPED_ECF.ConfigurarPjAliquotaCSLL;
const
  cAnoReferencia = 2016;
begin
  DTCCheckBoxPJSujAliq15.Top  := LabelPjSujeitoAliqCSLL.Top;
  DTCCheckBoxPJSujAliq15.Left := LabelPjSujeitoAliqCSLL.Left;

  LabelPjSujeitoAliqCSLL.Visible       := SpinEditExercicio.Value >= cAnoReferencia;
  DTCComboBoxPjSujeitoAliqCSLL.Visible := LabelPjSujeitoAliqCSLL.Visible;
  DTCCheckBoxPJSujAliq15.Visible       := not LabelPjSujeitoAliqCSLL.Visible;
  FItemArvoreSelecionado               := rseNenhum;
end;

procedure TFormConfiguracoesSPED_ECF.CriarBotoesHelpRegistro0021;
var
  vInd: Integer;
  vImageHelp: TDTCImage;
  vCheckBox: TDTCCheckBox;
  vListaCheckBox: IList<TDTCCheckBox>;
begin
  vListaCheckBox := TCollections.CreateList<TDTCCheckBox>(False);

  for vInd := 0 to (GroupBoxReg0021.ControlCount - 1) do
  begin
    if GroupBoxReg0021.Controls[vInd] is TDTCCheckBox then
    begin
      vListaCheckBox.Add(GroupBoxReg0021.Controls[vInd] as TDTCCheckBox);
    end;
  end;

  for vCheckBox in vListaCheckBox do
  begin
    vImageHelp                   := TDTCImage.Create(GroupBoxReg0021);
    vImageHelp.Parent            := GroupBoxReg0021;
    vImageHelp.Height            := 17;
    vImageHelp.Width             := 17;
    vImageHelp.Left              := vCheckBox.Left - vImageHelp.Width - 2;
    vImageHelp.Top               := vCheckBox.Top;
    vImageHelp.ConstanteDeImagem := 'IMG_AJUDA_R16';
    vImageHelp.Campo             := vCheckBox.Caption;
    vImageHelp.hint              := vCheckBox.hint;
    vImageHelp.OnMouseDown       := EventoHelpMouseDown;
  end;
end;

procedure TFormConfiguracoesSPED_ECF.CriarCamposAdicionaisArvore;
var
  vCamposAdicionaisArvore: TCamposAdicionaisArvore;
  vNodeSpedEcf           : TTreeNode;
  vNodeInfoGerais        : TTreeNode;
begin
  inherited;
  DeixarSomenteAbaNegocioPrincipalVisivel;

  vCamposAdicionaisArvore                             := TCamposAdicionaisArvore.Create;
  vCamposAdicionaisArvore.NomeMenu                    := TEnumeradoValores.Valor<TTipoItemArvoreAssociacaoDinamicaContas>(tiacsSpedEcf);
  vCamposAdicionaisArvore.TipoItemArvoreAssociacaoDinamicaContas := tiacsSpedEcf;

  vNodeSpedEcf                    := TreeViewConfigGeral.Items.Add(nil, TEnumeradoDescricoes.Descricao<TTipoItemArvoreAssociacaoDinamicaContas>(tiacsSpedEcf));
  vNodeSpedEcf.ImageIndex         := 0;
  vNodeSpedEcf.SelectedIndex      := 0;
  vNodeSpedEcf.ExpandedImageIndex := 0;
  vNodeSpedEcf.Data               := vCamposAdicionaisArvore;

  // *** SPED ECF
  // ***   --> Informações gerais
  vCamposAdicionaisArvore                             := TCamposAdicionaisArvore.Create;
  vCamposAdicionaisArvore.NomeMenu                    := TEnumeradoValores.Valor<TTipoItemArvoreAssociacaoDinamicaContas>(tiacsInformacoesGerais);
  vCamposAdicionaisArvore.TipoItemArvoreAssociacaoDinamicaContas := tiacsInformacoesGerais;

  vNodeInfoGerais                     := TreeViewConfigGeral.Items.AddChild(vNodeSpedEcf, TEnumeradoDescricoes.Descricao<TTipoItemArvoreAssociacaoDinamicaContas>(tiacsInformacoesGerais));
  vNodeInfoGerais.ImageIndex          := 1;
  vNodeInfoGerais.ExpandedImageIndex  := 1;
  vNodeInfoGerais.SelectedIndex       := 1;
  vNodeInfoGerais.Data                := vCamposAdicionaisArvore;
end;

procedure TFormConfiguracoesSPED_ECF.CarregarCodigoReceitaY570;
begin
  if not FWinLivrosNaBase then
  begin
    RadioGroupSistemaY570.ItemIndex := Ord(soY570_CW);
    RadioGroupSistemaY570.Enabled   := False;
  end
  else
  begin
    RadioGroupSistemaY570.ItemIndex := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.SistemaOrigemY570.Ord;
  end;

  DTCCurrencyEdit_IR_Y570.Text := FAcaoReceitas.RetornaCodigoReceitaFormatado(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Y570ReceitaIR.ToInteger);

  if not TVariantManipulacao.Vazio(DTCCurrencyEdit_IR_Y570.Text) then
  begin
    FCodigoRecolhimentoDigitado := True;
    DTCCurrencyEdit_IR_Y570Exit(SELF);
  end;

  DTCCurrencyEdit_CSLL_Y570.Text := FAcaoReceitas.RetornaCodigoReceitaFormatado(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Y570ReceitaCSLL.ToInteger);

  if not TVariantManipulacao.Vazio(DTCCurrencyEdit_CSLL_Y570.Text) then
  begin
    FCodigoRecolhimentoDigitado := True;
    DTCCurrencyEdit_CSLL_Y570Exit(SELF);
  end;

  FCodigoRecolhimentoDigitado := False;
end;

procedure TFormConfiguracoesSPED_ECF.CarregarCombosInformacoesGerais;
  /// <summary> Carrega a combo de aliquotas de CSLL </summary>
  procedure CarregarComboAliquotasPjCSLL;
  begin
    TEnumeradoValores.Valores<TAliquotasPjCSLL>(DTCComboBoxPjSujeitoAliqCSLL.Values);
    TEnumeradoDescricoes.Descricoes<TAliquotasPjCSLL>(DTCComboBoxPjSujeitoAliqCSLL.Items);
  end;
  /// <summary> Carrega a combo com as formas de tributação </summary>
  procedure CarregarComboFormaTributacao;
  var
    vFormaTributacao: TFormaTributacaoSpedEcf;
  begin
    TEnumeradoValores.Valores<TFormaTributacaoSpedEcf>(DTCComboBoxFormaTributacao.Values);
    TEnumeradoDescricoes.Descricoes<TFormaTributacaoSpedEcf>(DTCComboBoxFormaTributacao.Items);
    // Remove os que não são para exportar
    for vFormaTributacao := Low(TFormaTributacaoSpedEcf) to High(TFormaTributacaoSpedEcf) do
    begin
      if vFormaTributacao in cFormaTributacaoSpedEcfNaoExportar then
      begin
        TEnumeradoValores.Remover<TFormaTributacaoSpedEcf>(DTCComboBoxFormaTributacao.Values, vFormaTributacao);
        TEnumeradoDescricoes.Remover<TFormaTributacaoSpedEcf>(DTCComboBoxFormaTributacao.Items, vFormaTributacao);
      end;
    end;
  end;
  /// <summary> Carrega a combo de apuração do IRPJ e CSLL </summary>
  procedure CarregarComboApuracaoIrpjCsll;
  var
    vApuracaoIrpjCsll: TApuracaoIrpjCsllSpedEcf;
  begin
    TEnumeradoValores.Valores<TApuracaoIrpjCsllSpedEcf>(DTCComboBoxApuracaoIRPJ_CSLL.Values);
    TEnumeradoDescricoes.Descricoes<TApuracaoIrpjCsllSpedEcf>(DTCComboBoxApuracaoIRPJ_CSLL.Items);
    // Remove os que não são para exportar
    for vApuracaoIrpjCsll := Low(TApuracaoIrpjCsllSpedEcf) to High(TApuracaoIrpjCsllSpedEcf) do
    begin
      if vApuracaoIrpjCsll in cApuracaoIrpjCsllNaoExportar then
      begin
        TEnumeradoValores.Remover<TApuracaoIrpjCsllSpedEcf>(DTCComboBoxApuracaoIRPJ_CSLL.Values, vApuracaoIrpjCsll);
        TEnumeradoDescricoes.Remover<TApuracaoIrpjCsllSpedEcf>(DTCComboBoxApuracaoIRPJ_CSLL.Items, vApuracaoIrpjCsll);
      end;
    end;
  end;
  /// <summary> Carrega a combo de quilificação de pessoa jurídica </summary>
  procedure CarregarComboQualificacaoPessoaJuridica;
  var
    vQualificacaoPessoaJuridica: TQualificacaoPessoaJuridicaSpedEcf;
  begin
    TEnumeradoValores.Valores<TQualificacaoPessoaJuridicaSpedEcf>(DTCComboBoxQualificacaoPessoaJuridica.Values);
    TEnumeradoDescricoes.Descricoes<TQualificacaoPessoaJuridicaSpedEcf>(DTCComboBoxQualificacaoPessoaJuridica.Items);
    // Remove os que não são para exportar
    for vQualificacaoPessoaJuridica := Low(TQualificacaoPessoaJuridicaSpedEcf) to High(TQualificacaoPessoaJuridicaSpedEcf) do
    begin
      if vQualificacaoPessoaJuridica in cQualificacaoPJNaoExportar then
      begin
        TEnumeradoValores.Remover<TQualificacaoPessoaJuridicaSpedEcf>(DTCComboBoxQualificacaoPessoaJuridica.Values, vQualificacaoPessoaJuridica);
        TEnumeradoDescricoes.Remover<TQualificacaoPessoaJuridicaSpedEcf>(DTCComboBoxQualificacaoPessoaJuridica.Items, vQualificacaoPessoaJuridica);
      end;
    end;
  end;
  /// <summary> Carrega a combo dos tipos de entidade </summary>
  procedure CarregarComboTipoEntidade;
  var
    vTipoEntidade: TTipoEntidadeSpedEcf;
  begin
    TEnumeradoValores.Valores<TTipoEntidadeSpedEcf>(DTCComboBoxTipoEntidade.Values);
    TEnumeradoDescricoes.Descricoes<TTipoEntidadeSpedEcf>(DTCComboBoxTipoEntidade.Items);
    // Remove os que não são para exportar
    for vTipoEntidade := Low(TTipoEntidadeSpedEcf) to High(TTipoEntidadeSpedEcf) do
    begin
      if vTipoEntidade in cTiposEntidadeNaoExportar then
      begin
        TEnumeradoValores.Remover<TTipoEntidadeSpedEcf>(DTCComboBoxTipoEntidade.Values, vTipoEntidade);
        TEnumeradoDescricoes.Remover<TTipoEntidadeSpedEcf>(DTCComboBoxTipoEntidade.Items, vTipoEntidade);
      end;
    end;
  end;
  /// <summary> Carrega a combo dos tipos de entidade </summary>
  procedure CarregarComboFormaEscrituracao;
  begin
    TEnumeradoValores.Valores<TFormaEscrituracaoSpedEcf>(DTCComboBoxFormaDeEscrituracao.Values);
    TEnumeradoDescricoes.Descricoes<TFormaEscrituracaoSpedEcf>(DTCComboBoxFormaDeEscrituracao.Items);
  end;

begin
  CarregarComboFormaTributacao;
  CarregarComboApuracaoIrpjCsll;
  CarregarComboQualificacaoPessoaJuridica;
  CarregarComboTipoEntidade;
  CarregarComboFormaEscrituracao;
  CarregarComboAliquotasPjCSLL;
end;

function TFormConfiguracoesSPED_ECF.CondicaoCarregarRegistros: Boolean;
begin
  result := not (FTipoItemArvoreAssociacaoDinamicaContas in [tiacsInformacoesGerais, tiacsSpedEcf]);
end;

procedure TFormConfiguracoesSPED_ECF.ConfigurarCombosReceita;
begin
  DTCJvDBLookupCombo_IR_Y570.LookupSource   := FAcaoReceitas.RetornaDataSoureConsulta;
  DTCJvDBLookupCombo_CSLL_Y570.LookupSource := FAcaoReceitas.RetornaDataSoureConsulta;
end;

procedure TFormConfiguracoesSPED_ECF.ConfigurarOpcoesSistemaOrigemY570;
begin
  RadioGroupSistemaY570.Items.Clear;
  RadioGroupSistemaY570.Items.Add(FAcaoConfiguracoesSPED_ECF.RetornaNomeSistema(TEnumeradoValores.Valor<TSistemaOrigemY570>(soY570_CW)));
  RadioGroupSistemaY570.Items.Add(FAcaoConfiguracoesSPED_ECF.RetornaNomeSistema(TEnumeradoValores.Valor<TSistemaOrigemY570>(soY570_WL)));
  RadioGroupSistemaY570.ItemIndex := Ord(soY570_CW);
end;

procedure TFormConfiguracoesSPED_ECF.CarregarInformacoesGerais;
begin
  SpinEditExercicio.MinValue := TAnosVersoesSpedECF.AnoExercicioAnterior;
  SpinEditExercicio.MaxValue := TAnosVersoesSpedECF.AnoExercicioAtual;
  SpinEditExercicio.Value := TAnosVersoesSpedECF.AnoExercicioAtual;

  DTCComboBoxFormaDeEscrituracao.ItemIndex            := DTCComboBoxFormaDeEscrituracao.Values.IndexOf(EntidadeInformacoesGeraisSpedEcf.Configuracoes.FormaEscrituracao.Valor);

  DTCComboBoxPjSujeitoAliqCSLL.ItemIndex              := DTCComboBoxPjSujeitoAliqCSLL.Values.IndexOf(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.CodigoAliqPjCSLL.valor);
  DTCComboBoxFormaTributacao.ItemIndex                := DTCComboBoxFormaTributacao.Values.IndexOf(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao.Valor);
  DTCComboBoxApuracaoIRPJ_CSLL.ItemIndex              := DTCComboBoxApuracaoIRPJ_CSLL.Values.IndexOf(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ApuracaoIrpjCsll.Valor);
  DTCComboBoxQualificacaoPessoaJuridica.ItemIndex     := DTCComboBoxQualificacaoPessoaJuridica.Values.IndexOf(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica.Valor);
  DTCComboBoxTipoEntidade.ItemIndex                   := DTCComboBoxTipoEntidade.Values.IndexOf(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.TipoDeEntidade.Valor);

  DTCCheckBoxZonaProcessExportacao.Checked            := EntidadeInformacoesGeraisSpedEcf.Configuracoes.ZonaProcessamentoExportacao.ToBoolean;
  DTCCheckBoxAreaLivreComercio.Checked                := EntidadeInformacoesGeraisSpedEcf.Configuracoes.AreaLivreComercio.ToBoolean;
  DTCCheckBoxParticipacaoConsorcioEmpresa.Checked     := EntidadeInformacoesGeraisSpedEcf.Configuracoes.ParticipaConsorcioEmpresa.ToBoolean;

  DTCCheckBoxAdministradoraFundos.Checked             := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.AdministradoraFundos.ToBoolean;
  DTCCheckBoxOperacoesComExterior.Checked             := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OperacoesExterior.ToBoolean;
  DTCCheckBoxOperacoesExteriorPessoaVinculada.Checked := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OperacaoTributacaoFavorecida.ToBoolean;
  DTCCheckBoxOptanteRefis.Checked                     := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OptanteRefis.ToBoolean;
  DTCCheckBoxOptantePaes.Checked                      := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OptantePaes.ToBoolean;
  DTCCheckBoxAtivosNoExterior.Checked                 := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.AtivosNoExterior.ToBoolean;
  DTCCheckBoxParticipacoesExterior.Checked            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ParticipacoesNoExterior.ToBoolean;
  DTCCheckBoxDoacoes.Checked                          := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.DoacoesEleitorais.ToBoolean;
  DTCCheckBoxIsencaoImposto.Checked                   := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.IsencaoReducaoImposto.ToBoolean;
  DTCCheckBoxFinorFinamFures.Checked                  := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FinorFinanFunres.ToBoolean;
  DTCCheckBoxLucroExploracao.Checked                  := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.LucroExploracao.ToBoolean;
  DTCCheckBoxPagamentosServicos.Checked               := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.PagamentosRemessaServicos.ToBoolean;
  DTCCheckBoxRendimentosServicos.Checked              := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.RendimentosServicos.ToBoolean;
  DTCCheckBoxRoyaltiesPagosBeneficiarios.Checked      := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.RoyaltiesPagos.ToBoolean;
  DTCCheckBoxRoyaltiesRecebidos.Checked               := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.RoyaltiesRecebidos.ToBoolean;
  DTCCheckBoxComercioEletronico.Checked               := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ComercioEletronico.ToBoolean;
  DTCCheckBoxInovacaoTecnologica.Checked              := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.InovacaoDesenvolvimentoTecnologico.ToBoolean;
  DTCCheckBoxPoloIndustrial.Checked                   := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.PoloIndustrialManaus.ToBoolean;
  DTCCheckBoxCapacitacaoInformatica.Checked           := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.CapacitacaoTecnologica.ToBoolean;
  DTCCheckBoxPJRepesRecap.Checked                     := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.PessoaJuridicaHabilitadaRepesRecap.ToBoolean;

  DTCCheckBoxPJSujAliq15.Checked                      := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaAliquotaCSLL15.ToBoolean;
  DTCCheckBoxPJArtigos48ou49.Checked                  := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaArtigo48_49RFB.ToBoolean;
  DTCCheckBoxParticEquivPatrimonial.Checked           := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.ParticipacaoEquivalenciaPatrimonial.ToBoolean;
  DTCCheckBoxPJVendasFimExportacao.Checked            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaVendasEmpresaComercialExportadora.ToBoolean;
  DTCCheckBoxRecebExteriorNaoResid.Checked            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.RecebimentoDoExteriorOuNaoResidentes.ToBoolean;
  DTCCheckBoxPagtoExteriorNaoResid.Checked            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PagamentoAoExteriorOuNaoResidentes.ToBoolean;
  DTCCheckBoxPJComExportadora.Checked                 := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaComercialExportadora.ToBoolean;
  DTCCheckBoxEntidadeGrupoMultinacional.Checked       := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.EntidadeGrupoMultinacional.ToBoolean;
  DTCCheckBoxDEREX.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Derex.ToBoolean;
  DTCCheckBoxRepes.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Repes.ToBoolean;
  DTCCheckBoxRecap.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Recap.ToBoolean;
  DTCCheckBoxPadis.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Padis.ToBoolean;
  DTCCheckBoxPatvd.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Patvd.ToBoolean;
  DTCCheckBoxReidi.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Reidi.ToBoolean;
  DTCCheckBoxRepenec.Checked                          := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Repenec.ToBoolean;
  DTCCheckBoxReicomp.Checked                          := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Reicomp.ToBoolean;
  DTCCheckBoxRetaero.Checked                          := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Retaero.ToBoolean;
  DTCCheckBoxRecine.Checked                           := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Recine.ToBoolean;
  DTCCheckBoxResiduosSolid.Checked                    := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.ResiduosSolid.ToBoolean;
  DTCCheckBoxRecopa.Checked                           := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Recopa.ToBoolean;
  DTCCheckBoxCopaDoMundo.Checked                      := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.CopaDoMundo.ToBoolean;
  DTCCheckBoxRetid.Checked                            := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Retid.ToBoolean;
  DTCCheckBoxRepnblRedes.Checked                      := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.RepnblRedes.ToBoolean;
  DTCCheckBoxReif.Checked                             := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Reif.ToBoolean;
  DTCCheckBoxOlimpiadas.Checked                       := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Olimpiadas.ToBoolean;

  DTCCheckBoxAtividadeRural.Checked                   := EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresasFiliais.ProdutorRural.ToBoolean;

  RadioGroupRegimeCaixaCompetencia.ItemIndex          := RetornaOpcaoRegimeApuracao;

  CarregarCodigoReceitaY570;
end;

procedure TFormConfiguracoesSPED_ECF.CheckBoxSomenteComAssociacaoClick(Sender:
    TObject);
begin
  inherited;
  FiltrarRegistros;
end;

procedure TFormConfiguracoesSPED_ECF.DefinirInformacoesGeraisSpedEcfNaEntidade(ASalvando: Boolean = False);
begin
  EntidadeInformacoesGeraisSpedEcf.Configuracoes.FormaEscrituracao.TrySetValue(DTCComboBoxFormaDeEscrituracao.ValueSelecionadoString);

  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FormaTributacao.TrySetValue(DTCComboBoxFormaTributacao.ValueSelecionadoString);
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ApuracaoIrpjCsll.TrySetValue(DTCComboBoxApuracaoIRPJ_CSLL.ValueSelecionadoString);
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.QualificacaoPessoaJurifica.TrySetValue(DTCComboBoxQualificacaoPessoaJuridica.ValueSelecionadoString);
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.TipoDeEntidade.TrySetValue(DTCComboBoxTipoEntidade.ValueSelecionadoString);
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.CodigoAliqPjCSLL.TrySetValue(DTCComboBoxPjSujeitoAliqCSLL.ValueSelecionadoString);

  EntidadeInformacoesGeraisSpedEcf.Configuracoes.ParticipaConsorcioEmpresa                                      := DTCCheckBoxParticipacaoConsorcioEmpresa.Checked;
  EntidadeInformacoesGeraisSpedEcf.Configuracoes.ZonaProcessamentoExportacao                                    := DTCCheckBoxZonaProcessExportacao.Checked;
  EntidadeInformacoesGeraisSpedEcf.Configuracoes.AreaLivreComercio                                              := DTCCheckBoxAreaLivreComercio.Checked;
  EntidadeInformacoesGeraisSpedEcf.Configuracoes.EmpresaID                                                      := FEmpresaID;

  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.AdministradoraFundos                                    := DTCCheckBoxAdministradoraFundos.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OperacoesExterior                                       := DTCCheckBoxOperacoesComExterior.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OperacaoTributacaoFavorecida                            := DTCCheckBoxOperacoesExteriorPessoaVinculada.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OptanteRefis                                            := DTCCheckBoxOptanteRefis.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OptantePaes                                             := DTCCheckBoxOptantePaes.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.AtivosNoExterior                                        := DTCCheckBoxAtivosNoExterior.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ParticipacoesNoExterior                                 := DTCCheckBoxParticipacoesExterior.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.DoacoesEleitorais                                       := DTCCheckBoxDoacoes.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.IsencaoReducaoImposto                                   := DTCCheckBoxIsencaoImposto.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.FinorFinanFunres                                        := DTCCheckBoxFinorFinamFures.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.LucroExploracao                                         := DTCCheckBoxLucroExploracao.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.PagamentosRemessaServicos                               := DTCCheckBoxPagamentosServicos.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.RendimentosServicos                                     := DTCCheckBoxRendimentosServicos.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.RoyaltiesPagos                                          := DTCCheckBoxRoyaltiesPagosBeneficiarios.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.RoyaltiesRecebidos                                      := DTCCheckBoxRoyaltiesRecebidos.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ComercioEletronico                                      := DTCCheckBoxComercioEletronico.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.InovacaoDesenvolvimentoTecnologico                      := DTCCheckBoxInovacaoTecnologica.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.PoloIndustrialManaus                                    := DTCCheckBoxPoloIndustrial.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.CapacitacaoTecnologica                                  := DTCCheckBoxCapacitacaoInformatica.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.PessoaJuridicaHabilitadaRepesRecap                      := DTCCheckBoxPJRepesRecap.Checked;

  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.EmpresaID                                       := FEmpresaID;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaAliquotaCSLL15                    := DTCCheckBoxPJSujAliq15.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaArtigo48_49RFB                    := DTCCheckBoxPJArtigos48ou49.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.ParticipacaoEquivalenciaPatrimonial             := DTCCheckBoxParticEquivPatrimonial.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaVendasEmpresaComercialExportadora := DTCCheckBoxPJVendasFimExportacao.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.RecebimentoDoExteriorOuNaoResidentes            := DTCCheckBoxRecebExteriorNaoResid.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PagamentoAoExteriorOuNaoResidentes              := DTCCheckBoxPagtoExteriorNaoResid.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.PessoaJuridicaComercialExportadora              := DTCCheckBoxPJComExportadora.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.EntidadeGrupoMultinacional                      := DTCCheckBoxEntidadeGrupoMultinacional.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Derex                                           := DTCCheckBoxDEREX.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Repes                                           := DTCCheckBoxRepes.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Recap                                           := DTCCheckBoxRecap.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Padis                                           := DTCCheckBoxPadis.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Patvd                                           := DTCCheckBoxPatvd.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Reidi                                           := DTCCheckBoxReidi.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Repenec                                         := DTCCheckBoxRepenec.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Reicomp                                         := DTCCheckBoxReicomp.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Retaero                                         := DTCCheckBoxRetaero.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Recine                                          := DTCCheckBoxRecine.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.ResiduosSolid                                   := DTCCheckBoxResiduosSolid.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Recopa                                          := DTCCheckBoxRecopa.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.CopaDoMundo                                     := DTCCheckBoxCopaDoMundo.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Retid                                           := DTCCheckBoxRetid.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.RepnblRedes                                     := DTCCheckBoxRepnblRedes.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Reif                                            := DTCCheckBoxReif.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Olimpiadas                                      := DTCCheckBoxOlimpiadas.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresasFiliais.ProdutorRural                                   := DTCCheckBoxAtividadeRural.Checked;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.SistemaOrigemY570                               := TsystemUtils.IifGeneric(RadioGroupSistemaY570.ItemIndex = Ord(soY570_CW), soY570_CW, soY570_WL);

  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Y570ReceitaCSLL := dtcNulo;
  if DTCCurrencyEdit_CSLL_Y570.Value > 0 then
    EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Y570ReceitaCSLL := FAcaoReceitas.RetornaIDReceita(DTCCurrencyEdit_CSLL_Y570.Value);

  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Y570ReceitaIR := dtcNulo;
  if DTCCurrencyEdit_IR_Y570.Value > 0 then
    EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresaContabil.Y570ReceitaIR := FAcaoReceitas.RetornaIDReceita(DTCCurrencyEdit_IR_Y570.Value);

  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesFiscal.IrlpRegimeCaixa := RegimeApuracaoCaixa;
  EntidadeInformacoesGeraisSpedEcf.ConfiguracoesFiscal.EfdConsolidado := RegimeApuracaoCaixa;

  if ASalvando and not FWinLivrosNaBase and EntidadeInformacoesGeraisSpedEcf.ConfiguracoesFiscal.IrlpRegimeCaixa.ToBoolean then
  begin
    EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ImpFedIRLP := True;
    EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ImpFedIRLR := not EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ImpFedIRLP.ToBoolean;
  end;
end;

procedure TFormConfiguracoesSPED_ECF.DefinirEventoDosComponentes;
begin
  inherited;
  // *** Form
  Self.OnCloseQuery := OnPodeFecharTela;

  // *** Componentes do form
  BitBtnConfirma.OnClick                               := OnConfirmar;

  DTCComboBoxFormaTributacao.OnChange                  := OnDefinirRegistrosHabilitados;
  DTCComboBoxApuracaoIRPJ_CSLL.OnChange                := OnAlterarApuracaoIrpjCsll;
  DTCComboBoxQualificacaoPessoaJuridica.OnChange       := OnDefinirRegistrosHabilitados;
  DTCComboBoxTipoEntidade.OnChange                     := OnDefinirRegistrosHabilitados;
  DTCComboBoxFormaDeEscrituracao.OnChange              := OnDefinirRegistrosHabilitados;
  DTCComboBoxPjSujeitoAliqCSLL.OnChange                := OnDefinirRegistrosHabilitados;

  DTCCheckBoxAdministradoraFundos.OnClick              := OnDefinirRegistrosHabilitados;
  DTCCheckBoxOperacoesComExterior.OnClick              := OnDefinirRegistrosHabilitados;
  DTCCheckBoxOperacoesExteriorPessoaVinculada.OnClick  := OnDefinirRegistrosHabilitados;
  DTCCheckBoxOptanteRefis.OnClick                      := OnDefinirRegistrosHabilitados;
  DTCCheckBoxOptantePaes.OnClick                       := OnDefinirRegistrosHabilitados;
  DTCCheckBoxAtivosNoExterior.OnClick                  := OnDefinirRegistrosHabilitados;
  DTCCheckBoxParticipacoesExterior.OnClick             := OnDefinirRegistrosHabilitados;
  DTCCheckBoxDoacoes.OnClick                           := OnDefinirRegistrosHabilitados;
  DTCCheckBoxIsencaoImposto.OnClick                    := OnDefinirRegistrosHabilitados;
  DTCCheckBoxFinorFinamFures.OnClick                   := OnDefinirRegistrosHabilitados;
  DTCCheckBoxLucroExploracao.OnClick                   := OnDefinirRegistrosHabilitados;
  DTCCheckBoxAtividadeRural.OnClick                    := OnDefinirRegistrosHabilitados;
  DTCCheckBoxParticipacaoConsorcioEmpresa.OnClick      := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPagamentosServicos.OnClick                := OnDefinirRegistrosHabilitados;
  DTCCheckBoxRendimentosServicos.OnClick               := OnDefinirRegistrosHabilitados;
  DTCCheckBoxRoyaltiesPagosBeneficiarios.OnClick       := OnDefinirRegistrosHabilitados;
  DTCCheckBoxRoyaltiesRecebidos.OnClick                := OnDefinirRegistrosHabilitados;
  DTCCheckBoxComercioEletronico.OnClick                := OnDefinirRegistrosHabilitados;
  DTCCheckBoxInovacaoTecnologica.OnClick               := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPoloIndustrial.OnClick                    := OnDefinirRegistrosHabilitados;
  DTCCheckBoxCapacitacaoInformatica.OnClick            := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPJRepesRecap.OnClick                      := OnDefinirRegistrosHabilitados;
  DTCCheckBoxZonaProcessExportacao.OnClick             := OnDefinirRegistrosHabilitados;
  DTCCheckBoxAreaLivreComercio.OnClick                 := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPJSujAliq15.OnClick                       := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPJArtigos48ou49.OnClick                   := OnDefinirRegistrosHabilitados;
  DTCCheckBoxParticEquivPatrimonial.OnClick            := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPJVendasFimExportacao.OnClick             := OnDefinirRegistrosHabilitados;
  DTCCheckBoxRecebExteriorNaoResid.OnClick             := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPagtoExteriorNaoResid.OnClick             := OnDefinirRegistrosHabilitados;
  DTCCheckBoxPJComExportadora.OnClick                  := OnDefinirRegistrosHabilitados;
end;

procedure TFormConfiguracoesSPED_ECF.DefinirRegistrosHabilitados;
var
  vEhSistemaLalur    : Boolean;
  vFormaTributacao   : Enumerado<TFormaTributacaoSpedEcf>;
  vApuracaoIrpjCsll  : Enumerado<TApuracaoIrpjCsllSpedEcf>;
  vQualificacaoPJ    : Enumerado<TQualificacaoPessoaJuridicaSpedEcf>;
  vTipoEntidade      : Enumerado<TTipoEntidadeSpedEcf>;
  vFormaEscrituracao : Enumerado<TFormaEscrituracaoSpedEcf>;

  /// <summary> Obtem a Forma de tributação, Apuração do IRPJ/CLSS, Qualificação da pessoa jurídica, Tipo de entidade e a Forma de escrituração </summary>
  procedure ObterInformacoesDaTela;
  begin
    if not vFormaTributacao.TrySetValue(DTCComboBoxFormaTributacao.ValueSelecionadoString) then
    begin
      vFormaTributacao := ftseNaoInformada;
    end;
    if not vApuracaoIrpjCsll.TrySetValue(DTCComboBoxApuracaoIRPJ_CSLL.ValueSelecionadoString) then
    begin
      vApuracaoIrpjCsll := aicseNaoSeAplica;
    end;
    if not vQualificacaoPJ.TrySetValue(DTCComboBoxQualificacaoPessoaJuridica.ValueSelecionadoString) then
    begin
      vQualificacaoPJ := qpjseNaoSeAplica;
    end;
    if not vTipoEntidade.TrySetValue(DTCComboBoxTipoEntidade.ValueSelecionadoString) then
    begin
      vTipoEntidade := teseNaoSeAplica;
    end;
    if not vFormaEscrituracao.TrySetValue(DTCComboBoxFormaDeEscrituracao.ValueSelecionadoString) then
    begin
      vFormaEscrituracao := feseNaoMarcado;
    end;
  end;
  /// <summary> Obtem os registro habilitados do bloco L </summary>
  procedure ObterRegistrosBlocoL;
  begin
    if (vFormaTributacao in [ftseReal, ftsePresumidoReal]) and (vQualificacaoPJ = qpjsePJEmGeral) and (not vEhSistemaLalur) then
    begin
      FRegistrosHabilitados := FRegistrosHabilitados + [rseL210];
    end;
  end;
  /// <summary> Obtem os registros habilitados do bloco N </summary>
  procedure ObterRegistrosBlocoN;
  begin
    if (vFormaTributacao in [ftseReal, ftsePresumidoReal]) and vEhSistemaLalur then
    begin
      FRegistrosHabilitados := FRegistrosHabilitados + [rseN500, rseN650, rseN670];
      // N600
      if DTCCheckBoxLucroExploracao.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseN600, rseN610];
      end;
      // N615
      if DTCCheckBoxFinorFinamFures.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseN615];
      end;
      // N620
      if vApuracaoIrpjCsll = aicseAnual then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseN620, rseN660];
      end;
    end;
  end;
  /// <summary> Obtem os registros habilitados do bloco P </summary>
  procedure ObterRegistrosBlocoP;
  begin
    if (vFormaTributacao in [ftsePresumido, ftsePresumidoReal]) and (not vEhSistemaLalur) then
    begin
      // P130
      if DTCCheckBoxOptanteRefis.Checked and DTCCheckBoxIsencaoImposto.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseP130];
      end;
      FRegistrosHabilitados := FRegistrosHabilitados + [rseP200, rseP300, rseP400, rseP500];
    end;
  end;

  procedure ObterRegistrosBlocoQ;
  begin
    if TEnumeradoValores.Valor<TFormaEscrituracaoSpedEcf>(DTCComboBoxFormaDeEscrituracao.ValueSelecionadoString) = feseLivroCaixa then
      FRegistrosHabilitados := FRegistrosHabilitados + [rseQ100];
  end;

  /// <summary> Obtem os registros habilitados do bloco U </summary>
  procedure ObterRegistrosBlocoU;
  begin
    if (not vEhSistemaLalur) and (vFormaTributacao in [ftseImune, ftseIsenta]) and (vApuracaoIrpjCsll in [aicseAnual, aicseTrimestral]) then
    begin
      FRegistrosHabilitados := FRegistrosHabilitados + [rseU180, rseU182];
    end;
  end;
  /// <summary> Obtem os registros habilitados do bloco X </summary>
  procedure ObterRegistrosBlocoX;
  begin
    if not vEhSistemaLalur then
    begin
      // X291
      if DTCCheckBoxOperacoesComExterior.Checked and DTCCheckBoxOperacoesExteriorPessoaVinculada.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX291];
      end;

      // X292
      if DTCCheckBoxOperacoesComExterior.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX292];
      end;

      // X390
      if (vFormaTributacao in [ftseImune, ftseIsenta]) then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX390];
      end;
      // X400
      if DTCCheckBoxComercioEletronico.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX400];
      end;
      // X460
      if DTCCheckBoxInovacaoTecnologica.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX460];
      end;
      // X470
      if DTCCheckBoxCapacitacaoInformatica.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX470];
      end;
      // X480
      if DTCCheckBoxPJRepesRecap.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX480];
      end;

      // X490
      if DTCCheckBoxPoloIndustrial.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX490];
      end;
      // X500
      if DTCCheckBoxZonaProcessExportacao.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX500];
      end;
      // X510
      if DTCCheckBoxAreaLivreComercio.Checked then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseX510];
      end;
    end;
  end;
  /// <summary> Obtem os registros habilitados do bloco Y </summary>
  procedure ObterRegistrosBlocoY;
  begin
    if not vEhSistemaLalur then
    begin
      // Y540
      if not (vTipoEntidade in [teseEntidadeFechadaPrevCompl, teseFifaEntidadesRelacionadas, teseCIOEntidadesRelacionadas]) then
        FRegistrosHabilitados := FRegistrosHabilitados + [rseY540];

      // Y672
      if (vFormaTributacao in [ftsePresumido]) then
      begin
        FRegistrosHabilitados := FRegistrosHabilitados + [rseY672];
      end;

      if (vApuracaoIrpjCsll <> aicseDesobrigada) then
        FRegistrosHabilitados := FRegistrosHabilitados + [rseY570];
    end;
  end;

begin
  FRegistrosHabilitados := [];
  vEhSistemaLalur := FSistema = SiglaLW;

  // *** INFORMAÇÕES DA TELA
  ObterInformacoesDaTela;
  // *** BLOCO L
  ObterRegistrosBlocoL;
  // *** BLOCO N
  ObterRegistrosBlocoN;
  // *** BLOCO P
  ObterRegistrosBlocoP;

  // *** BLOCO Q
  ObterRegistrosBlocoQ;

  // *** BLOCO U
  ObterRegistrosBlocoU;
  // *** BLOCO X
  ObterRegistrosBlocoX;
  // *** BLOCO Y
  ObterRegistrosBlocoY;

  inherited;
end;

procedure TFormConfiguracoesSPED_ECF.DoShow;
begin
  inherited;
  FAlterouInformacoesGerais := False;
  DeixarSomenteAbaNegocioPrincipalVisivel;
end;

procedure TFormConfiguracoesSPED_ECF.DeixarSomenteAbaNegocioPrincipalVisivel;
var
  vInd : integer;
begin

  for vInd := 0 to (PageControlDados.PageCount - 01) do
  begin
    if PageControlDados.Pages[vInd] = TabSheetInformacoesGerais then
    begin
      if not TabSheetInformacoesGerais.TabVisible then
      begin
        TabSheetInformacoesGerais.TabVisible := True;
      end;
    end
    else
    begin
      PageControlDados.Pages[vInd].TabVisible := False;
    end;
  end;
  PageControlDados.ActivePage := TabSheetInformacoesGerais;
end;

procedure TFormConfiguracoesSPED_ECF.DTCComboBoxPeriodosTributacaoN615Change(Sender: TObject);
begin
  inherited;
  CarregaPercentuaisIncentivoRegistroN615;
end;

procedure TFormConfiguracoesSPED_ECF.DTCCurrencyEdit_CSLL_Y570Exit(Sender:  TObject);
begin
  inherited;
  ValidaCodigoRecolhimentoY570(crY570CSLL);
end;

procedure TFormConfiguracoesSPED_ECF.DTCCurrencyEdit_CSLL_Y570KeyPress(Sender:  TObject; var Key: Char);
begin
  inherited;
  FCodigoRecolhimentoDigitado := True;
end;

procedure TFormConfiguracoesSPED_ECF.DTCCurrencyEdit_IR_Y570Exit(Sender:
    TObject);
begin
  inherited;
  ValidaCodigoRecolhimentoy570(crY570IR);
end;

procedure TFormConfiguracoesSPED_ECF.DTCCurrencyEdit_IR_Y570KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  FCodigoRecolhimentoDigitado := True;
end;

procedure TFormConfiguracoesSPED_ECF.DTCJvDBLookupCombo_CSLL_Y570Change(Sender:
    TObject);
begin
  inherited;
  FCodigoRecolhimentoDigitado := False;
  DTCCurrencyEdit_CSLL_Y570.Text := DTCJvDBLookupCombo_CSLL_Y570.Value;
end;

procedure TFormConfiguracoesSPED_ECF.DTCJvDBLookupCombo_IR_Y570Change(Sender:
    TObject);
begin
  inherited;
  FCodigoRecolhimentoDigitado := False;
  DTCCurrencyEdit_IR_Y570.Text := DTCJvDBLookupCombo_IR_Y570.Value;
end;

procedure TFormConfiguracoesSPED_ECF.EventoHelpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if not DTCCheckBoxPJRepesRecap.Checked then
    TDtcForms.MessageDtc('A opção "'+DTCCheckBoxPJRepesRecap.Caption+'" deve estar marcada para configurar estas opções.', BotoesMsgInformativo)
  else
    TDtcForms.MessageDtc((Sender as TDTCImage).Hint, BotoesMsgInformativo, (Sender as TDTCImage).Campo);
end;

function TFormConfiguracoesSPED_ECF.GetEntidadeInformacoesGeraisSpedEcf: TEntidadeInformacoesGeraisSpedEcf;
begin
  if not Assigned(FEntidadeInformacoesGeraisSpedEcf) then
  begin
    FEntidadeInformacoesGeraisSpedEcf := FAcaoConfiguracoesSPED_ECF.BuscarInformacoesGeraisSpedEcf;
  end;
  Result := FEntidadeInformacoesGeraisSpedEcf;
end;

function TFormConfiguracoesSPED_ECF.GetFormaEscrituracaoContabil: Boolean;
begin
  Result := (TEnumeradoValores.Valor<TFormaEscrituracaoSpedEcf>(DTCComboBoxFormaDeEscrituracao.ValueSelecionadoString) = feseContabil);
end;

procedure TFormConfiguracoesSPED_ECF.OnAlterarApuracaoIrpjCsll(ASender: TObject);
begin
  DefinirRegistrosHabilitados;
  AplicarValidacaoDosParametrosDoRegistro0020;
end;

procedure TFormConfiguracoesSPED_ECF.InserirPercentuaisIncentivoRegistroN615;
var
  vEntidadeSPED_ECF_IncentFiscais: TEntidadeORMSPED_ECF_IncentFiscais;
begin
  if TVariantManipulacao.Vazio(DTCComboBoxPeriodosTributacaoN615.ValueSelecionadoString) then
  begin
    TDtcForms.MessageDtc('Selecione um período de apuração', BotoesMsgAviso);
    TDtcForms.Clicar(DTCComboBoxPeriodosTributacaoN615.Handle);
  end
  else
  begin
    vEntidadeSPED_ECF_IncentFiscais := nil;
    try
      vEntidadeSPED_ECF_IncentFiscais := TEntidadeORMSPED_ECF_IncentFiscais.Create;

      vEntidadeSPED_ECF_IncentFiscais.Empresa := TAcaoAmbienteSistema.RetornaEmpresaAtual;
      vEntidadeSPED_ECF_IncentFiscais.Ano := FAnoN615;
      vEntidadeSPED_ECF_IncentFiscais.PeriodoApuracao := DTCComboBoxPeriodosTributacaoN615.ValueSelecionadoString;
      vEntidadeSPED_ECF_IncentFiscais.PercentualFinor := DTCCurrencyEditIncentFINOR.Value;
      vEntidadeSPED_ECF_IncentFiscais.PercentualFinam := DTCCurrencyEditIncentFINAM.Value;
      vEntidadeSPED_ECF_IncentFiscais.PercentualFunres := DTCCurrencyEditInecntFUNRES.Value;

      FAcaoPercentApuracaoIncentFiscais.InserirPercentuaisIncentivo(vEntidadeSPED_ECF_IncentFiscais);
      FAcaoPercentApuracaoIncentFiscais.Gravar;

      if (DTCComboBoxPeriodosTributacaoN615.Items.Count - 1) = DTCComboBoxPeriodosTributacaoN615.IndiceItenIndex then
      begin
        DTCComboBoxPeriodosTributacaoN615.IndiceItenIndex := 0;
        DTCComboBoxPeriodosTributacaoN615Change(SELF);
        TDtcForms.SetFocusDTC(DTCComboBoxPeriodosTributacaoN615);
      end
      else
      begin
        DTCComboBoxPeriodosTributacaoN615.IndiceItenIndex := DTCComboBoxPeriodosTributacaoN615.IndiceItenIndex + 1;
        DTCComboBoxPeriodosTributacaoN615Change(SELF);
        TDtcForms.Clicar(DTCCurrencyEditIncentFINOR.Handle);
      end;
    finally
      TSystemUtils.FreeAndNilDtc(vEntidadeSPED_ECF_IncentFiscais);
    end;
  end;
end;

procedure TFormConfiguracoesSPED_ECF.OnClicarItensArvore(ASender: TObject);
begin
  inherited;
  TabSheetInformacoesGerais.TabVisible := FTipoItemArvoreAssociacaoDinamicaContas in [tiacsInformacoesGerais, tiacsSpedEcf];
  TabSheetInformacoesGerais.Visible    := TabSheetInformacoesGerais.TabVisible;
  TabSheetAssociacoes.TabVisible       := FTipoItemArvoreAssociacaoDinamicaContas = tiacsRegistros;
  TabSheetAssociacoes.Visible          := TabSheetAssociacoes.TabVisible;

  TabSheetN615.TabVisible              := FTipoItemArvoreAssociacaoDinamicaContas = tiacsN615;
  TabSheetN615.Visible                 := TabSheetN615.TabVisible;

  TabSheetY570.TabVisible              := FTipoItemArvoreAssociacaoDinamicaContas = tiacsY570;
  TabSheetY570.Visible                 := TabSheetY570.TabVisible;

  CarregarPeriodosIncentivosFiscaisRegistroN615;
end;

procedure TFormConfiguracoesSPED_ECF.OnConfirmar(ASender: TObject);
var
  vTudoOk: Boolean;
begin
  inherited;
  try
    DefinirInformacoesGeraisSpedEcfNaEntidade(True);
    vTudoOk := FAcaoConfiguracoesSPED_ECF.GravarInformacoesGeraisSpedEcf(FEntidadeInformacoesGeraisSpedEcf);
    if vTudoOk then
    begin
      FAlterouInformacoesGerais := False;
      TDtcForms.MessageDtc('Informações gravadas com sucesso.', BotoesMsgInformativo);
    end;
  finally
    HabilitarBotoes(True);
  end;
end;

procedure TFormConfiguracoesSPED_ECF.FiltrarRegistros;
var
  vTexto: Texto;
  vTamanhoTexto: Integer;
  vFiltroRegistros: Texto;
begin
  inherited;
  if FExecutouShow then
  begin
    vFiltroRegistros := dtcNulo;

    vTexto := Trim(cxTextEditPesquisaRegistros.Text);

    if vTexto = cConstTextoPesquisaRegistros then
      vTexto := dtcNulo

    else if vTexto.Vazio then
      cxTextEditPesquisaRegistros.Clear;

    vTamanhoTexto := vTexto.Tamanho;

    cxViewRegistros.DataController.DataSource.DataSet.Filtered := False;

    if not vTexto.Vazio then
    begin
      if (vTexto.SomenteNumeros.Tamanho = vTamanhoTexto) or ((vTexto.SomenteNumeros.Tamanho = vTamanhoTexto -1) and ((vTexto.Contem(',')) or (vTexto.Contem('.')))) then
      begin
        vTexto := TStringManipulacao.TrocaTexto(cxTextEditPesquisaRegistros.Text, '.', ',');
        vFiltroRegistros := '(CODIGO_ITEM_REGISTRO LIKE '''+vTexto.ToString+'%'')';
      end;

      if not vFiltroRegistros.Vazio then
        vFiltroRegistros := vFiltroRegistros.Concatenar(' OR ');

      vFiltroRegistros := vFiltroRegistros.Concatenar('(DESCRICAO LIKE ''%'+vTexto.ToString+'%'')');

      if not vFiltroRegistros.Vazio then
        vFiltroRegistros := '('+vFiltroRegistros+')';
    end;


    if CheckBoxSomenteComAssociacao.Checked then
    begin
      vFiltroRegistros := vFiltroRegistros.Concatenar(TSystemUtils.Iif(vFiltroRegistros.Vazio, '', ' AND '));
      vFiltroRegistros := vFiltroRegistros.Concatenar('(POSSUI_CONTA_ASSOCIADA = ''S'')');
    end;

    try
      if not vFiltroRegistros.Vazio then
      begin
        vFiltroRegistros := vFiltroRegistros.Concatenar(TSystemUtils.Iif(vFiltroRegistros.Vazio, '', ' AND '));
        vFiltroRegistros := vFiltroRegistros.Concatenar('(TIPO_CONTA <> ''R'')');

        cxViewRegistros.DataController.DataSource.DataSet.Filter := vFiltroRegistros.ToString;
        cxViewRegistros.DataController.DataSource.DataSet.Filtered := true;
      end;
    except
      cxTextEditPesquisaRegistros.Clear;
    end;
  end;
end;

procedure TFormConfiguracoesSPED_ECF.OnDefinirRegistrosHabilitados(ASender: TObject);
begin
  inherited;
  DefinirRegistrosHabilitados;
  AplicarValidacaoDosParametrosDoRegistro0020;

  FAlterouInformacoesGerais := True;
end;

procedure TFormConfiguracoesSPED_ECF.OnPodeFecharTela(ASender: TObject; var CanClose: Boolean);
begin
  inherited;

  CanClose := (not FAlterouInformacoesGerais);
  if not CanClose then
  begin
    CanClose := (TDtcForms.MessageDtc('Existem informações alteradas e não gravadas. Deseja sair sem gravar?', MB_ICONQUESTION + MB_YESNO) = ID_YES);
    HabilitarBotoes(not CanClose);
  end;
end;

function TFormConfiguracoesSPED_ECF.PermitirSelecaoMesmaContaItensDiferentes: Boolean;
begin
  result := (FItemArvoreSelecionado = rseL210);

  if not result and Assigned(EntidadeTabelaDinamicaAssociacaoContasRegistros) then
    Result := (FItemArvoreSelecionado = rseY672) and (EntidadeTabelaDinamicaAssociacaoContasRegistros.CodigoItemRegistro = 10);
end;

procedure TFormConfiguracoesSPED_ECF.RadioGroupRegimeCaixaCompetenciaClick(Sender: TObject);
var
  vEventoOnClick: TDispararProcedure_Sender;
begin
  inherited;
  if not FWinLivrosNaBase and FExecutouShow then
  begin
    OnDefinirRegistrosHabilitados(self);
  end
  else if FExecutouShow then
  begin
    vEventoOnClick := (Sender as TRadioGroup).OnClick;
    (Sender as TRadioGroup).OnClick := nil;

    try
      if TAcaoFiscalConfiguracoes.PermiteAlterarRegimeCaixa(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ImpFedIRLP.ToBoolean,
                                                            EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OpcaoImpostoSimples.ToBoolean) then
      begin
        if RadioGroupRegimeCaixaCompetencia.ItemIndex = 0 then
        begin
          if not TAcaoFiscalConfiguracoes.MensagemAlertaDuplicatas(RegimeApuracaoCaixa,
                                                                   EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.ImpFedIRLP.ToBoolean,
                                                                   EntidadeInformacoesGeraisSpedEcf.ConfiguracoesEmpresa.OpcaoImpostoSimples.ToBoolean) then
            (Sender as TRadioGroup).ItemIndex := RetornaOpcaoRegimeApuracao
        end;
      end
      else
      begin
        TDtcForms.MessageDtc('Esta opção não pode ser alterada devido a configurações no sistema WinLivros. Verifique.', BotoesMsgAviso);
        (Sender as TRadioGroup).ItemIndex := RetornaOpcaoRegimeApuracao;
      end;
    finally
      (Sender as TRadioGroup).OnClick := vEventoOnClick;
      OnDefinirRegistrosHabilitados(self);
    end;

    TDtcForms.SetFocusDTC(DTCCheckBoxPagamentosServicos); // Colocado aqui para evitar looping no OnClik do RadioGroupRegimeCaixaCompetencia
  end;
end;

procedure TFormConfiguracoesSPED_ECF.RadioGroupSistemaY570Click(Sender: TObject);
var
  vInd: Integer;
begin
  inherited;

  GroupBoxCodigoRecolhimentoY570.Enabled := RadioGroupSistemaY570.ItemIndex = Ord(soY570_WL);

  for vInd := 0 to GroupBoxCodigoRecolhimentoY570.ControlCount -1 do
    GroupBoxCodigoRecolhimentoY570.Controls[vInd].Enabled := GroupBoxCodigoRecolhimentoY570.Enabled
end;

function TFormConfiguracoesSPED_ECF.RegimeApuracaoCaixa: Boolean;
begin
  Result := RadioGroupRegimeCaixaCompetencia.ItemIndex = 0;
end;

function TFormConfiguracoesSPED_ECF.RetornaAnoExercicio: Numerico;
begin
  Result := SpinEditExercicio.Value;
end;

function TFormConfiguracoesSPED_ECF.RetornaFiltroAdicional: IFiltro;
begin
  Result := nil;

  if (FItemArvoreSelecionado = rseY672) and FormaEscrituracaoContabil then
  begin
    Result := TFiltro.Create;
    Result.Adicionar('CODIGO_ITEM_REGISTRO NOT IN (1,2,3,4,5,6,10,11)');
  end;
end;

function TFormConfiguracoesSPED_ECF.RetornaImagemIndexBloco: Integer;
begin
  Result := 2;
end;

function TFormConfiguracoesSPED_ECF.RetornaOpcaoRegimeApuracao: Integer;
begin
  Result := TsystemUtils.iif(EntidadeInformacoesGeraisSpedEcf.ConfiguracoesFiscal.IrlpRegimeCaixa.ToBoolean, 0, 1);
end;

class function TFormConfiguracoesSPED_ECF.RetornaTipoAssociacaoDinamica: TTipoNegocioAssociacaoContas;
begin
  Result := tnacSpedECF;
end;

function TFormConfiguracoesSPED_ECF.RetornaTipoGrupoAssociacoesContasSet: TTipoBlocoTabelaAssociacaoDinamicaContasSet;
begin
  result := [bseBlocoP, bseBlocoU, bseBlocoN, bseBlocoX, bseBlocoY, bseBlocoL, bseBlocoQ];
end;

procedure TFormConfiguracoesSPED_ECF.SpinEditExercicioChange(Sender: TObject);
begin
  inherited;
  ConfigurarPjAliquotaCSLL;
end;

procedure TFormConfiguracoesSPED_ECF.ValidaCodigoRecolhimentoY570(ATipoCodRecolhimentoY570: TTipoCodRecolhimentoY570);
var
  vReceitaID: Integer;

  vEditCodRecolhimento  : TDTCCurrencyEdit;
  vDBLookupComboReceita : TDTCJvDBLookupCombo;
  vBotaoPesquisa        : TDtcBitBtnPesquisa;
begin
  vReceitaID := 0;

  if FCodigoRecolhimentoDigitado then
  begin
    if ATipoCodRecolhimentoY570 = crY570IR then
    begin
      vEditCodRecolhimento  := DTCCurrencyEdit_IR_Y570;
      vDBLookupComboReceita := DTCJvDBLookupCombo_IR_Y570;
      vBotaoPesquisa        := DtcBitBtnPesquisa_IR_Y570;
    end
    else
    begin
      vEditCodRecolhimento  := DTCCurrencyEdit_CSLL_Y570;
      vDBLookupComboReceita := DTCJvDBLookupCombo_CSLL_Y570;
      vBotaoPesquisa        := DtcBitBtnPesquisa_CSLL_Y570;
    end;

    if vEditCodRecolhimento.Text <> EmptyStr then
      vReceitaID := FAcaoReceitas.RetornaIDReceita(vEditCodRecolhimento.Value);

    if vReceitaID = 0 then
      begin
        vEditCodRecolhimento.Clear;
        vDBLookupComboReceita.ClearValue;
        vBotaoPesquisa.Click;
      end;
    vDBLookupComboReceita.Value := TSystemUtils.FloatToStrDtc(vEditCodRecolhimento.Value, tfvsFormatoBrasileiro);
  end;
end;

end.

