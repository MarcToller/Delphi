unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxmdaset,  StdCtrls, cxTextEdit,
  ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, cxDataUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.Controls,
  cxSplitter, (*uDTCTipos,*) dxSkinsCore, dxSkinsDefaultPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridBandedTableView,
  cxGridDBBandedTableView, Vcl.Buttons, cxButtonEdit, Vcl.Menus,
  System.ImageList, Vcl.ImgList;

const
  UM_AFTERSTARTDRAG = WM_USER + 10000;
  cMaxSelecionadas = 5;


type
  TForm1 = class(TForm)
    dsFrom: TDataSource;
    dsTo: TDataSource;
    btnCopy: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PanelFrom: TPanel;
    Label1: TLabel;
    gDragFrom: TcxGrid;
    tvDragFrom: TcxGridDBTableView;
    tvDragFromCodigo: TcxGridDBColumn;
    tvDragFromDescricao: TcxGridDBColumn;
    lvDragFrom: TcxGridLevel;
    Panel1: TPanel;
    Label2: TLabel;
    gDragTo: TcxGrid;
    tvDragTo: TcxGridDBTableView;
    tvDragToCodigo: TcxGridDBColumn;
    tvDragToDescricao: TcxGridDBColumn;
    lvDragTo: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    gDragToDBTableView1: TcxGridDBTableView;
    gDragToLevel1: TcxGridLevel;
    DataSourceAssociacoes: TDataSource;
    cxStyle2: TcxStyle;
    FDMemTableFrom: TFDMemTable;
    FDMemTableTo: TFDMemTable;
    FDMemTableAssociacoes: TFDMemTable;
    FDMemTableFromCodigo: TIntegerField;
    FDMemTableFromDescricao: TStringField;
    FDMemTableToCodigo: TIntegerField;
    FDMemTableToDescricao: TStringField;
    FDMemTableAssociacoesCodigo: TIntegerField;
    FDMemTableAssociacoesDescricao: TStringField;
    FDMemTableAssociacoesCodigo_conta: TIntegerField;
    cxViewAssociacoes: TcxGridDBBandedTableView;
    cxViewAssociacoesCodigoDescricao: TcxGridDBBandedColumn;
    cxViewAssociacoesCodigo: TcxGridDBBandedColumn;
    cxViewAssociacoesCodigoConta: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
    FDMemTableFromEstrutural: TStringField;
    tvDragFromEstrututral: TcxGridDBColumn;
    FDMemTableToEstrutural: TStringField;
    tvDragToEstrutural: TcxGridDBColumn;
    FDMemTableFromReduzido: TStringField;
    FDMemTableFromContaAnalitica: TStringField;
    tvDragFromReduzido: TcxGridDBColumn;
    tvDragFromAnalitica: TcxGridDBColumn;
    tvDragToContaAnalitica: TcxGridDBColumn;
    FDMemTableToContaAnalitica: TStringField;
    cxStyle4: TcxStyle;
    FDMemTableToQtdAssociacoes: TIntegerField;
    tvDragToQtdAssociacoes: TcxGridDBColumn;
    FDMemTableFromDescricaoReferencial: TStringField;
    tvDragFromDescricaoReferencial: TcxGridDBColumn;
    tvDragToBotaoExcluir: TcxGridDBColumn;
    cxViewAssociacoesColumn1: TcxGridDBBandedColumn;
    TimerExclusaoIndividual: TTimer;
    PopupMenuFrom: TPopupMenu;
    Excluirassociao1: TMenuItem;
    localizarnoPlanoReferencial1: TMenuItem;
    ImageListPopUpMenuFrom: TImageList;
    PopupMenuTo: TPopupMenu;
    ExcluirtodasasassociaesdestaConta1: TMenuItem;
    procedure CopyRecords(ACodigo: integer; ARecordIndex: integer);
    procedure tvDragFromMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tvDragToDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvDragFromDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvDragFromEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure tvDragFromStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tvDragToDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxViewAssociacoesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxViewAssociacoesDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tvDragFromCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas:
        TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvDragFromDescricaoGetCellHint(Sender: TcxCustomGridTableItem;
        ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
        const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine:
        Boolean; var AHintTextRect: TRect);
    procedure tvDragToCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas:
        TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvDragToGroupRowExpanding(Sender: TcxGridTableView; AGroup:
        TcxGridGroupRow; var AAllow: Boolean);
    procedure tvDragToDataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure tvDragToColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvDragToDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxViewAssociacoesColumn1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TimerExclusaoIndividualTimer(Sender: TObject);
    procedure Excluirassociao1Click(Sender: TObject);
    procedure PopupMenuFromPopup(Sender: TObject);
    procedure ExcluirtodasasassociaesdestaConta1Click(Sender: TObject);
    procedure PopupMenuToPopup(Sender: TObject);
    procedure localizarnoPlanoReferencial1Click(Sender: TObject);
    procedure cxViewAssociacoesCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    FPrevHitTest: TcxCustomGridHitTest;
    //FDragObject : TDragControlObject;
    //FIsOnDragOver: Boolean;
    procedure LimparStyle(Sender : TObject);
  public
    procedure UmAfterStartDrag(var Message: TMessage); message UM_AFTERSTARTDRAG;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Spring.Collections(*, MascaraContabilidade*), MascaraContabilidade;

type
  TcxGridSiteAccess = class (TcxGridSite);


{$R *.dfm}

type
  TMeuDragObject = class(TDragControlObject)
  private
    FGridView : TcxGridDBTableView;
    FImageList: TDragImageList;
    FMetodo: TNotifyEvent;
    function RetornaImagemAdicional(ATotalSelecionados: integer; ALinha: TRect): TBitmap;
  protected
    function GetDragCursor(Accepted: Boolean; X, Y: Integer): TCursor; override;
    function GetDragImages: TDragImageList; override;
    procedure Finished(Target: TObject; X, Y: Integer; Accepted: Boolean); override;
    procedure EndDrag(Target: TObject; X, Y: Integer); override;
  public
    procedure SetMetodo(AMetodo: TNotifyEvent);
    constructor Create(AGridView: TcxGridDBTableView); reintroduce;
    destructor Destroy; override;
    procedure ShowDragImage1;
    procedure ShowDragImage; override;
  end;



procedure TForm1.AfterConstruction;
var
  vInd: Integer;

  procedure AdicionarContaEmpresa(AEStrutural: string; AReduzido: string; ADescricao: string; AContaAnalitica: String);
  begin
    Inc(vInd);
    FDMemTableFrom.Append;
    FDMemTableFromCodigo.AsInteger := vInd;
    FDMemTableFromEstrutural.AsString := AEStrutural;
    FDMemTableFromDescricao.AsString := ADescricao;
    FDMemTableFromReduzido.AsString := AReduzido;
    FDMemTableFromContaAnalitica.AsString := AContaAnalitica;

    FDMemTableFrom.Post;
  end;

  procedure AdicionarContaReferencial(AEStrutural: string; Descricao: string; AContaAnalitica: String);
  begin
    Inc(vInd);
    FDMemTableTo.Append;
    FDMemTableToCodigo.AsInteger := vInd;
    FDMemTableToEstrutural.AsString := AEStrutural;
    FDMemTableToDescricao.AsString := Descricao;
    FDMemTableToContaAnalitica.AsString := AContaAnalitica;
    FDMemTableTo.Post;
  end;



begin
  inherited;
  vInd := 0;
  FDMemTableFrom.Active := True;
  FDMemTableTo.Active := True;
  FDMemTableAssociacoes.Active := True;
  FDMemTableAssociacoes.IndexFieldNames := 'ID_Referencial;ID_ContaContabil';

  AdicionarContaEmpresa('1.0.0.00.0000', '',     'ATIVO                                                        ', 'F');
  AdicionarContaEmpresa('1.1.0.00.0000', '',     '     CIRCULANTE                                              ', 'F');
  AdicionarContaEmpresa('1.1.1.00.0000', '',     '          DISPONIVEL                                         ', 'F');
  AdicionarContaEmpresa('1.1.1.01.0000', '',     '               CAIXA GERAL                                   ', 'F');
  AdicionarContaEmpresa('1.1.1.01.0001', '0001', '                        CAIXA                                ', 'T');
  AdicionarContaEmpresa('1.1.1.01.0002', '0002', '                        CHEQUES PRE-DATADOS                  ', 'T');
  AdicionarContaEmpresa('1.1.1.02.0000', '',     '               BANCO CONTA CORRENTE                          ', 'F');
  AdicionarContaEmpresa('1.1.1.02.0001', '0003', '                        BANCO A                              ', 'T');
  AdicionarContaEmpresa('1.1.1.02.0002', '0004', '                            BANCO B                          ', 'T');
  AdicionarContaEmpresa('1.1.1.03.0000', '',     '                   BANCO CONTA APLICACOES                    ', 'F');
  AdicionarContaEmpresa('1.1.1.03.0001', '0005', '                        BANCO A C/APLIC                      ', 'T');
  AdicionarContaEmpresa('1.1.1.03.0002', '0006', '                            BANCO B C/APLIC                  ', 'T');
  AdicionarContaEmpresa('1.1.2.00.0000', '',     '              CREDITOS DE CLIENTES                           ', 'F');
  AdicionarContaEmpresa('1.1.2.01.0000', '',     '               DUPLICATAS A RECEBER                          ', 'F');
  AdicionarContaEmpresa('1.1.2.01.0001', '0007', '                            CLIENTE ABC                      ', 'T');
  AdicionarContaEmpresa('1.1.2.01.0002', '0008', '                            CLIENTE XYZ                      ', 'T');
  AdicionarContaEmpresa('1.1.2.01.0003', '0009', '                        CLIENTE AAA                          ', 'T');
  AdicionarContaEmpresa('1.1.2.80.0000', '',     '               (-)DUPLICATAS DESCONTADAS                     ', 'F');
  AdicionarContaEmpresa('1.1.2.80.0001', '0010', '                            BANCO BBBB                       ', 'T');
  AdicionarContaEmpresa('1.1.2.80.0002', '0011', '                            BANCO AA                         ', 'T');
  AdicionarContaEmpresa('1.1.2.90.0000', '',     '                   (-) PROV P/CRED LIQ DUVIDOSA              ', 'F');
  AdicionarContaEmpresa('1.1.2.90.0001', '0012', '                        PROVISAO P/CLD                       ', 'T');
  AdicionarContaEmpresa('1.1.5.00.0000', '',     '              OUTROS CREDITOS                                ', 'F');
  AdicionarContaEmpresa('1.1.5.01.0000', '',     '                   ADIANTAMENTOS A TERCEIROS                 ', 'F');
  AdicionarContaEmpresa('1.1.5.01.0001', '0013', '                        FORNECEDOR A                         ', 'T');
  AdicionarContaEmpresa('1.1.5.01.0002', '0014', '                            FORNECEDOR B                     ', 'T');
  AdicionarContaEmpresa('1.1.5.01.0003', '0015', '                        FORNECEDOR CC                        ', 'T');
  AdicionarContaEmpresa('1.1.5.02.0000', '',     '               ADIANTAMENTOS A FUNCIONARIOS                  ', 'F');
  AdicionarContaEmpresa('1.1.5.02.0001', '0016', '                            FUNCIONARIO AA                   ', 'T');
  AdicionarContaEmpresa('1.1.5.02.0002', '0017', '                            FUNCIONARIO BB                   ', 'T');
  AdicionarContaEmpresa('1.1.5.03.0000', '',     '                   DEPOSITOS CAUCIONADOS                     ', 'F');
  AdicionarContaEmpresa('1.1.5.03.0001', '0018', '                        DEPOS CAUC AA                        ', 'T');
  AdicionarContaEmpresa('1.1.5.03.0002', '0019', '                            DEPOSITO CAUC BBB                ', 'T');
  AdicionarContaEmpresa('1.1.7.00.0000', '',     '              ESTOQUES                                       ', 'F');
  AdicionarContaEmpresa('1.1.7.01.0000', '',     '               ESTOQUE DE PRODUTOS                           ', 'F');
  AdicionarContaEmpresa('1.1.7.01.0001', '0020', '                            ESTOQUE DE MATERIA PRIMA         ', 'T');
  AdicionarContaEmpresa('1.1.7.01.0002', '0021', '                            ESTOQUE DE PRODUTOS EM ELABORACAO', 'T');
  AdicionarContaEmpresa('1.1.7.01.0003', '0022', '                        ESTOQUE PRODUTO PRONTO               ', 'T');
  AdicionarContaEmpresa('1.1.7.02.0000', '',     '               ESTOQUE DE MERCADORIAS P/REVENDA              ', 'F');
  AdicionarContaEmpresa('1.1.7.02.0001', '0023', '                            MERCADORIAS AAA                  ', 'T');
  AdicionarContaEmpresa('1.1.7.02.0002', '0024', '                            MERCADORIAS BBB                  ', 'T');
  AdicionarContaEmpresa('1.1.7.03.0000', '',     '                   MERCADORIAS EM CONSIGNACAO                ', 'F');
  AdicionarContaEmpresa('1.1.7.03.0001', '0025', '                        REVENDA AAA                          ', 'T');
  AdicionarContaEmpresa('1.1.7.03.0002', '0026', '                            REVENDA BBB                      ', 'T');
  AdicionarContaEmpresa('1.1.9.00.0000', '',     '              DESPESAS ANTECIPADAS                           ', 'F');
  AdicionarContaEmpresa('1.1.9.01.0000', '',     '               DESPESAS A APROPRIAR                          ', 'F');
  AdicionarContaEmpresa('1.1.9.01.0001', '0027', '                            PREMIOS DE SEGUROS A APROPRIAR   ', 'T');
  AdicionarContaEmpresa('1.1.9.01.0002', '0028', '                            ENCARGOS FINANCEIROS A APROPRIAR ', 'T');

  AdicionarContaReferencial('1.0.0.00.0000',  'ATIVO                                                        ', 'F');
  AdicionarContaReferencial('1.1.0.00.0000',  '     CIRCULANTE                                              ', 'F');
  AdicionarContaReferencial('1.1.1.00.0000',  '          DISPONIVEL                                         ', 'F');
  AdicionarContaReferencial('1.1.1.01.0000',  '               CAIXA GERAL                                   ', 'F');
  AdicionarContaReferencial('1.1.1.01.0001',  '                        CAIXA                                ', 'T');
  AdicionarContaReferencial('1.1.1.01.0002',  '                        CHEQUES PRE-DATADOS                  ', 'T');
  AdicionarContaReferencial('1.1.1.02.0000',  '               BANCO CONTA CORRENTE                          ', 'F');
  AdicionarContaReferencial('1.1.1.02.0001',  '                        BANCO A                              ', 'T');
  AdicionarContaReferencial('1.1.1.02.0002',  '                            BANCO B                          ', 'T');
  AdicionarContaReferencial('1.1.1.03.0000',  '                   BANCO CONTA APLICACOES                    ', 'F');
  AdicionarContaReferencial('1.1.1.03.0001',  '                        BANCO A C/APLIC                      ', 'T');
  AdicionarContaReferencial('1.1.1.03.0002',  '                            BANCO B C/APLIC                  ', 'T');
  AdicionarContaReferencial('1.1.2.00.0000',  '              CREDITOS DE CLIENTES                           ', 'F');
  AdicionarContaReferencial('1.1.2.01.0000',  '               DUPLICATAS A RECEBER                          ', 'F');
  AdicionarContaReferencial('1.1.2.01.0001',  '                            CLIENTE ABC                      ', 'T');
  AdicionarContaReferencial('1.1.2.01.0002',  '                            CLIENTE XYZ                      ', 'T');
  AdicionarContaReferencial('1.1.2.01.0003',  '                        CLIENTE AAA                          ', 'T');
  AdicionarContaReferencial('1.1.2.80.0000',  '               (-)DUPLICATAS DESCONTADAS                     ', 'F');
  AdicionarContaReferencial('1.1.2.80.0001',  '                            BANCO BBBB                       ', 'T');
  AdicionarContaReferencial('1.1.2.80.0002',  '                            BANCO AA                         ', 'T');
  AdicionarContaReferencial('1.1.2.90.0000',  '                   (-) PROV P/CRED LIQ DUVIDOSA              ', 'F');
  AdicionarContaReferencial('1.1.2.90.0001',  '                        PROVISAO P/CLD                       ', 'T');
  AdicionarContaReferencial('1.1.5.00.0000',  '              OUTROS CREDITOS                                ', 'F');
  AdicionarContaReferencial('1.1.5.01.0000',  '                   ADIANTAMENTOS A TERCEIROS                 ', 'F');
  AdicionarContaReferencial('1.1.5.01.0001',  '                        FORNECEDOR A                         ', 'T');
  AdicionarContaReferencial('1.1.5.01.0002',  '                            FORNECEDOR B                     ', 'T');
  AdicionarContaReferencial('1.1.5.01.0003',  '                        FORNECEDOR CC                        ', 'T');
  AdicionarContaReferencial('1.1.5.02.0000',  '               ADIANTAMENTOS A FUNCIONARIOS                  ', 'F');
  AdicionarContaReferencial('1.1.5.02.0001',  '                            FUNCIONARIO AA                   ', 'T');
  AdicionarContaReferencial('1.1.5.02.0002',  '                            FUNCIONARIO BB                   ', 'T');
  AdicionarContaReferencial('1.1.5.03.0000',  '                   DEPOSITOS CAUCIONADOS                     ', 'F');
  AdicionarContaReferencial('1.1.5.03.0001',  '                        DEPOS CAUC AA                        ', 'T');
  AdicionarContaReferencial('1.1.5.03.0002',  '                            DEPOSITO CAUC BBB                ', 'T');
  AdicionarContaReferencial('1.1.7.00.0000',  '              ESTOQUES                                       ', 'F');
  AdicionarContaReferencial('1.1.7.01.0000',  '               ESTOQUE DE PRODUTOS                           ', 'F');
  AdicionarContaReferencial('1.1.7.01.0001',  '                            ESTOQUE DE MATERIA PRIMA         ', 'T');
  AdicionarContaReferencial('1.1.7.01.0002',  '                            ESTOQUE DE PRODUTOS EM ELABORACAO', 'T');
  AdicionarContaReferencial('1.1.7.01.0003',  '                        ESTOQUE PRODUTO PRONTO               ', 'T');
  AdicionarContaReferencial('1.1.7.02.0000',  '               ESTOQUE DE MERCADORIAS P/REVENDA              ', 'F');
  AdicionarContaReferencial('1.1.7.02.0001',  '                            MERCADORIAS AAA                  ', 'T');
  AdicionarContaReferencial('1.1.7.02.0002',  '                            MERCADORIAS BBB                  ', 'T');
  AdicionarContaReferencial('1.1.7.03.0000',  '                   MERCADORIAS EM CONSIGNACAO                ', 'F');
  AdicionarContaReferencial('1.1.7.03.0001',  '                        REVENDA AAA                          ', 'T');
  AdicionarContaReferencial('1.1.7.03.0002',  '                            REVENDA BBB                      ', 'T');
  AdicionarContaReferencial('1.1.9.00.0000',  '              DESPESAS ANTECIPADAS                           ', 'F');
  AdicionarContaReferencial('1.1.9.01.0000',  '               DESPESAS A APROPRIAR                          ', 'F');
  AdicionarContaReferencial('1.1.9.01.0001',  '                            PREMIOS DE SEGUROS A APROPRIAR   ', 'T');
  AdicionarContaReferencial('1.1.9.01.0002',  '                            ENCARGOS FINANCEIROS A APROPRIAR ', 'T');



  FDMemTableFrom.First;
  FDMemTableTo.First;

end;



procedure TForm1.BeforeDestruction;
begin
  inherited;

end;

procedure TForm1.CopyRecords(ACodigo: integer; ARecordIndex: integer);
var
  i : integer;
  vCount: Integer;
  //vRowIndex: Integer;
  vCodigo: integer;
  vListaCodigos: IList<integer>;
  vDescricaoReferencial: string;
  vContaAssociada: Boolean;
  vContaSintetica: string;

  procedure Adicionar(ACodigoConta: Integer; AEstrutural: string; AReduzido: string; ADescricao: string);
  begin
    FDMemTableAssociacoes.Append;
    FDMemTableAssociacoesCodigo.AsInteger       := ACodigo;
    FDMemTableAssociacoesCodigo_conta.AsInteger := ACodigoConta;
    vListaCodigos.Add(ACodigoConta);
    FDMemTableAssociacoesDescricao.AsString     := AEstrutural+' - '+AReduzido+' - '+Trim(ADescricao);
    Inc(vCount);
    FDMemTableAssociacoes.Post;
  end;

begin
  vCount := 0;

(*  if ARecordIndex = 0 then
    ARecordIndex := tvDragTo.DataController.FocusedRecordIndex;*)

  vListaCodigos := TCollections.CreateList<integer>;

  tvDragFrom.DataController.SaveDataSetPos;
  tvDragTo.DataController.SaveDataSetPos;

  cxViewAssociacoes.DataController.BeginUpdate;
  tvDragTo.DataController.BeginUpdate;
  tvDragFrom.DataController.BeginUpdate;

  FDMemTableAssociacoes.DisableControls;
  FDMemTableTo.DisableControls;
  FDMemTableFrom.DisableControls;

  if TMascaraContabilidade.ContaSintetica(FDMemTableFromEstrutural.AsString) then
  begin
    vContaSintetica := FDMemTableFromEstrutural.AsString;
    FDMemTableFrom.Next;

    while True do
    begin
      if TMascaraContabilidade.ContaPertence(FDMemTableFromEstrutural.AsString, vContaSintetica) and not FDMemTableFrom.Eof then
      begin
        if (FDMemTableFromContaAnalitica.AsString = 'T') and (FDMemTableFromDescricaoReferencial.AsString = '') then
        begin
          Adicionar(FDMemTableFromCodigo.AsInteger,
                    FDMemTableFromEstrutural.AsString,
                    FDMemTableFromReduzido.AsString,
                    FDMemTableFromDescricao.AsString);
        end;
      end
      else
        Break;

      FDMemTableFrom.Next;
    end;
  end
  else
  begin
    for i := 0 to tvDragFrom.ViewData.RecordCount -1 do
    begin
      if tvDragFrom.ViewData.Records[I].Selected then
      begin
        vContaAssociada := VarToStr(tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex, tvDragFromDescricaoReferencial.Index]) <> '';

        if (tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,4] = 'T') and not vContaAssociada then
        begin
          Adicionar(tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex, tvDragFromCodigo.Index],
                    tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex, tvDragFromEstrututral.Index],
                    tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex, tvDragFromReduzido.Index],
                    tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex, tvDragFromDescricao.Index]);
(*          FDMemTableAssociacoes.Append;
          FDMemTableAssociacoesCodigo.AsInteger       := ACodigo;
          FDMemTableAssociacoesCodigo_conta.AsInteger := tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,0];
          vListaCodigos.Add(FDMemTableAssociacoesCodigo_conta.AsInteger);
          FDMemTableAssociacoesDescricao.AsString     := tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,1]+' - '+tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,2]+' - '+Trim(tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,3]);
          Inc(vCount);
          FDMemTableAssociacoes.Post;*)
        end;
      end;
    end;
  end;

  if (vCount > 0) and FDMemTableTo.Locate('ReferencialID', ACodigo, []) then
  begin
    vDescricaoReferencial := FDMemTableToEstrutural.AsString +' - '+Trim(FDMemTableToDescricao.AsString);
    FDMemTableTo.Edit;
    FDMemTableToQtdAssociacoes.AsInteger := FDMemTableToQtdAssociacoes.AsInteger + vCount;
    FDMemTableTo.Post;
  end;


  for vCodigo in vListaCodigos do
  begin
    if FDMemTableFrom.Locate('PlanoContasID', vCodigo, []) then
    begin
      FDMemTableFrom.Edit;
      FDMemTableFromDescricaoReferencial.AsString := vDescricaoReferencial;
      FDMemTableFrom.Post;
    end;
  end;


  tvDragFrom.DataController.RestoreDataSetPos;
  tvDragTo.DataController.RestoreDataSetPos;

  cxViewAssociacoes.DataController.EndUpdate;
  tvDragTo.DataController.EndUpdate;
  tvDragFrom.DataController.EndUpdate;

  FDMemTableAssociacoes.EnableControls;
  FDMemTableTo.EnableControls;
  FDMemTableFrom.EnableControls;

  if ARecordIndex > 0 then
    tvDragTo.DataController.CollapseDetails;

  if (ARecordIndex > 0) and (vCount > 0) then
    tvDragTo.DataController.ChangeDetailExpanding(ARecordIndex, True);

  LimparStyle(nil);
end;

procedure TForm1.cxViewAssociacoesColumn1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TimerExclusaoIndividual.Enabled := True;
end;

procedure TForm1.cxViewAssociacoesCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.RecordViewInfo.GridRecord.Focused then
  begin
    //ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Style := [TFontStyle.fsBold];//  := clWhite;
    //ACanvas.Font.Color := clTeal;
  end;

  if AViewInfo.Item.Index = cxViewAssociacoesColumn1.Index then
    ACanvas.Brush.Color := cxViewAssociacoes.Styles.Content.Color;


end;

procedure TForm1.cxViewAssociacoesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  ARecIndex: Integer;
  vValue: integer;
begin
  vValue := 0;
  AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
  begin
    ARecIndex := TcxGridRecordCellHitTest(AHitTest).GridRecord.RecordIndex;
    vValue := TcxGridSite(Sender).GridView.DataController.Values[ARecIndex, cxViewAssociacoesCodigo.Index];
  end;

  CopyRecords(vValue, 0);
end;

procedure TForm1.cxViewAssociacoesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TMeuDragObject);
end;


procedure TForm1.Excluirassociao1Click(Sender: TObject);
var
  vReferencialID: Integer;
begin
  if FDMemTableAssociacoes.Locate('ID_ContaContabil', FDMemTableFromCodigo.AsInteger, []) then
  begin
    vReferencialID := FDMemTableAssociacoesCodigo.AsInteger;

    if FDMemTableTo.Locate('ReferencialID', vReferencialID, []) then
      TimerExclusaoIndividual.Enabled := true;
  end;
end;

procedure TForm1.ExcluirtodasasassociaesdestaConta1Click(Sender: TObject);
var
  vPlanoReferencialID: Integer;
begin
  vPlanoReferencialID := FDMemTableToCodigo.AsInteger;

  tvDragTo.DataController.BeginUpdate;
  tvDragFrom.DataController.SaveDataSetPos;
  tvDragFrom.DataController.BeginUpdate;
  cxViewAssociacoes.DataController.BeginUpdate;

  FDMemTableTo.Edit;
  FDMemTableToQtdAssociacoes.AsInteger := 0;
  FDMemTableTo.Post;

  while FDMemTableAssociacoes.Locate('ID_Referencial', vPlanoReferencialID, []) do
  begin
    if FDMemTableFrom.Locate('PlanoContasID', FDMemTableAssociacoesCodigo_conta.AsInteger, []) then
    begin
      FDMemTableFrom.Edit;
      FDMemTableFromDescricaoReferencial.AsString := '';
      FDMemTableFrom.Post;
    end;

    FDMemTableAssociacoes.Delete;
  end;

  cxViewAssociacoes.DataController.EndUpdate;

  tvDragFrom.DataController.RestoreDataSetPos;
  tvDragFrom.DataController.EndUpdate;
  tvDragTo.DataController.EndUpdate;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PanelFrom.Width := RoundDiv(Screen.Width, 2);
end;

procedure TForm1.LimparStyle(Sender : TObject);
begin
  tvDragTo.Styles.Selection := nil;
  cxViewAssociacoes.Styles.Selection := nil;
end;

procedure TForm1.localizarnoPlanoReferencial1Click(Sender: TObject);
var
  vReferencialID: Integer;
begin
  if FDMemTableAssociacoes.Locate('ID_ContaContabil', FDMemTableFromCodigo.AsInteger, []) then
  begin
    vReferencialID := FDMemTableAssociacoesCodigo.AsInteger;

    if FDMemTableTo.Locate('ReferencialID', vReferencialID, []) then
    begin
      tvDragTo.DataController.CollapseDetails;
      tvDragTo.DataController.ChangeDetailExpanding(tvDragTo.DataController.FocusedRecordIndex, True);
    end;
  end;
end;

procedure TForm1.PopupMenuFromPopup(Sender: TObject);
begin
  if FDMemTableFromDescricaoReferencial.AsString <> '' then
  begin
    localizarnoPlanoReferencial1.Visible := True;
    Excluirassociao1.Visible := True;
    Excluirassociao1.Caption := 'Excluir associação com '+ Copy(FDMemTableFromDescricaoReferencial.AsString, 1, 40)+'..';
    localizarnoPlanoReferencial1.Caption := 'Localizar Conta Contábil no Plano Referencial';
  end
  else
  begin
    localizarnoPlanoReferencial1.Visible := False;
    Excluirassociao1.Visible := False;
    //Excluirassociao1.Caption := 'Conta não está associada ao Plano Referencial'
  end;

end;

procedure TForm1.PopupMenuToPopup(Sender: TObject);
begin
  ExcluirtodasasassociaesdestaConta1.Visible := FDMemTableToQtdAssociacoes.AsInteger > 0;
end;

procedure TForm1.TimerExclusaoIndividualTimer(Sender: TObject);
begin
  TimerExclusaoIndividual.Enabled := False;
  tvDragTo.DataController.BeginUpdate;

  tvDragFrom.DataController.SaveDataSetPos;
  tvDragFrom.DataController.BeginUpdate;
  cxViewAssociacoes.DataController.BeginUpdate;

  FDMemTableTo.Edit;
  FDMemTableToQtdAssociacoes.AsInteger := FDMemTableToQtdAssociacoes.AsInteger -1;
  FDMemTableTo.Post;

  if FDMemTableFrom.Locate('PlanoContasID', FDMemTableAssociacoesCodigo_conta.AsInteger, []) then
  begin
    FDMemTableFrom.Edit;
    FDMemTableFromDescricaoReferencial.AsString := '';
    FDMemTableFrom.Post;
  end;

  FDMemTableAssociacoes.Delete;

  cxViewAssociacoes.DataController.EndUpdate;

  tvDragFrom.DataController.RestoreDataSetPos;
  tvDragFrom.DataController.EndUpdate;
  tvDragTo.DataController.EndUpdate;
end;

procedure TForm1.tvDragFromCustomDrawCell(Sender: TcxCustomGridTableView;  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  vDescricao: string;
begin
  vDescricao := AViewInfo.GridRecord.DisplayTexts[tvDragFromDescricaoReferencial.Index];

  if vDescricao <> '' then
  begin
    ACanvas.Brush.Color := clSilver;
    ACanvas.Font.Color  := clBlack;
  end;

end;

procedure TForm1.tvDragFromDescricaoGetCellHint(Sender: TcxCustomGridTableItem;
    ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
    const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine:
    Boolean; var AHintTextRect: TRect);
begin
  AHintText := VarToStr(ACellViewInfo.GridRecord.Values[tvDragFromDescricaoReferencial.Index]);

  if AHintText <> '' then
    AHintText := 'ASSOCIADA AO REFERENCIAL '+AHintText;
end;

procedure TForm1.tvDragToDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  AHitTest: TcxCustomGridHitTest;
  ARecIndex: Integer;
  vValue: Variant;
begin
  //ARecIndex := 0;
  vValue := '';

  AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
  begin
    ARecIndex := TcxGridRecordCellHitTest(AHitTest).GridRecord.RecordIndex;
    vValue := TcxGridSite(Sender).GridView.DataController.Values[ARecIndex, tvDragToContaAnalitica.Index];
  end;

  Accept := (Source is TMeuDragObject) and (vValue = 'T');

  if Accept then
  begin
    tvDragTo.Styles.Selection := cxStyle1;
    cxViewAssociacoes.Styles.Selection := cxStyle1;
  end
  else
  begin
    tvDragTo.Styles.Selection := cxStyle4;
    //cxViewAssociacoes.Styles.Selection := cxStyle4;
  end;
end;

procedure TForm1.UmAfterStartDrag(var Message: TMessage);
var
  AGridSite: TcxGridSiteAccess;
begin
  if TObject(Message.WParam) is TcxGridSite then
  begin
    AGridSite := TcxGridSiteAccess(Message.WParam);
    tvDragTo.Styles.Selection := cxStyle1;
    cxViewAssociacoes.Styles.Selection := cxStyle1;

    if tvDragFrom.DataController.GetSelectedCount > 1 then
      AGridSite.DragCursor := crMultiDrag
    else
      AGridSite.DragCursor := crHandPoint;
  end;
end;

procedure TForm1.tvDragFromDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := False;
end;

procedure TForm1.tvDragFromEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  LimparStyle(nil);
// não esta passando por aqui...
(*  tvDragTo.Styles.Selection := nil;
  cxViewAssociacoes.Styles.Selection := nil;*)

  //FreeAndNil(FDragObject);
  //FIsOnDragOver := False;
  //Invalidate;
end;


procedure TForm1.tvDragFromMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
begin
  AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
  begin
    if TcxGridRecordCellHitTest(AHitTest).GridRecord.Selected then
      if (FPrevHitTest <> nil) and (FPrevHitTest is TcxGridRowIndicatorHitTest) then
      begin
        TcxGridSite(Sender).BeginDrag(True);
      end;
  end;
  FPrevHitTest := AHitTest;
end;

procedure TForm1.tvDragFromStartDrag(Sender: TObject; var DragObject: TDragObject);
var
  vEstruturalSelecionado:string;
  vEstruturalFilho:string;
  //vFocusedRecordIndex: Integer;
  vEstaAssociada: Boolean;
  vQtdSelecionadas: Integer;
  //vAnalitica: Boolean;
begin
  vEstruturalFilho := '';
  vEstruturalSelecionado := '';
  //vFocusedRecordIndex := tvDragFrom.DataController.FocusedRecordIndex;

(*  if Assigned(FDragObject) then
  begin
    FreeAndNil(FDragObject);
  end;*)

  tvDragTo.Styles.Selection := cxStyle1;
  cxViewAssociacoes.Styles.Selection := cxStyle1;

  vEstaAssociada   := VarToStr(tvDragFrom.DataController.Values[tvDragFrom.DataController.FocusedRecordIndex, tvDragFromDescricaoReferencial.Index]) <> '';
  vQtdSelecionadas := tvDragFrom.DataController.GetSelectedCount;
  //vAnalitica       := (tvDragFrom.DataController.Values[tvDragFrom.DataController.FocusedRecordIndex, tvDragFromAnalitica.Index] = 'T')

  if (vQtdSelecionadas > 1) or (not vEstaAssociada) then
  begin
    //tvDragFrom.DataController.SelectRows(tvDragFrom.DataController.FocusedRowIndex, tvDragFrom.DataController.FocusedRowIndex+5);

    if (Sender is TWinControl) then
    begin
      //FDragObject := TMeuDragObject.Create(tvDragFrom);
      DragObject  := TMeuDragObject.Create(tvDragFrom);
      (DragObject as TMeuDragObject).SetMetodo(LimparStyle);
      DragObject.ShowDragImage;
    end;

    //FIsOnDragOver := True;
    //Invalidate;
  end
  else
  begin
    tvDragTo.Styles.Selection := cxStyle4;
    cxViewAssociacoes.Styles.Selection := cxStyle4;
  end;
end;

procedure TForm1.tvDragToColumn1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  vPlanoReferencialID: Integer;
begin

  vPlanoReferencialID := FDMemTableToCodigo.AsInteger;

  tvDragTo.DataController.BeginUpdate;
  tvDragFrom.DataController.SaveDataSetPos;
  tvDragFrom.DataController.BeginUpdate;
  cxViewAssociacoes.DataController.BeginUpdate;

  FDMemTableTo.Edit;
  FDMemTableToQtdAssociacoes.AsInteger := 0;
  FDMemTableTo.Post;

  while FDMemTableAssociacoes.Locate('ID_Referencial', vPlanoReferencialID, []) do
  begin
    if FDMemTableFrom.Locate('PlanoContasID', FDMemTableAssociacoesCodigo_conta.AsInteger, []) then
    begin
      FDMemTableFrom.Edit;
      FDMemTableFromDescricaoReferencial.AsString := '';
      FDMemTableFrom.Post;
    end;

    FDMemTableAssociacoes.Delete;
  end;

  cxViewAssociacoes.DataController.EndUpdate;

  tvDragFrom.DataController.RestoreDataSetPos;
  tvDragFrom.DataController.EndUpdate;
  tvDragTo.DataController.EndUpdate;
end;

procedure TForm1.tvDragToCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  vQtd: string;
  vRect: TRect;
begin

  try
    vRect := TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect;
    AViewInfo.RecordViewInfo.ExpandButtonBounds.Width := 0;
    AViewInfo.RecordViewInfo.ExpandButtonBounds.Height := 0;

    vQtd := AViewInfo.GridRecord.DisplayTexts[tvDragToQtdAssociacoes.Index];

    if StrToIntDef(vQtd, 0) > 0 then
    begin
      AViewInfo.RecordViewInfo.ExpandButtonBounds.Width := 9;
      AViewInfo.RecordViewInfo.ExpandButtonBounds.Height := 9;
      ACanvas.Brush.Color := clSilver;
    end
(*    else if AViewInfo.Item.Index = tvDragToBotaoExcluir.Index then
    begin
      ADone := True;
      ACanvas.DrawTexT(EmptyStr, vRect, taCenter, vaCenter, False, False);
    end;*)
  except
    ShowMessage('aqui');
  end;

(*  if AViewInfo.RecordViewInfo.GridRecord.Focused then
  begin
    ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Color  := clWhite;
  end;*)

  if AViewInfo.RecordViewInfo.GridRecord.Expanded then
  begin
    ACanvas.Brush.Color := clTeal;
    ACanvas.Font.Color  := clWhite;
  end;

end;

procedure TForm1.tvDragToDataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  AAllow := ADataController.GetRowValue(ADataController.GetRowInfo(ARecordIndex), tvDragToQtdAssociacoes.Index) > 0;
end;

procedure TForm1.tvDragToDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  tvDragTo.DataController.CollapseDetails;
end;

procedure TForm1.tvDragToDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  ARecIndex: Integer;
  vValue: integer;
begin
  ARecIndex := 0;
  vValue := 0;

  AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
  begin
    ARecIndex := TcxGridRecordCellHitTest(AHitTest).GridRecord.RecordIndex;
    vValue := TcxGridSite(Sender).GridView.DataController.Values[ARecIndex, tvDragToCodigo.Index];
  end;

  CopyRecords(vValue, ARecIndex);
end;

procedure TForm1.tvDragToGroupRowExpanding(Sender: TcxGridTableView; AGroup: TcxGridGroupRow; var AAllow: Boolean);
begin

end;

{ TMeuDragObject }

constructor TMeuDragObject.Create(AGridView: TcxGridDBTableView);
begin
  FGridView   := AGridView;
  FImageList  := TDragImageList.Create(nil);
  inherited Create(AGridView.Control as TControl);
  AlwaysShowDragImages := True;

end;

destructor TMeuDragObject.Destroy;
begin
  FreeAndNil(FImageList);
  inherited;
end;

procedure TMeuDragObject.EndDrag(Target: TObject; X, Y: Integer);
begin
  inherited;
  if Assigned(FMetodo) then
    FMetodo(nil);
end;

procedure TMeuDragObject.Finished(Target: TObject; X, Y: Integer;
  Accepted: Boolean);
begin
  inherited;
//
end;

function TMeuDragObject.GetDragCursor(Accepted: Boolean; X, Y: Integer): TCursor;
begin
  Result := crNoDrop;
  if Accepted then
  begin
    //Result := crDefault;
    Result := crHandPoint
  end;
end;

function TMeuDragObject.GetDragImages: TDragImageList;
begin
  Result := FImageList;
end;

function TMeuDragObject.RetornaImagemAdicional(ATotalSelecionados: integer; ALinha: TRect): TBitmap;
var
  vDiferenca: Integer;
  vSomenteUmaSintetica: Boolean;
  // Texto a ser escrito no bitmap
  const TextToWrite = 'E mais %d contas selecionadas..';

begin
  Result := nil;

  vDiferenca := ATotalSelecionados - cMaxSelecionadas;


  vSomenteUmaSintetica := (ATotalSelecionados = 1) and (VarToStr(FGridView.DataController.Values[FGridView.Controller.SelectedRecords[0].RecordIndex, 4]) = 'F');

  if (vDiferenca > 0) or vSomenteUmaSintetica then
  begin
    Result := TBitmap.Create;
    try
      // Defina as dimensões do bitmap (largura e altura)
      Result.Width := ALinha.Width;
      Result.Height := 30;

      // Define o formato de pixel do bitmap (pode ser pf32bit, pf24bit, pf16bit, etc., dependendo da sua necessidade)
      Result.PixelFormat := pf32bit;

      // Define o fundo do bitmap como branco (opcional, caso não defina, será preto por padrão)
      Result.Canvas.Brush.Color := clHighlight;
      Result.Canvas.FillRect(Rect(0, 0, Result.Width, Result.Height));

      // Define as propriedades do texto a ser escrito
      Result.Canvas.Font.Name := 'Arial';
      Result.Canvas.Font.Size := 9;
      //Result.Canvas.Font.Style := [fsBold];
      Result.Canvas.Font.Color := clWhite;

      // Escreve o texto no bitmap
      if vSomenteUmaSintetica then
        Result.Canvas.TextOut(5, 5, 'Serão associadas todas as analíticas disponíveis..')
      else
        Result.Canvas.TextOut(5, 5, Format(TextToWrite, [vDiferenca]))

    finally
      //Result.Free;
    end;
  end;
end;

procedure TMeuDragObject.ShowDragImage1;
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

    //vSBitmap.LoadFromFile('C:\Bin.Separado\Delphi\Fontes\Imagens\Bmp\LogoDataCemproBoleto160x85.bmp');

    FImageList.Clear;
    FImageList.Width  := vSBitmap.Width;
    FImageList.Height := vSBitmap.Height;
    FImageList.Add(vSBitmap, nil);

    FImageList.SetDragImage(0, vSBitmap.Width div 2, vSBitmap.Height div 2);
  finally
    FreeAndNil(vLBitmap);
    FreeAndNil(vSBitmap);
  end;
end;



procedure TMeuDragObject.SetMetodo(AMetodo: TNotifyEvent);
begin
  FMetodo := AMetodo;
end;

procedure TMeuDragObject.ShowDragImage;
var
  vBounds: TRect;
  vLBitmap: TBitmap;
  vSBitmap: TBitmap;
  vSelectedBitmaps: IList<TBitmap>; // Lista para armazenar os bitmaps dos registros selecionados
  i: Integer;

  vAlturaTotal: Integer;
  vMergeImagens: TBitmap;
  vAlturaAtual: Integer;

  vImagemAdicional: TBitmap;

  vTotalSelecionados: Integer;
begin
  inherited;
  vAlturaTotal := 0;
  vAlturaAtual := 0;

  vLBitmap := TBitmap.Create;
  vMergeImagens := TBitmap.Create;
  vSelectedBitmaps := TCollections.CreateList<TBitmap>; // Crie a lista de bitmaps selecionados
  try
    vLBitmap.Height := FGridView.Control.Height;
    vLBitmap.Width := FGridView.Control.Width;

    FGridView.Control.PaintTo(vLBitmap.Canvas.Handle, 0, 0);
    vTotalSelecionados := FGridView.Controller.SelectedRecordCount;


    // Percorra a lista de registros selecionados e adicione os bitmaps à lista
    for i := 0 to vTotalSelecionados - 1 do
    begin
      if i = cMaxSelecionadas then
        Break;

      vBounds := FGridView.ViewInfo.RecordsViewInfo[FGridView.Controller.SelectedRecords[i].RecordIndex].Bounds;
      vSBitmap := TBitmap.Create;
      try
        vSBitmap.Height := vBounds.Height;
        vSBitmap.Width := vBounds.Width;
        vSBitmap.Canvas.CopyRect(Rect(0, 0, vSBitmap.Width, vSBitmap.Height), vLBitmap.Canvas, vBounds);
        vSelectedBitmaps.Add(vSBitmap);
        vAlturaTotal := vAlturaTotal + vSBitmap.Height;
      except
        vSBitmap.Free;
        raise;
      end;
    end;

    vImagemAdicional := RetornaImagemAdicional(vTotalSelecionados, vBounds);

    if Assigned(vImagemAdicional) then
    begin
      vAlturaTotal := vAlturaTotal + vImagemAdicional.Height;
      vSelectedBitmaps.Add(vImagemAdicional);
    end;

    FImageList.Clear;
    FImageList.Width := vBounds.Width; // Use a largura do último bitmap selecionado
    FImageList.Height := vAlturaTotal;


    vMergeImagens.Height := FImageList.Height;
    vMergeImagens.Width := FImageList.Width;


    // Desenhe os bitmaps selecionados na imagem de arraste
    for i := 0 to vSelectedBitmaps.Count - 1 do
    begin
      vMergeImagens.Canvas.Draw(0, vAlturaAtual, vSelectedBitmaps[i]);
      vAlturaAtual := vAlturaAtual + vSelectedBitmaps[i].Height;
    end;

    //vMergeImagens.SaveToFile('C:\Users\marcelotoller\Desktop\teste2.bmp');

    FImageList.Add(vMergeImagens, nil);
    FImageList.SetDragImage(0, FImageList.Width div 2, -10);
    //FImageList.SetDragImage(0, 50, -20);

  finally
    FreeAndNil(vLBitmap);
    FreeAndNil(vImagemAdicional);
  end;
end;
end.


