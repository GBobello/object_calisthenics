program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Generics.Collections;

type
  TListaDeNomes = class
  private
    FNomes: TList<string>;
  public
    constructor Create(const NomesIniciais: array of string);
    destructor Destroy; override;

    procedure Imprimir;
    procedure Adicionar(const Nome: string);
    function Contem(const Nome: string): Boolean;
  end;

constructor TListaDeNomes.Create(const NomesIniciais: array of string);
var
  Nome: string;
begin
  FNomes := TList<string>.Create;

  if Length(NomesIniciais) = 0 then
    raise Exception.Create('A lista de nomes não pode estar vazia.');

  for Nome in NomesIniciais do
    FNomes.Add(Nome);
end;

destructor TListaDeNomes.Destroy;
begin
  FNomes.Free;
  inherited;
end;

procedure TListaDeNomes.Imprimir;
var
  Nome: string;
begin
  for Nome in FNomes do
    Writeln(Nome);
end;

procedure TListaDeNomes.Adicionar(const Nome: string);
begin
  FNomes.Add(Nome);
end;

function TListaDeNomes.Contem(const Nome: string): Boolean;
begin
  Result := FNomes.Contains(Nome);
end;

var
  Lista: TListaDeNomes;
begin
  try
    Lista := TListaDeNomes.Create(['Alice', 'Bob', 'Charlie']);
    try
      Lista.Imprimir;
    finally
      Lista.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

