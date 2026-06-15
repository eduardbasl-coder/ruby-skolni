# 🧪 Evidence domácích úkolů

## Termín
Dnes 11:20

## Zadání

Napiš program v Ruby, který bude sloužit jako jednoduchá evidence domácích úkolů.

### Program musí:

1. Vytvořit prázdné pole `tasks`.
2. V cyklu 3× požádat uživatele o zadání:
   - názvu úkolu
   - stavu úkolu (`hotovo` / `nehotovo`)
3. Každý úkol uložit jako slovník (hash) do pole:

```ruby
{"name" => "...", "done" => true/false}
```

4. Po zadání všech úkolů:
   - vypsat seznam všech úkolů
   - vypsat jen hotové úkoly
   - vypsat jen nehotové úkoly

5. Musí být použita alespoň jedna metoda, např.:

```ruby
def print_tasks(tasks)
  ...
end
```

---

## 📌 Požadavky

- Použij pole, hash, cyklus, metodu a podmínku.
- Vstup z klávesnice ošetři pomocí:

```ruby
gets.strip
```

- Stav úkolu ulož jako boolean (`true` / `false`).

---

## 🧾 Ukázka běhu programu

```text
Zadejte nazev ukolu:
Uklidit pokoj

Je ukol hotovy? (ano/ne)
ne

Zadejte nazev ukolu:
Napsat referat

Je ukol hotovy? (ano/ne)
ano

Zadejte nazev ukolu:
Vynest kos

Je ukol hotovy? (ano/ne)
ne

Vsechny ukoly:
- Uklidit pokoj (nehotovo)
- Napsat referat (hotovo)
- Vynest kos (nehotovo)

Hotove ukoly:
- Napsat referat

Nehotove ukoly:
- Uklidit pokoj
- Vynest kos
```

#Vysledná známka: ??
