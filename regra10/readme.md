# Bônus: Use apenas uma classe por arquivo

### 🧐 Conceito

A quinta regra do Object Calisthenics recomenda que **cada arquivo do seu projeto contenha apenas uma classe**.  
O objetivo é tornar o código mais organizado, facilitar a navegação e a manutenção, além de evitar arquivos longos e confusos.

---

## 🚫 Exemplo ERRADO

```python
class Produto:
    pass

class Cliente:
    pass
```

Neste exemplo, duas classes estão no mesmo arquivo, dificultando a localização e a manutenção.

---

## ✅ Exemplo CERTO

Arquivo: `produto.py`

```python
class Produto:
    pass
```

Arquivo: `cliente.py`

```python
class Cliente:
    pass
```

Agora, cada classe está em seu próprio arquivo, tornando o projeto mais organizado e fácil de entender.

---

## 🎯 Por que seguir essa regra?

- 📂 **Organização**: Facilita encontrar e entender cada classe.
- 🔍 **Manutenção**: Mudanças em uma classe não afetam outras no mesmo arquivo.
- 🤝 **Colaboração**: Reduz conflitos em times que trabalham no mesmo projeto.
- 🧩 **Reutilização**: Fica mais fácil importar e reutilizar classes em outros projetos.

---

> **Resumo:**  
> **Use apenas uma classe por arquivo!**  
> Isso deixa seu projeto mais limpo, organizado e fácil de manter. 🚀
