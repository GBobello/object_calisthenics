program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TPedido = class
  private
    FValor: Double;
  public
    constructor Create;
    procedure AdicionarItem(Preco: Double);
    procedure AplicarDesconto(Porcentagem: Double);
    function MostrarTotal: string;
  end;

constructor TPedido.Create;
begin
  FValor := 0;
end;

procedure TPedido.AdicionarItem(Preco: Double);
begin
  if Preco < 0 then
    raise Exception.Create('Preço inválido!');
  FValor := FValor + Preco;
end;

procedure TPedido.AplicarDesconto(Porcentagem: Double);
begin
  if Porcentagem <= 0 then
    raise Exception.Create('Desconto inválido!');
  FValor := FValor - (FValor * (Porcentagem / 100));
end;

function TPedido.MostrarTotal: string;
begin
  Result := Format('Total do pedido R$ %.2f', [FValor]);
end;

var
  Pedido: TPedido;
begin
  try
    Pedido := TPedido.Create;
    try
      Pedido.AdicionarItem(50);
      Pedido.AdicionarItem(30);
      Pedido.AplicarDesconto(10);

      Writeln(Pedido.MostrarTotal);

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

