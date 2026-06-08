# 🧮 Testová úloha – Matematický tréninkový systém v Ruby

**Termín:** dnes 11:30

---

## Pokyny

### Zadání

Napište konzolový program v Ruby, který bude fungovat jako matematický tréninkový systém. Program bude generovat příklady, vyhodnocovat odpovědi, počítat skóre a poskytovat statistiky.

Program musí využívat:

- Proměnné a konstanty
- Podmínky (`if`, `else`, `elsif`)
- Cykly (`while`, `each`)
- Pole a slovníky (Hash)
- Vlastní metody s parametry a návratovou hodnotou
- Lokální proměnné uvnitř metod
- Práci s uživatelským vstupem (`gets`, `strip`, `to_i`)

---

# 🎯 Specifikace programu

## 1. Úvodní obrazovka

Po spuštění program vypíše:

```text
Vitejte v matematickem treninkovem systemu.
```

---

## 2. Hlavní menu (cyklus)

```text
1 – Generovat náhodné příklady
2 – Vyřešit předem připravenou sadu příkladů
3 – Zobrazit statistiky
4 – Konec programu
```

Menu se opakuje, dokud uživatel nezvolí možnost **4**.

---

## 3. Požadované metody

### a) `generate_example(level) → hash`

Vygeneruje jeden matematický příklad podle obtížnosti:

- **Level 1:** sčítání a odčítání do 20
- **Level 2:** násobení a dělení do 100
- **Level 3:** kombinace všech operací, včetně závorek

Metoda vrací hash:

```ruby
{
  "text" => "7 + 5",
  "result" => 12
}
```

---

### b) `ask_question(example) → true/false`

- vypíše text příkladu
- načte odpověď od uživatele
- vrátí `true`, pokud je odpověď správně
- vrátí `false`, pokud je odpověď špatně

---

### c) `run_random_training(count, level) → hash`

- vygeneruje `count` příkladů
- každý vyhodnotí pomocí `ask_question`
- vrátí statistiku:

```ruby
{
  "correct" => X,
  "wrong" => Y
}
```

---

### d) `run_fixed_set(examples) → hash`

- přijme pole předem připravených příkladů
- každý příklad vyhodnotí
- vrátí statistiku ve stejném formátu:

```ruby
{
  "correct" => X,
  "wrong" => Y
}
```

---

### e) `print_stats(stats) → nic`

Vypíše:

- statistiky
- procentuální úspěšnost
- slovní hodnocení

Například:

```text
Vyborne!
```

nebo

```text
Zkuste to znovu.
```

---

## 4. Předem připravená sada příkladů

Pole slovníků:

```ruby
[
  {"text" => "12 + 8", "result" => 20},
  {"text" => "7 * 6", "result" => 42},
  {"text" => "30 - 17", "result" => 13},
  {"text" => "81 / 9", "result" => 9}
]
```

---

## 5. Statistika

Program musí zobrazit:

- počet správných odpovědí
- počet chybných odpovědí
- procentuální úspěšnost

### Slovní hodnocení

| Úspěšnost | Hodnocení |
|------------|------------|
| 90–100 % | Výborné |
| 70–89 % | Dobrá práce |
| 50–69 % | Průměr |
| 0–49 % | Je potřeba více tréninku |

---

## 6. Ukázka chování programu

```text
Vitejte v matematickem treninkovem systemu.

1 – Generovat náhodné příklady
2 – Vyřešit předem připravenou sadu příkladů
3 – Zobrazit statistiky
4 – Konec programu

Volba: 1

Zadejte obtiznost (1–3): 2
Kolik prikladu chcete vygenerovat? 5

Priklad: 7 * 8
Odpoved: 56
Spravne!

...

Spravne: 4
Chybne: 1
Uspesnost: 80 %
Hodnoceni: Dobra prace
```
# Známka: zatím nevím
