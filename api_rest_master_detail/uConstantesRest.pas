unit uConstantesRest;

interface

uses
  REST.Types;

Type
  TAluno = class(TObject)
  private
    Fpeso: Real;
    Fsobrenome: string;
    Femail: string;
    Faltura: Real;
    Fidade: integer;
    Fnome: string;
    Fid: integer;
  public
    property id: integer read Fid write Fid;
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
    Faluno: TAluno;
    function GetSucesso: Boolean;
  public
    property errors: TArray<string> read Ferrors write Ferrors;
    property sucesso: Boolean read GetSucesso;
    property aluno: TAluno read Faluno write Faluno;
  end;

  TMetodoExecutaManutencao = function(ATipoManutencao: TRESTRequestMethod; ADadosAluno: TAluno = nil):TRetornoAPI of object;


const
  cBaseURL               = 'http://168.138.248.33:3001/alunos';
  cRootElementFotos      = '[%d].Fotos';
  cToken                 = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZW1haWwiOiJtYXJjZWxvMUB5YWhvby5jb20uYnIiLCJpYXQiOjE2NTk5OTM2MTcsImV4cCI6MTY2MDU5ODQxN30.QnIczn8IPj4sPuXegpTkqH_jV7mVXU6ceMpgM10i18I';
  cNomeParamAutenticacao = 'authorization';


implementation


{ TRetornoAPI }

function TRetornoAPI.GetSucesso: Boolean;
begin
  Result := (Length(errors) = 0) and (Assigned(aluno) and (aluno.id > 0));
end;

end.
