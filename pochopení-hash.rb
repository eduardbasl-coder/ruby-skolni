#pochopení hash
=begin
credentials = {"verejne_heslo" => "1234Fko", "secret_key" => "123kokot"}
puts credentials["verejne_heslo"]       #vypise hodnotu verejne_heslo (1234Fko)
puts credentials["secret_key"]          #vypise hodnotu uloženou pod secret_key (123kokot)
credentials["verejne_heslo"] = "verejnost"      #přepíše hodnotu verejne_heslo (1234Fko na verejnost)
puts credentials["verejne_heslo"]
puts credentials
credentials["region"] = "Praha"         #vytvoří nový klíč (region) a uloží do něl hodnotu Praha
puts credentials                #vypíše upraveny hash
puts credentials.size           #vypise pocet klicu (3)
p credentials.keys           #vypíše klíče
p credentials.values        #vypíše pouze hodnoty
credentials.delete("region")        #smaže klíč i hodnotu region
p credentials


ja = {"jmeno" => "Eda", "prijmeni" => "Basl", "vek" => "16", "konicky" => ["programovani", "lezeni", "sex"]}
puts ja
puts ja["konicky"]
print ja["konicky"].join(", ")          #spoji array konicky do 1 stringu
puts "\n"
puts ja["konicky"].size                 #vypise velkost pole
ja["konicky"].each do   |konicek|          #projde po jednom kazdy prvek, pokazde ulozi prvek do konicek
    puts konicek.capitalize                 #vypise konicek (s velkym na zacatku)
    sleep 1
end

ja.each do |details|
puts details
end

ja.each do |key, value|


zviratka = {"dog" => {"name" => "Spot"}, "cat" => {"name:" => "Kocourek" }}
p zviratka
puts zviratka["dog"]["name"]        #vypise Spot (nejprve jdeme do dog, to referuje do name => Spot, pak zadame name a vyhodi to jmeno)
puts zviratka.dig("dog", "name")        #to same, ale přes dig
=end


#ted zkusim sam
=begin
hash = Hash.new
p hash
hash = {"Peta" => "Kamarad", "Milan" => "Curak"}
puts hash
puts hash["Peta"]
hash["Kokot"] = "Radek"
sleep 2
puts hash
hash.each do |i, f|
    puts "Klíč: #{i} Heslo: #{f}"
    sleep 1
end
=end

#prvni test databáze
=begin
databaze = {"jmeno" => ["Petr", "Eduard", "Kryštof"], "prijmeni" => ["Mirga", "Basl", "Svoboda"]}
puts "Vitej v prvním snad funkčním programu na procvičení hash!"
sleep 2
a = 3
volba = 1
while volba != 2
    puts "[ 1-přidat dalšího člověka | 2-výpis | 3-konec ]"
    print "Jak chcete pokračovat: "
    volba = gets.to_i
    sleep 2
    case volba
        when 1
            print "Zadejte prosím jméno: "
            jmeno = gets.to_s.strip.capitalize
            databaze ["jmeno"][a] = jmeno
            sleep 2
            print "Zadejte prosím příjmení: "
            prijmeni = gets.to_s.strip.capitalize
            databaze ["prijmeni"][a] = prijmeni
            sleep 2
            a = a + 1
        when 2
            databaze["jmeno"].each_with_index do|jmeno, index|
                prijmeni = databaze["prijmeni"]
                puts "#{index + 1}. #{jmeno} #{prijmeni[index]}"
                sleep 1
            end
        when 3
            puts "Těšíme se na vás příště!"
            p databaze
            sleep 3
            exit
        else
            puts "Zadali jste neplatnou volbu!"
            sleep 2
    end
end
=end


#trosku zlozitejsi databaze, ted bez AI - snad uz chapu
=begin
databaze = {"jmena" => [], "prijmeni" => [], "vek" => [], "mesto" => [], "barva" => []}            #prvni chyba (databaze ma byt hash a ne ARRAY!)
puts "Vítej v mé složitější databázi na procvičení Array a Hash!"
odpoved = ""
a = 1
while odpoved != 5
    sleep 2
    puts "\n[1-přidat nového člověka|2-vypsat všechny|5-konec]"
    sleep 1
    print "Zadejte jakou akci chcete provést: "
    odpoved = gets.to_i
    sleep 1
    case odpoved
        when 1
            puts "Jdeme přidat nového člověka!"
            sleep 1
            print "Zadejte křestní jmeno #{a}. člověka: "
            jmeno = gets.to_s.strip.capitalize
            databaze["jmena"] << jmeno
            sleep 1
            print "Zadejte příjmení #{a}. člověka: "
            prijmeni = gets.to_s.strip.capitalize
            databaze["prijmeni"] << prijmeni
            sleep 1
            print "Zadejte prosim věk #{a}. člověka: "
            vek = gets.to_s.strip
            databaze["vek"] << vek
            sleep 1
            print "Zadejte prosim město #{a}. člověka: "
            mesto = gets.to_s.strip
            databaze["mesto"] << mesto
            sleep 1
            print "Zadejte barvu #{a}. člověka: "
            barva = gets.to_s.strip.downcase
            databaze["barva"] << barva
            sleep 2
            puts "\n#{a}. Člověk byl úspěšně přidán do databáze!"
            sleep 2
            a = a + 1
        when 2
            puts "Zde je výpis všech zaevidovaných lidí:"
            sleep 1
            databaze["jmena"].each_with_index do|jmeno, index|
                prijmeni = databaze["prijmeni"][index]
                vek = databaze["vek"][index]
                mesto = databaze["mesto"][index]
                barva = databaze["barva"][index]
                puts "#{index + 1}. #{jmeno} #{prijmeni}, #{vek} let, Bydliště: #{mesto}, Barva: #{barva}"
                sleep 1
            end
        when 5
            print "Probíhá ukončování"
            sleep 1
            print "."
            sleep 1
            print "."
            sleep 1
            print "."
            sleep 1
            exit
        else
            puts "Zadali jste neplatnou hodnotu!"
            sleep 2
    end
end
=end



#databáze knih  -   Jméno autora, Příjmení Autora, Název knihy, Počet stránek, Evidenční číslo, nakladatelstvi, rok vydání
databaze = {"jmeno" => [], "prijmeni" => [], "nazev" => [], "stranky" => [], "cislo" => [], "nakladatelstvi" => [], "rok" => []}
puts "Vítej v Databázi knih Knihovny Králův Dvůr!"
volba = ""
a = 1
while volba != 5
    sleep 2
    puts "\n\n[ 1-přidat novou | 2-hledat | 3-výpis | 4-smazat | 5-konec ]"
    sleep 1
    print "Zadejte prosim jakou akci chcete provest: "
    volba = gets.to_i
    sleep 1
    case volba
        when 1          #pridat
            puts "Pojďme přidat novou knihu!"
            sleep 1
            print "Zadejte prosim jmeno autora #{a}. knihy: "         #jmeno autora
            jmeno = gets.to_s.strip.capitalize
            databaze["jmeno"]<< jmeno
            sleep 1
            print "Zadejte prosim prijmeni autora #{a}. knihy: "      #prijmeni autora
            prijmeni = gets.to_s.strip.capitalize
            databaze["prijmeni"]<< prijmeni
            sleep 1
            print "Zadejte prosim nazev #{a}. knihy: "                #nazev knihy
            nazev = gets.to_s.strip.downcase
            databaze["nazev"]<< nazev
            sleep 1
            print "Zadejte prosim počet stránek #{a}. knihy: "  #pocet stranke
            stranky = gets.to_s.strip
            databaze["stranky"]<< stranky
            sleep 1
            cislo = a.to_s                                            #evid. cislo
            databaze["cislo"]<< cislo
            sleep 1
            print "Zadejte prosim nakladatelství #{a}. knihy: "     #nakladatelstvi
            nakladatelstvi = gets.to_s.strip.downcase
            databaze["nakladatelstvi"]<< nakladatelstvi
            sleep 1
            print "Zadejte prosim rok vydání #{a}. knihy: "        #rok vydani
            rok = gets.to_s.strip
            databaze["rok"]<< rok
            sleep 1
            puts "\n#{a}. Kniha byla úspěšně přidána do databáze"
            sleep 2
            p databaze
            a = a + 1
        when 2      #hledat
            puts "Vybrali jste si možnost hledat knihu!"
            sleep 1
            puts "[1-nazev knihy|2-evidencni cislo]"
            sleep 1
            print "Zadejte jak chcete hledat knihu: "
            volba2 = gets.to_i
            case volba2
                when 1
                    puts "Jdeme hledat knihu podle Názvu knihy"
                    sleep 1
                    print "Zadejte prosim nazev knihy: "
                    nazev = gets.to_s.strip.downcase
                    c = databaze["nazev"].index(nazev)
                    if c == nil
                        puts "Bohužel, žádná kniha s tímto názvem není v databázi!"
                        sleep 2
                    else
                        print "Načítání"
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 1
                        puts "\n#{databaze["cislo"][c]}. #{databaze["jmeno"][c]} #{databaze["prijmeni"][c]}  Název: #{databaze["nazev"][c]}  #{databaze["stranky"][c]} stran    rok vydání: #{databaze["rok"][c]}, nakladatelství: #{databaze["nakladatelstvi"][c]}"
                        sleep 3
                    end 
                when 2
                    puts "Jdeme hledat knihu podle evidencniho cisla"
                    sleep 1
                    print "Zadejte prosim evidencni cislo: "
                    cislo = gets.to_i
                    cislo2 = cislo - 1
                    sleep 2
                    if cislo2 > a
                        puts "Bohužel, žádná kniha s tímto evidencnim cislem neexistuje!"
                        sleep 2
                    else
                        print "Načítání"
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 1
                        puts "\n#{databaze["cislo"][cislo2]}. #{databaze["jmeno"][cislo2]} #{databaze["prijmeni"][cislo2]}  Název: #{databaze["nazev"][cislo2]}  #{databaze["stranky"][cislo2]} stran    rok vydání: #{databaze["rok"][cislo2]}, nakladatelství: #{databaze["nakladatelstvi"][cislo2]}"
                        sleep 3
                    end
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 2
            end
        when 3      #výpis
            puts "Zde je výpis věech evidovaných knih: "
            sleep 1
            databaze["jmeno"].each_with_index do |jmeno, index|
                prijmeni = databaze["prijmeni"][index]
                nazev = databaze["nazev"][index]
                stranky = databaze["stranky"][index]
                rok = databaze["rok"][index]
                nakladatelstvi = databaze["nakladatelstvi"][index]
                cislo = databaze["cislo"][index]
                puts "#{cislo}. #{jmeno} #{prijmeni}    #{nazev}, #{stranky} stran, rok vydání: #{rok}, nakladatelství: #{nakladatelstvi}"
                sleep 1
            end
        when 4      #smazat
            puts "Vybrali jste si možnost smazat knihu!"
            sleep 2
            puts "[1-nazev knihy|2-evidencni cislo]"
            sleep 1
            print "Jak chcete hledat knihu pro smazání: "
            volba4 = gets.to_i
            sleep 1
            case volba
                when 1
                    puts "Vybrali jste mazání knihy podle nazvu knihy!"
                    sleep 1
                    print "Zadejte prosim nazev knihy: "
                    nazev = gets.to_s.strip.downcase
                    sleep 1
                    c = databaze["nazev"].index(nazev)
                    if c == nil
                        puts "Bohužel, žádná kniha s tímto názvem není evidována!"
                        sleep 2
                    else
                        puts "Probíhá mazání knihy s názvem: #{databaze["nazev"][c]}!"
                        sleep 2
                        databaze["jmeno"][c] = "------"
                        databaze["prijmeni"][c] = "------"
                        databaze["nazev"][c] = "------"
                        databaze["cislo"][c] = "------"
                        databaze["rok"][c] = "------"
                        databaze["stranky"][c] = "------"
                        databaze["nakladatelstvi"][c] = "------"
                        puts "Kniha s názvem #{nazev} byla uspesne smazána z evidence!"
                        sleep 3
                    end
                when 2
                    puts "Pojďme hledat knihu podle evidencniho cisla!"
                    sleep 1
                    print "Zadejte prosim evidencni cislo: "
                    cislo = gets.to_s.strip
                    sleep 1
                    c = databaze["cislo"].index(cislo)
                    if c == nil
                        puts "Bohužel, žádná kniha s tímto evid. číslem není v databázi!"
                        sleep 2
                    else
                    databaze["jmeno"][c] = "------"
                    databaze["prijmeni"][c] = "------"
                    databaze["nazev"][c] = "------"
                    databaze["cislo"][c] = "------"
                    databaze["rok"][c] = "------"
                    databaze["stranky"][c] = "------"
                    databaze["nakladatelstvi"][c] = "------"
                    puts "Kniha s evid č. #{cislo} byla úspěšně odstraněna!"
                    sleep 2
                    end
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 3
            end
        when 5
            puts "Vybrali jste si možnost ukončit aplikaci!"
            sleep 2
            print "Těšíme se na vás příště"
            sleep 0.3
            print "."
            sleep 0.3
            print "."
            sleep 0.3
            print "."
            sleep 1
            exit
        else
            puts "Bohužel, zadali jste neplatnou možnost!"
            sleep 2
    end
end