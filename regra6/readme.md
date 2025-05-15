# 6️⃣ Sexta Regra do Object Calisthenics: Mantenha todas as entidades pequenas

### 🧐 Conceito

A sexta regra do Object Calisthenics recomenda que **todas as suas entidades (classes, métodos, arquivos) sejam pequenas**.  
O objetivo é garantir que cada parte do seu código seja fácil de entender, manter e reutilizar.

---

## 🚫 Exemplo ERRADO

```python
class Pedido:
    def __init__(self, itens, cliente, endereco, pagamento):
        self.itens = itens
        self.cliente = cliente
        self.endereco = endereco
        self.pagamento = pagamento

    def processar(self):
        # Muitas responsabilidades misturadas aqui!
        self.validar_itens()
        self.calcular_frete()
        self.processar_pagamento()
        self.enviar_email_confirmacao()
        # ... e muito mais
```

Neste exemplo, a classe `Pedido` faz muitas coisas e tem muitas responsabilidades, tornando-se difícil de entender e manter.

---

## ✅ Exemplo CERTO

```python
class Pedido:
    def __init__(self, itens, cliente):
        self.itens = itens
        self.cliente = cliente

    def processar(self, pagamento, envio):
        pagamento.processar(self)
        envio.enviar(self)

class Pagamento:
    def processar(self, pedido):
        # Lógica de pagamento

class Envio:
    def enviar(self, pedido):
        # Lógica de envio
```

Agora, cada classe tem uma responsabilidade clara e limitada, tornando o código mais modular e fácil de manter.

---

## 🎯 Por que seguir essa regra?

- 🧩 **Alta coesão**: Cada entidade faz apenas o que lhe compete.
- 🔍 **Facilidade de leitura**: Entidades pequenas são mais fáceis de entender.
- 🛠️ **Facilidade de manutenção**: Mudanças afetam menos partes do sistema.
- 🔄 **Reutilização**: Entidades pequenas podem ser reaproveitadas em outros contextos.

---

> **Resumo:**  
> **Mantenha todas as entidades pequenas!**  
> Isso torna seu código mais limpo, modular e fácil de evoluir. 🚀
