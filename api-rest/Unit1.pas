unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Spring.Collections,
  dxLayoutContainer, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, pngimage, jpeg, cxGridViewLayoutContainer,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, cxImage, cxDataUtils,
  cxEditRepositoryItems, Vcl.StdCtrls, Vcl.Buttons, REST.Json,
  REST.Authenticator.OAuth, REST.Authenticator.Basic;

type
  TAluno = class(TObject)
  private
    Fpeso: Real;
    Fsobrenome: string;
    Femail: string;
    Faltura: Real;
    Fidade: integer;
    Fnome: string;
  public
    property nome: string read Fnome write Fnome;
    property sobrenome: string read Fsobrenome write Fsobrenome;
    property email: string read Femail write Femail;
    property idade: integer read Fidade write Fidade;
    property peso: Real read Fpeso write Fpeso;
    property altura: Real read Faltura write Faltura;
  end;


  TRetornoAPI = class(TObject)
  private
    Ferrors: TArray<string>;
    Fid: Integer;
    function GetSucesso: Boolean;
  public
    property errors: TArray<string> read Ferrors write Ferrors;
    property id: Integer read Fid write Fid;
    property sucesso: Boolean read GetSucesso;
  end;


  TForm1 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    RESTResponse2: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    FDMemTable2: TFDMemTable;
    RESTRequest2: TRESTRequest;
    FDMemTable2url: TWideStringField;
    FDMemTable2aluno_id: TFloatField;
    FDMemTable2id: TFloatField;
    FDMemTable2filename: TWideStringField;
    FDMemTable2originalname: TWideStringField;
    FDMemTable1aluno_id: TFloatField;
    FDMemTable1nome: TWideStringField;
    FDMemTable1sobrenome: TWideStringField;
    FDMemTable1email: TWideStringField;
    FDMemTable1idade: TFloatField;
    FDMemTable1peso: TFloatField;
    FDMemTable1altura: TFloatField;
    FDMemTable1Fotos: TWideStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxGrid1DBTableView1aluno_id: TcxGridDBColumn;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    cxGrid1DBTableView1sobrenome: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1DBTableView1idade: TcxGridDBColumn;
    cxGrid1DBTableView1peso: TcxGridDBColumn;
    cxGrid1DBTableView1altura: TcxGridDBColumn;
    cxGrid1DBTableView1Fotos: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView1: TcxGridDBLayoutView;
    cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem;
    cxGrid1DBLayoutViewItemUrl: TcxGridDBLayoutViewItem;
    IdHTTP1: TIdHTTP;
    cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem;
    cxGrid1DBLayoutViewItemImagem: TcxGridDBLayoutViewItem;
    FDMemTable2Imagem: TBlobField;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ImageItem1: TcxEditRepositoryImageItem;
    BitBtn1: TBitBtn;
    RESTClient2: TRESTClient;
    RESTRequest3: TRESTRequest;
    RESTResponse3: TRESTResponse;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure FDMemTable2BeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    FListaIndexAlunoId: IDictionary<Integer, integer>;
    { Private declarations }
  public
    procedure AfterConstruction; override;

    { Public declarations }
  end;
var
  Form1: TForm1;


implementation

uses
  System.Net.HttpClient;


{$R *.dfm}

procedure TForm1.AfterConstruction;
begin
  inherited;
  FListaIndexAlunoId := TCollections.CreateDictionary<integer,integer>;
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
var
  vAluno: TAluno;
  vJSON: string;
  vRetornoAPI : TRetornoAPI;
const
  cbaseURL = 'http://localhost:3001/alunos';
begin
  vAluno := TAluno.Create;
  vAluno.peso := 68.6;
  vAluno.sobrenome := 'uuuuuuuuuuuuu';
  vAluno.email := 'uuuuuuuuuuuu@yahoo.com.br';
  vAluno.altura := 1.73;
  vAluno.idade := 43;
  vAluno.nome := 'uuuuuuuuuuuuuu';

  vJSON := TJson.ObjectToJsonString(vAluno);

  RESTRequest3.Params[0].Value := vJSON;

  RESTRequest3.Resource := FDMemTable1aluno_id.AsString;
//  RESTRequest3.Method := rmDELETE;
  RESTRequest3.Method := rmPUT;

  RESTRequest3.Execute;

  vRetornoAPI := TJson.JsonToObject<TRetornoAPI>(RESTRequest3.Response.JSONText);

  if vRetornoAPI.sucesso then
  begin
    ShowMessage('Sucesso');
    RESTRequest1.Execute;
  end
  else
    ShowMessage(vRetornoAPI.errors[0]);



end;

procedure TForm1.cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController;
                                                                  ARecordIndex: Integer;
                                                                  var AAllow: Boolean);
var
  vAlunoId: Integer;
  vIndex: integer;
begin
  cxGrid1DBTableView1.DataController.CollapseDetails;

  vAlunoId := ADataController.GetValue(ARecordIndex, 0);

  if FListaIndexAlunoId.TryGetValue(vAlunoId, vIndex) then
    RESTResponse2.RootElement := '['+vIndex.ToString+'].Fotos';

  AAllow := FDMemTable2.RecordCount > 0;

  if not AAllow then
    ShowMessage('Não há imagens para mostrar.')
  else
  begin
    if FDMemTable2.RecordCount = 1 then
      cxGrid1DBLayoutView1.OptionsView.ViewMode := lvvmSingleRow
    else
      cxGrid1DBLayoutView1.OptionsView.ViewMode := lvvmCarousel;
  end;

end;

procedure TForm1.FDMemTable2BeforePost(DataSet: TDataSet);
var
  MS : TMemoryStream;
  APath: String;
begin
  MS := nil;
  try
    APath := FDMemTable2url.AsString;

    MS := TMemoryStream.Create;
    try
      IdHTTP1.Get(APath, MS);
    except
    end;
    MS.Position := 0;
    FDMemTable2Imagem.LoadFromStream(MS);
  finally
    MS.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  vIndex: Integer;
begin
  RESTClient1.BaseURL := 'http://168.138.248.33:3001/alunos';
  try
    RESTRequest1.execute;
    RESTRequest2.execute;

    vIndex := 0;
    FDMemTable1.First;

    while not FDMemTable1.Eof do
    begin
      FListaIndexAlunoId.Add(FDMemTable1aluno_id.AsInteger, vIndex);
      Inc(vIndex);
      FDMemTable1.Next;
    end;

    FDMemTable1.First;
  except
    on e: ERESTException do
    begin
      ShowMessage('Não foi possível se conectar com o servidor.');
      Application.Terminate;
    end;
  end;
end;


{ TRetornoAPI }

function TRetornoAPI.GetSucesso: Boolean;
begin
  Result := (Length(errors) = 0) and (id > 0);
end;

end.
