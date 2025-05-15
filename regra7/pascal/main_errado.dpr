program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Generics.Collections;

type
  TCliente = class
  public
    Nome: string;
    CPF: string;
    Email: string;
    Telefone: string;
    constructor Create(const ANome, ACPFCodigo, AEmail, ATelefone: string);
  end;

{ TCliente }

constructor TCliente.Create(const ANome, ACPFCodigo, AEmail, ATelefone: string);
begin
  Nome := ANome;
  CPF := ACPFCodigo;
  Email := AEmail;
  Telefone := ATelefone;
end;

{ Programa Principal }

var
  Clientes: TObjectList<TCliente>;
  Cliente: TCliente;
begin
  try
    Clientes := TObjectList<TCliente>.Create(True); // True para liberar memória automaticamente
    try
      Clientes.Add(TCliente.Create('Alice', '123.456.789-00', 'teste@email.com', '1234-5678'));
      Clientes.Add(TCliente.Create('Bob', '987.654.321-00', 'teste2@email.com', '8765-4321'));

      for Cliente in Clientes do
        Writeln(Format('Nome: %s, CPF: %s, Email: %s, Telefone: %s',
          [Cliente.Nome, Cliente.CPF, Cliente.Email, Cliente.Telefone]));

    finally
      Clientes.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

