program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TNome = class
  private
    FValor: string;
  public
    constructor Create(const Valor: string);
    function ToString: string; override;
  end;

  TIdade = class
  private
    FValor: Integer;
  public
    constructor Create(Valor: Integer);
    function ToString: string; override;
  end;

constructor TNome.Create(const Valor: string);
begin
  if Trim(Valor) = '' then
    raise Exception.Create('Nome não pode ser vazio.');
  FValor := Valor;
end;

function TNome.ToString: string;
begin
  Result := FValor;
end;

constructor TIdade.Create(Valor: Integer);
begin
  if Valor < 0 then
    raise Exception.Create('Idade inválida.');
  FValor := Valor;
end;

function TIdade.ToString: string;
begin
  Result := IntToStr(FValor);
end;

procedure ImprimirDados(Nome: TNome; Idade: TIdade);
begin
  Writeln('Nome: ', Nome.ToString);
  Writeln('Idade: ', Idade.ToString);
end;

var
  Nome: TNome;
  Idade: TIdade;
begin
  try
    Nome := TNome.Create('Alice');
    Idade := TIdade.Create(30);
    try
      ImprimirDados(Nome, Idade);
    finally
      Nome.Free;
      Idade.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

