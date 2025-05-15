# 7️⃣ Sétima Regra do Object Calisthenics: Não use classes com mais de duas variáveis de instância

### 🧐 Conceito

A sétima regra do Object Calisthenics recomenda que **nenhuma classe tenha mais de duas variáveis de instância**.  
O objetivo é garantir que cada classe tenha uma única responsabilidade e seja altamente coesa, evitando classes que concentram muitos dados e comportamentos.

---

## 🚫 Exemplo ERRADO

```python
class Produto:
    def __init__(self, nome, preco, quantidade, categoria):
        self.nome = nome
        self.preco = preco
        self.quantidade = quantidade
        self.categoria = categoria
```

Neste exemplo, a classe `Produto` possui quatro variáveis de instância, violando a regra.

---

## ✅ Exemplo CERTO

```python
class Nome:
    def __init__(self, valor):
        self.valor = valor

class Preco:
    def __init__(self, valor):
        self.valor = valor

class Produto:
    def __init__(self, nome, preco):
        self.nome = nome
        self.preco = preco
```

Agora, cada classe tem no máximo duas variáveis de instância, e as responsabilidades estão melhor distribuídas.

---

## 🎯 Por que seguir essa regra?

- 🧩 **Alta coesão**: Classes pequenas e focadas em uma única responsabilidade.
- 🔍 **Facilidade de leitura**: Menos atributos tornam a classe mais fácil de entender.
- 🛠️ **Facilidade de manutenção**: Mudanças afetam menos partes do sistema.
- 🔄 **Reutilização**: Entidades pequenas podem ser reaproveitadas em outros contextos.

---

> **Resumo:**  
> **Não use classes com mais de duas variáveis de instância!**  
> Isso torna seu código mais modular, coeso e fácil de evoluir. 🚀
