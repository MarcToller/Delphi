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

  TRetornoTokenUsuario = class(Tobject)
  private
    FuserEmail: string;
    FuserId: string;
    FtokenExpira: string;
    FuserName: string;
    Ferrors: TArray<string>;
  public
    property userName: string read FuserName write FuserName;
    property tokenExpira: string read FtokenExpira write FtokenExpira;
    property userEmail: string read FuserEmail write FuserEmail;
    property userId: string read FuserId write FuserId;
    property errors: TArray<string> read Ferrors write Ferrors;
  end;

  TMetodoExecutaManutencao = function(ATipoManutencao: TRESTRequestMethod; ADadosAluno: TAluno = nil):TRetornoAPI of object;


const
  cBaseURL               = 'http://168.138.248.33:3001/alunos';
  cBaseURLFotos          = 'http://168.138.248.33:3001/fotos';
  cBaseURLToken          = 'http://168.138.248.33:3001/tokens';

(*
  cBaseURL               = 'http://localhost:3001/alunos';
  cBaseURLFotos          = 'http://localhost:3001/fotos';
  cBaseURLToken          = 'http://localhost:3001/tokens';
*)


  cRootElementFotos      = '[%d].Fotos';
  cNomeParamAutenticacao = 'authorization';
  cTokenCadastroAlunos   = 'TokenCadastroAlunos';
  cBearer                = 'Bearer';


implementation


{ TRetornoAPI }

function TRetornoAPI.GetSucesso: Boolean;
begin
  Result := (Length(errors) = 0) and (Assigned(aluno) and (aluno.id > 0));
end;

end.
