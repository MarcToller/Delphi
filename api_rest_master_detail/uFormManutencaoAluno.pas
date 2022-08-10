unit uFormManutencaoAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConstantesRest, REST.Types,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFormManutencaoAluno = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
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

procedure TFormManutencaoAluno.BitBtn1Click(Sender: TObject);
begin
  FDadosAluno.nome := 'ttttttttttttttt';

  FMetodoExecutaManutencao(FTipoManutencao, FDadosAluno);

//
end;

end.
