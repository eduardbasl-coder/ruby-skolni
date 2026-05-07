# Primitivni kalkulacka v Ruby

=begin
print "\nVitej v primitivni scitacce!"
print "\nZadej prvni cislo:"
cislo1 = gets
print "Zadej druhe cislo:"
cislo2 = gets
soucet = cislo1.to_i + cislo2.to_i
print "Soucet vami zadaneho vypoctu je roven: #{soucet}"

print "\n\nVitej v primitivni odcitacce!"
print "\nZadej prvni cislo:"
cislo1 = gets
print "Zadej druhe cislo:"
cislo2 = gets
rozdil = cislo1.to_i - cislo2.to_i
print "Rozdíl vami zadaneho vypoctu je roven: #{rozdil}"

print "\n\nVitej v primitivni nasobicce!"
print "\nZadej prvni cislo:"
cislo1 = gets
print "Zadej druhe cislo:"
cislo2 = gets
soucin = cislo1.to_i * cislo2.to_i
print "Soucin vami zadaneho vypoctu je roven: #{soucin}"

print "\n\nVitej v primitivni delicce!"
print "\nZadej prvni cislo:"
cislo1 = gets
print "Zadej druhe cislo:"
cislo2 = gets
podil = cislo1.to_f / cislo2.to_f
print "Podil vami zadaneho vypoctu je roven: #{podil}"
=end


#opakovani textu
=begin
print "Zadejte prosim text ktery chcete opakovat: "
text = gets
print "\nZadejte kolikrat chcete text napsat: "
pocetopakovani = gets.to_i
puts "\n#{text}" * pocetopakovani
=end




#17.3.2026
=begin
puts "Vitej v prvnim programu v Ruby!"
print "Zadejte svoje jmeno: "
jmeno = gets
puts "\nVitej v mem programu: " + jmeno.to_s
print "Zadej kolikrat chces abych te jeste pozdravil: "
pocetpozdravu = gets
puts ("\n Ahoj " + jmeno.to_s) * pocetpozdravu.to_i
puts "Dekuji za pouziti programu a tesim se na tebe priste!"
=end