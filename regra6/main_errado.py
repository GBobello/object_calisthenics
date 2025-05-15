class RelatorioFinanceiro:
    def gerar(self, dados):
        total = 0
        for item in dados:
            if item["ativo"]:
                if item["valor"] > 0:
                    total += item["valor"]
        media = total / len(dados) if dados else 0
        print("Relatório gerado")
        print("Total:", total)
        print("Média:", media)
        for item in dados:
            print(f"Item: {item['nome']}, Valor: {item['valor']}")


if __name__ == "__main__":
    dados = [
        {"nome": "Item 1", "valor": 100, "ativo": True},
        {"nome": "Item 2", "valor": 200, "ativo": True},
        {"nome": "Item 3", "valor": -50, "ativo": False},
        {"nome": "Item 4", "valor": 0, "ativo": True},
    ]

    relatorio = RelatorioFinanceiro()
    relatorio.gerar(dados)
