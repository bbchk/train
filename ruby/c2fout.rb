puts "Enter temperature in cels: "
cels = gets.to_i
puts "Temperature in cels is #{cels}"
fahrs = ( cels * 9 / 5) + 32
puts "Temperature in fahrs is #{fahrs}"
puts "Saving results. Enter filename for res: "
filename = gets.chomp
file = File.new(filename, "w")
file.puts fahrs
file.close


