import os
import shutil


def gerar_nome_copia(caminho_arquivo: str) -> str:
    diretorio, nome_arquivo = os.path.split(caminho_arquivo)
    nome, extensao = os.path.splitext(nome_arquivo)
    novo_nome = f"{nome} - Cópia{extensao}"
    diretorio += "/" + novo_nome
    return diretorio


def copiar_arquivo(origem: str):
    if not os.path.exists(origem):
        print(f"Arquivo {origem} não encontrado.")

    destino = gerar_nome_copia(origem)

    if os.path.exists(destino):
        print(f"Arquivo {destino} já existe.")

    shutil.copy(origem, destino)
    print(f"Arquivo copiado para {destino}")


copiar_arquivo("../regra2/bobello.txt")
