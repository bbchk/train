begin
  1 / 0
rescue ZeroDivisionError => e
  puts "Can't divide on zero"
  puts e.backtrace
  puts e.message
end
