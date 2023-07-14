unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxmdaset,  StdCtrls, cxTextEdit,
  ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, cxDataUtils,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.Controls;

const
  UM_AFTERSTARTDRAG = WM_USER + 10000;

type
  TForm1 = class(TForm)
    dsFrom: TDataSource;
    dsTo: TDataSource;
    mTo: TdxMemData;
    mToPartNo: TFloatField;
    tvDragFrom: TcxGridDBTableView;
    lvDragFrom: TcxGridLevel;
    gDragFrom: TcxGrid;
    tvDragFromPartNo: TcxGridDBColumn;
    tvDragFromDescription: TcxGridDBColumn;
    Label1: TLabel;
    mToDescription: TStringField;
    Label2: TLabel;
    btnCopy: TButton;
    gDragTo: TcxGrid;
    tvDragTo: TcxGridDBTableView;
    lvDragTo: TcxGridLevel;
    tvDragToPartNo: TcxGridDBColumn;
    tvDragToDecription: TcxGridDBColumn;
    mFrom: TdxMemData;
    FloatField1: TFloatField;
    StringField1: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure CopyRecords(Sender: TObject);
    procedure tvDragFromMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tvDragToDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvDragFromDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvDragFromEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure tvDragFromStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tvDragToDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
    FPrevHitTest: TcxCustomGridHitTest;
    FCellValue: Variant;
  public
    procedure UmAfterStartDrag(var Message: TMessage); message UM_AFTERSTARTDRAG;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

type
  TcxGridSiteAccess = class (TcxGridSite);


{$R *.dfm}

procedure TForm1.CopyRecords(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to tvDragFrom.ViewData.RecordCount -1 do
  begin
    if tvDragFrom.ViewData.Records[I].Selected then
    begin
      mTo.Append;
      mToPartNo.Value := tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,0];
      mToDescription.Value := tvDragFrom.DataController.Values[tvDragFrom.ViewData.Records[i].RecordIndex,1];
      mTo.Post;
    end;
  end;
end;

procedure TForm1.tvDragToDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (TcxDragControlObject(Source).Control as TcxGridSite).GridView = tvDragFrom;
end;

procedure TForm1.UmAfterStartDrag(var Message: TMessage);
var
  AGridSite: TcxGridSiteAccess;
begin
  if TObject(Message.WParam) is TcxGridSite then
  begin
    AGridSite := TcxGridSiteAccess(Message.WParam);
    AGridSite.DragCursor := crHandPoint;
    tvDragTo.Styles.Selection := cxStyle1;
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
end;


procedure TForm1.tvDragFromMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  ARecIndex: Integer;
begin
  AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
  begin
    if TcxGridRecordCellHitTest(AHitTest).GridRecord.Selected then
      if (FPrevHitTest <> nil) and (FPrevHitTest is TcxGridRowIndicatorHitTest) then
        TcxGridSite(Sender).BeginDrag(True);

    if TcxGridRecordCellHitTest(AHitTest).Item = tvDragFromDescription then
    begin
      ARecIndex := TcxGridRecordCellHitTest(AHitTest).GridRecord.RecordIndex;
      FCellValue := TcxGridSite(Sender).GridView.DataController.Values[ARecIndex, tvDragFromDescription.Index];
    end
    else
      FCellValue := Null;

  end;
  FPrevHitTest := AHitTest;
end;

procedure TForm1.tvDragFromStartDrag(Sender: TObject; var DragObject:
    TDragObject);
begin
  PostMessage(Handle, UM_AFTERSTARTDRAG, Integer(Sender), 0);
end;

procedure TForm1.tvDragToDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  CopyRecords(nil);
end;

end.
