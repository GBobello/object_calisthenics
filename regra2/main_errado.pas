program CopiarArquivo;

uses
  SysUtils;

procedure CopiarArquivo(const origem: string);
var
  diretorio, nomeArquivo, nome, extensao, novoNome, destino: string;
  posExtensao: Integer;
begin
  if FileExists(origem) then
  begin
    diretorio := ExtractFilePath(origem);
    nomeArquivo := ExtractFileName(origem);

    Writeln('Diretório: ', diretorio);
    Writeln('Nome do Arquivo: ', nomeArquivo);

    extensao := ExtractFileExt(nomeArquivo);
    nome := Copy(nomeArquivo, 1, Length(nomeArquivo) - Length(extensao));
  
    novoNome := nome + ' - Cópia' + extensao;
    destino := IncludeTrailingPathDelimiter(diretorio) + novoNome;
    
    if not FileExists(destino) then
    begin
      CopyFile(PChar(origem), PChar(destino), False);
      Writeln('Arquivo copiado para ', destino);
    end
    else
      Writeln('Arquivo ', destino, ' já existe.');
  end
  else
    Writeln('Arquivo ', origem, ' não encontrado.');
end;

begin
  CopiarArquivo('../regra2/bobello.txt');
end.
