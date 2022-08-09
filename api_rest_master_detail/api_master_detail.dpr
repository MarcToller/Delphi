program api_master_detail;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uConstantesRest in 'uConstantesRest.pas',
  uFormManutencaoAluno in 'uFormManutencaoAluno.pas' {FormManutencaoAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormManutencaoAluno, FormManutencaoAluno);
  Application.Run;
end.
