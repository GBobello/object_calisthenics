program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TEndereco = class
  private
    FCidade: string;
  public
    constructor Create(const ACidade: string);
    function ObterCidade: string;
  end;

  TCliente = class
  private
    FEndereco: TEndereco;
  public
    constructor Create(AEndereco: TEndereco);
    function Cidade: string;
  end;

  TPedido = class
  private
    FCliente: TCliente;
  public
    constructor Create(ACliente: TCliente);
    function ObterCidadeDoCliente: string;
  end;

{ TEndereco }

constructor TEndereco.Create(const ACidade: string);
begin
  FCidade := ACidade;
end;

function TEndereco.ObterCidade: string;
begin
  Result := FCidade;
end;

{ TCliente }

constructor TCliente.Create(AEndereco: TEndereco);
begin
  FEndereco := AEndereco;
end;

function TCliente.Cidade: string;
begin
  Result := FEndereco.ObterCidade;
end;

{ TPedido }

constructor TPedido.Create(ACliente: TCliente);
begin
  FCliente := ACliente;
end;

function TPedido.ObterCidadeDoCliente: string;
begin
  Result := FCliente.Cidade;
end;

{ Programa principal }

var
  Endereco: TEndereco;
  Cliente: TCliente;
  Pedido: TPedido;
begin
  try
    Endereco := TEndereco.Create('São Paulo');
    Cliente := TCliente.Create(Endereco);
    Pedido := TPedido.Create(Cliente);

    Writeln(Pedido.ObterCidadeDoCliente);  // Saída: São Paulo

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

