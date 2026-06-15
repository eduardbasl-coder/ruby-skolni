#spravce domacich ukolu
#struktura  = {"name" => "...", "done" => true/false}

def vypis_vsech(tasks)
    puts "Vypis všech úkolů:"
    sleep 0.5
    print "Název úkolu".ljust(30)
    print "Stav úkolu".ljust(15)
    print "\n"
    print "-" * 45
    print "\n"
    tasks.each do |prvek|
        nazev = prvek["name"]
        splneni = prvek["done"]
        if splneni == false
            splneno = "nesplneno"
        elsif splneni == true
            splneno = "hotovo"
        end
        print nazev.ljust(30)
        print splneno.ljust(15)
        print "\n"
        sleep 0.5
    end
    puts "\n\n"
end

tasks = Array.new
puts "Vitej v primitivni evidenci domacich ukolů!"
sleep 1
3.times do |indx|
    print "Zadej prosim nazev #{indx + 1}. úkolu: "
    nazev = gets.to_s.strip
    splneni = "e"
    until splneni == "ano" or splneni == "ne"
        sleep 0.5
        print "Už si úkol splnil?(ano/ne): "
        splneni = gets.to_s.strip.downcase
    end
    if splneni == "ano"
        splneno = true
    elsif splneni == "ne"
        splneno = false
    end
    tasks << {"name" => nazev, "done" => splneno}
end
#p tasks
sleep 1
vypis_vsech(tasks)
puts "Hotove ukoly:"
sleep 0.5
puts "-------------"
tasks.each do |prvek|
    splneni = prvek["done"]
    nazev = prvek["name"]
    if splneni == true
        splneno = "hotovo"
        puts "-#{nazev} (#{splneno})"
    end
end
sleep 1
puts "\n\nNesplňené úkoly:"
sleep 0.5
puts "--------------"
tasks.each do |prvek|
    splneni = prvek["done"]
    nazev = prvek["name"]
    if splneni == false
        splneno = "nesplneno"
        puts "-#{nazev} (#{splneno})"
    end
end