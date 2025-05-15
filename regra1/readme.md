# 1️⃣ Primeira Regra do Object Calisthenics: Só um nível de indentação por método

### 🧐 Conceito

A primeira regra do Object Calisthenics diz que **nenhum método deve ter mais de um nível de indentação**.  
Isso significa evitar estruturas aninhadas como `if` dentro de `for`, ou `for` dentro de `for`, dentro do mesmo método.

O objetivo é forçar a criação de métodos menores, mais simples e fáceis de entender.

---

## 🚫 Exemplo ERRADO

```python
def processar_pedidos_errado(pedidos):
    for pedido in pedidos:
        if pedido['status'] == 'aprovado':
            for item in pedido['itens']:
                if item['quantidade'] > 0:
                    print(f"Separar {item['quantidade']}x {item['nome']} para o pedido {pedido['id']}")
```

Neste exemplo, temos vários níveis de indentação, dificultando a leitura e manutenção do código.

---

## ✅ Exemplo CERTO

```python
def processar_pedidos_certo(pedidos):
    for pedido in pedidos:
        processar_pedido(pedido)

def processar_pedido(pedido):
    if pedido['status'] != 'aprovado':
        return
    for item in pedido['itens']:
        processar_item(item, pedido['id'])

def processar_item(item, pedido_id):
    if item['quantidade'] <= 0:
        return
    print(f"Separar {item['quantidade']}x {item['nome']} para o pedido {pedido_id}")
```

Agora, cada método tem apenas um nível de indentação, tornando o código mais limpo e fácil de entender.

---

## 🎯 Por que seguir essa regra?

- 🔍 **Facilita a leitura**: Métodos menores e mais claros.
- 🧩 **Favorece a reutilização**: Lógicas separadas em métodos auxiliares.
- 🛠️ **Facilita testes**: Métodos pequenos são mais fáceis de testar isoladamente.
- 🧹 **Reduz complexidade**: Menos aninhamento = menos confusão!

---

> **Resumo:**  
> **Nunca use mais de um nível de indentação por método!**  
> Isso força você a criar métodos menores, mais coesos e fáceis de manter. 🚀
