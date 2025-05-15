# 8️⃣ Oitava Regra do Object Calisthenics: Envolva suas collections em classes

### 🧐 Conceito

A quarta regra do Object Calisthenics recomenda que **você nunca use diretamente collections como listas, dicionários ou conjuntos (`list`, `dict`, `set`, etc.) em seu código**.  
Em vez disso, **envolva essas collections em classes específicas** que representem claramente o seu propósito no domínio do problema.

O objetivo é dar mais significado, encapsular comportamentos e regras de negócio, e evitar o uso genérico e descontrolado de collections.

---

## 🚫 Exemplo ERRADO

```python
def adicionar_produto(produtos, produto):
    produtos.append(produto)
```

Aqui, `produtos` é apenas uma lista genérica, sem significado explícito ou controle.

---

## ✅ Exemplo CERTO

```python
class ListaDeProdutos:
    def __init__(self):
        self._produtos = []

    def adicionar(self, produto):
        self._produtos.append(produto)

    def total(self):
        return len(self._produtos)

    def __iter__(self):
        return iter(self._produtos)

def adicionar_produto(lista_de_produtos, produto):
    lista_de_produtos.adicionar(produto)
```

Agora, a collection está encapsulada em uma classe, permitindo adicionar regras, validações e comportamentos específicos.

---

## 🎯 Por que seguir essa regra?

- 🏷️ **Mais significado**: O nome da classe deixa claro o que a collection representa.
- 🛡️ **Encapsulamento de regras**: Validações e lógicas ficam centralizadas.
- 🔄 **Facilidade de manutenção**: Mudanças afetam apenas a classe da collection.
- 🧩 **Código mais orientado a objetos**: Menos dependência de estruturas genéricas.

---

> **Resumo:**  
> **Envolva todas as suas collections em classes!**  
> Isso deixa seu código mais expressivo, seguro e fácil de evoluir. 🚀
