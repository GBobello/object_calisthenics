class Endereco:
    def __init__(self, cidade):
        self.cidade = cidade


class Cliente:
    def __init__(self, endereco):
        self.endereco = endereco


class Pedido:
    def __init__(self, cliente):
        self.cliente = cliente


if __name__ == "__main__":
    endereco = Endereco("São Paulo")
    cliente = Cliente(endereco)
    pedido = Pedido(cliente)
    print(pedido.cliente.endereco.cidade)
