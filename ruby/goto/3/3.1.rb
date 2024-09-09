require_relative "3"

# Create stations
station_a = Station.new("Station A")
station_b = Station.new("Station B")
station_c = Station.new("Station C")

# Create a route
route = Route.new(station_a, station_b)
route.add_inter(station_c)

# Create trains
train1 = Train.new("123", "passenger", 5)
train2 = Train.new("456", "freight", 3)

# Assign a route to trains
train1.route = route.stations
train2.route = route.stations

# Accept trains at the station
station_a.trains = train1
station_a.trains = train2

# Show trains at station A
puts "Trains at #{station_a.name}:"
station_a.trains.each do |train|
  puts "Train Number: #{train.num}, Type: #{train.type}, Carriages: #{train.carriages_num}"
end

# Show trains by type at station A
puts "Passenger trains at #{station_a.name}:"
station_a.trains_by_type("passenger").each do |train|
  puts "Train Number: #{train.num}, Carriages: #{train.carriages_num}"
end

puts "Freight trains at #{station_a.name}:"
station_a.trains_by_type("freight").each do |train|
  puts "Train Number: #{train.num}, Carriages: #{train.carriages_num}"
end

# Attach a carriage to a train if it's not moving
train1.accelerate
train1.attach_carriage
train1.brake
train1.attach_carriage
puts "Train 1 Carriages after attaching: #{train1.carriages_num}"

# Send train1 from Station A
station_a.send_train(train1)
puts "Trains at #{station_a.name} after sending Train 1:"
station_a.trains.each do |train|
  puts "Train Number: #{train.num}, Type: #{train.type}, Carriages: #{train.carriages_num}"
end
