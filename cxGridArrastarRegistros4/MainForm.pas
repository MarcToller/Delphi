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
  cMaxSelecionadas = 3;


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
    FDragObject : TDragControlObject;
    FIsOnDragOver: Boolean;
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
  Spring.Collections;

type
  TcxGridSiteAccess = class (TcxGridSite);


{$R *.dfm}

type
  TMeuDragObject = class(TDragControlObject)
  private
    FGridView : TcxGridDBTableView;
    FImageList: TDragImageList;
    function RetornaImagemAdicional(ATotalSelecionados: integer; ALinha: TRect): TBitmap;
  protected
    function GetDragCursor(Accepted: Boolean; X, Y: Integer): TCursor; override;
    function GetDragImages: TDragImageList; override;
  public
    constructor Create(AGridView: TcxGridDBTableView); reintroduce;
    destructor Destroy; override;
    procedure ShowDragImage1;
    procedure ShowDragImage; override;
  end;



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
  Accept := Source is TMeuDragObject;
end;

procedure TForm1.tvDragToDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TMeuDragObject;
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

  FreeAndNil(FDragObject);
  FIsOnDragOver := False;
  Invalidate;
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

procedure TForm1.tvDragFromStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  tvDragTo.Styles.Selection := cxStyle1;
  cxViewAssociacoes.Styles.Selection := cxStyle1;

  if Assigned(FDragObject) then
  begin
    FreeAndNil(FDragObject);
  end;

  if (Sender is TWinControl) then
  begin
    FDragObject := TMeuDragObject.Create(tvDragFrom);
    DragObject  := FDragObject;
    DragObject.ShowDragImage;
  end;

  FIsOnDragOver := True;
  Invalidate;


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

function TMeuDragObject.GetDragCursor(Accepted: Boolean; X, Y: Integer): TCursor;
begin
  Result := crNoDrop;
  if Accepted then
  begin
    Result := crDefault;
  end;
end;

function TMeuDragObject.GetDragImages: TDragImageList;
begin
  Result := FImageList;
end;

function TMeuDragObject.RetornaImagemAdicional(ATotalSelecionados: integer; ALinha: TRect): TBitmap;
var
  vDiferenca: Integer;
  // Texto a ser escrito no bitmap
  const TextToWrite = 'E mais %d contas selecionadas..';

begin
  Result := nil;

  vDiferenca := ATotalSelecionados - cMaxSelecionadas;

  if vDiferenca > 0 then
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
      Result.Canvas.TextOut(5, 5, Format(TextToWrite, [vDiferenca]));
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
  vSBitmap := TBitmap.Create;
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
    FImageList.SetDragImage(0, FImageList.Width div 2, -20);

  finally
    FreeAndNil(vLBitmap);
    FreeAndNil(vImagemAdicional);
  end;
end;
end.

(*uses
  Graphics;

procedure CreateBitmapWithText;
var
  MyBitmap: TBitmap;
begin
  MyBitmap := TBitmap.Create;
  try
    // Defina as dimensões do bitmap (largura e altura)
    MyBitmap.Width := 300;
    MyBitmap.Height := 200;

    // Define o formato de pixel do bitmap (pode ser pf32bit, pf24bit, pf16bit, etc., dependendo da sua necessidade)
    MyBitmap.PixelFormat := pf32bit;

    // Define o fundo do bitmap como branco (opcional, caso não defina, será preto por padrão)
    MyBitmap.Canvas.Brush.Color := clWhite;
    MyBitmap.Canvas.FillRect(Rect(0, 0, MyBitmap.Width, MyBitmap.Height));

    // Define as propriedades do texto a ser escrito
    MyBitmap.Canvas.Font.Name := 'Arial';
    MyBitmap.Canvas.Font.Size := 14;
    MyBitmap.Canvas.Font.Style := [fsBold];
    MyBitmap.Canvas.Font.Color := clBlack;

    // Posição em que o texto será escrito
    const TextX = 50;
    const TextY = 100;

    // Texto a ser escrito no bitmap
    const TextToWrite = 'Exemplo de texto no bitmap!';

    // Escreve o texto no bitmap
    MyBitmap.Canvas.TextOut(TextX, TextY, TextToWrite);

    // Agora você tem um TBitmap criado e com o texto desenhado nele.

    // Use o TBitmap como necessário (por exemplo, exiba-o em um componente TImage)
    Image1.Picture.Assign(MyBitmap);

  finally
    MyBitmap.Free;
  end;
end;
*)

