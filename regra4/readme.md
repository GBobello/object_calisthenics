# 4️⃣ Quarta Regra do Object Calisthenics: Use apenas um ponto por linha

### 🧐 Conceito

A quarta regra do Object Calisthenics recomenda que **você utilize apenas um ponto (`.`) por linha ao acessar membros de objetos**.  
Isso significa evitar o encadeamento de acessos como `objeto1.objeto2.objeto3.valor`.  
O objetivo é reduzir o acoplamento entre objetos e evitar o chamado "train wreck" (acidente de trem), onde uma linha depende de toda uma cadeia de objetos internos.

---

## 🚫 Exemplo ERRADO

```python
print(pedido.cliente.endereco.cidade)
```

Neste exemplo, há três acessos encadeados, o que viola a regra.

---

## ✅ Exemplo CERTO

```python
class Endereco:
    def __init__(self, cidade):
        self.cidade = cidade

    def obter_cidade(self):
        return self.cidade

class Cliente:
    def __init__(self, endereco):
        self.endereco = endereco

    def obter_cidade(self):
        return self.endereco.obter_cidade()

class Pedido:
    def __init__(self, cliente):
        self.cliente = cliente

    def obter_cidade_do_cliente(self):
        return self.cliente.obter_cidade()

if __name__ == "__main__":
    endereco = Endereco("São Paulo")
    cliente = Cliente(endereco)
    pedido = Pedido(cliente)
    print(pedido.obter_cidade_do_cliente())
```

Agora, cada linha faz apenas um acesso por vez, respeitando a regra.

---

## 🎯 Por que seguir essa regra?

- 🔗 **Menos acoplamento**: Objetos não dependem da estrutura interna de outros objetos.
- 🧩 **Encapsulamento**: Cada classe expõe apenas o que é necessário.
- 🛠️ **Facilidade de manutenção**: Mudanças internas em uma classe não afetam quem a utiliza.
- 🔍 **Código mais limpo e seguro**: Menos chances de erros por mudanças em cadeias de objetos.

---

> **Resumo:**  
> **Use apenas um ponto por linha!**  
> Isso torna seu código mais robusto, desacoplado e fácil de manter. 🚀
