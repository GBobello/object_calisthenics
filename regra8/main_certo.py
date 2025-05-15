class ListaDeNomes:
    def __init__(self, nomes: list[str]):
        if not nomes:
            raise ValueError("A lista de nomes não pode estar vazia.")
        self._nomes = nomes

    def imprimir(self):
        for nome in self._nomes:
            print(nome)

    def adicionar(self, nome: str):
        self._nomes.append(nome)

    def contem(self, nome: str) -> bool:
        return nome in self._nomes


if __name__ == "__main__":
    lista = ListaDeNomes(["Alice", "Bob", "Charlie"])
    lista.imprimir()
