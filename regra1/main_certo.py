class Usuario:
    def __init__(self, nome, ativo, permissao):
        self.nome = nome
        self.ativo = ativo
        self.permissao = permissao


def processar(usuarios: list[Usuario]):
    for usuario in usuarios:
        mostrar_se_admin(usuario)


def mostrar_se_admin(usuario: Usuario):
    if usuario.ativo and usuario.permissao == "admin":
        print(f"{usuario.nome} é admin.")


if __name__ == "__main__":
    usuarios = [
        Usuario("Alice", True, "admin"),
        Usuario("Bob", False, "user"),
        Usuario("Charlie", True, "user"),
    ]

    processar(usuarios)
