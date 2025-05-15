class Usuario:
    def __init__(self, nome):
        self.nome = nome


class Produto:
    def __init__(self, descricao):
        self.descricao = descricao


class Pedido:
    def __init__(self, usuario, produtos):
        self.usuario = usuario
        self.produtos = produtos


def processar(pedido: Pedido):
    """
    O problema está na forma como a função processar está implementada.
    """
    for produto in pedido.produtos:
        print(f"Usuário: {pedido.usuario.nome}, Produto: {produto.descricao}")


if __name__ == "__main__":
    usuario = Usuario("Alice")
    produtos = [Produto("Produto 1"), Produto("Produto 2")]
    pedido = Pedido(usuario, produtos)
    processar(pedido)
