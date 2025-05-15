program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TPedido = class
  private
    FValor: Double;
  public
    constructor Create;
    function GetValor: Double;
    procedure SetValor(NovoValor: Double);
  end;

constructor TPedido.Create;
begin
  FValor := 0;
end;

function TPedido.GetValor: Double;
begin
  Result := FValor;
end;

procedure TPedido.SetValor(NovoValor: Double);
begin
  FValor := NovoValor;
end;

var
  Pedido: TPedido;
  Desconto, Valor: Double;

begin
  try
    Pedido := TPedido.Create;
    try
      Pedido.SetValor(50);
      Pedido.SetValor(Pedido.GetValor + 30);

      Desconto := 10;
      Valor := Pedido.GetValor - (Pedido.GetValor * Desconto / 100);
      Pedido.SetValor(Valor);

      Writeln('O valor do pedido é: R$ ', FormatFloat('0.00', Pedido.GetValor));

      Sleep(10000);
    finally
      Pedido.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

