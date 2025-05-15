def c_med_pod(v, p):
    if len(v) != len(p):
        raise ValueError("As listas devem ter o mesmo tamanho.")

    s_pon = sum(v * p for v, p in zip(v, p))
    s_pes = sum(p)

    if s_pes == 0:
        raise ValueError("A soma dos pesos não pode ser zero.")
    return s_pon / s_pes


if __name__ == "__main__":
    v = [7, 8, 9]
    p = [2, 3, 5]

    r = c_med_pod(v, p)
    print(f"A média ponderada é: {r}")
