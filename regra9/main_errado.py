class Pedido:
    def __init__(self):
        self._valor = 0

    def get_valor(self):
        return self._valor

    def set_valor(self, novo_valor):
        self._valor = novo_valor


if __name__ == "__main__":
    pedido = Pedido()
    pedido.set_valor(50)
    pedido.set_valor(pedido.get_valor() + 30)

    desconto = 10
    valor = pedido.get_valor() - (pedido.get_valor() * desconto / 100)
    pedido.set_valor(valor)

    print(f"O valor do pedido é: {pedido.get_valor()}")
