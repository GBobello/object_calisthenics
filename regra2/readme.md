# 2️⃣ Segunda Regra do Object Calisthenics: **"Não use ELSE"**

### 🧐 Conceito

Esta regra diz que **você não deve usar o comando `else`** em seus métodos.  
A ideia é forçar a escrita de código mais simples, direto e fácil de entender, evitando ramificações desnecessárias.

### 🚫 Exemplo que viola a regra:

```python
def exemplo_ruim(valor):
    if valor > 0:
        return "Positivo"
    else:
        return "Não positivo"
```

---

### ✅ Exemplo seguindo a regra:

```python
def exemplo_bom(valor):
    if valor > 0:
        return "Positivo"
    return "Não positivo"
```

Ao remover o `else`, o código fica mais limpo e fácil de ler.

---

## 🎯 Por que seguir essa regra?

- 🔍 **Facilita a leitura**: Menos ramificações tornam o fluxo do código mais claro.
- 🧩 **Favorece métodos pequenos**: Você tende a criar métodos menores e mais coesos.
- 🛠️ **Facilita testes**: Menos caminhos de execução para testar.
- 🧹 **Reduz complexidade**: Menos aninhamento e menos confusão!

---

## 💡 Dica

Sempre que pensar em usar `else`, veja se pode **retornar ou sair do método antes**.  
Se necessário, extraia lógicas para métodos auxiliares.

---

> **Resumo:**  
> **Nunca use ELSE!**  
> Isso força você a criar métodos mais simples, diretos e fáceis de manter. 🚀
