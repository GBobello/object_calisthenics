program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TDadoFinanceiro = record
    Nome: string;
    Valor: Double;
    Ativo: Boolean;
  end;

  TRelatorioFinanceiro = class
  public
    procedure Gerar(const Dados: TArray<TDadoFinanceiro>);
  end;

procedure TRelatorioFinanceiro.Gerar(const Dados: TArray<TDadoFinanceiro>);
var
  Total, Media: Double;
  Contador: Integer;
  Item: TDadoFinanceiro;
begin
  Total := 0;
  for Item in Dados do
  begin
    if Item.Ativo then
      if Item.Valor > 0 then
        Total := Total + Item.Valor;
  end;

  if Length(Dados) > 0 then
    Media := Total / Length(Dados)
  else
    Media := 0;

  Writeln('Relatório gerado');
  Writeln('Total: ', FormatFloat('0.00', Total));
  Writeln('Média: ', FormatFloat('0.00', Media));

  for Item in Dados do
    Writeln('Item: ', Item.Nome, ', Valor: ', FormatFloat('0.00', Item.Valor));
end;

var
  Dados: TArray<TDadoFinanceiro>;
  Relatorio: TRelatorioFinanceiro;
begin
  try
    SetLength(Dados, 3);

    Dados[0].Nome := 'Produto A';
    Dados[0].Valor := 100.00;
    Dados[0].Ativo := True;

    Dados[1].Nome := 'Produto B';
    Dados[1].Valor := 200.00;
    Dados[1].Ativo := False;

    Dados[2].Nome := 'Produto C';
    Dados[2].Valor := 150.00;
    Dados[2].Ativo := True;

    Relatorio := TRelatorioFinanceiro.Create;
    try
      Relatorio.Gerar(Dados);
    finally
      Relatorio.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

