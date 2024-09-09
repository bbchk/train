class Station
  attr_accessor :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def trains=(train)
    @trains << train
  end

  def trains_by_type(type)
    case type
    when "passanger"
      return @trains.select { _1.type == "passanger" }
    when "freight"
      return @trains.select { _1.type = "freight" }
    else
      puts "There is no such type for trains"
      []
    end
  end

  def send_train(train)
    @trains.delete(train)
  end
end

class Route
  def initialize(start, finish)
    @start = start
    @finish = finish
    @intermediate = []
  end

  def stations
    [@start, *@intermediate, @finish]
  end

  def to_ary
    [@start, *@intermediate, @finish]
  end

  def add_inter(station)
    @intermediate << station
  end

  def remove_inter(station)
    @intermediate.delete(station)
  end
end

class Train
  attr_accessor :num, :type, :route
  attr_reader :speed, :carriages_num, :station

  def initialize(num, type, carriages_num)
    @num = num
    @type = type
    @carriages_num = carriages_num
    @speed = 0
  end

  def accelerate
    @speed += 5
  end

  def brake
    @speed = 0
  end

  def attach_carriage
    if @speed == 0
      @carriages_num += 1
    end
  end

  def detach_carriage
    if @speed == 0
      @carriages_num -= 1
    end
  end

  def next_station
    return unless @route

    current = @route.index(@station)
    @route[current + 1] if current && current < @route.size - 1
  end

  def prev_station
    return unless @route

    current = @route.index(@station)
    @route[current - 1] if current && current > 0
  end

  def route=(route)
    @station = route[0]
    @route = route
  end

  def move_to_next_station
    return unless @route

    current = @route.index(@station)
    @station = @route[current + 1] if current && current < @route.size - 2
  end

  def move_to_prev_station
    return unless @route

    current = @route.index(@station)
    @station = @route[current - 1] if current && current > 1
  end
end
