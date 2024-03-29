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
  Vcl.ExtCtrls, System.Win.Registry, Vcl.ComCtrls, dxStatusBar,   Vcl.Samples.Gauges;

type
  TFormPrincipal = class(TForm)
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
    RESTClientManutencao: TRESTClient;
    RESTRequestManutencao: TRESTRequest;
    RESTResponse3: TRESTResponse;
    PanelManutencao: TPanel;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnIncluir: TBitBtn;
    RESTClientFotos: TRESTClient;
    RESTRequestFotos: TRESTRequest;
    RESTResponseFotos: TRESTResponse;
    FDMemTableGridDetailCaminhoFotoUpload: TStringField;
    FDMemTableGridDetailExcluirFoto: TBooleanField;
    RESTClientToken: TRESTClient;
    RESTRequestToken: TRESTRequest;
    RESTResponseToken: TRESTResponse;
    dxStatusBar1: TdxStatusBar;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer;  var AAllow: Boolean);
    procedure FDMemTableGridDetailBeforePost(DataSet: TDataSet);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure cxGridViewMasterDataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
  private
    FListaIndexAlunoId: IDictionary<Integer, integer>;
    procedure GravarImagens(AAlunoID: integer; AGauge: TGauge);
    procedure CarregarFotosDetail(AAlunoId: integer);
    function ExecutaManutencao(ATipoManutencao: TRESTRequestMethod; ADadosAluno: TAluno = nil; AGauge: TGauge = nil):TRetornoAPI;
    procedure Manutencao(ATipoManutencao: TRESTRequestMethod);
    procedure CriarAutenticacaoToken;
    function RetornaDadosAlunoSelecionado: TAluno;
    function RetornaToken: string;
    { Private declarations }
  public
    procedure AfterConstruction; override;

    { Public declarations }
  end;
var
  FormPrincipal: TFormPrincipal;


implementation

uses
  System.Net.HttpClient, uFormManutencaoAluno, uFormAutorizacaoToken;


{$R *.dfm}

procedure TFormPrincipal.AfterConstruction;
begin
  inherited;
  FListaIndexAlunoId             := TCollections.CreateDictionary<integer,integer>;
  RESTClientConsultaGrid.BaseURL := cBaseURLAlunos;
  RESTClientManutencao.BaseURL   := cBaseURLAlunos;
  RESTClientFotos.BaseURL        := cBaseURLFotos;
  RESTClientToken.BaseURL        := cBaseURLToken;

  CriarAutenticacaoToken;
end;


procedure TFormPrincipal.BitBtnAlterarClick(Sender: TObject);
begin
  Manutencao(rmPUT);
end;

procedure TFormPrincipal.BitBtnExcluirClick(Sender: TObject);
begin
  Manutencao(rmDELETE);
end;

procedure TFormPrincipal.BitBtnIncluirClick(Sender: TObject);
begin
  Manutencao(rmPOST);
end;

procedure TFormPrincipal.CarregarFotosDetail(AAlunoId: integer);
var
  vIndex: integer;
begin
  if FListaIndexAlunoId.TryGetValue(AAlunoId, vIndex) then
  begin
    RESTResponseGridDetail.RootElement := Format(cRootElementFotos, [vIndex]);
  end;
end;

procedure TFormPrincipal.CriarAutenticacaoToken;
var
  vRESTRequestParameter: TRESTRequestParameter;
  vToken: string;
begin
  vToken := RetornaToken;

  vRESTRequestParameter         := RESTClientManutencao.Params.AddItem;
  vRESTRequestParameter.Kind    := pkHTTPHEADER;
  vRESTRequestParameter.Name    := cNomeParamAutenticacao;
  vRESTRequestParameter.Options := [poDoNotEncode];
  vRESTRequestParameter.Value   := vToken;

  vRESTRequestParameter         := RESTClientFotos.Params.AddItem;
  vRESTRequestParameter.Kind    := pkHTTPHEADER;
  vRESTRequestParameter.Name    := cNomeParamAutenticacao;
  vRESTRequestParameter.Options := [poDoNotEncode];
  vRESTRequestParameter.Value   := vToken;

end;

procedure TFormPrincipal.cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController;
                                                                  ARecordIndex: Integer;
                                                                  var AAllow: Boolean);
begin
  cxGridViewMaster.DataController.CollapseDetails;
end;

procedure TFormPrincipal.cxGridViewMasterDataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vAlunoId: Integer;
begin
  vAlunoId := ADataController.GetValue(ARecordIndex, 0);

  CarregarFotosDetail(vAlunoId);

  if FDMemTableGridDetail.RecordCount = 0 then
  begin
    cxGridViewMaster.DataController.CollapseDetails;
    ShowMessage('Aluno n�o possui imagens para exibir.')
  end
  else
  begin
    if FDMemTableGridDetail.RecordCount = 1 then
      cxLayoutViewDetail.OptionsView.ViewMode := lvvmSingleRow
    else
      cxLayoutViewDetail.OptionsView.ViewMode := lvvmCarousel;
  end;

end;

function TFormPrincipal.ExecutaManutencao(ATipoManutencao: TRESTRequestMethod; ADadosAluno: TAluno; AGauge: TGauge):TRetornoAPI;
var
  vOcorreuFalha: Boolean;

  function RetornaMensagemSucesso: string;
  const
    cInclusao  = 'inclu�do';
    cExclusao  = 'exclu�do';
    cAlteracao = 'alterado';
    cMensagem  = 'Aluno %s %s com sucesso';
  begin
    case ATipoManutencao of
      rmPOST   : result := format(cMensagem, [ADadosAluno.nome, cInclusao]);
      rmPUT    : result := format(cMensagem, [ADadosAluno.nome, cAlteracao]);
      rmDELETE : result := format(cMensagem, [ADadosAluno.nome, cExclusao]);
    end;
  end;

  procedure AvancaGauge(AConfigurar: Boolean = false);
  begin
    if Assigned(AGauge) then
    begin
      if AConfigurar then
      begin
        AGauge.Progress := 0;
        AGauge.MaxValue := (FDMemTableGridDetail.RecordCount * 2) + 4;
      end
      else
        AGauge.Progress := AGauge.Progress + 1;
    end;
  end;


begin
  vOcorreuFalha := false;
  RESTRequestManutencao.Resource := '';
  if ATipoManutencao in [rmDELETE, rmPUT] then
    RESTRequestManutencao.Resource := ADadosAluno.id.ToString;

  if ATipoManutencao in [rmPOST, rmPUT] then
    RESTRequestManutencao.Params[0].Value := TJson.ObjectToJsonString(ADadosAluno);

  RESTRequestManutencao.Method := ATipoManutencao;

  AvancaGauge(true);

  try
    RESTRequestManutencao.Execute;
    AvancaGauge;
  except
    vOcorreuFalha := True;
  end;

  Result := TJson.JsonToObject<TRetornoAPI>(RESTRequestManutencao.Response.JSONText);

  if Result.sucesso and not vOcorreuFalha then
  begin
    GravarImagens(Result.aluno.id, AGauge);

    RESTRequestGridMaster.Execute;
    AvancaGauge;

    if (ATipoManutencao in [rmPOST, rmPUT]) then
    begin
      RESTRequestGridDetail.Execute;
      AvancaGauge;

      if (ATipoManutencao = rmPOST) and FDMemTableGridMaster.Locate('aluno_id', Result.aluno.id, []) then
      begin
        FListaIndexAlunoId.AddOrSetValue(Result.aluno.id, cxGridViewMaster.DataController.FocusedRecordIndex);
      end;

      CarregarFotosDetail(Result.aluno.id);
      AvancaGauge;
    end;

    ShowMessage(RetornaMensagemSucesso);
  end
  else if Length(Result.errors) > 0 then
    ShowMessage(Result.errors[0])
  else
    ShowMessage('falha desconhecida');

end;

procedure TFormPrincipal.FDMemTableGridDetailBeforePost(DataSet: TDataSet);
var
  MS : TMemoryStream;
  APath: String;
begin
  MS := nil;
  try
    if FDMemTableGridDetailid.AsInteger > 0  then
    begin
      APath := FDMemTableGridDetailurl.AsString;

      MS := TMemoryStream.Create;
      try
        IdHTTP1.Get(APath, MS);
      except
      end;
      MS.Position := 0;
      FDMemTableGridDetailImagem.LoadFromStream(MS);
    end;
  finally
    MS.Free;
  end;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var
  vIndex: Integer;
begin
  try
    RESTRequestGridMaster.execute;

    if FDMemTableGridMaster.RecordCount > 0 then
      RESTRequestGridDetail.execute
    else
      FDMemTableGridDetail.Open;

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
      ShowMessage('N�o foi poss�vel se conectar com o servidor.');
      Application.Terminate;
    end;
  end;
end;


procedure TFormPrincipal.GravarImagens(AAlunoID: integer; AGauge: TGauge);

  procedure AvancaGauge;
  begin
    if Assigned(AGauge) then
      AGauge.Progress := AGauge.Progress + 1;
  end;

begin
  FDMemTableGridDetail.DisableControls;

  FDMemTableGridDetail.First;

  RESTRequestFotos.Method   := rmPOST;
  RESTRequestFotos.Resource := EmptyStr;

  while not FDMemTableGridDetail.Eof do
  begin
    AvancaGauge;
    if (FDMemTableGridDetailid.AsInteger = 0) and not FDMemTableGridDetailExcluirFoto.AsBoolean then
    begin
      RESTRequestFotos.Params.AddItem(cParametroFoto     , FDMemTableGridDetailCaminhoFotoUpload.AsString , pkFILE);
      RESTRequestFotos.Params.AddItem(cParametroAluno_id , AAlunoID.ToString                              , pkGETorPOST);

      RESTRequestFotos.Execute;
    end;
    FDMemTableGridDetail.Next;
  end;


  FDMemTableGridDetail.First;
  RESTRequestFotos.Method := rmDELETE;

  RESTRequestFotos.Params.Delete(cParametroFoto);
  RESTRequestFotos.Params.Delete(cParametroAluno_id);

  while not FDMemTableGridDetail.Eof do
  begin
    AvancaGauge;
    if (FDMemTableGridDetailid.AsInteger > 0) and FDMemTableGridDetailExcluirFoto.AsBoolean then
    begin
      RESTRequestFotos.Resource := FDMemTableGridDetailid.AsString;
      RESTRequestFotos.Execute;
    end;
    FDMemTableGridDetail.Next;
  end;

  FDMemTableGridDetail.EnableControls;
end;

procedure TFormPrincipal.Manutencao(ATipoManutencao: TRESTRequestMethod);
var
  vAluno : TAluno;
  vFormManutencao: TFormManutencaoAluno;
begin
  vAluno := nil;
  vFormManutencao := nil;

  cxGridViewMaster.DataController.CollapseDetails;

  if ATipoManutencao in [rmDELETE, rmPUT] then
    vAluno := RetornaDadosAlunoSelecionado
  else
    vAluno := TAluno.Create;

  if ATipoManutencao in [rmPOST, rmPUT] then
  begin
    if ATipoManutencao = rmPUT then
      CarregarFotosDetail(FDMemTableGridMasteraluno_id.AsInteger)
    else if FDMemTableGridDetail.Active then
      FDMemTableGridDetail.EmptyDataSet;

    vFormManutencao                         := TFormManutencaoAluno.create(self);
    vFormManutencao.DadosAluno              := vAluno;
    vFormManutencao.TipoManutencao          := ATipoManutencao;
    vFormManutencao.MetodoExecutaManutencao := ExecutaManutencao;
    vFormManutencao.DataSource1.DataSet     := FDMemTableGridDetail;

    vFormManutencao.ShowModal;
  end
  else
    ExecutaManutencao(ATipoManutencao, vAluno);

  FreeAndNil(vAluno);
  FreeAndNil(vFormManutencao);
end;

function TFormPrincipal.RetornaDadosAlunoSelecionado: TAluno;
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

function TFormPrincipal.RetornaToken: string;
var
  vRESTRequestParameter: TRESTRequestParameter;
  vRetornoTokenUsuario : TRetornoTokenUsuario;
  vDataToken: string;
  vRegistro: TRegistry;
  vAutorizado: Boolean;

  function RequisitarToken: string;
  var
    vFormAutorizacaoToken : TFormAutorizacaoToken;
  begin
    vFormAutorizacaoToken := TFormAutorizacaoToken.Create(self);
    vFormAutorizacaoToken.ShowModal;
    Result := vFormAutorizacaoToken.Token;

    if not Result.IsEmpty then
      vRegistro.WriteString(cTokenCadastroAlunos, Result);
  end;

begin
  vRESTRequestParameter         := RESTRequestToken.Params.AddItem;
  vRESTRequestParameter.Kind    := pkHTTPHEADER;
  vRESTRequestParameter.Name    := cNomeParamAutenticacao;
  vRESTRequestParameter.Options := [poDoNotEncode];

  vAutorizado       := False;
  vRegistro         := TRegistry.Create;
  vRegistro.RootKey := HKEY_CURRENT_USER;

  if vRegistro.OpenKey(cTokenCadastroAlunos, true) then
    Result := vRegistro.ReadString(cTokenCadastroAlunos);

  if Result.IsEmpty then
    Result := RequisitarToken;

  while True do
  begin
    if Result.IsEmpty then
    begin
      Application.Terminate;
      Break;
    end;

    if vAutorizado then
      Break;

    vRESTRequestParameter.Value := cBearer+' '+Result;

    try
      try
        RESTRequestToken.Execute;
      except
      end;
    finally
      vRetornoTokenUsuario := TJson.JsonToObject<TRetornoTokenUsuario>(RESTRequestToken.Response.JSONText);

      if Length(vRetornoTokenUsuario.errors) > 0 then
      begin
        ShowMessage(vRetornoTokenUsuario.errors[0]);
        Result := RequisitarToken;
      end
      else
      begin
        Result      := cBearer+' '+Result;
        vAutorizado := true;

        if vRetornoTokenUsuario.tokenExpira.IsEmpty or (Pos('Invalid Date', vRetornoTokenUsuario.tokenExpira) > 0) then
          vDataToken := 'Nunca'
        else
          vDataToken := Copy(vRetornoTokenUsuario.tokenExpira, 4,2)+'/'+Copy(vRetornoTokenUsuario.tokenExpira, 1,2)+'/'+Copy(vRetornoTokenUsuario.tokenExpira, 7,2);

        dxStatusBar1.Panels[0].Text := Format('Usu�rio: %s', [vRetornoTokenUsuario.userName]);
        dxStatusBar1.Panels[1].Text := Format('Token expira em: %s', [vDataToken]);
      end;
    end;
  end;

end;

end.


