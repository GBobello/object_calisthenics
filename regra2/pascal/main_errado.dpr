program main_errado;

uses
  SysUtils,
  Winapi.Windows;

procedure CopiarArquivo(const origem: string);
var
  diretorio, nomeArquivo, nome, extensao, novoNome, destino: string;
  posExtensao: Integer;
begin
  if FileExists(origem) then
  begin
    diretorio := ExtractFilePath(origem);
    nomeArquivo := ExtractFileName(origem);

    Writeln('Diret�rio: ', diretorio);
    Writeln('Nome do Arquivo: ', nomeArquivo);

    extensao := ExtractFileExt(nomeArquivo);
    nome := Copy(nomeArquivo, 1, Length(nomeArquivo) - Length(extensao));

    novoNome := nome + ' - C�pia' + extensao;
    destino := IncludeTrailingPathDelimiter(diretorio) + novoNome;

    if not FileExists(destino) then
    begin
      CopyFile(PChar(origem), PChar(destino), False);
      Writeln('Arquivo copiado para ', destino);
    end
    else
      Writeln('Arquivo ', destino, ' j� existe.');
  end
  else
    Writeln('Arquivo ', origem, ' n�o encontrado.');
end;

begin
  CopiarArquivo('C:\Users\bobel\projects\object_calisthenics\regra2\bobello.txt');
  Sleep(10000);
end.

