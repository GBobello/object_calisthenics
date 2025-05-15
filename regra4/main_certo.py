class Endereco:
    def __init__(self, cidade):
        self._cidade = cidade

    def obter_cidade(self):
        return self._cidade


class Cliente:
    def __init__(self, endereco):
        self._endereco = endereco

    def cidade(self):
        return self._endereco.obter_cidade()


class Pedido:
    def __init__(self, cliente):
        self._cliente = cliente

    def obter_cidade_do_cliente(self):
        return self._cliente.cidade()


if __name__ == "__main__":
    endereco = Endereco("São Paulo")
    cliente = Cliente(endereco)
    pedido = Pedido(cliente)
    print(pedido.obter_cidade_do_cliente())
