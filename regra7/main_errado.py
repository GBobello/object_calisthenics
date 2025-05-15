class Cliente:
    def __init__(self, nome, cpf, email, telefone):
        self.nome = nome
        self.cpf = cpf
        self.email = email
        self.telefone = telefone


if __name__ == "__main__":
    clientes = [
        Cliente("Alice", "123.456.789-00", "teste@email.com", "1234-5678"),
        Cliente("Bob", "987.654.321-00", "teste2@email.com", "8765-4321"),
    ]
    for cliente in clientes:
        print(
            f"Nome: {cliente.nome}, CPF: {cliente.cpf}, Email: {cliente.email}, Telefone: {cliente.telefone}"
        )
