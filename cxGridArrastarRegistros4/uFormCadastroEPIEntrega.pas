unit uFormCadastroEPIEntrega;

interface

uses
  Data.DB, cxButtons, cxGraphics, cxLookAndFeelPainters, cxLookAndFeels, DTCComponentes, pFormCadastro, System.Classes, System.SysUtils, System.Variants,
  uComponentesControleAcesso, uCustomDtcComponentes, uImagensDTC, Vcl.Controls, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Forms, Vcl.Graphics, Vcl.Menus, Vcl.StdCtrls,
  Winapi.Messages, uSystemUtils, uEntidade, uFiltros, uEntidadeEPIUso, cxControls, cxContainer, cxEdit, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, uDTCLookupEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxGridCustomTableView, cxGridTableView, uDBGridMasterDTC, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, uDTCHeader, cxSpinEdit, uListDataSource,
  uAcaoCadastroPessoalContratos, Spring.Collections, uFormGridCadastroEPIAquisicao, uDTCTipos, uAcaoCadastroEPIUso, uAcaoAmbienteSistema, uConstantesEPIs,
  cxDBData, cxGridDBTableView, dxNavBarCollns, dxNavBarBase, dxNavBar, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, uDataSourceDTC, System.ImageList, Vcl.ImgList, cxImageComboBox, kbmMemTable, Vcl.DBCGrids, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxBar, uDevExBarControlsDTC, Spring, uDTCHintPanel, uFiltrosPessoal, uFiltroCadastroEquipamentoProtecao, System.StrUtils,
  uEditSugestaoTexto, uFormConsultaTrabalhadorRiscos, uDtcForms, System.DateUtils, cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  cxImageList, System.Types, Vcl.AppEvnts, dxScreenTip, dxCustomHint, cxHint;

type
  TFormCadastroEPIEntrega = class(TFormCadastro)
    DTCLabelContrato: TDTCLabel;
    DTCLookupEditContrato: TDTCLookupEdit;
    DTCLabelDataEntrega: TDTCLabel;
    DTCDateTimePickerDataEntrega: TDTCDateTimePicker;
    cxGridLevel: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGridTableViewDtc: TcxGridTableViewDtc;
    cxGridTableViewDtcDtcEPI: TcxGridColumnDtc;
    cxGridTableViewDtcDtcMarca: TcxGridColumnDtc;
    cxGridTableViewDtcDtcModelo: TcxGridColumnDtc;
    cxGridTableViewDtcDtcCA: TcxGridColumnDtc;
    cxGridTableViewDtcDtcTamanho: TcxGridColumnDtc;
    cxGridTableViewDtcDtcQuantidade: TcxGridColumnDtc;
    DTCHeaderListaEntrega: TDTCHeader;
    PanelBotoes: TPanel;
    BitBtnDTCIncluir: TBitBtnDTC;
    BitBtnDTCRemover: TBitBtnDTC;
    BitBtnDTCLimpar: TBitBtnDTC;
    cxStyleRepository: TcxStyleRepository;
    cxStyleGridTitulo: TcxStyle;
    DataSourceDTC: TDataSourceDTC;
    cxStyleGridDetalhe: TcxStyle;
    cxStyleGridCard: TcxStyle;
    cxStyleGridCardBorder: TcxStyle;
    ImageListDTC16: TImageListDTC;
    cxStyleGrid: TcxStyle;
    PanelGridSugestoes: TPanel;
    DTCHeaderSugestoes: TDTCHeader;
    cxGridSugestoes: TcxGrid;
    cxGridSugestoesView: TcxGridDBCardView;
    cxGridSugestoesViewDESCRICAO: TcxGridDBCardViewRow;
    cxGridSugestoesViewSTATUS: TcxGridDBCardViewRow;
    cxGridSugestoesViewULTIMA_ENTREGA_GRADE_ID: TcxGridDBCardViewRow;
    cxGridSugestoesViewULTIMA_ENTREGA_DATA: TcxGridDBCardViewRow;
    cxGridSugestoesViewULTIMA_ENTREGA_MARCA: TcxGridDBCardViewRow;
    cxGridSugestoesViewULTIMA_ENTREGA_MODELO: TcxGridDBCardViewRow;
    cxGridSugestoesViewULTIMA_ENTREGA_TAMANHO: TcxGridDBCardViewRow;
    cxGridSugestoesLevel: TcxGridLevel;
    cxGridSugestoesViewEPIID: TcxGridDBCardViewRow;
    dxBarManagerDTC: TdxBarManagerDTC;
    dxBarPopupMenuSugestoes: TdxBarPopupMenu;
    cxGridPopupMenu: TcxGridPopupMenu;
    dxBarLargeButtonDTCAdicionar: TdxBarLargeButtonDTC;
    DTCHintPanelSugestoes: TDTCHintPanel;
    DTCImageHint: TDTCImage;
    SpeedButtonDTCRiscos: TSpeedButtonDTC;
    cxGridTableViewDtcDtcSaldo: TcxGridColumnDtc;
    cxStyleSaldoInsuficiente: TcxStyle;
    cxGridTableViewDtcDtcSaldoInsuficiente: TcxGridColumnDtc;
    BitBtnDTCProximoContrato: TBitBtnDTC;
    procedure BitBtnDTCIncluirClick(Sender: TObject);
    procedure BitBtnDTCRemoverClick(Sender: TObject);
    procedure BitBtnDTCLimparClick(Sender: TObject);
    procedure ColunaTamanhoGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGridSugestoesViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTableViewDtcDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxGridTableViewDtcDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridTableViewDtcFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure DTCHintPanelSugestoesFecharClick(Sender: TObject);
    procedure dxBarLargeButtonDTCAdicionarNaListaClick(Sender: TObject);
    procedure cxGridTableViewDtcStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure DTCDateTimePickerDataEntregaPropertiesEditValueChanged(Sender: TObject);
    procedure SpeedButtonDTCRiscosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtnDTCProximoContratoClick(Sender: TObject);
    procedure cxGridSugestoesEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure cxGridSugestoesViewDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridSugestoesViewStartDrag(Sender: TObject; var DragObject: TDragObject);
  private
    FAcaoCadastroPessoalContratos : TAcaoCadastroPessoalContratos;
    FAcaoCadastroEPIUso           : TAcaoCadastroEPIUso;
    FListDataSource               : IListDataSource;
    FListaEntidades               : IList<TEntidadeEPIUsoDetalhamento>;
    FMemTableSugestoes            : TDataSet;
    FPessoalContratoID            : Integer;
    FFormTrabalhadorRiscos        : TFormConsultaTrabalhadorRiscos;
    FDragObject                   : TDragControlObject;
    FIsOnDragOver                 : Boolean;
    function MetodoSalvaEntidade(AEntidade: TEntidade): Boolean;
    function MetodoBuscaEntidade(AID: Integer): TEntidade;
    procedure MetodoEntidadeParaTela(AEntidade: TEntidade);
    procedure MetodoTelaParaEntidade(AEntidade: TEntidade);
    procedure MetodoValidacaoAdicional(AEntidade: TEntidade);
    procedure AtualizarBotoesDeControle(AHabilitar: Boolean);
    procedure AtualizarListaDeSugestoes;
    procedure ListaEntidadesAtualizada(Sender: TObject);
    procedure AdicionarEPISugerido;
  protected
    procedure Paint; override;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    class function ExecutarAlteracao(ARegistroID: Integer; AExibirBotaoAvancar: Boolean): TEntidade;
  end;

implementation

uses
  uFactoryAcao, uInterfaceAcaoRegistroDB;

{$R *.dfm}

type
  TEPIDragObject = class(TDragControlObject)
  private
    FGridView : TcxGridDBCardView;
    FImageList: TDragImageList;
  protected
    function GetDragCursor(Accepted: Boolean; X, Y: Integer): TCursor; override;
    function GetDragImages: TDragImageList; override;
  public
    constructor Create(AGridView: TcxGridDBCardView); reintroduce;
    destructor Destroy; override;
    procedure ShowDragImage; override;
  end;

{ TFormCadastroEPIEntrega }

class function TFormCadastroEPIEntrega.ExecutarAlteracao(ARegistroID: Integer; AExibirBotaoAvancar: Boolean): TEntidade;
var
  vInstancia : TFormCadastroEPIEntrega;
begin
  vInstancia := Create(nil);
  vInstancia.BitBtnDTCProximoContrato.Visible := AExibirBotaoAvancar;
  try
    Result := vInstancia.Alteracao(ARegistroID, False, nil);
  finally
    TSystemUtils.FreeAndNilDtc(vInstancia);
  end;
end;

procedure TFormCadastroEPIEntrega.AfterConstruction;
var
  vAcaoRegistroDB: IAcaoRegistroDB;
begin
  inherited;
  FAcaoCadastroPessoalContratos := TAcaoCadastroPessoalContratos.Create;
  FAcaoCadastroEPIUso           := TAcaoCadastroEPIUso.Create;
  FAcaoCadastroPessoalContratos.ConfiguraLookupEdit(DTCLookupEditContrato);

  FFormTrabalhadorRiscos := TFormConsultaTrabalhadorRiscos.Create(nil);
  FFormTrabalhadorRiscos.Width := DTCLookupEditContrato.Width;

  OnSalvaEntidade    := MetodoSalvaEntidade;
  OnConsultaEntidade    := MetodoBuscaEntidade;
  OnEntidadeParaTela := MetodoEntidadeParaTela;
  OnTelaParaEntidade := MetodoTelaParaEntidade;
  MetodoValidacao    := MetodoValidacaoAdicional;

  FListDataSource := TListDataSource<TEntidadeEPIUsoDetalhamento>.Create;
  FListDataSource.GridView := cxGridTableViewDtc;

  FListaEntidades := TCollections.CreateObjectList<TEntidadeEPIUsoDetalhamento>;
  FListDataSource.OnChanged := ListaEntidadesAtualizada;
  FListDataSource.DefineListaDeDados(FListaEntidades);

  AtualizarBotoesDeControle(True);

  vAcaoRegistroDB := TFactoryAcao.RetornaSingleton<IAcaoRegistroDB>;
  vAcaoRegistroDB.SetSalvarPorUsuario(True);
  vAcaoRegistroDB.SetSalvarPorEmpresa(False);
  vAcaoRegistroDB.CarregarRegistros(TAcaoAmbienteSistema.RetornaUsuarioID);
  vAcaoRegistroDB.AbrirChaveRegistro(TAcaoAmbienteSistema.RetornaNomeExternoSistema, ClassName + ' - Configurações', True);
  DTCHintPanelSugestoes.Visible := not vAcaoRegistroDB.LerBoolean('OcultouHint', False);

  FBitBtnDTCSalvar.Caption := 'Efetuar entrega';
end;

procedure TFormCadastroEPIEntrega.BeforeDestruction;
begin
  TSystemUtils.FreeAndNilDtc(FFormTrabalhadorRiscos);
  TSystemUtils.FreeAndNilDtc(FAcaoCadastroEPIUso);
  TSystemUtils.FreeAndNilDtc(FAcaoCadastroPessoalContratos);
  inherited;
end;

function TFormCadastroEPIEntrega.MetodoBuscaEntidade(AID: Integer): TEntidade;
var
  vEntidade: TEntidadeEPIUso;
begin
  FPessoalContratoID := AID;

  vEntidade := TEntidadeEPIUso.Create;
  vEntidade.PessoalContratosID := FPessoalContratoID;
  vEntidade.DataInicio         := Date;
  Result := vEntidade;
end;

procedure TFormCadastroEPIEntrega.MetodoEntidadeParaTela(AEntidade: TEntidade);
var
  vEntidade: TEntidadeEPIUso absolute AEntidade;
begin
  DTCLookupEditContrato.ConteudoInteger         := vEntidade.PessoalContratosID;
  DTCDateTimePickerDataEntrega.ConteudoDataHora := vEntidade.DataInicio;
end;

procedure TFormCadastroEPIEntrega.MetodoTelaParaEntidade(AEntidade: TEntidade);
var
  vEntidade: TEntidadeEPIUso absolute AEntidade;
begin
  vEntidade.DataInicio := DTCDateTimePickerDataEntrega.ConteudoDataHora;
end;

procedure TFormCadastroEPIEntrega.MetodoValidacaoAdicional(AEntidade: TEntidade);
begin
  if (not AEntidade.Validacao.PossuiErros) and (FListaEntidades.Count = 0) then
  begin
    TDTCForms.MessageDtc('Adicione equipamentos de proteção na lista para efetuar a entrega.');
  end;
end;

procedure TFormCadastroEPIEntrega.Paint;
begin
  inherited;

  Canvas.Pen.Style := psSolid;
  Canvas.Pen.Width := 2;

  if FIsOnDragOver then
  begin
    Canvas.Pen.Color := clHighlight;
    Canvas.Rectangle(cxGrid.Left - 2 , cxGrid.Top - 2, cxGrid.Width + cxGrid.Left + 3, cxGrid.Height + cxGrid.Top + 3);
  end
  else
  begin
    Canvas.Pen.Color := clBtnFace;
    Canvas.Rectangle(cxGrid.Left - 2 , cxGrid.Top - 2, cxGrid.Width + cxGrid.Left + 3, cxGrid.Height + cxGrid.Top + 3);
  end;
end;

procedure TFormCadastroEPIEntrega.BitBtnDTCProximoContratoClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

function TFormCadastroEPIEntrega.MetodoSalvaEntidade(AEntidade: TEntidade): Boolean;
var
  vOriginal    : TEntidadeEPIUso absolute AEntidade;
  vEntidade    : TEntidadeEPIUso;
  vDetalhamento: TEntidadeEPIUsoDetalhamento;
  vLista       : Vetor<TEntidadeEPIUso>;
  vIndice      : Integer;
  vIDsEntregues: TArray<Integer>;
  vCondicao    : TPredicate<TEntidadeEPIUsoDetalhamento>;
begin
  inherited;
  Result := False;
  vLista.Clear;

  for vDetalhamento in FListaEntidades do
  begin
    vEntidade := TEntidadeEPIUso.Create;
    vEntidade.PessoalContratosID  := vOriginal.PessoalContratosID;
    vEntidade.DataInicio          := vOriginal.DataInicio;
    vEntidade.EpiAquisicaoGradeID := vDetalhamento.EpiAquisicaoGradeID;
    vEntidade.Quantidade          := vDetalhamento.EpiQuantidade;
    vLista.Add(vEntidade);
  end;

  if (not vLista.Empty) then
  begin
    vIDsEntregues := FAcaoCadastroEPIUso.SalvarEntrega(vLista);
    for vIndice in vIDsEntregues do
    begin
      vCondicao := function(const AItem: TEntidadeEPIUsoDetalhamento): Boolean
                   begin
                     Result := AItem.EpiAquisicaoGradeID = vIndice;
                   end;

      vDetalhamento := FListaEntidades.Where(vCondicao).FirstOrDefault;
      if Assigned(vDetalhamento) then
      begin
        FListaEntidades.Remove(vDetalhamento);
      end;
    end;

    Result := FListaEntidades.IsEmpty;

    if (not FListaEntidades.IsEmpty) then
    begin
      TDtcForms.MessageDtc('Um ou mais equipamentos não puderam ser entregues por não possuírem saldo suficiente.');

      for vDetalhamento in FListaEntidades do
      begin
        vDetalhamento.SaldoInsuficiente := True;
      end;

      AtualizarListaDeSugestoes;
      FListDataSource.DataChanged;
    end;
  end;

  for vIndice := vLista.Length-1 downto 0 do
  begin
    vEntidade := vLista[vIndice];
    TSystemUtils.FreeAndNilDtc(vEntidade);
    vLista.Delete(vIndice);
  end;
end;

procedure TFormCadastroEPIEntrega.BitBtnDTCIncluirClick(Sender: TObject);
var
  vFiltro   : IFiltro;
  vSelecao  : TSelecao;
  vEpiIDs   : Vetor<TChaveValor>;
  vFunc     : TFunc<TChaveValor, Integer>;
  vEntidades: IList<TEntidadeEPIUsoDetalhamento>;
begin
  inherited;
  vFiltro := TFiltroCadastroEquipamentoProtecao.Create;
  (vFiltro as TFiltroCadastroEquipamentoProtecao).FiltroEPI.Empresa := TAcaoAmbienteSistema.RetornaEmpresaAtual;
  (vFiltro as TFiltroCadastroEquipamentoProtecao).FiltroEPI.Data    := DTCDateTimePickerDataEntrega.Date;
  vSelecao := TFormGridCadastroEPIAquisicao.ExecutarSelecaoMultiplos(vFiltro, vSelecao);
  if (not vSelecao.Vazio) then
  begin
    vEpiIDs := vSelecao.Items;
    vFunc := function(AChaveValor: TChaveValor): Integer
             begin
               Result := AChaveValor.Chave;
             end;

    vEntidades := FAcaoCadastroEPIUso.ObtemUSODetalhamento(vEpiIDs.Select<Integer>(vFunc), DTCDateTimePickerDataEntrega.ConteudoDataHora);

    if Assigned(vEntidades) then
    begin
      FListaEntidades.AddRange(vEntidades);
      FListDataSource.DataChanged;
    end;
  end;
end;

procedure TFormCadastroEPIEntrega.BitBtnDTCLimparClick(Sender: TObject);
begin
  inherited;
  if Assigned(FListaEntidades) then
  begin
    FListaEntidades.Clear;
  end;
end;

procedure TFormCadastroEPIEntrega.BitBtnDTCRemoverClick(Sender: TObject);
begin
  inherited;
  if Assigned(cxGridTableViewDtc.Controller.FocusedRecord) then
  begin
    cxGridTableViewDtc.DataController.DeleteFocused;
  end;
end;

procedure TFormCadastroEPIEntrega.ListaEntidadesAtualizada(Sender: TObject);
var
  vFunc : TPredicate<TEntidadeEPIUsoDetalhamento>;
begin
  AtualizarBotoesDeControle(True);
  DefineStatusSofreuAlteracao(True);

  FMemTableSugestoes.First;
  while not FMemTableSugestoes.Eof do
  begin
    vFunc := function(const AEntidade: TEntidadeEPIUsoDetalhamento): Boolean
             begin
               Result := AEntidade.EpiID = FMemTableSugestoes.FieldByName('EPIID').AsInteger;
             end;

    FMemTableSugestoes.Edit;
    if (FListaEntidades.Where(vFunc).Count > 0) then
    begin
      FMemTableSugestoes.FieldByName('STATUS').AsString := 'L'; // L = na lista de entrega
    end
    else
    begin
      FMemTableSugestoes.FieldByName('STATUS').AsString := FMemTableSugestoes.FieldByName('STATUS_ORIGINAL').AsString;
    end;
    FMemTableSugestoes.Post;
    FMemTableSugestoes.Next;
  end;

  DTCDateTimePickerDataEntrega.Enabled := FListDataSource.Count = 0;
  DTCImageHint.Visible                 := not DTCDateTimePickerDataEntrega.Enabled;
end;

procedure TFormCadastroEPIEntrega.AtualizarBotoesDeControle(AHabilitar: Boolean);
begin
  BitBtnDTCIncluir.Enabled := AHabilitar and (not SomenteLeitura);
  BitBtnDTCRemover.Enabled := AHabilitar and (not SomenteLeitura) and (FListaEntidades.Count > 0) and Assigned(cxGridTableViewDtc.Controller.FocusedRecord);
  BitBtnDTCLimpar.Enabled  := AHabilitar and (not SomenteLeitura) and (FListaEntidades.Count > 0);
end;

procedure TFormCadastroEPIEntrega.AtualizarListaDeSugestoes;
var
  vDataSet: TDataSet;
begin
  if Assigned(FMemTableSugestoes) then
  begin
    TSystemUtils.FreeAndNilDtc(FMemTableSugestoes);
  end;

  SpeedButtonDTCRiscos.Enabled := (FPessoalContratoID > 0) and (DTCDateTimePickerDataEntrega.Date > 0);

  if ((FPessoalContratoID > 0) and (DTCDateTimePickerDataEntrega.Date > 0)) then
  begin
    FMemTableSugestoes := FAcaoCadastroEPIUso.ObtemListaSugestaoEStatusDeEntrega(FPessoalContratoID, DTCDateTimePickerDataEntrega.Date);
    DataSourceDTC.DataSet := FMemTableSugestoes;

    vDataSet := FAcaoCadastroEPIUso.ObtemListaRiscosTrabalhador(FPessoalContratoID, DTCDateTimePickerDataEntrega.Date);
    if Assigned(vDataSet) and Assigned(FFormTrabalhadorRiscos) then
    begin
      FFormTrabalhadorRiscos.AtualizarRiscos(vDataSet);
    end;
  end;
end;

procedure TFormCadastroEPIEntrega.ColunaTamanhoGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  vValor: Enumerado<TEPTamanho>;
begin
  inherited;
  if vValor.TrySetValue(AText) then
  begin
    AText := vValor.Descricao(False);
  end;
end;

procedure TFormCadastroEPIEntrega.cxGridSugestoesViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  AdicionarEPISugerido;
end;

procedure TFormCadastroEPIEntrega.cxGridTableViewDtcFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  AtualizarBotoesDeControle(True);
end;

procedure TFormCadastroEPIEntrega.cxGridTableViewDtcStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  vSaldoInsuficiente: Boolean;
begin
  inherited;
  vSaldoInsuficiente := StrToBoolDef(VarToStrDef(ARecord.Values[cxGridTableViewDtcDtcSaldoInsuficiente.Index], EmptyStr), False);
  if vSaldoInsuficiente then
  begin
    AStyle := cxStyleSaldoInsuficiente;
  end
  else
  begin
    AStyle := nil;
  end;
end;

procedure TFormCadastroEPIEntrega.dxBarLargeButtonDTCAdicionarNaListaClick(Sender: TObject);
begin
  inherited;
  AdicionarEPISugerido;
end;

procedure TFormCadastroEPIEntrega.AdicionarEPISugerido;
var
  vSelecao   : TSelecao;
  vEpiIDs    : Vetor<TChaveValor>;
  vFunc      : TFunc<TChaveValor, Integer>;
  vFiltro    : IFiltro;
  vEpiGradeID: Integer;
  vEntidades : IList<TEntidadeEPIUsoDetalhamento>;
begin
  vEntidades  := nil;
  vEpiGradeID := FMemTableSugestoes.FieldByName('ULTIMA_ENTREGA_GRADE_ID').AsInteger;

  if (vEpiGradeID > 0) then
  begin
    vEntidades := FAcaoCadastroEPIUso.ObtemUSODetalhamento([vEpiGradeID], DTCDateTimePickerDataEntrega.ConteudoDataHora);
    if Assigned(vEntidades) and (vEntidades.IsEmpty) then
    begin
      TDTCForms.MessageDtc('O equipamento não pode ser adicionado pois não possui saldo suficiente.');
    end;
  end
  else
  begin
    vFiltro := TFiltroCadastroEquipamentoProtecao.Create;
    (vFiltro as TFiltroCadastroEquipamentoProtecao).FiltroEPI.Empresa := TAcaoAmbienteSistema.RetornaEmpresaAtual;
    (vFiltro as TFiltroCadastroEquipamentoProtecao).FiltroEPI.Data    := DTCDateTimePickerDataEntrega.Date;
    vFiltro.Adicionar(Format('CTEAGRUPAR.EPI_ID = %d', [FMemTableSugestoes.FieldByName('EPIID').AsInteger]));
    vSelecao := TFormGridCadastroEPIAquisicao.ExecutarSelecaoMultiplos(vFiltro, vSelecao);
    if (not vSelecao.Vazio) then
    begin
      vEpiIDs := vSelecao.Items;
      vFunc := function(AChaveValor: TChaveValor): Integer
               begin
                 Result := AChaveValor.Chave;
               end;

      vEntidades := FAcaoCadastroEPIUso.ObtemUSODetalhamento(vEpiIDs.Select<Integer>(vFunc), DTCDateTimePickerDataEntrega.ConteudoDataHora);
    end;
  end;

  if Assigned(vEntidades) and (not vEntidades.IsEmpty) then
  begin
    FListaEntidades.AddRange(vEntidades);
    FListDataSource.DataChanged;
  end;
end;

procedure TFormCadastroEPIEntrega.cxGridSugestoesEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  inherited;
  TSystemUtils.FreeAndNilDtc(FDragObject);
  FIsOnDragOver := False;
  Invalidate;
end;

procedure TFormCadastroEPIEntrega.cxGridSugestoesViewDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := Source is TEPIDragObject;
end;

procedure TFormCadastroEPIEntrega.cxGridSugestoesViewStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  inherited;
  if Assigned(FDragObject) then
  begin
    FreeAndNil(FDragObject);
  end;

  if (Sender is TWinControl) then
  begin
    FDragObject := TEPIDragObject.Create(cxGridSugestoesView);
    DragObject  := FDragObject;
    DragObject.ShowDragImage;
  end;

  FIsOnDragOver := True;
  Invalidate;
end;

procedure TFormCadastroEPIEntrega.cxGridTableViewDtcDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
  AdicionarEPISugerido;
end;

procedure TFormCadastroEPIEntrega.cxGridTableViewDtcDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := Source is TEPIDragObject;
end;

procedure TFormCadastroEPIEntrega.DTCDateTimePickerDataEntregaPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  AtualizarListaDeSugestoes;
end;

procedure TFormCadastroEPIEntrega.DTCHintPanelSugestoesFecharClick(Sender: TObject);
var
  vAcaoRegistroDB: IAcaoRegistroDB;
begin
  inherited;
  vAcaoRegistroDB := TFactoryAcao.RetornaSingleton<IAcaoRegistroDB>;
  vAcaoRegistroDB.SetSalvarPorUsuario(True);
  vAcaoRegistroDB.SetSalvarPorEmpresa(False);
  vAcaoRegistroDB.CarregarRegistros(TAcaoAmbienteSistema.RetornaUsuarioID);
  vAcaoRegistroDB.AbrirChaveRegistro(TAcaoAmbienteSistema.RetornaNomeExternoSistema, ClassName + ' - Configurações', True);
  vAcaoRegistroDB.SetarBoolean('OcultouHint', True);
  vAcaoRegistroDB.GravarRegistros;
end;

procedure TFormCadastroEPIEntrega.SpeedButtonDTCRiscosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Assigned(FFormTrabalhadorRiscos) then
  begin
    FFormTrabalhadorRiscos.ShowDropdown(Self, SpeedButtonDTCRiscos.ClientToScreen(Point(0 - FFormTrabalhadorRiscos.Width - 2, 0)));
  end;
end;

{ TEPIDragObject }

constructor TEPIDragObject.Create(AGridView: TcxGridDBCardView);
begin
  FGridView   := AGridView;
  FImageList  := TDragImageList.Create(nil);
  inherited Create(AGridView.Control as TControl);
  AlwaysShowDragImages := True;
end;

destructor TEPIDragObject.Destroy;
begin
  TSystemUtils.FreeAndNilDtc(FImageList);
  inherited;
end;

function TEPIDragObject.GetDragCursor(Accepted: Boolean; X, Y: Integer): TCursor;
begin
  Result := crNoDrop;
  if Accepted then
  begin
    Result := crDefault;
  end;
end;

function TEPIDragObject.GetDragImages: TDragImageList;
begin
  Result := FImageList;
end;

procedure TEPIDragObject.ShowDragImage;
var
  vBounds : TRect;
  vLBitmap: TBitmap;
  vSBitmap: TBitmap;
begin
  inherited;
  vBounds  := FGridView.ViewInfo.RecordsViewInfo[FGridView.Controller.FocusedRecord.RecordIndex].Bounds;
  vLBitmap := TBitmap.Create;
  vSBitmap := TBitmap.Create;
  try
    vLBitmap.Height := FGridView.Control.Height;
    vLBitmap.Width  := FGridView.Control.Width;
    FGridView.Control.PaintTo(vLBitmap.Canvas.Handle, 0, 0);

    vSBitmap.Height := vBounds.Height;
    vSBitmap.Width  := vBounds.Width;
    vSBitmap.Canvas.CopyRect(Rect(0, 0, vSBitmap.Width, vSBitmap.Height), vLBitmap.Canvas, vBounds);

    FImageList.Clear;
    FImageList.Width  := vSBitmap.Width;
    FImageList.Height := vSBitmap.Height;
    FImageList.Add(vSBitmap, nil);
    FImageList.SetDragImage(0, vSBitmap.Width div 2, vSBitmap.Height div 2);
  finally
    TSystemUtils.FreeAndNilDtc(vLBitmap);
    TSystemUtils.FreeAndNilDtc(vSBitmap);
  end;
end;

end.
