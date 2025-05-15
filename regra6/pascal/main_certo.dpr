program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TDadoFinanceiro = record
    Nome: string;
    Valor: Double;
    Ativo: Boolean;
  end;

  TCalculadoraFinanceira = class
  public
    function CalcularTotal(const Dados: TArray<TDadoFinanceiro>): Double;
    function CalcularMedia(Total: Double; Quantidade: Integer): Double;
  end;

  TImpressoraRelatorio = class
  public
    procedure Imprimir(Total, Media: Double; const Dados: TArray<TDadoFinanceiro>);
  end;

  TRelatorioFinanceiro = class
  private
    FCalculadora: TCalculadoraFinanceira;
    FImpressora: TImpressoraRelatorio;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Gerar(const Dados: TArray<TDadoFinanceiro>);
  end;

{ TCalculadoraFinanceira }

function TCalculadoraFinanceira.CalcularTotal(const Dados: TArray<TDadoFinanceiro>): Double;
var
  Item: TDadoFinanceiro;
begin
  Result := 0;
  for Item in Dados do
    if Item.Ativo and (Item.Valor > 0) then
      Result := Result + Item.Valor;
end;

function TCalculadoraFinanceira.CalcularMedia(Total: Double; Quantidade: Integer): Double;
begin
  if Quantidade > 0 then
    Result := Total / Quantidade
  else
    Result := 0;
end;

{ TImpressoraRelatorio }

procedure TImpressoraRelatorio.Imprimir(Total, Media: Double; const Dados: TArray<TDadoFinanceiro>);
var
  Item: TDadoFinanceiro;
begin
  Writeln('Relatório gerado');
  Writeln('Total: ', FormatFloat('0.00', Total));
  Writeln('Média: ', FormatFloat('0.00', Media));

  for Item in Dados do
    Writeln('Item: ', Item.Nome, ', Valor: ', FormatFloat('0.00', Item.Valor));
end;

{ TRelatorioFinanceiro }

constructor TRelatorioFinanceiro.Create;
begin
  FCalculadora := TCalculadoraFinanceira.Create;
  FImpressora := TImpressoraRelatorio.Create;
end;

destructor TRelatorioFinanceiro.Destroy;
begin
  FCalculadora.Free;
  FImpressora.Free;
  inherited;
end;

procedure TRelatorioFinanceiro.Gerar(const Dados: TArray<TDadoFinanceiro>);
var
  Total, Media: Double;
begin
  Total := FCalculadora.CalcularTotal(Dados);
  Media := FCalculadora.CalcularMedia(Total, Length(Dados));
  FImpressora.Imprimir(Total, Media, Dados);
end;

{ Programa Principal }

var
  Dados: TArray<TDadoFinanceiro>;
  Relatorio: TRelatorioFinanceiro;
begin
  try
    SetLength(Dados, 3);
    Dados[0].Nome := 'Produto A'; Dados[0].Valor := 100.00; Dados[0].Ativo := True;
    Dados[1].Nome := 'Produto B'; Dados[1].Valor := 200.00; Dados[1].Ativo := False;
    Dados[2].Nome := 'Produto C'; Dados[2].Valor := 150.00; Dados[2].Ativo := True;

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

