# Zadání – Správce kontaktů v Ruby

## Úkol
Napište konzolový program v jazyce Ruby, který bude fungovat jako jednoduchý správce kontaktů.

Program musí využívat všechny následující koncepty:

- Proměnné a datové typy
- Podmínky (`if / else`)
- Cykly (`while` nebo `each`)
- Pole a slovníky (`Hash`)
- Vlastní metody s parametry a návratovou hodnotou
- Lokální proměnné uvnitř metod
- Práci s uživatelským vstupem (`gets`, `strip`, `to_i`)

---

# Specifikace programu

Program bude spravovat jednoduchý seznam kontaktů.

Každý kontakt obsahuje:

- jméno
- telefonní číslo
- město

Kontakty budou uloženy v poli slovníků, například:

```ruby
{
  "name" => "Pepa",
  "phone" => "777123456",
  "city" => "Praha"
}
```

---

# 1) Úvodní obrazovka

Po spuštění program vypíše:

```text
Vitejte v programu Spravce kontaktu.
```

---

# 2) Hlavní menu (cyklus)

Program zobrazí nabídku:

```text
1 – Pridat novy kontakt
2 – Vypsat vsechny kontakty
3 – Vyhledat kontakt podle jmena
4 – Smazat kontakt podle jmena
5 – Konec programu
```

Menu se opakuje v cyklu, dokud uživatel nezvolí možnost `5`.

---

# 3) Metody, které MUSÍ být použity

## a) `add_contact(contacts)` → nic

Metoda:

- načte jméno, telefon a město od uživatele
- vytvoří hash
- uloží jej do pole `contacts`
- vypíše potvrzení

---

## b) `print_contacts(contacts)` → nic

Metoda:

- vypíše všechny kontakty v přehledné tabulce
- použije metodu `ljust` pro zarovnání sloupců

---

## c) `find_contact(contacts, name)` → hash nebo nil

Metoda:

- projde pole kontaktů
- vrátí nalezený kontakt nebo `nil`

---

## d) `delete_contact(contacts, name)` → true/false

Metoda:

- smaže kontakt podle jména
- vrátí `true`, pokud byl nalezen a smazán
- vrátí `false`, pokud neexistuje

---

# 4) Podmínky

Program musí:

- reagovat na neplatné volby v menu
- ošetřit prázdný vstup
- při vyhledávání vypíše různé hlášky podle výsledku
- při mazání vypíše různé hlášky podle výsledku

---

# 5) Ukázka očekávaného chování

```text
Vitejte v programu Spravce kontaktu.

1 – Pridat novy kontakt
2 – Vypsat vsechny kontakty
3 – Vyhledat kontakt podle jmena
4 – Smazat kontakt podle jmena
5 – Konec programu

Volba: 1

Zadejte jmeno: Karel
Zadejte telefon: 777111222
Zadejte mesto: Brno

Kontakt ulozen.

Volba: 2

Jmeno           Telefon        Mesto
-----------------------------------------
Karel           777111222      Brno

Volba: 3

Zadejte jmeno: Karel

Nalezeno: Karel, 777111222, Brno

Volba: 4

Zadejte jmeno: Karel

Kontakt smazan.

Volba: 5

Konec programu
```

### Finální známka: 1
### Splnění: Uspěšné
