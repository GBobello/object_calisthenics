program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Generics.Collections;

procedure ImprimirNomes(Nomes: TList<string>);
var
  Nome: string;
begin
  for Nome in Nomes do
    Writeln(Nome);
end;

var
  ListaDeNomes: TList<string>;
begin
  try
    ListaDeNomes := TList<string>.Create;
    try
      ListaDeNomes.Add('Alice');
      ListaDeNomes.Add('Bob');
      ListaDeNomes.Add('Charlie');

      ImprimirNomes(ListaDeNomes);
    finally
      ListaDeNomes.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

