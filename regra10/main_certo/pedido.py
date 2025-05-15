from usuario import Usuario
from produto import Produto


class Pedido:
    def __init__(self, usuario: Usuario, produtos: list[Produto]):
        self.usuario = usuario
        self.produtos = produtos
