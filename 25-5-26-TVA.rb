#25.5.2026
#dostal jsem za 1 z testu z TVA!
#rozdíl mezi objekt a třída -> objekt - instance třídy (všeobecná třída - napsaný kód - auto | objekt - škoda 120, Lamborgini Huracan)

#třída - název tridy s velkym pismenem!!, konci end | uvnitr metody a vlastnosti
=begin
class Dice            #vytvoření nové třídy
  def roll
    return 1 + rand(6)
  end
end

puts "Hod první kostkou!"
my_dice = Dice.new              #vytvoření nového objektu
print "První hod: #{my_dice.roll}\n"
print "Druhý hod: #{my_dice.roll}\n"


puts "Hod 3. a 4. kostkou!"
dices = [Dice.new, Dice.new]
dices.each do |dice|
  puts dice.roll
end




class Dice            #vytvoření nové třídy
  def roll
    @number = 1 + rand(6)
  end
  def show
    return @number
  end
end

puts "Hod první kostkou!"
my_dice = Dice.new              #vytvoření nového objektu
puts my_dice.roll
sleep 0.3
puts my_dice.show
puts my_dice.roll
sleep 0.3
puts my_dice.show

puts "Hod 3. a 4. kostkou!"
dices = [Dice.new, Dice.new]
dices.each do |dice|
  puts dice.roll
  puts dice.show
end



class Dice            #vytvoření nové třídy
  def initialize          #metoda, volá se pouze jednou - vytvářím novou instanci/prvek (dice.new)
    roll                    #pri zacatku nam uz da hodnotu (jako v realite)
  end
  def roll
    @number = 1 + rand(6)                   #vlastnost
  end
  def show
    return @number
  end
end

puts "Hod první kostkou!"
my_dice = Dice.new              #vytvoření nového objektu
puts my_dice.show
puts my_dice.roll
puts my_dice.show




class User
  def initialize (name, city, year)
    @name = name
    @city = city
    @year = year
  end
  def vypis_karty
    print "Jmeno: #{@name}".ljust(25)
    print "Město: #{@city}".ljust(25)
    print "Rok narození: #{@year}".ljust(25)
    print "\n"
  end
end

user1 = User.new("John", "Praha", "2000")
user1.vypis_karty
user2 = User.new("Standa", "Brno", "1980")
user2.vypis_karty



class User
  def initialize(name, city, year)
    @name = name
    @city = city
    @year = year
  end

  def print_card
    print @name.ljust(Database::MARGIN)
    print @city.ljust(Database::MARGIN)
    print @year.to_s.ljust(Database::MARGIN)
    print "\n"
  end
end

class Database
  MARGIN = 15

  def initialize      #konstruktor
    @users = []
  end

  def add_user(user)
    @users << user
  end

  def print_user_list
    print_head

    @users.each do |prvek|
      prvek.print_card
    end

    puts
  end

  private

  def print_head
    print "Jmeno".ljust(Database::MARGIN)
    print "Mesto".ljust(Database::MARGIN)
    print "Rok".ljust(Database::MARGIN)
    puts
    puts "-" * Database::MARGIN * 3
  end
end



db1 = Database.new

db1.add_user(User.new("John", "Praha", "2000"))
db1.add_user(User.new("Standa", "Brno", "1980"))
db1.add_user(User.new("Roman", "Pivo", "1934"))

puts "Výpis databáze č. 1:"
db1.print_user_list


db2 = Database.new

db2 = Database.new

db2.add_user(User.new("Anna", "Ostrava", "1995"))
db2.add_user(User.new("Karel", "Plzen", "1987"))
db2.add_user(User.new("Lucie", "Liberec", "2001"))

puts "Výpis databáze č. 2:"
db2.print_user_list

db1.print_head                              #nefunguje - printhead je pouze privatni metoda - nejde zavolat zvenku




class User
  attr_reader :name, :year              #pouze pro čtení
  attr_accessor :city                   #dá se přepsat
  def initialize(name, city, year)
    @name = name                                    #instanční proměnná - nemohu k nim přistupovat
    @city = city
    @year = year
  end

  def print_card
    print @name.ljust(Database::MARGIN)
    print @city.ljust(Database::MARGIN)
    print @year.to_s.ljust(Database::MARGIN)
    print "\n"
  end
end

class Database
  MARGIN = 15

  def initialize      #konstruktor
    @users = []
  end

  def add_user(user)
    @users << user
  end

  def print_user_list
    print_head

    @users.each do |prvek|
      prvek.print_card
    end

    puts
  end

  private

  def print_head
    print "Jmeno".ljust(Database::MARGIN)
    print "Mesto".ljust(Database::MARGIN)
    print "Rok".ljust(Database::MARGIN)
    puts
    puts "-" * Database::MARGIN * 3
  end
end

user1 = User.new("John", "Praha", "2001")

puts user1.name                       #vypise jmeno, ale nemuzu ho přejmenovat!! (mohu menit pouze město) - attr
=end



#vytvořit - jednoduchou třídu - priklad - 4 instanční proměné (a, b a výsledek, operace), metoda sečti a odečti, potom zobraz priklad, kostruktor (nacist cisla)
class Priklad
  def initialize
    print "Zadejte prosim prvni cislo: "
    a = gets.to_i
    print "Zadejte prosim druhe cislo: "
    b = gets.to_i
    @a = a
    @b = b
  end

  def secti
    @vysledek = @a + @b
  end

  def odecti
    @vysledek = @a - @b
  end

  def vypis
    puts "Výsledek: #{@vysledek}"
  end
end


puts "Vitej v programu na procviceni class!"
priklad1 = Priklad.new
puts "[1-scitani | 2-odcitani]"
print "Zadejte prosim volbu: "
volba = gets.to_i
case volba
  when 1
    puts priklad1.secti
  when 2
    puts priklad1.odecti
  else
    puts "Zadali jste neplatnou volbu!"
end
