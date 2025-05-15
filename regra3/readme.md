# 3️⃣ Terceira Regra do Object Calisthenics: Envolva todas as estruturas primitivas e Strings em classes

### 🧐 Conceito

A terceira regra do Object Calisthenics recomenda que **você nunca use tipos primitivos (como `int`, `float`, `bool`) ou `String` diretamente em seu código**.  
Em vez disso, **envolva esses valores em classes** que representem claramente o seu significado no domínio do problema.

O objetivo é dar mais significado, encapsular validações e comportamentos, e evitar o chamado "Primitive Obsession" (obsessão por tipos primitivos).

---

## 🚫 Exemplo ERRADO

```python
def cadastrar_usuario(nome, idade, email):
    if idade < 0:
        raise ValueError("Idade inválida")
    print(f"Usuário {nome} cadastrado com email {email}")
```

Aqui, `nome`, `idade` e `email` são apenas tipos primitivos, sem significado explícito.

---

## ✅ Exemplo CERTO

```python
class Nome:
    def __init__(self, valor):
        if not valor:
            raise ValueError("Nome não pode ser vazio")
        self.valor = valor

class Idade:
    def __init__(self, valor):
        if valor < 0:
            raise ValueError("Idade inválida")
        self.valor = valor

class Email:
    def __init__(self, valor):
        if "@" not in valor:
            raise ValueError("Email inválido")
        self.valor = valor

def cadastrar_usuario(nome: Nome, idade: Idade, email: Email):
    print(f"Usuário {nome.valor} cadastrado com email {email.valor}")
```

Agora, cada valor tem uma classe própria, com validação e significado claro.

---

## 🎯 Por que seguir essa regra?

- 🏷️ **Mais significado**: Os nomes das classes deixam claro o que cada valor representa.
- 🛡️ **Validação centralizada**: Regras de negócio ficam encapsuladas nas classes.
- 🔄 **Facilidade de manutenção**: Mudanças em regras afetam apenas a classe correspondente.
- 🧩 **Código mais orientado a objetos**: Menos dependência de tipos primitivos.

---

> **Resumo:**  
> **Envolva todos os tipos primitivos e Strings em classes!**  
> Isso deixa seu código mais expressivo, seguro e fácil de evoluir. 🚀
