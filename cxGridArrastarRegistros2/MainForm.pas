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
  cxGridDBBandedTableView;

const
  UM_AFTERSTARTDRAG = WM_USER + 10000;

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
    tvDragFromData: TcxGridDBColumn;
    lvDragFrom: TcxGridLevel;
    Panel1: TPanel;
    Label2: TLabel;
    gDragTo: TcxGrid;
    tvDragTo: TcxGridDBTableView;
    tvDragToCodigo: TcxGridDBColumn;
    tvDragToDescricao: TcxGridDBColumn;
    tvDragToData: TcxGridDBColumn;
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
    FDMemTableFromData: TDateField;
    FDMemTableToCodigo: TIntegerField;
    FDMemTableToDescricao: TStringField;
    FDMemTableToData: TDateField;
    FDMemTableAssociacoesCodigo: TIntegerField;
    FDMemTableAssociacoesDescricao: TStringField;
    FDMemTableAssociacoesCodigo_conta: TIntegerField;
    cxViewAssociacoes: TcxGridDBBandedTableView;
    cxViewAssociacoesCodigoDescricao: TcxGridDBBandedColumn;
    cxViewAssociacoesCodigo: TcxGridDBBandedColumn;
    cxViewAssociacoesCodigoConta: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
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
  private
    { Private declarations }
    FPrevHitTest: TcxCustomGridHitTest;
  public
    procedure UmAfterStartDrag(var Message: TMessage); message UM_AFTERSTARTDRAG;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

type
  TcxGridSiteAccess = class (TcxGridSite);


{$R *.dfm}

procedure TForm1.AfterConstruction;
var
  vInd: Integer;
begin
  inherited;
  FDMemTableFrom.Active := True;
  FDMemTableTo.Active := True;
  FDMemTableAssociacoes.Active := True;
  FDMemTableAssociacoes.IndexFieldNames := 'Codigo;Codigo_conta';

  for vInd := 1 to 10 do
  begin
    FDMemTableFrom.Append;
    FDMemTableFromCodigo.AsInteger := vInd;
    FDMemTableFromDescricao.AsString := 'Conta Empresa '+vInd.ToString;
    FDMemTableFromData.AsDateTime := Date;
    FDMemTableFrom.Post;

    FDMemTableTo.Append;
    FDMemTableToCodigo.AsInteger := vInd;
    FDMemTableToDescricao.AsString := 'Conta Referencial '+vInd.ToString;
    FDMemTableToData.AsDateTime := Date;
    FDMemTableTo.Post;
  end;
end;



procedure TForm1.BeforeDestruction;
begin
  inherited;

end;

procedure TForm1.CopyRecords(ACodigo: integer; ARecordIndex: integer);
var
  i : integer;
begin
//  tvDragTo.DataController.CollapseDetails;

  for i := 0 to tvDragFrom.ViewData.RecordCount -1 do
  begin
    if tvDragFrom.ViewData.Records[I].Selected then
    begin
      FDMemTableAssociacoes.Append;
      FDMemTableAssociacoesCodigo.AsInteger       := ACodigo;
      FDMemTableAssociacoesCodigo_conta.AsInteger := tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,0];
      FDMemTableAssociacoesDescricao.AsString     := FDMemTableAssociacoesCodigo_conta.AsString+' - '+tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,1];
      FDMemTableAssociacoes.Post;
    end;
  end;

  if ARecordIndex > 0 then
    tvDragTo.DataController.ChangeDetailExpanding(ARecordIndex, True)
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

procedure TForm1.cxViewAssociacoesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := ((TcxDragControlObject(Source).Control as TcxGridSite).GridView = tvDragFrom)
end;

procedure TForm1.tvDragToDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := ((TcxDragControlObject(Source).Control as TcxGridSite).GridView = tvDragFrom);
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
  tvDragTo.Styles.Selection := nil;
  cxViewAssociacoes.Styles.Selection := nil;
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
        TcxGridSite(Sender).BeginDrag(True);
  end;
  FPrevHitTest := AHitTest;
end;

procedure TForm1.tvDragFromStartDrag(Sender: TObject; var DragObject:
    TDragObject);
begin
  PostMessage(Handle, UM_AFTERSTARTDRAG, Integer(Sender), 0);
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

end.
