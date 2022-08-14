unit uFormManutencaoAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConstantesRest, REST.Types,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxImage,
  cxGridViewLayoutContainer, cxEditRepositoryItems, Vcl.ExtDlgs, cxCheckBox,
  Vcl.Samples.Gauges;

type
  TFormManutencaoAluno = class(TForm)
    PanelBotoes: TPanel;
    BitBtnGravar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    PanelDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditNome: TEdit;
    EditSobreNome: TEdit;
    EditEmail: TEdit;
    cxCurrencyEditPeso: TcxCurrencyEdit;
    cxCurrencyEditAltura: TcxCurrencyEdit;
    cxCurrencyEditIdade: TcxCurrencyEdit;
    GroupBox1: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView1: TcxGridDBLayoutView;
    DataSource1: TDataSource;
    cxEditRepositoryImagens: TcxEditRepository;
    cxEditRepository1ImageItem1: TcxEditRepositoryImageItem;
    cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem;
    cxGrid1DBLayoutViewImagem: TcxGridDBLayoutViewItem;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtnAdicionarFoto: TBitBtn;
    cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem;
    cxGrid1DBLayoutViewExcluir: TcxGridDBLayoutViewItem;
    Gauge1: TGauge;
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnAdicionarFotoClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
  private
    FMetodoExecutaManutencao: TMetodoExecutaManutencao;
    FDadosAluno: TAluno;
    FTipoManutencao: TRESTRequestMethod;
    { Private declarations }
  public

    property DadosAluno: TAluno read FDadosAluno write FDadosAluno;
    property MetodoExecutaManutencao : TMetodoExecutaManutencao read FMetodoExecutaManutencao write FMetodoExecutaManutencao;
    property TipoManutencao: TRESTRequestMethod read FTipoManutencao write FTipoManutencao;
    { Public declarations }
  end;

var
  FormManutencaoAluno: TFormManutencaoAluno;

implementation


{$R *.dfm}

procedure TFormManutencaoAluno.BitBtnAdicionarFotoClick(Sender: TObject);
var
  vInd: Integer;
begin
  if OpenPictureDialog1.Execute and (OpenPictureDialog1.Files.Count > 0) then
  begin
    DataSource1.DataSet.DisableControls;
    for vInd := 0 to OpenPictureDialog1.Files.Count-1 do
    begin
      DataSource1.DataSet.Insert;      
      DataSource1.DataSet.FieldByName('CaminhoFotoUpload').AsString := OpenPictureDialog1.Files.Strings[vInd];
      TBlobField(DataSource1.DataSet.FieldByName('imagem')).LoadFromFile(OpenPictureDialog1.Files.Strings[vInd]);
      DataSource1.DataSet.Post;
    end;
    DataSource1.DataSet.EnableControls;
  end;
end;

procedure TFormManutencaoAluno.BitBtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormManutencaoAluno.BitBtnGravarClick(Sender: TObject);
var
  vRetornoAPI : TRetornoAPI;
begin
  Gauge1.Visible        := true;
  FDadosAluno.nome      := EditNome.Text;
  FDadosAluno.sobrenome := EditSobreNome.Text;
  FDadosAluno.email     := EditEmail.Text;
  FDadosAluno.idade     := cxCurrencyEditIdade.EditValue;
  FDadosAluno.peso      := cxCurrencyEditPeso.Value;
  FDadosAluno.altura    := cxCurrencyEditAltura.Value;

  vRetornoAPI := FMetodoExecutaManutencao(FTipoManutencao, FDadosAluno, Gauge1);

  if vRetornoAPI.sucesso then
    Close
  else
    Gauge1.Visible := False;
end;

procedure TFormManutencaoAluno.FormShow(Sender: TObject);
begin
  Gauge1.Visible := False;

  EditNome.Text                 := FDadosAluno.nome;
  EditSobreNome.Text            := FDadosAluno.sobrenome;
  EditEmail.Text                := FDadosAluno.email;
  cxCurrencyEditIdade.EditValue := FDadosAluno.idade;
  cxCurrencyEditPeso.Value      := FDadosAluno.peso;
  cxCurrencyEditAltura.Value    := FDadosAluno.altura;
end;

end.
