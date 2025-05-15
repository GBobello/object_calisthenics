class CalculadoraFinanceira:
    def calcular_total(self, dados):
        return sum(
            item["valor"] for item in dados if item["ativo"] and item["valor"] > 0
        )

    def calcular_media(self, total, quantidade):
        return total / quantidade if quantidade > 0 else 0


class ImpressoraRelatorio:
    def imprimir(self, total, media, dados):
        print("Relatório gerado")
        print("Total:", total)
        print("Média:", media)
        for item in dados:
            print(f"Item: {item['nome']}, Valor: {item['valor']}")


class RelatorioFinanceiro:
    def __init__(self):
        self.calc = CalculadoraFinanceira()
        self.saida = ImpressoraRelatorio()

    def gerar(self, dados):
        total = self.calc.calcular_total(dados)
        media = self.calc.calcular_media(total, len(dados))
        self.saida.imprimir(total, media, dados)


if __name__ == "__main__":
    dados = [
        {"nome": "Item 1", "valor": 100, "ativo": True},
        {"nome": "Item 2", "valor": 200, "ativo": True},
        {"nome": "Item 3", "valor": -50, "ativo": False},
        {"nome": "Item 4", "valor": 0, "ativo": True},
    ]

    relatorio = RelatorioFinanceiro()
    relatorio.gerar(dados)
