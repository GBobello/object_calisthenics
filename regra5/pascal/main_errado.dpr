program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function CalculoMediaPonderada(v, p: array of Double): Double;
var
  i: Integer;
  s_pod, s_pes: Double;
begin
  if Length(v) <> Length(p) then
    raise Exception.Create('As listas devem ter o mesmo tamanho.');

  s_pod := 0;
  s_pes := 0;

  for i := 0 to High(v) do
  begin
    s_pod := s_pod + (v[i] * p[i]);
    s_pes := s_pes + p[i];
  end;

  if s_pes = 0 then
    raise Exception.Create('A soma dos pesos não pode ser zero.');

  Result := s_pod / s_pes;
end;

var
  v: array of Double;
  p: array of Double;
  r: Double;
begin
  try
    SetLength(v, 3);
    SetLength(p, 3);

    v[0] := 7;
    v[1] := 8;
    v[2] := 9;

    p[0] := 2;
    p[1] := 3;
    p[2] := 5;

    r := CalculoMediaPonderada(v, p);
    Writeln('A média ponderada é: ', FormatFloat('0.00', r));
    sleep(10000);
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

