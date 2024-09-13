class Person
  attr_accessor :age

  include Comparable

  def initialize(age)
    @age = age
  end

  def <=>(p)
    self.age <=> p.age
  end
end

pers1 = Person.new(34)
pers2 = Person.new(27)

puts pers1 > pers2
puts pers1 == pers2
puts pers1.equal?(pers2)
puts pers1.eql?(pers2)
