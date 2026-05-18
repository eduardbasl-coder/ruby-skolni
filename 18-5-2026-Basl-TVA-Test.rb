#správce kontaktů
#struktura = {"name" => "", "phone" => "", "city" => ""}
#volby v menu: 1 – Pridat novy kontakt, 2 – Vypsat vsechny kontakty, 3 – Vyhledat kontakt podle jmena, 4 – Smazat kontakt podle jmena, 5 – Konec programu

def spusteni
    puts "Vítejte ve správci kontaktů!"
end

def add_contact(contacts)
puts "Vybrali jste možnost pridani noveho kontaktu!"
sleep 1
jmeno = ""
cislo = ""
mesto = ""
until jmeno != ""
    print "Zadejte prosim jmeno: "
    jmeno = gets.to_s.strip.capitalize
    sleep 0.5
end
until cislo != ""
    print "Zadejte telefoni cislo: "
    cislo = gets.to_s.strip
    sleep 0.5
end
until mesto != ""
    print "Zadejte mesto: "
    mesto = gets.to_s.strip.downcase
end
contacts << {"name" => jmeno, "phone" => cislo, "city" => mesto}
sleep 1.4
puts "Kontakt: #{jmeno} tel. č: #{cislo} z #{mesto} byl úspěšně přidán!"
sleep 2
end

def find_contact(contacts, name)
vystup = contacts.find{|prvek|prvek["name"] == name}
if vystup == nil
    puts "Bohužel, žádný kontakt s tímto jménem neexistuje!"
    sleep 2
elsif vystup != nil
    puts "Super, našli jsme kontakt s tímto jménem!"
    sleep 1
    puts "Jméno: #{vystup["name"]} tel. č: #{vystup["phone"]} Město: #{vystup["city"]}"
    sleep 1
end
end

def delete_contact(contacts, name)
vystup = contacts.find{|prvek|prvek["name"] == name}
if vystup == nil
    puts "Bohužel, žádný kontakt s tímto jménem neexistuje!"
    sleep 2
elsif vystup != nil
    puts "Probíhá mazání kontaktu.."
    sleep 1
    contacts.delete(vystup)
    puts "Kontakt byl uspesne smazan!"
end
end

def print_contacts(contacts)
puts "Zde je kompletní výpis: "
sleep 1
print "Jméno".ljust(20)
print "Tel. č.".ljust(20)
print "Město".ljust(20)
print "\n"
puts "---------------------------------------------------"
sleep 0.3

contacts.each do |prvek|
jmeno = prvek["name"]
cislo = prvek["phone"]
mesto = prvek["city"]
print jmeno.ljust(20)
print cislo.ljust(20)
print mesto.ljust(20)
print "\n"
sleep 0.3
end
end

spusteni
contacts = Array.new
volba = 0
while volba != 5
    sleep 0.5
    puts "\n[ 1-pridat nový kontakt | 2-vypsat všechny | 3-vyhledat kontakt | 4-smazat kontakt | 5-konec programu ]"
    sleep 1
    print "Jakou akci chcete provest: "
    volba = gets.to_i
    sleep 1
    case volba
        when 1
            add_contact(contacts)
        when 2
            print_contacts(contacts)
        when 3
            puts "Jdeme hledat kontakt pomocí jména!"
            sleep 1
            print "Zadejte prosim jmeno hledaneho kontaktu: "
            jmeno = gets.to_s.strip.capitalize
            sleep 1
            find_contact(contacts, jmeno)
        when 4
            puts "Jdeme hledat kontakt pro smazani pomocí jména!"
            sleep 1
            print "Zadejte prosim jmeno kontaktu na smazani: "
            jmeno = gets.to_s.strip.capitalize
            sleep 1
            delete_contact(contacts, jmeno)
        when 5
            puts "Vybrali jste si konec!"
            sleep 1
            puts "Těšíme se na vás příště..."
            sleep 2
            exit
        else
            puts "Vybrali jste neplatnou volbu!"
    end
end