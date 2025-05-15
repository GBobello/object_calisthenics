program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure ImprimirDados(const Nome: string; Idade: Integer);
begin
  Writeln('Nome: ', Nome);
  Writeln('Idade: ', Idade);
end;

begin
  try
    ImprimirDados('Alice', 30);
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

