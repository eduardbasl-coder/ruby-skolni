#minule: times ciklus, if ciklus, case ciklus

=begin
10.times do |a|
    puts "Ahojky #{a+1}"            #10 x vypise ahojky a cislo k tomu od 1 do 10
end


#While cyklus
puts "Vitej v programu Reventor. Otocim kazde slovo ktere zadate!"
puts "Pro ukonceni programu zadejte \"end\""


input = ""              #musi byt v promene aspon neco

while input != "end"            #opakuju dokud input se nerovna end
    print "Zadejte slovo: "
    input = gets.strip
    puts "\nKdyž otočíme slovo: #{input} dostaneme slovot: #{input.reverse}"
end
puts "\nKonec programu, děkuji!"


#nekonecny cyklus While - musím tam mít break!!!
#prikaz break - ukonci opakování cyklu - už se mi neotočí slovo end

puts "\n\nVitej v programu Reventor. Otocim kazde slovo ktere zadate!"
puts "Pro ukonceni programu zadejte \"end\""



while true                      #nekonecny cyklus
    print "\nZadejte slovo: "
    input = gets.strip
    break if input == "end"       #ukončí cyklus pokud se input rovna end
    puts "\nKdyž otočíme slovo: #{input} dostaneme slovot: #{input.reverse}"
end
puts "\nKonec programu, děkuji!"


#POLE

#definice výčtem (literál)
pole = ["Pepa", "Franta", "Standa", "Jarda"]

puts pole[1]
puts pole[3]

puts pole

print "Zadejte kolikate jmeno chcete zobrazit: "
odpoved = gets.to_i
puts "\n" + pole[odpoved]

pole[0] = "Rosťa"
pole [4] = "Peta"

puts "Pozor, změna"
puts pole

p pole              #vypise jakoby nahled, ne do hotovweho programu, vidim i s datovymi typy
print "\n\n\n#{pole}"


#Array.new - nove prazdne pole
zvirata = Array.new
zvirata << "Pes"            #"Rve" prvky do pole, přidává nakonec
p zvirata
zvirata << "Kocka"
zvirata << "Moucha"
p zvirata
zvirata << "Kralik"
zvirata << "Moucha"

p zvirata


zvirata.delete_at(1)            #zmaze 2. prvek, index 1
p zvirata

zvirata.delete("Moucha")        #smaze "Moucha" - mazani konkretniho indexu, pokud je jich tam vic "Moucha", odebere všechny
p zvirata


#zásobník a fronta (Stack & Queue) LIFO - Last in First Out (náboje v zásobníku) & FIFO přístup - First in First Out (Fronta v Lidlu)
#pořád se týká pole - Zásobník a Fronta


#zásobník
zasobnik = [1,2,3,4,5]
p zasobnik
zasobnik << 6           #přidá na konec
zasobnik.push(7)        #push - vloží na konec zásobníku
zasobnik.push(8)
p zasobnik

element = zasobnik.pop      #ze zasobniku se odebere posledni pridany prvek
p zasobnik                  #zasobnik bez 8
p element                   #ten odebrany prvek, 8

while element = zasobnik.pop            #vystreluje posledni cislo dokud tam neco je
    puts element
end


#fronta
fronta = [1,2,3,4,5]
fronta.push(5)              #vlozi nakonec
fronta.push(6)
p fronta
element = fronta.shift      #vybrere zacatek
puts element
p fronta
while element = fronta.shift
    puts element
    p fronta
end

#vkládání na začátku - .shift, .unshift


#od uzivatele nacteme deset cisel, ulozi do pole, po 2 cislech to posupne vyscitame a vypiseme vysledky (1. a posledni prvek vzdycky)
puts "Vitej v mem programu na procviceni!"
puts "Budu po vás postupně chtít zadat 10 cisel!"
a = 1
pole = Array.new
while a < 11
    print "\nZadejte #{a}. cislo prosim: "
    odpoved = gets.to_i
    pole[a-1] = odpoved
    a = a + 1
end
#p pole
b = 1
c = 10
5.times do
    prvek1 = pole.shift
    prvek2 = pole.pop
    puts "\nSoučet #{b}. prvku: #{prvek1} a #{c}. prvku: #{prvek2} je roven: #{prvek1 + prvek2}"
    b = b + 1
    c = c - 1
end


#nactete deset cisel, spocitejte sumu a prumer
puts "Vitej v programu!"
puts "Postupne zadavej 10 cisel a ja ti spocitam sumu a prumer!"
pole = Array.new
a = 1
while a < 11
    print "Zadejte #{a}. cislo: "
    odpoved = gets.to_f
    pole [a-1] = odpoved
    a = a + 1
end
b = 0
    cislo1 = pole [b]
    cislo2 = pole [b+1]
    b = b + 2
    soucet = cislo1+ cislo2
8.times do
    cislo2 = pole [b]
    soucet = soucet + cislo2
    b = b+1
end
puts "Soucet vami zadanych cisel je roven: #{soucet}"
puts "Prumer vami zadanych cisel je roven: #{soucet / 10}"
#p pole
=end


#1.4.2026
=begin
#pro kolik cisel chce uzivatel
    puts "\n\n\nVitej v programu na výpočet součtu a průměru!"
    print "Pro kolik cisel by jsi chtel vypocitat soucet a prumer(alespon 2): "
    pocet = gets.to_i
    case pocet
        when 0
            puts "\nZadali jste neplatnou hodnotu"
        when 1
            puts "\nZadali jste neplatnou hodnotu"
        else
            print "\nPostupne zadavej #{pocet} cisel a ja ti spocitam sumu a prumer!"
            pole = Array.new
            puts "\n"
            a = 1  
            while a <= pocet
                print "\nZadejte #{a}. cislo: "
                odpoved = gets.to_f
                pole [a-1] = odpoved
                a = a + 1
            end
            b = 0
                cislo1 = pole [b]
                cislo2 = pole [b+1]
                b = b + 2
                soucet = cislo1+ cislo2
            (pocet-2).times do
                cislo2 = pole [b]
                soucet = soucet + cislo2
                b = b+1
            end
            puts "\nSoucet vami zadanych cisel je roven: #{soucet}"
            puts "\nPrumer vami zadanych cisel je roven: #{(soucet / pocet).round(3)}\n\n"
    end
    #p pole
=end