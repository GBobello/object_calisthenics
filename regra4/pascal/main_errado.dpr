program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TEndereco = class
  public
    Cidade: string;
    constructor Create(const ACidade: string);
  end;

  TCliente = class
  public
    Endereco: TEndereco;
    constructor Create(AEndereco: TEndereco);
  end;

  TPedido = class
  public
    Cliente: TCliente;
    constructor Create(ACliente: TCliente);
  end;

{ TEndereco }

constructor TEndereco.Create(const ACidade: string);
begin
  Cidade := ACidade;
end;

{ TCliente }

constructor TCliente.Create(AEndereco: TEndereco);
begin
  Endereco := AEndereco;
end;

{ TPedido }

constructor TPedido.Create(ACliente: TCliente);
begin
  Cliente := ACliente;
end;

var
  Endereco: TEndereco;
  Cliente: TCliente;
  Pedido: TPedido;
begin
  try
    Endereco := TEndereco.Create('São Paulo');
    Cliente := TCliente.Create(Endereco);
    Pedido := TPedido.Create(Cliente);

    Writeln(Pedido.Cliente.Endereco.Cidade);  // Equivalente ao print(pedido.cliente.endereco.cidade)

    // Liberação de memória
    Pedido.Free;
    Cliente.Free;
    Endereco.Free;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

