#4.5.2026

=begin
pole = ["Franta", "Tom", "Pepa", "Jarda", "Pavel", "Bohumil"]
puts "Seradime podle abecedy!"
sleep 2
p pole
p pole.sort
p pole                                                    #sort = neulozi, jen zmeny vypise


p pole.sort!                                             #sort! = změny se ulozi na data
p pole

puts "\n\nObsahuje pole jméno 'Pepa'?"
p pole.include?("Pepa")             #navratova hodnota True/False
a = pole.include?("Franta")
puts a


sleep 1
puts "\n\nProvedeme všechna jména na velká písmena!"
p pole.map { |jmeno| jmeno.upcase }                                                 #jmeno = označení jednoho prvku iterace, a každý jeden prvek to zmeni na VELKE
p pole

sleep 2
puts "\n\nVyfiltrovat všechna jména delší než 4 písmena!"
p pole.select{|jmeno| jmeno.length > 4}


puts "\n\nChceme naji prvni jmeno které začíná na písmeno P"
p pole.find{|jmeno| jmeno[0] == "P"}

puts "\n\nSeřadit prvky podle délky slova!"
sleep 1
p pole.sort_by{|prvek|prvek.length}



vyplaty = {"Stanislav" => 15000, "Pepa" => 20000, "Tom" => 30000, "Bohumil" => 17000, "Jarda" => 25000}            #hash
p vyplaty.keys
p vyplaty.values

puts "Existuje klic Pepa?"
p vyplaty.has_key?("Pepa")
puts "Eistuje hodnota 18 000?"
p vyplaty.has_value?(18000)



puts "Slouceni dvou slovníků, duplicity se nám přepíšou!!"
p vyplaty.merge({"Pepa" => 50000, "Franta" => 35000})               #přidalo to do vyplaty i Frantu a pepovi to přepsalo na 50 000
p vyplaty
p vyplaty.merge!({"Pepa" => 50000, "Franta" => 35000}) 
p vyplaty


puts "Vypsat všechny kromě těch co mají výplatu menší než 21 000"
p vyplaty.reject{|key, value| value < 21000}

puts "Setridit podle vyplaty!"
p vyplaty.sort_by{|key, value| value}                           #vypise to jako seznam polí


#array of hashes
databaze = Array.new
databaze << {"jmeno" => "Pepa", "mesto" => "Praha", "vek" => "32", "rok" => 2001}
databaze << {"jmeno" => "Jitka", "mesto" => "Plzeň", "vek" => "26", "rok" => 1998}
databaze << {"jmeno" => "Petr", "mesto" => "Hořovice", "vek" => "12", "rok" => 2013}
databaze << {"jmeno" => "Franta", "mesto" => "Hradec Králové", "vek" => "132", "rok" => 1824}

p databaze
puts "Vypsat jmena serazena podle abecedy"
p databaze.map{|hash, integer| hash["jmeno"]}.sort

puts "Chceme vyhledat komu je 12 let!"
p databaze.find{|uzivatel, integer| uzivatel["mesto"] == "Hořovice" and uzivatel["vek"] = "12"}
p databaze.find{|uzivatel, integer| uzivatel["mesto"] == "Hořovice" and uzivatel["vek"] = "12"}["jmeno"]


puts "Kdo je nejstarší!"                                                                                    #dodelat!!!!!!!
veky = databaze.sort_by{|uzivatel|uzivatel["vek"]}
p veky




#def - metody - pomoci prikazu DEV, končí end
def greeting                                                        #vytvoření metody
    puts "Vítejte zde!"
end

def greet(name)                             #očekává při zavilání méno
    puts "Dobrý den #{name}!"
end    

def add_three_numbers(a, b, c)
result = a
result = result + b
result = result + c
return result
end

5.times do                                                  #zavolání metody
    greeting
end

greet("Petrik")                         #dostalo jmeno, predavani informací dovnitř

#navratova hodnota (neco zevnitr zpatky ven)
puts "Led's add three numbers!"
value = add_three_numbers(1,2,5)
puts "1 + 2 + 5 = #{value}"

#lokální a globální proměnné            lokální-pouze pro metodu, po skonceni metody zaniknout      globální-v těle programu, porad existují (po dobu běhu programu)



def test_metod
    moje_promena = "Toto je dulezity text"
    puts moje_promena
    puts promena                            #nemuzu se dostat do promene z tela programu v DEF, ani obracene!!!
end
#test_metod             #zavola metodu (ale nic neudela)
#puts moje_promena          #error, protoze po skonceni def uz zanikla
#test_metod              #po zmeneni metody uz vypise, ale jenom kdy to je v metode

#promena = 5
#test_metod
=end

=begin
#priklad
    #test z matematiky                          #nefunguje, dodelar
def ask(a, b)
    print "Kolik je #{a} + #{b}: "
    odpoved = gets.to_s.strip
    vysledek = a + b
    if odpoved == vysledek
        puts "Spravne"
        return true
    else
        puts "Chyba! Spravna odpoved je: #{vysledek}!"
    end
end
puts "Dobry den, vitejte na testu z matematiky"

body = 0
body = body + 1 if ask(123,124)
body = body + 1 if ask(13,14)
body = body + 1 if ask(12,24)
body = body + 1 if ask(1233,24)
body = body + 1 if ask(12,14)
body = body + 1 if ask(453,124)
body = body + 1 if ask(143,87)


def ask(a, b)
    print "Kolik je #{a} + #{b}: "
    odpoved = gets.to_s.strip
    vysledek = a + b
    if odpoved == vysledek.to_s
        puts "Spravne"
    elsif odpoved != vysledek.to_s
        puts "Chyba! Spravna odpoved je: #{vysledek}!"
    end
end

otazky = [[1,1],[3,4],[12,54],[12,15]]
otazky.each do |otazka|
    body = body + 1 if ask(otazka[0], otazka[1])
end
=end


#formaty vypisů, zarovnavani do sloupců
databaze = Array.new
databaze << {"jmeno" => "Pepa", "mesto" => "Praha", "vek" => "32", "rok" => "2001"}
databaze << {"jmeno" => "Jitka", "mesto" => "Plzeň", "vek" => "26", "rok" => "1998"}
databaze << {"jmeno" => "Petr", "mesto" => "Hořovice", "vek" => "12", "rok" => "2013"}
databaze << {"jmeno" => "Franta", "mesto" => "Hradec Králové", "vek" => "132", "rok" => "1824"}
databaze.each do |clovek|
    print clovek["jmeno"].ljust(20)
    print clovek["mesto"].ljust(20)
    print clovek["vek"].ljust(20)
    print clovek["rok"].ljust(20)
    puts "\n"
end