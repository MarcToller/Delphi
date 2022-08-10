unit uFormManutencaoAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConstantesRest, REST.Types,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit;

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
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TFormManutencaoAluno.BitBtnGravarClick(Sender: TObject);
var
  vRetornoAPI : TRetornoAPI;
begin
  FDadosAluno.nome      := EditNome.Text;
  FDadosAluno.sobrenome := EditSobreNome.Text;
  FDadosAluno.email     := EditEmail.Text;
  FDadosAluno.idade     := cxCurrencyEditIdade.EditValue;
  FDadosAluno.peso      := cxCurrencyEditPeso.Value;
  FDadosAluno.altura    := cxCurrencyEditAltura.Value;


  vRetornoAPI := FMetodoExecutaManutencao(FTipoManutencao, FDadosAluno);

  if vRetornoAPI.sucesso then
    Close;

end;

procedure TFormManutencaoAluno.FormShow(Sender: TObject);
begin
  EditNome.Text                 := FDadosAluno.nome;
  EditSobreNome.Text            := FDadosAluno.sobrenome;
  EditEmail.Text                := FDadosAluno.email;
  cxCurrencyEditIdade.EditValue := FDadosAluno.idade;
  cxCurrencyEditPeso.Value      := FDadosAluno.peso;
  cxCurrencyEditAltura.Value    := FDadosAluno.altura;
end;

end.
