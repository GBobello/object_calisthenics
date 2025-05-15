# 9️⃣ Nona Regra do Object Calisthenics: **"Sem getters/setters/properties"**

### 🧐 Conceito

Esta regra diz que **você não deve criar métodos do tipo getter, setter ou properties** para acessar ou modificar atributos diretamente.  
O objetivo é incentivar o encapsulamento real, fazendo com que os objetos exponham comportamentos, e não apenas dados.

---

### 🚫 Exemplo que viola a regra:

```python
class ContaBancaria:
    def __init__(self, saldo):
        self._saldo = saldo

    def get_saldo(self):
        return self._saldo

    def set_saldo(self, valor):
        self._saldo = valor
```

---

### ✅ Exemplo seguindo a regra:

```python
class ContaBancaria:
    def __init__(self, saldo):
        self._saldo = saldo

    def sacar(self, valor):
        if valor > self._saldo:
            raise ValueError("Saldo insuficiente")
        self._saldo -= valor

    def depositar(self, valor):
        self._saldo += valor
```

Aqui, a classe expõe **comportamentos** (`sacar`, `depositar`) ao invés de apenas permitir acesso direto ao saldo.

---

## 🎯 Por que seguir essa regra?

- 🛡️ **Encapsulamento real**: O objeto controla como seus dados são usados.
- 🧩 **Favorece comportamentos**: Objetos passam a oferecer ações, não apenas dados.
- 🧹 **Reduz acoplamento**: O código externo não depende da estrutura interna do objeto.
- 🔒 **Mais seguro**: Evita alterações indevidas nos atributos.

---

## 💡 Dica

Sempre que pensar em criar um getter ou setter, pergunte-se:  
**"Qual comportamento faz sentido para este objeto?"**  
Implemente métodos que representem ações, não apenas acesso a dados.

---

> **Resumo:**  
> **Não use getters, setters ou properties!**  
> Exponha comportamentos, não dados. Isso torna seu código mais orientado a objetos e fácil de manter. 🚀
