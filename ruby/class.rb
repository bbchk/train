class Person
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end 

  def pay_money
    "I am old #{@age} man, i work fairly as #{@profession} for 20 years, save my #{@name} head, please"
  end 
end 


pers = Person.new("Serhii", 47, "carpenter");

puts pers.pay_money()

class Ticket 
  def initialize
    puts "Ticket is issued"
  end

  def venue=(v)
    @venue=v
    return "hi beach"
  end 

end

tick = Ticket.new
puts tick.venue = 100


class Mathew < Person
  def initialize 
    puts "mathheewwwwwwwww"
  end
end

m = Mathew.new
