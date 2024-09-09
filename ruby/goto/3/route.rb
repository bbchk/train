require_relative "station"

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
    if station.is_a?(Station)
      @intermediate << station
    else
      raise ArgumentError, "Argument must be an instance of Station"
    end
  end

  def remove_inter(station)
    if [@start.name, @finish.name].include?(station.name)
      raise ArgumentError, "Station should be intermediate"
    end
    @intermediate.delete(station)
  end
end
