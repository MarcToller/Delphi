unit uFormManutencaoAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConstantesRest, REST.Types;

type
  TFormManutencaoAluno = class(TForm)
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

end.
