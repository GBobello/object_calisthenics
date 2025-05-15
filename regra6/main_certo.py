def calculo_media_ponderada(valores: list, pesos: list) -> float:
    if len(valores) != len(pesos):
        raise ValueError("As listas devem ter o mesmo tamanho.")

    soma_ponderada = sum(valores * pesos for valores, pesos in zip(valores, pesos))
    soma_pesos = sum(pesos)

    if soma_pesos == 0:
        raise ValueError("A soma dos pesos não pode ser zero.")
    return soma_ponderada / soma_pesos


if __name__ == "__main__":
    valores = [7, 8, 9]
    pesos = [2, 3, 5]

    resultado = calculo_media_ponderada(valores, pesos)
    print(f"A média ponderada é: {resultado}")
