class Nome:
    def __init__(self, valor: str):
        if not valor.strip():
            raise ValueError("Nome não pode ser vazio.")
        self.valor = valor

    def __str__(self):
        return self.valor


class Idade:
    def __init__(self, valor: int):
        if valor < 0:
            raise ValueError("Idade inválida.")
        self.valor = valor

    def __str__(self):
        return str(self.valor)


def imprimir_dados(nome: Nome, idade: Idade):
    print(f"Nome: {nome}")
    print(f"Idade: {idade}")


if __name__ == "__main__":
    imprimir_dados(Nome("Alice"), Idade(30))
