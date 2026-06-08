#matematický treninkovy program
def generate_example(level)
    print "Zadejte kolik prikladu budete chtit vygenerovat: "
    pocet = gets.to_i
    spravne = 0
    spatne = 0
    case level
        when 1
            puts "Vybrali jste 1. obtiznost!"
            pocet.times do
                cislo1 = rand(1..10)
                cislo2 = rand(1..10)
                opera = rand(1..2)
                case opera
                    when 1
                        operace = "+"
                        vysledek = cislo1 + cislo2
                        puts "Priklad: #{cislo1} + #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_i
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                    when 2
                        operace = "-"
                        vysledek = cislo1 - cislo2
                        puts "Priklad: #{cislo1} - #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_i
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                end
            end
            puts "Level: #{level}"
            puts "Správně: #{spravne}"
            puts "Špatně: #{spatne}"
            uspesnost = (100/pocet)*spravne
            puts "Uspesnost: #{uspesnost} %"
            case
                when uspesnost < 50
                    puts "Je potřeba více tréninku"
                when (uspesnost > 49), (uspesnost < 70)
                    puts "Průměr"
                when (uspesnost > 69), (uspesnost < 90)
                    puts "Dobrá práce"
                when uspesnost > 89
                    puts "Výborné"
            end
            sleep 1
            stats << {"spravne" => spravne, "spatne" => spatne, "uspesnost" => uspesnost}
        when 2
            puts "Vybrali jste 2. obtiznost!"
            pocet.times do
                cislo1 = rand(1..100)
                cislo2 = rand(1..100)
                opera = rand(1..2)
                case opera
                    when 1
                        operace = "*"
                        vysledek = cislo1 * cislo2
                        puts "Priklad: #{cislo1} * #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_i
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                    when 2
                        operace = "/"
                        vysledek = cislo1 / cislo2
                        puts "Priklad: #{cislo1} / #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_f
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                end
            end
            puts "Level: #{level}"
            puts "Správně: #{spravne}"
            puts "Špatně: #{spatne}"
            uspesnost = (100/pocet)*spravne
            puts "Uspesnost: #{uspesnost} %"
            case
                when uspesnost < 50
                    puts "Je potřeba více tréninku"
                when (uspesnost > 49), (uspesnost < 70)
                    puts "Průměr"
                when (uspesnost > 69), (uspesnost < 90)
                    puts "Dobrá práce"
                when uspesnost > 89
                    puts "Výborné"
            end
            sleep 1
            stats << {"spravne" => spravne, "spatne" => spatne, "uspesnost" => uspesnost}
        when 3
            puts "Vybrali jste 3. obtiznost!"
            pocet.times do
                cislo1 = rand(1..100)
                cislo2 = rand(1..100)
                opera = rand(1..4)
                case opera
                    when 1
                        operace = "+"
                        vysledek = cislo1 + cislo2
                        puts "Priklad: #{cislo1} + #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_i
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                    when 2
                        operace = "-"
                        vysledek = cislo1 - cislo2
                        puts "Priklad: #{cislo1} - #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_i
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                    when 3
                        operace = "*"
                        vysledek = cislo1 * cislo2
                        puts "Priklad: #{cislo1} * #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_i
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                    when 4
                        operace = "/"
                        vysledek = cislo1 / cislo2
                        puts "Priklad: #{cislo1} / #{cislo2}"
                        print "Zadejte vysledek: "
                        vysledke = gets.to_f
                        if vysledke == vysledek
                            puts "Správně!"
                            spravne = spravne + 1
                        elsif vysledke != vysledek
                            puts "Spatne!"
                            spatne = spatne + 1
                        end
                end
            end
            puts "Level: #{level}"
            puts "Správně: #{spravne}"
            puts "Špatně: #{spatne}"
            uspesnost = (100/pocet)*spravne
            puts "Uspesnost: #{uspesnost} %"
            case
                when uspesnost < 50
                    puts "Je potřeba více tréninku"
                when (uspesnost > 49), (uspesnost < 70)
                    puts "Průměr"
                when (uspesnost > 69), (uspesnost < 90)
                    puts "Dobrá práce"
                when uspesnost > 89
                    puts "Výborné"
            end
        stats << {"spravne" => spravne, "spatne" => spatne, "uspesnost" => uspesnost}
    end
end

def ask_question(example)
    spravne = 0
    spatne = 0
    example.each do |prvek|
        priklad = prvek["text"]
        vysledek = prvek["result"]
        puts "Příklad: #{priklad}"
        print "Zadejte vysledek: "
        vysledke = gets.to_i
        if vysledke == vysledek
            puts "Správně!"
            spravne = spravne + 1
        elsif vysledke != vysledek
            puts "Spatne!"
            spatne = spatne + 1
        end
    end
    puts "Správně: #{spravne}"
    puts "Špatně: #{spatne}"
    uspesnost = (100/4)*spravne
    puts "Uspesnost: #{uspesnost} %"
    case
        when uspesnost < 50
            puts "Je potřeba více tréninku"
        when (uspesnost > 49), (uspesnost < 70)
            puts "Průměr"
        when (uspesnost > 69), (uspesnost < 90)
            puts "Dobrá práce"
        when uspesnost > 89
            puts "Výborné"
    end
end

def print_stats(stats)
    celkemspatne = 0
    celkemspravne = 0
    stats.each do |prvek|
        spravne = prvek["spravne"]
        spatne = prvek["spatne"]
        uspesnost = prvek["uspesnost"]
        celekspravne = celekspravne + spravne
        celekspatne = celekspatne + spatne
    end
    puts "Celkem správně: #{celkemspravne}"
    puts "Celkem špatně: #{celkemspatne}"
    celek = spatne + spravne
    celkemuspesnost = (100/celek)*spravne
    puts "Celkem uspesnost: #{celkemuspesnost} %"
end

example = [
  {"text" => "12 + 8", "result" => 20},
  {"text" => "7 * 6", "result" => 42},
  {"text" => "30 - 17", "result" => 13},
  {"text" => "81 / 9", "result" => 9}
]
stats = []
volba = ""
puts "Vítej v programu na trenovani matematiky!"
while volba != 4
    sleep 1
    puts "\n[ 1-Generovat nahodné priklady | 2-Vyresit předem pripravenou sadu prikladu | 3-Zobrazit statistiky | 4-Konec]"
    sleep 0.5
    print "Jak chcete pokračovat: "
    volba = gets.to_i
    sleep 1
    case volba
        when 1
            print "Zadejte prosim obtiznost prikladu(1-3): "
            levl = gets.to_i
            if (levl > 3) or (levl < 1)
                puts "Zadali jste neplatnou volbu vaseho levelu!"
                sleep 1
            else
                generate_example(levl)
            end
        when 2
            ask_question(example)
        when 3
            print_stats(stats)
        when 4
            puts "Vybrali jste si moznost konec!"
            sleep 0.5
            puts "Tesim se nas priste..."
            sleep 1
        else
            puts "Zadali jste neplatnou volbu!!"
            sleep 0.5
    end
end