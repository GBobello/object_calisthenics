program main_errado;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Generics.Collections;

type
  TUsuario = class
  public
    Nome: string;
    Ativo: Boolean;
    Permissao: string;
    constructor Create(const ANome: string; AAtivo: Boolean; const APermissao: string);
  end;

constructor TUsuario.Create(const ANome: string; AAtivo: Boolean; const APermissao: string);
begin
  Nome := ANome;
  Ativo := AAtivo;
  Permissao := APermissao;
end;

procedure Processar(Usuarios: TList<TUsuario>);
var
  Usuario: TUsuario;
begin
  // O problema está na forma como a função Processar está implementada.
  for Usuario in Usuarios do
  begin
    if Usuario.Ativo then
    begin
      if SameText(Usuario.Permissao, 'admin') then
        Writeln(Usuario.Nome + ' é admin.');
    end;
  end;
end;

var
  Usuarios: TList<TUsuario>;
begin
  try
    Usuarios := TList<TUsuario>.Create;
    try
      Usuarios.Add(TUsuario.Create('Alice', True, 'admin'));
      Usuarios.Add(TUsuario.Create('Bob', False, 'user'));
      Usuarios.Add(TUsuario.Create('Charlie', True, 'user'));

      Processar(Usuarios);
    finally
      for var U in Usuarios do
        U.Free;
      Usuarios.Free;
    end;
  except
    on E: Exception do
      Writeln('Erro: ', E.Message);
  end;

  Readln;
end.

