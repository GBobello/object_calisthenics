program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function CalculoMediaPonderada(valores, pesos: array of Double): Double;
var
  i: Integer;
  somaPonderada, somaPesos: Double;
begin
  if Length(valores) <> Length(pesos) then
    raise Exception.Create('As listas devem ter o mesmo tamanho.');

  somaPonderada := 0;
  somaPesos := 0;

  for i := 0 to High(valores) do
  begin
    somaPonderada := somaPonderada + (valores[i] * pesos[i]);
    somaPesos := somaPesos + pesos[i];
  end;

  if somaPesos = 0 then
    raise Exception.Create('A soma dos pesos não pode ser zero.');

  Result := somaPonderada / somaPesos;
end;

var
  valores: array of Double;
  pesos: array of Double;
  resultado: Double;
begin
  try
    // Inicialização dos vetores
    SetLength(valores, 3);
    SetLength(pesos, 3);

    valores[0] := 7;
    valores[1] := 8;
    valores[2] := 9;

    pesos[0] := 2;
    pesos[1] := 3;
    pesos[2] := 5;

    resultado := CalculoMediaPonderada(valores, pesos);
    Writeln('A média ponderada é: ', FormatFloat('0.00', resultado));
    sleep(10000);
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

