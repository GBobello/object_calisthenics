class Usuario:
    def __init__(self, nome, ativo, permissao):
        self.nome = nome
        self.ativo = ativo
        self.permissao = permissao


def processar(usuarios: list[Usuario]):
    """
    O problema está na forma como a função processar está implementada.
    """
    for usuario in usuarios:
        if usuario.ativo:
            if usuario.permissao == "admin":
                print(f"{usuario.nome} é admin.")


if __name__ == "__main__":
    usuarios = [
        Usuario("Alice", True, "admin"),
        Usuario("Bob", False, "user"),
        Usuario("Charlie", True, "user"),
    ]

    processar(usuarios)
