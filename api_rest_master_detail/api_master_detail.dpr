program api_master_detail;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uConstantesRest in 'uConstantesRest.pas',
  uFormManutencaoAluno in 'uFormManutencaoAluno.pas' {FormManutencaoAluno},
  uFormAutorizacaoToken in 'uFormAutorizacaoToken.pas' {FormAutorizacaoToken};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
