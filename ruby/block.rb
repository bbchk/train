def my_loop
  puts "NO yield, not code block, that's the rules"
end

my_loop { puts "Here is my loop wrking without stop" }

array = [1, 2, 3]
var = array.map do |n|
  n * 10
end

puts var

class Interger
  def my_times
    (0..self).each { yield _1 }
  end
end

5.times { puts _1 }

class Array
  def my_each
    len = self.length

    len.times {
      yield self[_1]
    }
  end
end
