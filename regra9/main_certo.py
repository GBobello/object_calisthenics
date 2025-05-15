class Pedido:
    def __init__(self):
        self._valor = 0

    def adicionar_item(self, preco):
        if preco < 0:
            raise ValueError("Preço inválido!")
        self._valor += preco

    def aplicar_desconto(self, porcentagem):
        if porcentagem <= 0:
            raise ValueError("Desconto inválido!")
        self._valor -= self._valor * (porcentagem / 100)

    def mostrar_total(self):
        return f"Total do pedido R$ {self._valor:.2f}"


if __name__ == "__main__":
    pedido = Pedido()
    pedido.adicionar_item(50)
    pedido.adicionar_item(30)
    pedido.aplicar_desconto(10)

    print(pedido.mostrar_total())
