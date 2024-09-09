require_relative "train"

class Station
  attr_accessor :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def trains_by_type(type)
    case type
    when "passanger"
      return @trains.select { _1.type == "passanger" }
    when "freight"
      return @trains.select { _1.type == "freight" }
    else
      raise ArgumentError, "There is no such type for train"
      []
    end
  end

  def receive_train(train)
    if train.is_a?(Train)
      @trains << train
    else
      raise ArgumentError, "Argument must be an instance of Train"
    end
  end

  def send_train(train)
    @trains.delete(train)
  end
end
