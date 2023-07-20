unit uFormAssociacaoDinamicaPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, pformpadrao, cxGraphics,
  Vcl.Menus, cxClasses, dxCustomHint, cxHint, Vcl.StdCtrls, cxButtons, uComponentesControleAcesso, uImagensDTC, Vcl.ExtCtrls, Vcl.ComCtrls,
  uCustomDtcComponentes, DTCComponentes, cxControls, cxStyles, cxCustomData, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, uDBGridMasterDTC, cxGrid, Spring.Collections, cxButtonEdit,
  uAtributoEnumerado, uDTCMultiplaSelecao, uEntidadePlanoDeContas,
  uEntidadeSelecaoMultipla,
  uDTCTipos, cxSplitter, uEntidadeTabelaDinamicaAssociacaoContas, Data.DB, Vcl.Imaging.pngimage, cxCurrencyEdit, uStringManipulacao,
  cxPC, System.ImageList, Vcl.ImgList, cxContainer, cxLabel,
  Vcl.Buttons, uFactoryAcao,  JvExControls,
  System.Generics.Collections,
  cxTextEdit, cxImageList,
  uFiltros, uAcaoAssociacaoDinamicaPlanoContas,
  uConstantesAssociacaoDinamicaPlanoContas, cxLookAndFeels,
  cxLookAndFeelPainters, dxScreenTip, dxBarBuiltInMenu, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TDadosFiltroRegistroSalvo = record
    CodigoOuDescricao: Texto;
    SomenteSelecionados: Boolean;
  public
    procedure Limpar;
  end;

  TFormAssociacaoDinamicaPlanoContas = class(TFormPadrao)
    DTCMultiplaSelecaoContasContabeis: TDTCMultiplaSelecao;
    PanelDados: TPanel;
    TreeViewConfigGeral: TTreeView;
    PageControlDados: TDTCPageControl;
    TabSheetAssociacoes: TDTCTabSheet;
    cxGridAssociacoes: TcxGrid;
    cxViewRegistros: TcxGridDBBandedTableView;
    cxViewRegistrosID_PLANO_ECF_PAI: TcxGridDBBandedColumn;
    cxViewRegistrosCODIGO_EXTERNO: TcxGridDBBandedColumn;
    cxViewRegistrosDESCRICAO: TcxGridDBBandedColumn;
    cxViewRegistrosBotao: TcxGridDBBandedColumn;
    cxViewPlanoContas: TcxGridDBBandedTableView;
    cxViewPlanoContasID_PLANO_CONTAS: TcxGridDBBandedColumn;
    cxViewPlanoContasID_PLANO_ECF_FILHO: TcxGridDBBandedColumn;
    cxViewPlanoContasESTRUTURAL: TcxGridDBBandedColumn;
    cxViewPlanoContasDESCRICAO: TcxGridDBBandedColumn;
    cxLevelRegistros: TcxGridLevel;
    cxLevelPlanoContas: TcxGridLevel;
    PanelDescricaoRegistro: TPanel;
    LabelDescricaoRegistro: TDTCLabel;
    cxSplitterDivisorControles: TcxSplitter;
    PanelBotoesExpansao: TPanel;
    BitBtnDTCExpandirTodos: TBitBtnDTC;
    cxViewPlanoContasREDUZIDO: TcxGridDBBandedColumn;
    cxViewRegistrosTemAssociacao: TcxGridDBBandedColumn;
    ImagePossuiAssociacao: TImage;
    cxStyleRepositoryPlanoContas: TcxStyleRepository;
    cxStyleCorGrid: TcxStyle;
    cxStyleBandBackground: TcxStyle;
    cxStyleLinhaSelecionada: TcxStyle;
    ImageListDTC16: TImageListDTC;
    cxViewRegistrosTipoConta: TcxGridDBBandedColumn;
    PanelPesquisa: TPanel;
    CheckBoxSomenteComAssociacao: TCheckBox;
    LabelPesquisaRegistros: TLabel;
    cxViewRegistrosPosicaoRegistro: TcxGridDBBandedColumn;
    BitBtnDTCLimparPesquisa: TBitBtnDTC;
    cxTextEditPesquisaRegistros: TcxTextEdit;
    BitBtnDTCRestaurarAssociacoesPadrao: TBitBtnDTC;
    BitBtnDTCLimparAssociacoes: TBitBtnDTC;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnDTCExpandirTodosClick(Sender: TObject);
    procedure DTCMultiplaSelecaoContasContabeisItemAlterado(const ALista: IList<uEntidadeSelecaoMultipla.TEntidadeSelecaoMultipla>; const ALinhaAtual, AColunaAtual: Integer);
    procedure BitBtnDTCRestaurarAssociacoesPadraoClick(Sender: TObject);
    procedure BitBtnDTCLimparAssociacoesClick(Sender: TObject);
    procedure CheckBoxSomenteComAssociacaoClick(Sender: TObject);
    procedure cxViewRegistrosFocusedRecordChanged(Sender: TcxCustomGridTableView;
        APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
        ANewItemRecordFocusingChanged: Boolean);
    procedure TreeViewConfigGeralKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtnDTCLimparPesquisaClick(Sender: TObject);
    procedure cxTextEditPesquisaRegistrosKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
    procedure cxTextEditPesquisaRegistrosPropertiesChange(Sender: TObject);
    procedure DTCMultiplaSelecaoContasContabeisAntesSelecionarRegistroFocado(const
        ALista: IList<uEntidadeSelecaoMultipla.TEntidadeSelecaoMultipla>; const
        ALinhaAtual, AColunaAtual: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  { Fields }
    FDisparouAlertaSomenteAnaliticas : Boolean;
    procedure RestaurarAssociacoesPadrao;
    procedure ExcluirAssociacoesPadrao;
    function GetEntidadeTabelaDinamicaAssociacaoContasRegistros: TEntidadeTabelaDinamicaAssociacaoContasRegistros;
    function RetornaPosicaoRegistro: Integer;
    procedure SetarPermitirSelecaoMesmaContaItensDiferentes;

    procedure FiltrarRegistros;
    procedure LimparFiltroRegistros;
    procedure GuardarFiltroRegistros;
    procedure SetarFiltroRegistroArmazenado;

    // *** Grid
    /// <summary> Evento disparado no click do botão que abre a multipla seleção no Grid de associações </summary>
    /// <param name="Sender"> Instância do objeto </param>
    /// <param name="AButtonIndex"> Índice do botão </param>
    procedure OnBotaoAbrirMultiSelecaoPlanoContas(Sender: TObject; AButtonIndex: Integer);
    /// <summary> Evento disparado ao obter o texto do campo Código do Grid </summary>
    /// <param name="Sender"> Instância do objeto </param>
    /// <param name="ARecord"> Instância que contém as informações da linha </param>
    /// <param name="AText"> Texto de saída </param>
    procedure OnRegistrosCodigoExternoGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    /// <summary> Evento disparado ao expandir o detail de uma linha do Grid </summary>
    /// <param name="ADataController"> Instância do DataController </param>
    /// <param name="ARecordIndex"> Índice da linha selecionada </param>
    /// <param name="AAllow"> Variável de saída indicando se pode expandir o registro </param>
    procedure OnRegistrosDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    /// <summary> Eventos disparado pelo cxView ao pintar a celula </summary>
    /// <param name="Sender">  </param>
    /// <param name="ACanvas">  </param>
    /// <param name="AViewInfo">  </param>
    /// <param name="ADone">  </param>
    procedure OnRegistrosDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    /// <summary> Remonta a árvore de registros </summary>
    /// <returns> Verdadeiro, se montou com sucesso </returns>
    /// <summary> Chama a rotina de importação das tabelas dinâmicas e associações padrões. Define também se a tela poderá ser aberta para o usuário. </summary>
    procedure ImportarTabelasDinamicasEAssociacoesPadroes;
    const
      cConstTextoPesquisaRegistros = 'Digite o Código ou Descrição para localizar (CTRL + L)';
  protected
    class var FImportacaoComSucesso: Boolean;
  protected
  { Methods (Override) }
    FTipoItemArvoreAssociacaoDinamicaContas: TTipoItemArvoreAssociacaoDinamicaContas;
    FItemArvoreSelecionado: TRegistroAssociacaoDinamicaContas;
    FRegistrosHabilitados: TRegistroAssociacaoDinamicaContasSet;
    FRegistrosHabilitadosAnterior: TRegistroAssociacaoDinamicaContasSet;
    FAlterouSelecionaItens: Boolean;
    FSistema: String;
    FEmpresaID: Integer;
    FExpandido: Boolean;
    FAcaoAssociacaoDinamicaPlanoContas: TAcaoAssociacaoDinamicaPlanoContas;
    FTipoNegocioAssociacaoContas: TTipoNegocioAssociacaoContas;
    FListaFiltrosRegistros: TDictionary<TRegistroAssociacaoDinamicaContas, TDadosFiltroRegistroSalvo>;
    FExecutouShow : Boolean;

    function MostrarArvore: Boolean; virtual;
    function RetornoPrefixoTabAssociacao: string; virtual;
    function CondicaoCarregarRegistros: Boolean; virtual;
    function RefazerArvore: Boolean;
    procedure DoShow; override;
    procedure DefinirRegistrosHabilitados; virtual;
    procedure DefinirEventoDosComponentes; virtual;
    function PermitirSelecaoMesmaContaItensDiferentes: Boolean; virtual;
    procedure OnDefinirRegistrosHabilitados(ASender: TObject);virtual;
    class function RetornaTipoAssociacaoDinamica: TTipoNegocioAssociacaoContas; virtual; abstract;
    class function ValidarExecutarAssociacaoDinamica: Boolean; virtual;
    function RetornaAnoExercicio: Numerico; virtual;
    function RetornaTipoGrupoAssociacoesContasSet: TTipoBlocoTabelaAssociacaoDinamicaContasSet; virtual; abstract;
    procedure CriarCamposAdicionaisArvore; virtual;
    procedure OnClicarItensArvore(ASender: TObject); virtual;

    procedure EventoAposRestaurarAssociacoes; virtual;
    procedure EventoAposExcluirAssociacoes; virtual;
    function RetornaFiltroAdicional: IFiltro; virtual;
    function RetornaImagemIndexBloco: Integer; virtual;
    function PossuiCargaPadraoDeAssociacaoContas: Boolean; virtual;
    function SelecionarSomenteContasAnaliticas: Boolean; virtual;
    /// <summary> Instância da entidade com os registros do SPED ECF </summary>
    property EntidadeTabelaDinamicaAssociacaoContasRegistros: TEntidadeTabelaDinamicaAssociacaoContasRegistros read GetEntidadeTabelaDinamicaAssociacaoContasRegistros;
  public
  { Constructor / Destructor }
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

    constructor Create(Sender: TObject; ATipoNegocioAssociacaoContas : TTipoNegocioAssociacaoContas); reintroduce;

  { Methods }
    /// <summary> Carrega e configura a árvore com os blocos do SPED ECF </summary>
    procedure CarregarArvoreConfigGeral;

  { Class methods }
    class procedure Executar;

  end;

implementation

uses
  uSystemUtils, uVariantManipulacao, uDtcForms, uAcaoAmbienteSistema,
  MascaraContabilidade;

{$R *.dfm}

{ TFormAssociacaoDinamicaPlanoContas }

procedure TFormAssociacaoDinamicaPlanoContas.AfterConstruction;
begin
  inherited;
  cxSplitterDivisorControles.Visible := MostrarArvore;

  if not cxSplitterDivisorControles.Visible then
    cxSplitterDivisorControles.CloseSplitter;

  BitBtnDTCRestaurarAssociacoesPadrao.Visible := PossuiCargaPadraoDeAssociacaoContas;

  FExpandido := False;  
  BitBtnConfirma.Visible := False;
  FDisparouAlertaSomenteAnaliticas := False;

  FSistema := TAcaoAmbienteSistema.RetornaSiglaSistema;
  FEmpresaID := TAcaoAmbienteSistema.RetornaEmpresaAtual;
  FItemArvoreSelecionado := rseNenhum;
  FRegistrosHabilitados := [];
  FRegistrosHabilitadosAnterior := [];
  FAlterouSelecionaItens := False;
  FExecutouShow := False;
  cxTextEditPesquisaRegistros.Properties.UseNullString := True;
  cxTextEditPesquisaRegistros.Properties.Nullstring    := cConstTextoPesquisaRegistros;

  ImportarTabelasDinamicasEAssociacoesPadroes;
  DefinirRegistrosHabilitados;
  DefinirEventoDosComponentes;

  FAcaoAssociacaoDinamicaPlanoContas.ConfigurarGridViewItensRegistros(cxViewRegistros);
  FAcaoAssociacaoDinamicaPlanoContas.ConfigurarGridViewRegistrosAssociacoesContas(cxViewPlanoContas);
end;

procedure TFormAssociacaoDinamicaPlanoContas.BeforeDestruction;
begin
  TSystemUtils.FreeAndNilDtc(FAcaoAssociacaoDinamicaPlanoContas);
  TSystemUtils.FreeAndNilDtc(FListaFiltrosRegistros);

  inherited;
end;

procedure TFormAssociacaoDinamicaPlanoContas.BitBtnDTCExpandirTodosClick(Sender: TObject);
begin
  inherited;
  if FExpandido then
  begin
    FExpandido := False;
    cxViewRegistros.DataController.CollapseDetails;
    BitBtnDTCExpandirTodos.Caption := 'Expandir associados';
    BitBtnDTCExpandirTodos.ConstanteDeImagem := 'IMG_AvancarDuplo_R16';
  end
  else
  begin
    FExpandido := True;
    cxViewRegistros.ViewData.Expand(False);
    BitBtnDTCExpandirTodos.Caption := 'Recolher todos';
    BitBtnDTCExpandirTodos.ConstanteDeImagem := 'IMG_RetrocederDuplo_R16';
  end;
end;

procedure TFormAssociacaoDinamicaPlanoContas.BitBtnDTCLimparAssociacoesClick(Sender: TObject);
begin
  inherited;
  ExcluirAssociacoesPadrao;
end;

procedure TFormAssociacaoDinamicaPlanoContas.BitBtnDTCLimparPesquisaClick(Sender: TObject);
begin
  inherited;
  LimparFiltroRegistros;
end;

procedure TFormAssociacaoDinamicaPlanoContas.BitBtnDTCRestaurarAssociacoesPadraoClick(Sender: TObject);
begin
  inherited;
  RestaurarAssociacoesPadrao;
end;

procedure TFormAssociacaoDinamicaPlanoContas.BitBtnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormAssociacaoDinamicaPlanoContas.CarregarArvoreConfigGeral;
var
  vInd                   : Integer;
  vListaItensArvore      : IList<TEntidadeArvoreBlocosRegistrosAssociacaoDinamicaContas>;
  vCamposAdicionaisArvore: TCamposAdicionaisArvore;
  vNodeBloco             : TTreeNode;
  vNodeRegistro          : TTreeNode;
  vItensArvore           : TEntidadeArvoreBlocosRegistrosAssociacaoDinamicaContas;
  vItemPaiAtual          : String;
begin
  vItemPaiAtual := '';
  vNodeBloco := nil;

  if RefazerArvore then
  begin
    TreeViewConfigGeral.Items.BeginUpdate;
    try
      TreeViewConfigGeral.Items.Clear;

      CriarCamposAdicionaisArvore;

      TreeViewConfigGeral.OnClick := OnClicarItensArvore;
      FRegistrosHabilitadosAnterior := FRegistrosHabilitados;

      vListaItensArvore := FAcaoAssociacaoDinamicaPlanoContas.RetornaListaItensArvore(FRegistrosHabilitados, FTipoNegocioAssociacaoContas);
      if Assigned(vListaItensArvore) and (vListaItensArvore.Count > 0) then
      begin
        for vItensArvore in vListaItensArvore do
        begin
          // *** BLOCO
          if vItemPaiAtual <> vItensArvore.NomeItemPai then
          begin
            vItemPaiAtual := vItensArvore.NomeItemPai;

            vCamposAdicionaisArvore                             := TCamposAdicionaisArvore.Create;
            vCamposAdicionaisArvore.NomeMenu                    := vItensArvore.NomeItemPai;
            vCamposAdicionaisArvore.TipoItemArvoreAssociacaoDinamicaContas := tiacsBloco;

            vNodeBloco := TreeViewConfigGeral.Items.AddChild(nil, vItensArvore.DescricaoItemPai);

            vNodeBloco.ImageIndex := RetornaImagemIndexBloco;

            vNodeBloco.ExpandedImageIndex := vNodeBloco.ImageIndex;
            vNodeBloco.SelectedIndex      := vNodeBloco.ImageIndex;
            vNodeBloco.Data               := vCamposAdicionaisArvore;
          end;

          // *** BLOCO
          // ***   --> REGISTRO
          if not TVariantManipulacao.Vazio(vItensArvore.NomeItemFilho) then
          begin
            vCamposAdicionaisArvore                 := TCamposAdicionaisArvore.Create;
            vCamposAdicionaisArvore.NomeMenu        := vItensArvore.NomeItemFilho;
            vCamposAdicionaisArvore.RegistroAssociacaoDinamicaContas := TEnumeradoValores.Valor<TRegistroAssociacaoDinamicaContas>(vCamposAdicionaisArvore.NomeMenu);
            if vCamposAdicionaisArvore.RegistroAssociacaoDinamicaContas = rseN615 then
            begin
              vCamposAdicionaisArvore.TipoItemArvoreAssociacaoDinamicaContas := tiacsN615;
            end
            else if vCamposAdicionaisArvore.RegistroAssociacaoDinamicaContas = rseY570 then
            begin
              vCamposAdicionaisArvore.TipoItemArvoreAssociacaoDinamicaContas := tiacsY570;
            end
            else
            begin
              vCamposAdicionaisArvore.TipoItemArvoreAssociacaoDinamicaContas := tiacsRegistros;
            end;

            vNodeRegistro                    := TreeViewConfigGeral.Items.AddChild(vNodeBloco, vItensArvore.DescricaoItemFilho);
            vNodeRegistro.ImageIndex         := 3;
            vNodeRegistro.ExpandedImageIndex := 3;
            vNodeRegistro.SelectedIndex      := 3;
            vNodeRegistro.Data               := vCamposAdicionaisArvore;
          end;
        end;

        for vInd := 0 to TreeViewConfigGeral.Items.Count - 1 do
        begin
          TreeViewConfigGeral.Items[vInd].Expand(True);
        end;
      end;

      TreeViewConfigGeral.TopItem := TreeViewConfigGeral.Items.GetFirstNode;
      TreeViewConfigGeral.Select(TreeViewConfigGeral.TopItem);
    finally
      TreeViewConfigGeral.Items.EndUpdate;
    end;
  end;
end;

constructor TFormAssociacaoDinamicaPlanoContas.Create(Sender: TObject; ATipoNegocioAssociacaoContas: TTipoNegocioAssociacaoContas);
begin
  inherited Create(nil);

  FAcaoAssociacaoDinamicaPlanoContas                                          := TFactoryAcao.CreateObjeto<TAcaoAssociacaoDinamicaPlanoContas>;
  FAcaoAssociacaoDinamicaPlanoContas.SelecionarSomenteContasAnaliticas        := SelecionarSomenteContasAnaliticas;

  FListaFiltrosRegistros := TDictionary<TRegistroAssociacaoDinamicaContas, TDadosFiltroRegistroSalvo>.Create;

  Self.FTipoNegocioAssociacaoContas := ATipoNegocioAssociacaoContas;

  Self.Caption := TEnumeradoDescricoes.descricao<TTipoNegocioAssociacaoContas>(Self.FTipoNegocioAssociacaoContas);
end;

procedure TFormAssociacaoDinamicaPlanoContas.CriarCamposAdicionaisArvore;
begin
//
end;

procedure TFormAssociacaoDinamicaPlanoContas.CheckBoxSomenteComAssociacaoClick(Sender:
    TObject);
begin
  inherited;
  FiltrarRegistros;
end;

function TFormAssociacaoDinamicaPlanoContas.CondicaoCarregarRegistros: Boolean;
begin
  Result := True;
end;

procedure TFormAssociacaoDinamicaPlanoContas.cxTextEditPesquisaRegistrosKeyDown(Sender:
    TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_DOWN then
    cxGridAssociacoes.SetFocus;
end;

procedure TFormAssociacaoDinamicaPlanoContas.cxTextEditPesquisaRegistrosPropertiesChange(
  Sender: TObject);
begin
  inherited;
  FiltrarRegistros;
end;

procedure TFormAssociacaoDinamicaPlanoContas.cxViewRegistrosFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if Assigned(FAcaoAssociacaoDinamicaPlanoContas) and Assigned(FAcaoAssociacaoDinamicaPlanoContas.ListaRegistros) then
    cxViewRegistrosBotao.Options.Editing := FAcaoAssociacaoDinamicaPlanoContas.ListaRegistros[RetornaPosicaoRegistro].TipoConta <> tcseRotulo;
end;

procedure TFormAssociacaoDinamicaPlanoContas.DefinirEventoDosComponentes;
begin
  // *** Grid
  cxViewRegistros.OnCustomDrawCell                                       := OnRegistrosDrawCell;
  cxViewRegistros.DataController.OnDetailExpanding                       := OnRegistrosDetailExpanding;

  // *** Campos do Grid
  cxViewRegistrosCODIGO_EXTERNO.OnGetDisplayText                         := OnRegistrosCodigoExternoGetDisplayText;
  TcxButtonEditProperties(cxViewRegistrosBotao.Properties).OnButtonClick := OnBotaoAbrirMultiSelecaoPlanoContas;
end;


procedure TFormAssociacaoDinamicaPlanoContas.DefinirRegistrosHabilitados;
begin
  CarregarArvoreConfigGeral;
end;

procedure TFormAssociacaoDinamicaPlanoContas.DoShow;
begin
  inherited;
  FExecutouShow := True;
end;

procedure TFormAssociacaoDinamicaPlanoContas.DTCMultiplaSelecaoContasContabeisAntesSelecionarRegistroFocado(const ALista: IList<uEntidadeSelecaoMultipla.TEntidadeSelecaoMultipla>; const ALinhaAtual, AColunaAtual: Integer);
var
  vEstrutural: string;
begin
  inherited;
  if SelecionarSomenteContasAnaliticas then
  begin
    vEstrutural := TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica(ALista[ALinhaAtual]).Estrutural;

    if (TMascaraContabilidade.EhAnaliticoSintetico(vEstrutural) = 'S') and not FDisparouAlertaSomenteAnaliticas then
    begin
      FDisparouAlertaSomenteAnaliticas := True;
      TDtcForms.MessageDtc('Não é permitido selecionar contas sintéticas para este tipo de associação.', BotoesMsgAviso);
    end;
  end;
end;

procedure TFormAssociacaoDinamicaPlanoContas.DTCMultiplaSelecaoContasContabeisItemAlterado(const ALista: IList<uEntidadeSelecaoMultipla.TEntidadeSelecaoMultipla>; const ALinhaAtual, AColunaAtual: Integer);
begin
  inherited;

  FAlterouSelecionaItens := True;

  if ALista[ALinhaAtual].Selecionado.ToBoolean then
  begin
    TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica(ALista[ALinhaAtual]).CodRegistro := EntidadeTabelaDinamicaAssociacaoContasRegistros.CodigoItemRegistro;
  end
  else
  begin
    TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica(ALista[ALinhaAtual]).CodRegistro := 0;
  end;
  FAcaoAssociacaoDinamicaPlanoContas.ConfigurarContasContabeisRegistrosCodigos(ALista[ALinhaAtual].Selecionado.ToBoolean, TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica(ALista[ALinhaAtual]).Estrutural);
end;

procedure TFormAssociacaoDinamicaPlanoContas.EventoAposExcluirAssociacoes;
begin
//
end;

procedure TFormAssociacaoDinamicaPlanoContas.EventoAposRestaurarAssociacoes;
begin
//
end;

procedure TFormAssociacaoDinamicaPlanoContas.ExcluirAssociacoesPadrao;
begin
  if FAcaoAssociacaoDinamicaPlanoContas.LimparAssociacoesDasContas(RetornaAnoExercicio, FTipoNegocioAssociacaoContas) then
  begin
    FItemArvoreSelecionado := rseNenhum;
    EventoAposExcluirAssociacoes;
  end;
end;

class procedure TFormAssociacaoDinamicaPlanoContas.Executar;
var
  vInstancia: TFormAssociacaoDinamicaPlanoContas;
begin
  vInstancia := nil;
  try
    vInstancia := Self.Create(nil, RetornaTipoAssociacaoDinamica);

    if ValidarExecutarAssociacaoDinamica then
    begin
      vInstancia.ShowModal;
    end;
  finally
    TSystemUtils.FreeAndNilDtc(vInstancia);
  end;
end;

function TFormAssociacaoDinamicaPlanoContas.GetEntidadeTabelaDinamicaAssociacaoContasRegistros: TEntidadeTabelaDinamicaAssociacaoContasRegistros;
begin
  result := nil;

  if Assigned(FAcaoAssociacaoDinamicaPlanoContas) and (cxViewRegistros.Controller.FocusedRowIndex >= 0)  then
    Result := FAcaoAssociacaoDinamicaPlanoContas.ListaRegistros[RetornaPosicaoRegistro];
end;

procedure TFormAssociacaoDinamicaPlanoContas.GuardarFiltroRegistros;
var
  vDadosFiltroRegistroSalvo: TDadosFiltroRegistroSalvo;
begin
  if FItemArvoreSelecionado <> rseNenhum then
  begin
    vDadosFiltroRegistroSalvo.Limpar;
    vDadosFiltroRegistroSalvo.CodigoOuDescricao   := cxTextEditPesquisaRegistros.Text;
    vDadosFiltroRegistroSalvo.SomenteSelecionados := CheckBoxSomenteComAssociacao.Checked;
    FListaFiltrosRegistros.AddOrSetValue(FItemArvoreSelecionado, vDadosFiltroRegistroSalvo);
  end;
  LimparFiltroRegistros;
end;

procedure TFormAssociacaoDinamicaPlanoContas.OnBotaoAbrirMultiSelecaoPlanoContas(Sender: TObject; AButtonIndex: Integer);
const
  cTituloFormSelecionaItens = 'Registro %s - %s - %s';
var
  vListaItensGravar: IList<TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica>;
begin
  inherited;
  if Assigned(FAcaoAssociacaoDinamicaPlanoContas.ListaSelecaoMultiplaContasContabeis) and (FAcaoAssociacaoDinamicaPlanoContas.ListaSelecaoMultiplaContasContabeis.Count > 0) then
  begin
    SetarPermitirSelecaoMesmaContaItensDiferentes;
    FAcaoAssociacaoDinamicaPlanoContas.ConfigurarContasContabeisRegistrosCodigos(EntidadeTabelaDinamicaAssociacaoContasRegistros.CodigoItemRegistro, FItemArvoreSelecionado, RetornaAnoExercicio);

    DTCMultiplaSelecaoContasContabeis.TituloForm := Format(cTituloFormSelecionaItens, [ EntidadeTabelaDinamicaAssociacaoContasRegistros.Registro.DescricaoCurta.ToString,
                                                                                        EntidadeTabelaDinamicaAssociacaoContasRegistros.CodigoItemRegistro.ToString,
                                                                                        EntidadeTabelaDinamicaAssociacaoContasRegistros.Descricao.ToString ]);


    DTCMultiplaSelecaoContasContabeis.Executar<TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica>(FAcaoAssociacaoDinamicaPlanoContas.ListaSelecaoMultiplaContasContabeis, True);

    vListaItensGravar := DTCMultiplaSelecaoContasContabeis.RetornaItensSelecionados<TEntidadeSelecaoMultiplaPlanoAssociacaoDinamica>;
    try
      if FAlterouSelecionaItens and Assigned(vListaItensGravar) then
      begin
        if FAcaoAssociacaoDinamicaPlanoContas.GravarAssociacoesContas(EntidadeTabelaDinamicaAssociacaoContasRegistros.CodigoInterno, vListaItensGravar) then
        begin
          FAcaoAssociacaoDinamicaPlanoContas.AtualizarDataSetContasAssociadas(EntidadeTabelaDinamicaAssociacaoContasRegistros.CodigoInterno, vListaItensGravar);
          FAcaoAssociacaoDinamicaPlanoContas.SetarRegistroTemAssociacaoContaContabil;
        end;
      end;

      FAlterouSelecionaItens := False;
    finally
      vListaItensGravar := nil;
      DTCMultiplaSelecaoContasContabeis.LimparTodosItens;
    end;
  end
  else
  begin
    TDtcForms.MessageDtc('A empresa não possui contas contábeis cadastradas para vincular ao registro.', BotoesMsgAviso);
  end;
end;

procedure TFormAssociacaoDinamicaPlanoContas.ImportarTabelasDinamicasEAssociacoesPadroes;
var
 vTipoGrupoAssociacoesSet: TTipoBlocoTabelaAssociacaoDinamicaContasSet;
begin
  vTipoGrupoAssociacoesSet := RetornaTipoGrupoAssociacoesContasSet;

  FImportacaoComSucesso := FAcaoAssociacaoDinamicaPlanoContas.ImportarTabelasDinamicas(RetornaAnoExercicio, vTipoGrupoAssociacoesSet, FTipoNegocioAssociacaoContas) and
                           FAcaoAssociacaoDinamicaPlanoContas.ImportarAssociacoesTabelaDinamica(RetornaAnoExercicio, FTipoNegocioAssociacaoContas);
end;

procedure TFormAssociacaoDinamicaPlanoContas.LimparFiltroRegistros;
begin
  cxTextEditPesquisaRegistros.Clear;
  CheckBoxSomenteComAssociacao.Checked := False;
  FiltrarRegistros;
end;

function TFormAssociacaoDinamicaPlanoContas.MostrarArvore: Boolean;
begin
  result := True;
end;

procedure TFormAssociacaoDinamicaPlanoContas.OnClicarItensArvore(ASender: TObject);
begin
  inherited;
  FTipoItemArvoreAssociacaoDinamicaContas := TCamposAdicionaisArvore(TreeViewConfigGeral.Selected.Data).TipoItemArvoreAssociacaoDinamicaContas;

  if FTipoItemArvoreAssociacaoDinamicaContas = tiacsBloco then
  begin
    TreeViewConfigGeral.Select(TreeViewConfigGeral.Items[TreeViewConfigGeral.Selected.AbsoluteIndex +1]);
    FTipoItemArvoreAssociacaoDinamicaContas := TCamposAdicionaisArvore(TreeViewConfigGeral.Selected.Data).TipoItemArvoreAssociacaoDinamicaContas;
  end;

  if CondicaoCarregarRegistros then
  begin
    if (FItemArvoreSelecionado <> TCamposAdicionaisArvore(TreeViewConfigGeral.Selected.Data).RegistroAssociacaoDinamicaContas) then
    begin
      GuardarFiltroRegistros;
      FItemArvoreSelecionado         := TCamposAdicionaisArvore(TreeViewConfigGeral.Selected.Data).RegistroAssociacaoDinamicaContas;
      LabelDescricaoRegistro.Caption := TEnumeradoDescricoes.Descricao<TRegistroAssociacaoDinamicaContas>(FItemArvoreSelecionado);

      TabSheetAssociacoes.Caption    := RetornoPrefixoTabAssociacao+ ' ' + TEnumeradoDescricoesCurtas.Descricao<TRegistroAssociacaoDinamicaContas>(FItemArvoreSelecionado);

      cxViewRegistros.DataController.BeginFullUpdate;
      try
        SetarPermitirSelecaoMesmaContaItensDiferentes;
        FAcaoAssociacaoDinamicaPlanoContas.CarregarDataSetsRegistro(FItemArvoreSelecionado, RetornaAnoExercicio, RetornaFiltroAdicional);
        SetarFiltroRegistroArmazenado;
      finally
        cxViewRegistros.DataController.EndFullUpdate;
      end;
    end;
  end;

  FExpandido := True;
  BitBtnDTCExpandirTodosClick(self);
  PageControlDados.Repaint;

  TabSheetAssociacoes.TabVisible       := FTipoItemArvoreAssociacaoDinamicaContas = tiacsRegistros;
  TabSheetAssociacoes.Visible          := TabSheetAssociacoes.TabVisible;

  PageControlDados.Update;
end;

procedure TFormAssociacaoDinamicaPlanoContas.OnRegistrosDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  vRect: TRect;
  vEhRotulo: Boolean;
  vPoint : TPoint;
begin
  inherited;
  vPoint := AViewInfo.RecordViewInfo.ExpandButtonBounds.CenterPoint;
  vEhRotulo := (AViewInfo.GridRecord.DisplayTexts[cxViewRegistrosTipoConta.Index] = TEnumeradoValores.Valor<TTipoItemTabelaAssociacaoDinamicaContas>(tcseRotulo));

  if (AViewInfo.GridRecord.DisplayTexts[cxViewRegistrosTemAssociacao.Index] = 'S') then
  begin
    if AViewInfo.RecordViewInfo.GridRecord.Expanded then
    begin
      ACanvas.Brush.Color := clHighlight;
      ACanvas.Font.Color  := clWhite;
    end;
  end;

  ACanvas.Canvas.FillRect(AViewInfo.Bounds);
  SetBkMode(ACanvas.Canvas.Handle, TRANSPARENT);

  vRect := TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect;

  if AViewInfo.Item.Index = cxViewRegistrosTemAssociacao.Index then
  begin
    if (AViewInfo.GridRecord.DisplayTexts[cxViewRegistrosTemAssociacao.Index] = 'S') then
    begin
      ADone := True;
      ACanvas.Draw(vRect.Left + 8, vRect.Top, ImagePossuiAssociacao.Picture.Graphic);
      AViewInfo.RecordViewInfo.ExpandButtonBounds.NormalizeRect;
    end
    else
    begin
      ADone := True;
      ACanvas.DrawTexT(EmptyStr, vRect, taCenter, vaCenter, False, False);
      AViewInfo.RecordViewInfo.ExpandButtonBounds.SetLocation(-1, -1);
    end;
  end;

  if vEhRotulo then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.size := 10;
  end;

  if AViewInfo.Item.Index = cxViewRegistrosBotao.Index then
  begin
    if vEhRotulo then
    begin
      ADone := True;
      ACanvas.DrawTexT(EmptyStr, vRect, taCenter, vaCenter, False, False);
    end;
  end;
end;

function TFormAssociacaoDinamicaPlanoContas.PossuiCargaPadraoDeAssociacaoContas: Boolean;
begin
  Result := True;
end;

procedure TFormAssociacaoDinamicaPlanoContas.FiltrarRegistros;
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

procedure TFormAssociacaoDinamicaPlanoContas.FormKeyDown(Sender: TObject; var Key:
    Word; Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Char(ORD(Key)) = 'L') then
    TDtcForms.Clicar(cxTextEditPesquisaRegistros.Handle);
end;

procedure TFormAssociacaoDinamicaPlanoContas.OnDefinirRegistrosHabilitados(ASender: TObject);
begin
  DefinirRegistrosHabilitados;
end;

procedure TFormAssociacaoDinamicaPlanoContas.OnRegistrosDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;

  AAllow := ADataController.GetRowValue(ADataController.GetRowInfo(ARecordIndex), cxViewRegistrosTemAssociacao.Index) = 'S';
end;

procedure TFormAssociacaoDinamicaPlanoContas.OnRegistrosCodigoExternoGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;

  if Texto(AText).Contem(',') then
  begin
    AText := TStringManipulacao.TrocaTexto(AText, ',', '.');
  end;
end;

function TFormAssociacaoDinamicaPlanoContas.RefazerArvore: Boolean;
begin
  Result := (FRegistrosHabilitados = []) or (FRegistrosHabilitados <> FRegistrosHabilitadosAnterior);
end;

procedure TFormAssociacaoDinamicaPlanoContas.RestaurarAssociacoesPadrao;
begin
  if FAcaoAssociacaoDinamicaPlanoContas.RestautarAssociacoesPadroes(RetornaAnoExercicio, FTipoNegocioAssociacaoContas) then
  begin
    FItemArvoreSelecionado := rseNenhum;

    EventoAposRestaurarAssociacoes;
  end;
end;

function TFormAssociacaoDinamicaPlanoContas.RetornaAnoExercicio: Numerico;
var
  vData: DataHora;
begin
  vData := TAcaoAmbienteSistema.RetornaDataInicialPeriodo;
  Result := vData.ano;
end;

function TFormAssociacaoDinamicaPlanoContas.RetornaFiltroAdicional: IFiltro;
begin
  Result := nil;
end;

function TFormAssociacaoDinamicaPlanoContas.RetornaImagemIndexBloco: Integer;
begin
  result := -1;
end;

function TFormAssociacaoDinamicaPlanoContas.RetornaPosicaoRegistro: Integer;
begin
  Result := cxViewRegistros.DataController.DataSource.DataSet.FieldByName(cxViewRegistrosPosicaoRegistro.DataBinding.FieldName).AsInteger;
end;

function TFormAssociacaoDinamicaPlanoContas.RetornoPrefixoTabAssociacao: string;
begin
  Result := 'Registro';
end;

function TFormAssociacaoDinamicaPlanoContas.SelecionarSomenteContasAnaliticas: Boolean;
begin
  Result := False;
end;

procedure TFormAssociacaoDinamicaPlanoContas.SetarFiltroRegistroArmazenado;
var
  vDadosFiltroRegistroSalvo: TDadosFiltroRegistroSalvo;
begin
  vDadosFiltroRegistroSalvo.Limpar;

  if (FListaFiltrosRegistros.Count > 0) and FListaFiltrosRegistros.TryGetValue(FItemArvoreSelecionado, vDadosFiltroRegistroSalvo) then
  begin
    CheckBoxSomenteComAssociacao.Checked := vDadosFiltroRegistroSalvo.SomenteSelecionados;

    if not vDadosFiltroRegistroSalvo.CodigoOuDescricao.Vazio then
      cxTextEditPesquisaRegistros.Text := vDadosFiltroRegistroSalvo.CodigoOuDescricao.ToString;
  end;
end;

procedure TFormAssociacaoDinamicaPlanoContas.SetarPermitirSelecaoMesmaContaItensDiferentes;
begin
  FAcaoAssociacaoDinamicaPlanoContas.PermitirSelecaoMesmaContaItensDiferentes := PermitirSelecaoMesmaContaItensDiferentes;
end;

function TFormAssociacaoDinamicaPlanoContas.PermitirSelecaoMesmaContaItensDiferentes: Boolean;
begin
  Result := false;
end;

procedure TFormAssociacaoDinamicaPlanoContas.TreeViewConfigGeralKeyDown(Sender:  TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) then
    OnClicarItensArvore(Sender);
end;

class function TFormAssociacaoDinamicaPlanoContas.ValidarExecutarAssociacaoDinamica: Boolean;
begin
  Result := FImportacaoComSucesso;
end;

{ TDadosFiltroRegistroSalvo }

procedure TDadosFiltroRegistroSalvo.Limpar;
begin
  CodigoOuDescricao := '';
  SomenteSelecionados := False;
end;

end.

