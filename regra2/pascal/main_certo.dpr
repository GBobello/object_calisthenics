program main_certo;

uses
  SysUtils,
  Winapi.Windows;

function CopiarArquivo(const origem: string) : String;
var
  diretorio, nomeArquivo, nome, extensao, novoNome, destino: string;
  posExtensao: Integer;
begin
  Result := EmptyStr;

  if not FileExists(origem) then
    Exit('Arquivo ' + origem + ' não encontrado.');

  diretorio := ExtractFilePath(origem);
  nomeArquivo := ExtractFileName(origem);

  Writeln('Diretório: ', diretorio);
  Writeln('Nome do Arquivo: ', nomeArquivo);

  extensao := ExtractFileExt(nomeArquivo);
  nome := Copy(nomeArquivo, 1, Length(nomeArquivo) - Length(extensao));

  novoNome := nome + ' - Cópia' + extensao;
  destino := IncludeTrailingPathDelimiter(diretorio) + novoNome;

  if FileExists(destino) then
    Exit('Arquivo ' + destino + ' já existe.');

  CopyFile(PChar(origem), PChar(destino), False);
  Exit('Arquivo copiado para ' + destino);
end;

begin
  WriteLn(CopiarArquivo('C:\Users\bobel\projects\object_calisthenics\regra2\bobello.txt'));
  sleep(10000);
end.


