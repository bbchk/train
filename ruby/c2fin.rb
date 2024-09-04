puts "Reading cels temp from input file..."
cels = File.read("temp.dat").to_i
puts "Temperature in cels is #{cels}"
fahrs = ( cels * 9 / 5) + 32
puts "Temperature in fahrs is #{fahrs}"

