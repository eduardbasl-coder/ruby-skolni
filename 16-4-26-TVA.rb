#hash (slovník)
#klíč => hodnota

slovnik = Hash.new  #novy prazdny HASH
slovnik["dog"] = "pes"
slovnik["cat"] = "kočka"
slovnik["elephant"] = "slon"
p slovnik

puts "How do you say 'Dog' in czech? It's '#{slovnik["dog"].capitalize}'"

slovnik["horse"] = "kůň"
slovnik.delete("elephant")      #zmizí klíč i hodnota
p slovnik
dalsislovnik = {"dog" => "pes", "cat" => "kočka", "horse" => "kůň"}
puts dalsislovnik



#kombinace pole a slovníku (Hash + Array)
users = Array.new
users << {"name" => "Pepa", "city" => "Praha", "year" => "2004"}
users << {"name" => "Franta", "city" => "Plzeň", "year" => "2007"}
users << {"name" => "Písek", "city" => "Olomouc", "year" => "2001"}
users << {"name" => "Marek", "city" => "Královák", "year" => "2003"}

puts "kompletni vypis:"
p users
puts "Informace o první uživateli:"
puts users[0]
puts "Jméno posledního uživatele: "
p users[users.length-1]["name"]
users[4] = {"name" => "Pepik", "city" => "Praha", "year" => "2004"}
p users[4]["year"]
puts users[4]["year"]



#iterace přes prvky pole, s indexováním
languages = ["Angličtina", "Němčina", "Čeština", "Java"]

languages.each do | language|
    puts "Můj oblíbený jazyk je: #{language}!"
    sleep 1
end

languages.each_with_index do | language, index|         #pořadí v jakém je ta hodnota uložena
    puts "Můj #{index + 1}. oblíbený jazyk je: #{language}!"
    sleep 1
end



slovnik = {"dog" => "pes", "cat" => "kočka", "horse" => "kůň"}
slovnik.each do |key, walue|
    puts "english: #{key} = cesky: #{walue}"
    sleep 1
end



users = Array.new
users << {"name" => "Pepa", "city" => "Praha", "year" => "2004"}
users << {"name" => "Franta", "city" => "Plzeň", "year" => "2007"}
users << {"name" => "Písek", "city" => "Olomouc", "year" => "2001"}
users << {"name" => "Marek", "city" => "Královák", "year" => "2003"}

users.each do |user|
    user.each do |key, value|
        puts "#{key} : #{value}"
        sleep 0.5
    end
    puts ""
end


pole = ["Franta", "Tom", "Pepa", "Jarda", "Pavel", "Bohumil"]
puts "Seradime podle abecedy!"
sleep 2
p pole
p pole.sort
p pole                                                    #sort = neulozi, jen zmeny vypise


p pole.sort!                                             #sort! = změny se ulozi na data
p pole

puts "Obsahuje pole jméno 'Pepa'?"
p pole.include?("Pepa")             #navratova hodnota True/False
a = pole.include?("Franta")
puts a