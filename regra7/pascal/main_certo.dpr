program main_certo;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Generics.Collections;

type
  TDocumento = class
  public
    CPF: string;
    constructor Create(const ACPFCodigo: string);
  end;

  TContato = class
  public
    Email: string;
    Telefone: string;
    constructor Create(const AEmail, ATelefone: string);
  end;

  TCliente = class
  public
    Nome: string;
    Documento: TDocumento;
    Contato: TContato;
    constructor Create(const ANome: string; ADocumento: TDocumento; AContato: TContato);
    destructor Destroy; override;
  end;

{ TDocumento }

constructor TDocumento.Create(const ACPFCodigo: string);
begin
  CPF := ACPFCodigo;
end;

{ TContato }

constructor TContato.Create(const AEmail, ATelefone: string);
begin
  Email := AEmail;
  Telefone := ATelefone;
end;

{ TCliente }

constructor TCliente.Create(const ANome: string; ADocumento: TDocumento; AContato: TContato);
begin
  Nome := ANome;
  Documento := ADocumento;
  Contato := AContato;
end;

destructor TCliente.Destroy;
begin
  Documento.Free;
  Contato.Free;
  inherited;
end;

{ Programa principal }

var
  Clientes: TObjectList<TCliente>;
  Cliente: TCliente;
begin
  try
    Clientes := TObjectList<TCliente>.Create(True); // True = libera memória dos objetos
    try
      Clientes.Add(TCliente.Create(
        'Alice',
        TDocumento.Create('123.456.789-00'),
        TContato.Create('teste@email.com', '1234-5678')
      ));

      Clientes.Add(TCliente.Create(
        'Bob',
        TDocumento.Create('987.654.321-00'),
        TContato.Create('teste2@email.com', '8765-4321')
      ));

      for Cliente in Clientes do
        Writeln(Format('Nome: %s, CPF: %s, Email: %s, Telefone: %s',
          [Cliente.Nome, Cliente.Documento.CPF, Cliente.Contato.Email, Cliente.Contato.Telefone]));

    finally
      Clientes.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

