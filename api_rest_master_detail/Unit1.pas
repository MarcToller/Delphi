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
  REST.Authenticator.OAuth, REST.Authenticator.Basic, uConstantesRest,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    cxGridViewMaster: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RESTClientConsultaGrid: TRESTClient;
    RESTRequestGridMaster: TRESTRequest;
    RESTResponseGridMaster: TRESTResponse;
    RESTResponseDataSetAdapterMaster: TRESTResponseDataSetAdapter;
    FDMemTableGridMaster: TFDMemTable;
    RESTResponseGridDetail: TRESTResponse;
    RESTResponseDataSetAdapterDetail: TRESTResponseDataSetAdapter;
    FDMemTableGridDetail: TFDMemTable;
    RESTRequestGridDetail: TRESTRequest;
    FDMemTableGridDetailurl: TWideStringField;
    FDMemTableGridDetailaluno_id: TFloatField;
    FDMemTableGridDetailid: TFloatField;
    FDMemTableGridDetailfilename: TWideStringField;
    FDMemTableGridDetailoriginalname: TWideStringField;
    FDMemTableGridMasteraluno_id: TFloatField;
    FDMemTableGridMasternome: TWideStringField;
    FDMemTableGridMastersobrenome: TWideStringField;
    FDMemTableGridMasteremail: TWideStringField;
    FDMemTableGridMasteridade: TFloatField;
    FDMemTableGridMasterpeso: TFloatField;
    FDMemTableGridMasteraltura: TFloatField;
    FDMemTableGridMasterFotos: TWideStringField;
    DataSourceGridMaster: TDataSource;
    DataSourceGridDetail: TDataSource;
    cxGridViewMasteraluno_id: TcxGridDBColumn;
    cxGridViewMasternome: TcxGridDBColumn;
    cxGridViewMastersobrenome: TcxGridDBColumn;
    cxGridViewMasteremail: TcxGridDBColumn;
    cxGridViewMasteridade: TcxGridDBColumn;
    cxGridViewMasterpeso: TcxGridDBColumn;
    cxGridViewMasteraltura: TcxGridDBColumn;
    cxGridViewMasterFotos: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxLayoutViewDetailGroup_Root: TdxLayoutGroup;
    cxLayoutViewDetail: TcxGridDBLayoutView;
    cxLayoutViewDetailLayoutItem1: TcxGridLayoutItem;
    cxGrid1DBLayoutViewItemUrl: TcxGridDBLayoutViewItem;
    IdHTTP1: TIdHTTP;
    cxLayoutViewDetailLayoutItem2: TcxGridLayoutItem;
    cxGrid1DBLayoutViewItemImagem: TcxGridDBLayoutViewItem;
    FDMemTableGridDetailImagem: TBlobField;
    cxEditRepositoryImagens: TcxEditRepository;
    cxEditRepository1ImageItem1: TcxEditRepositoryImageItem;
    BitBtn1: TBitBtn;
    RESTClientManutencao: TRESTClient;
    RESTRequestManutencao: TRESTRequest;
    RESTResponse3: TRESTResponse;
    PanelManutencao: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer;  var AAllow: Boolean);
    procedure FDMemTableGridDetailBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
  private
    FListaIndexAlunoId: IDictionary<Integer, integer>;
    procedure ExecutaManutencao(ATipoManutencao: TRESTRequestMethod; ADadosAluno: TAluno = nil);
    procedure Manutencao(ATipoManutencao: TRESTRequestMethod);
    procedure CriarAutenticacaoToken;
    function RetornaDadosAlunoSelecionado: TAluno;
    { Private declarations }
  public
    procedure AfterConstruction; override;

    { Public declarations }
  end;
var
  Form1: TForm1;


implementation

uses
  System.Net.HttpClient, uFormManutencaoAluno;


{$R *.dfm}

procedure TForm1.AfterConstruction;
begin
  inherited;
  FListaIndexAlunoId             := TCollections.CreateDictionary<integer,integer>;
  RESTClientConsultaGrid.BaseURL := cBaseURL;
  RESTClientManutencao.BaseURL   := cBaseURL;

  CriarAutenticacaoToken;
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
var
  vAluno: TAluno;
  vJSON: string;
  vRetornoAPI : TRetornoAPI;
begin
  vAluno := TAluno.Create;
  vAluno.peso := 68.6;
  vAluno.sobrenome := 'eeeeuuuuuuuuuu';
  vAluno.email := 'eeeeuuuuuuuuuu@yahoo.com.br';
  vAluno.altura := 1.73;
  vAluno.idade := 43;
  vAluno.nome := 'eeeeuuuuuuuuuu';

  vJSON := TJson.ObjectToJsonString(vAluno);

  //RESTRequest3.Params[0].Value := vJSON;

  //RESTRequest3.Method := rmPOST;

  RESTRequestManutencao.Resource := FDMemTableGridMasteraluno_id.AsString;
  RESTRequestManutencao.Method := rmDELETE;
//  RESTRequest3.Method := rmPUT;

  RESTRequestManutencao.Execute;

  vRetornoAPI := TJson.JsonToObject<TRetornoAPI>(RESTRequestManutencao.Response.JSONText);

  if vRetornoAPI.sucesso then
  begin
    ShowMessage('Sucesso');
    RESTRequestGridMaster.Execute;
  end
  else
    ShowMessage(vRetornoAPI.errors[0]);


  if FDMemTableGridMaster.Locate('aluno_id', vRetornoAPI.aluno.id, []) then
  begin
    FListaIndexAlunoId.AddOrSetValue(vRetornoAPI.aluno.id, cxGridViewMaster.DataController.FocusedRecordIndex);
    RESTRequestGridDetail.Execute;
  end;
end;

procedure TForm1.BitBtnAlterarClick(Sender: TObject);
begin
  Manutencao(rmPUT);
end;

procedure TForm1.BitBtnExcluirClick(Sender: TObject);
begin
  Manutencao(rmDELETE);
end;

procedure TForm1.BitBtnIncluirClick(Sender: TObject);
begin
  Manutencao(rmPOST);
end;

procedure TForm1.CriarAutenticacaoToken;
var
  vRESTRequestParameter: TRESTRequestParameter;
begin
  vRESTRequestParameter         := RESTClientManutencao.Params.AddItem;
  vRESTRequestParameter.Kind    := pkHTTPHEADER;
  vRESTRequestParameter.Name    := 'authorization';
  vRESTRequestParameter.Options := [poDoNotEncode];
  vRESTRequestParameter.Value   := cToken;
end;

procedure TForm1.cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController;
                                                                  ARecordIndex: Integer;
                                                                  var AAllow: Boolean);
var
  vAlunoId: Integer;
  vIndex: integer;
begin
  vAlunoId := ADataController.GetValue(ARecordIndex, 0);

  if FListaIndexAlunoId.TryGetValue(vAlunoId, vIndex) then
  begin
    RESTResponseGridDetail.RootElement := Format(cRootElementFotos, [vIndex]);
  end;

  AAllow := FDMemTableGridDetail.RecordCount > 0;

  if not AAllow then
    ShowMessage('Aluno não possui imagens para exibir.')
  else
  begin
    cxGridViewMaster.DataController.CollapseDetails;

    if FDMemTableGridDetail.RecordCount = 1 then
      cxLayoutViewDetail.OptionsView.ViewMode := lvvmSingleRow
    else
      cxLayoutViewDetail.OptionsView.ViewMode := lvvmCarousel;
  end;

end;

procedure TForm1.ExecutaManutencao(ATipoManutencao: TRESTRequestMethod; ADadosAluno: TAluno = nil);
var
  vRetornoAPI : TRetornoAPI;

  function RetornaMensagemSucesso: string;
  const
    cInclusao  = 'incluído';
    cExclusao  = 'excluído';
    cAlteracao = 'alterado';
    cMensagem  = 'Aluno %s %s com sucesso';
  begin
    case ATipoManutencao of
      rmPOST   : result := format(cMensagem, [ADadosAluno.nome, cInclusao]);
      rmPUT    : result := format(cMensagem, [ADadosAluno.nome, cAlteracao]);
      rmDELETE : result := format(cMensagem, [ADadosAluno.nome, cExclusao]);
    end;
  end;

begin
  if ATipoManutencao in [rmDELETE, rmPUT] then
    RESTRequestManutencao.Resource := ADadosAluno.id.ToString;

  if ATipoManutencao in [rmPOST, rmPUT] then
    RESTRequestManutencao.Params[0].Value := TJson.ObjectToJsonString(ADadosAluno);

  RESTRequestManutencao.Method := ATipoManutencao;

  try
    RESTRequestManutencao.Execute;
  except
  end;

  vRetornoAPI := TJson.JsonToObject<TRetornoAPI>(RESTRequestManutencao.Response.JSONText);

  if vRetornoAPI.sucesso then
  begin
    ShowMessage(RetornaMensagemSucesso);
    RESTRequestGridMaster.Execute;

    if (ATipoManutencao = rmPOST) and FDMemTableGridMaster.Locate('aluno_id', vRetornoAPI.aluno.id, []) then
    begin
      FListaIndexAlunoId.AddOrSetValue(vRetornoAPI.aluno.id, cxGridViewMaster.DataController.FocusedRecordIndex);
    end
    else if (ATipoManutencao <> rmDELETE) then
      RESTRequestGridDetail.Execute;
  end
  else
    ShowMessage(vRetornoAPI.errors[0]);
end;

procedure TForm1.FDMemTableGridDetailBeforePost(DataSet: TDataSet);
var
  MS : TMemoryStream;
  APath: String;
begin
  MS := nil;
  try
    APath := FDMemTableGridDetailurl.AsString;

    MS := TMemoryStream.Create;
    try
      IdHTTP1.Get(APath, MS);
    except
    end;
    MS.Position := 0;
    FDMemTableGridDetailImagem.LoadFromStream(MS);
  finally
    MS.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  vIndex: Integer;
begin
  try
    RESTRequestGridMaster.execute;
    RESTRequestGridDetail.execute;

    vIndex := 0;
    FDMemTableGridMaster.First;

    while not FDMemTableGridMaster.Eof do
    begin
      FListaIndexAlunoId.Add(FDMemTableGridMasteraluno_id.AsInteger, vIndex);
      Inc(vIndex);
      FDMemTableGridMaster.Next;
    end;

    FDMemTableGridMaster.First;
  except
    on e: ERESTException do
    begin
      ShowMessage('Não foi possível se conectar com o servidor.');
      Application.Terminate;
    end;
  end;
end;


procedure TForm1.Manutencao(ATipoManutencao: TRESTRequestMethod);
var
  vAluno : TAluno;
  vFormManutencao: TFormManutencaoAluno;
begin
  vAluno := nil;
  vFormManutencao := nil;

  if ATipoManutencao in [rmDELETE, rmPUT] then
    vAluno := RetornaDadosAlunoSelecionado
  else
    vAluno := TAluno.Create;

  if ATipoManutencao in [rmPOST, rmPUT] then
  begin
    vFormManutencao                         := TFormManutencaoAluno.create(self);
    vFormManutencao.DadosAluno              := vAluno;
    vFormManutencao.TipoManutencao          := ATipoManutencao;
    vFormManutencao.MetodoExecutaManutencao := ExecutaManutencao;
    vFormManutencao.ShowModal;
  end
  else
    ExecutaManutencao(ATipoManutencao, vAluno);

  FreeAndNil(vAluno);
  FreeAndNil(vFormManutencao);
end;

function TForm1.RetornaDadosAlunoSelecionado: TAluno;
begin
  Result           := TAluno.Create;
  Result.id        := FDMemTableGridMasteraluno_id.AsInteger;
  Result.peso      := FDMemTableGridMasterpeso.AsFloat;
  Result.sobrenome := FDMemTableGridMastersobrenome.AsString;
  Result.email     := FDMemTableGridMasteremail.AsString;
  Result.altura    := FDMemTableGridMasteraltura.AsFloat;
  Result.idade     := FDMemTableGridMasteridade.AsInteger;
  Result.nome      := FDMemTableGridMasternome.AsString;
end;

end.
