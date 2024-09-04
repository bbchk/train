puts "Enter path to the file you wanna load"
filename = gets.chomp
require filename
puts "File #{filename} has been loaded"

