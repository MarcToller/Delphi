unit uFormAutorizacaoToken;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, cxTextEdit, cxMemo;

type
  TFormAutorizacaoToken = class(TForm)
    cxMemoToken: TcxMemo;
    LabelToken: TLabel;
    PanelBotoes: TPanel;
    BitBtnValidar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnValidarClick(Sender: TObject);
  private
    function getToken: string;
    { Private declarations }
  public
    property Token: string read getToken;
    { Public declarations }
  end;

var
  FormAutorizacaoToken: TFormAutorizacaoToken;

implementation

{$R *.dfm}

{ TFormAutorizacaoToken }

procedure TFormAutorizacaoToken.BitBtnCancelarClick(Sender: TObject);
begin
  cxMemoToken.Clear;
  close;
end;

procedure TFormAutorizacaoToken.BitBtnValidarClick(Sender: TObject);
begin
  if Token.IsEmpty then
    ShowMessage('Insira um token.')
  else
    close;
end;

function TFormAutorizacaoToken.getToken: string;
begin
  Result := Trim(cxMemoToken.Text);
end;

end.
