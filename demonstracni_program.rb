puts "Ahoj"                                 #vypise Ahoj (v Pascalu WriteLn)
print "Ahoj2"                               #vypise Ahoj2 (v Pascalu Write)
print "Ahoj \n"                             #vypise Ahoj a prejde na novy radek (v Pascalu WriteLn)
puts 5*6                                    #vypise 30 (normálně vypočítá)
puts 5*(6+2)                                #vypise 40 (normálně vypočítá)
puts "Jeho jmeno je" + "Pepa"	              #vypise: Jeho jmeno jePepa (normálně sjednotí, vypíše bez mezery)
puts "Jeho jmeno je " + "Pepa"              #vypise: Jeho jmeno je Pepa (normálně sjednotí, vypíše s mezerou)
puts "Jeho jmeno je" + " Pepa"              #vypise: Jeho jmeno je Pepa (normálně sjednotí, vypíše s mezerou)
puts "Ahoj" * 5                             #vypise AhojAhojAhojAhojAhoj (normálně vypíše 5x Ahoj bez mezery)
puts "Ahoj " * 5                            #vypise Ahoj Ahoj Ahoj Ahoj Ahoj (normálně vypíše 5x Ahoj s mezerou)
puts "Ahoj\n" * 5                           #vypise Ahoj a prejde na novy radek 5x (normálně vypíše 5x Ahoj s mezerou a přechodem na nový řádek)

#rozdil ve vypoctech
puts 5 + 5                                  #vypise 10 (normálně vypočítá)
puts "5" + "5"                              #vypise 55 (normálně sjednotí, vypíše bez mezery)
puts "5 + 5"                                #vypise 5 + 5 (normálně vypíše bez výpočtu)

puts 2 * 5                                  #vypise 10 (normálně vypočítá)
puts "2" * 5                                #vypise 22222 (normálně sjednotí, vypíše bez mezery)
puts "2 * 5"                                #vypise 2 * 5 (normálně vypíše bez výpočtu)

puts "12" + 12                              #NEJDE!!
puts "12" * "12"                            #NEJDE!!
puts "Pepa" + 15                            #NEJDE!!
puts "Pepa" * "Franra"                      #NEJDE!!

#vypocet
puts "Kolik je 30 + 40? Odpoved je #{30 + 40}."   #vypise: Kolik je 30 + 40? Odpoved je 70. (normálně vypočítá a vypíše), vypocet nezobrazen v vypisu

#vypis specialnich znaků
puts #"Ahoj""                                #NEJDE!! (EROR)
puts "Ahoj\""                                #vypise Ahoj" (normálně vypíše Ahoj a uvozovku)
puts "Ahoj\\"                                #vypise Ahoj\ (normálně vypíše Ahoj a zpětné lomítko)"

#promene - -rozlišuje velka a mala písmena ,proměné by měli začínat malým písmenem, nepoužívat české znaky, nepoužívat syntax (puts), u delších názvů oddělovat podtržítky – moje_promena, nesmí začínat číslem

promenna = 5			                          #promena s nazvem promenna ma hodnotu	
puts promenna			                          #vypise promenna (5)
jmeno = "Franta"			                      #promena s nazvem jmeno ma hodnotu Franta
puts jmeno				                          #vypise jmeno (Franta)

var = "Jenom dalsi" + "pindik"		        #promena s nazvem var ma hodnotu "Jenom dalsi" + "pindik"
puts var				                          #vypise var (Jenom dalsipindik)
var = "Jenom dalsi" + " pindik"		        #promena s nazvem var ma hodnotu "Jenom dalsi" + " pindik"
puts var				                          #vypise var (Jenom dalsi pindik)
var2 = 4 * 9                              #promena s nazvem var2 ma hodnotu 4 * 9
var2 = var2 + 1                           #promena s nazvem var2 ma hodnotu var2 + 1 (36 + 1)
puts var2				                          #vypise var2 (37)
var2 = var2 * 7                           #promena s nazvem var2 ma hodnotu var2 * 7 (37 * 7)
puts var2				                          #vypise var2 (259)

#kostanty - číslo pod určitým názvem které nemění hodnotu, zapisují se velkými písmeny, nedají se v průběhu měnit
PI = 3.14159                              #konstanta s nazvem PI ma hodnotu 3.14159 (konstanta = neda se menit)
puts PI				                            #vypise PI (3.14159)
puts PI * 6                               #vypise 18.84954 (normálně vypočítá)

#čas a pozastaveni programu
cas1 = Time.now                           #promena s nazvem cas1 ma hodnotu aktualni cas
puts cas1                                 #vypise cas1 (aktualni cas)
sleep 5                                   #pozastavi program na 5 sekund
cas2 = Time.now                           #promena s nazvem cas2 ma hodnotu aktualni cas
puts cas2                                 #vypise cas2 (aktualni cas, o 5 sekund pozdeji)
puts "Ahoj..."                            #vypise Ahoj... (normálně vypíše Ahoj...)
sleep 20                                  #pozastavi program na 20 sekund
puts "Peto"                               #vypise Peto - po 20 sekundách (normálně vypíše Peto)

#pristup do retezce
promenna = "testovaci retezec"            #promena s nazvem promenna ma hodnotu "testovaci retezec"
puts promenna[9,5]                        #vypise cast retezce od 9. znaku ( ), vypise 5 znaku ( rete)

#format string promene
promenna = "slOvO"                        #promena s nazvem promenna ma hodnotu "slOvO"
puts promenna.upcase                      #vypise SLOVO (normálně vypíše velkými písmeny) - upsace - prevede na velka pismena
puts promenna.downcase                    #vypise slovo (normálně vypíše malými písmeny) - downcase - prevede na mala pismena
puts promenna.capitalize                  #vypise Slovo (normálně vypíše s velkým prvním písmenem) - capitalize - prvni pismeno velke, ostatni mala
puts promenna.swapcase                    #vypise SLovO (normálně vypíše s opačnými velikostmi písmen) - swapcase - prevede na opačné velikosti písmen
puts promenna.reverse                     #vypise OvOlS (normálně vypíše retezec pozpátku) - reverse - vypíše řetězec pozpátku
puts promenna                             #vypise slOvO (normálně vypíše původní hodnotu, protože reverse neovlivňuje původní řetězec)
puts promenna.reverse!                    #vypise OvOlS (normálně vypíše retezec pozpátku a zároveň změní původní řetězec) - reverse! - vypíše řetězec pozpátku a zároveň změní původní řetězec
puts promenna                             #vypise OvOlS (normálně vypíše retezec pozpátku, protože reverse! změnil původní řetězec)