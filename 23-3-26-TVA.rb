=begin
puts "Ahoj ty kare"
cas = Time.now
puts cas
sleep 5
cas2 = Time.now
puts cas2
=end


#zobrazovani casu, datumů a jejich formatovani 
=begin 
cas3 = Time.now
puts cas3.strftime("%d")   #vypise den v mesici
puts cas3.strftime("%m")    #vypise mesic v roce
puts cas3.strftime("%y")    #vypise rok bez prvnich dvou cifer (pouze 26)
puts cas3.strftime("%Y")    #vypise rok s prvnimi dvema ciframa (2026)
puts cas3.strftime("%H")    #vypise hodinu v 24h formatu
puts cas3.strftime("%I")    #vypise hodinu v 12h formatu
puts cas3.strftime("%M")    #vypise minutu
puts cas3.strftime("%S")    #vypise sekundu
puts cas3.strftime("%W")    #vypise cislo tydne v roce
puts cas3.strftime("%B")    #vypise nazev mesice
puts cas3.strftime("%A")    #vypise nazev dne v tydnu
puts cas3.strftime("Dnes je %d.%m.%Y %H:%M:%S")
puts cas3.strftime("Dnes je %d.%m.%Y %H:%M:%S   %B")  
puts cas3.strftime("Dnes je %d.%m.%Y %H:%M:%S   %W")
=end

#větvení programu
       #if větvení                                  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
=begin
a = 5
b = 7
c = 7
puts a == b             #== je porovnavani hodnot, vypise false
puts a != b             #!= je porovnavani hodnot, a neni rovno b, vypise true
puts a > b              #> je porovnavani hodnot, a je vetsi nez b, vypise false
puts a < b              #< je porovnavani hodnot, a je mensi nez b, vypise true
puts a >= b             #>= je porovnavani hodnot, a je vetsi nebo rovno b, vypise false
puts a <= b             #<= je porovnavani hodnot, a je mensi nebo rovno b, vypise true

puts (a == b) or (b == c)     #or je logicky operator, vypise true, jestli alespon jedna z podminek je pravdiva
puts (a == b) and (b == c)    #and je logicky operator, vypise false, jestli obě podmínky jsou pravdivé


puts "Jaka je vase oblibena barva?"
barva = gets.strip.to_s          #strip odstrani mezery na zacatku a konci retezce (a taky enter...)
puts "Vase oblibena barva je: #{barva.capitalize}"   #capitalize prevede prvni pismeno na velke a zbytek na male
puts "Dobra volba!" if barva.downcase == "zelena"   #downcase prevede vsechna pismena na mala, vypise "Dobra volba!" pouze pokud je barva "zelena" (nezavisle na velikosti pismen)


puts "Jaka je vase oblibene jidlo?: "
jidlo = gets.strip.to_s
puts "Vase oblibene jidlo je: #{jidlo.capitalize}"
puts "Dobra volba!" if jidlo.downcase == "pizza"                                    #podminka na kazdem radku extra, neprakticke
puts "Spagety jsou moje oblibene jidlo!" if jidlo.downcase == "spagety"
if jidlo.downcase == "hamburger"
        puts "Hamburger zrovna v lasce nemam"
    elsif jidlo.downcase == "svickova"
        puts "Fuj ty prase!"
    else
        puts "To je taky dobre jidlo!"
end


    #psychotest - 2 if vetve uprostred sebe
puts "Dobry den!"
puts "Odpovez prosim pravdive na otazky"
puts "Nasledujiciho psychotestu!"
puts "Citite se obvykle na konci dne unaveny?"
odpoved1 = gets.strip.downcase.to_s

if odpoved1 == "ano"
    puts "Citite se obvykle na konci dne take nastvany?"
    odpoved2 = gets.strip.downcase.to_s
    if odpoved2 == "ano"
        puts "\nJste vystaven znacnemu stresu! Doporucuji si vzit dovolenou"
    elsif odpoved2 == "ne"
        puts "\nGratuluji, jste optimalne pracovne vytizen!"
    else
        puts "\nZadali jste neplatnou odpoved."
    end
elsif odpoved1 == "ne"
    puts "\nTo se mi nezda normalni, mel by jsi vice pracovat!"
else
    puts "\nZadali jste neplatnou odpoved."
end


puts "Zadejte prosim svoje jmeno: "
jmeno = gets.strip.downcase.to_s
if jmeno  == "tomas"
        puts "Ahoj Tomasi!"
    elsif jmeno == "franta"
        puts "Ahoj Franto!"
    elsif jmeno == "jitka"
        puts "Ahoj Jitko!"
    else
        puts "Ahoj, tebe jsem jeste nevidel #{jmeno.capitalize}"
end


    #case větvení
puts "Zadejte prosim svoje jmeno: "
jmeno = gets.strip.downcase.to_s
case jmeno
    when "eda"
        puts "Ahoj Edo"
    when "martin"
        puts "Ahoj Martine, ty ulicniku"
        puts "Dlouho si tu nebyl!"
    when "pepa"
        puts "Ahoj Pepiku!"
    else
        puts "Ahoj, ty jsi tu novy? Vitej #{jmeno.capitalize}"
end


    #kalkulacka: menu (1,2,3,4) pomoci CASE

puts "Vitej v moji jiz nekolikate kalkulacce pouzitim vetveni CASE"
puts "\nZadejte prvni cislo: "
cislo1 = gets.to_f
puts "\nZadejte druhe cislo: "
cislo2 = gets.to_f
puts "\n[1-scitani, 2-odcitani, 3-nasobeni, 4-deleni]"
puts "Zadejte jakou operaci chcete provest?: "
operace = gets.to_i
case operace
    when 1
        puts "Vybrali jste si soucet!"
        vysledek = cislo1 + cislo2
        puts "\nVysledek vami zadaneho souctu je roven: #{vysledek.to_s}"
    when 2
        puts "Vybrali jste si odcitani!"
        vysledek = cislo1 - cislo2
        puts "\nVysledek vami zadaneho odcitani je roven: #{vysledek.to_s}"
    when 3
        puts "Vybrali jste si soucin!"
        vysledek = cislo1 * cislo2
        puts "\nVysledek vami zadaneho soucinu je roven: #{vysledek.to_s}"
    when 4
        puts "Vybrali jste si deleni!"
        case cislo2
            when 0
            puts "Bohuzel, nulou delit nelze!"
        else
        vysledek = cislo1 / cislo2
        puts "\nVysledek vami zadaneho deleni je roven: #{vysledek.to_s}"
        end
    else
        puts "Zadali jste neplatnou volbu!"
end


    #kalkulacka: menu (1,2,3,4) pomoci IF větvení
puts "Vitej v moji jiz nekolikate kalkulacce pouzitim vetveni"
puts "\nZadejte prvni cislo: "
cislo1 = gets.to_f
puts "\nZadejte druhe cislo: "
cislo2 = gets.to_f
puts "\n[1-scitani, 2-odcitani, 3-nasobeni, 4-deleni]"
puts "Zadejte jakou operaci chcete provest?: "
operace = gets.to_i
if operace == 1
        puts "Vybrali jste si soucet!"
        vysledek = cislo1 + cislo2
        puts "\nVysledek vami zadaneho souctu je roven: #{vysledek.to_s}"
    elsif operace == 2
        puts "Vybrali jste si odcitani!"
        vysledek = cislo1 - cislo2
        puts "\nVysledek vami zadaneho odcitani je roven: #{vysledek.to_s}"
    elsif operace == 3
        puts "Vybrali jste si soucin!"
        vysledek = cislo1 * cislo2
        puts "\nVysledek vami zadaneho soucinu je roven: #{vysledek.to_s}"
    elsif operace == 4
        puts "Vybrali jste si deleni!"
        if cislo2 == 0
            puts "Bohuzel, nulou delit nelze!!!"
        else
        vysledek = cislo1 / cislo2
        puts "\nVysledek vami zadaneho deleni je roven: #{vysledek.to_s}"
        end
    else
        puts "Zadali jste neplatnou volbu!"
end


    #kalkulacka if upravena verze - lepsi vypis a nacitani
puts "Vitej v moji jiz nekolikate kalkulacce pouzitim vetveni"
print "Zadejte prvni cislo: "
cislo1 = gets.to_f
print "\nZadejte druhe cislo: "
cislo2 = gets.to_f
puts "\n[1-scitani, 2-odcitani, 3-nasobeni, 4-deleni]"
print "Zadejte jakou operaci chcete provest?: "
operace = gets.to_i
if operace == 1
        puts "\nVybrali jste si soucet!"
        vysledek = cislo1 + cislo2
        puts "\n#{cislo1} + #{cislo2} = #{vysledek}"
    elsif operace == 2
        puts "\nVybrali jste si odcitani!"
        vysledek = cislo1 - cislo2
        puts "\n#{cislo1} - #{cislo2} = #{vysledek}"
    elsif operace == 3
        puts "\nVybrali jste si soucin!"
        vysledek = cislo1 * cislo2
        puts "\n#{cislo1} * #{cislo2} = #{vysledek}"
    elsif operace == 4
        puts "\nVybrali jste si deleni!"
        if cislo2 == 0
            puts "Bohuzel, nulou delit nelze!!!"
        else
        vysledek = cislo1 / cislo2
        puts "\n#{cislo1} / #{cislo2} = #{vysledek}"
        end
    else
        puts "Zadali jste neplatnou volbu!"
end


#cykly - kód který chci opakovat, buď prováděj určitý počet a nebo prostě dokud něco nebude (definice podmínky)
    #vím kolikrát chci opakovat
    #cyklus .times do           -            v pascalu byla potreba iterační proměnná
5. times do
    puts "Ahoj"
end



5.times do |i|                  #i se po kazdem ciklu zvetsi o jedno
  puts i
end

cislo.times do |i|                  #i se po kazdem ciklu zmensi o jedno
    puts (cislo - i)
end


    #mala nasobilka
puts "Vitej v primitivni nasobilce"
puts "Zadej cislo pro ktere chces abych ti vypsal malou nasobilku: "
cislo = gets.to_i
10.times do |i|
    puts "#{cislo} x #{i+1} = #{cislo * (i+1)}"
end
=end