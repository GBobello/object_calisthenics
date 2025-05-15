class Documento:
    def __init__(self, cpf):
        self.cpf = cpf


class Contato:
    def __init__(self, email, telefone):
        self.email = email
        self.telefone = telefone


class Cliente:
    def __init__(self, nome, documento: Documento, contato: Contato):
        self.nome = nome
        self.documento = documento
        self.contato = contato


if __name__ == "__main__":
    clientes = [
        Cliente(
            "Alice",
            Documento("123.456.789-00"),
            Contato("teste@email.com", "1234-5678"),
        ),
        Cliente(
            "Bob",
            Documento("987.654.321-00"),
            Contato("teste2@email.com", "8765-4321"),
        ),
    ]

    for cliente in clientes:
        print(
            f"Nome: {cliente.nome}, CPF: {cliente.documento.cpf}, Email: {cliente.contato.email}, Telefone: {cliente.contato.telefone}"
        )
