import os
import shutil


def copiar_arquivo(origem: str):
    if os.path.exists(origem):
        diretorio, nome_arquivo = os.path.split(origem)
        nome, extensao = os.path.splitext(nome_arquivo)
        novo_nome = f"{nome} - Cópia{extensao}"
        diretorio += "/" + novo_nome
        if not os.path.exists(diretorio):
            shutil.copy(origem, diretorio)
            print(f"Arquivo copiado para {diretorio}")
        else:
            print(f"Arquivo {diretorio} já existe.")
    else:
        print(f"Arquivo {origem} não encontrado.")


if __name__ == "__main__":
    copiar_arquivo("../regra2/bobello.txt")
