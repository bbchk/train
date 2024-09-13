require_relative("../../3/train")
require_relative("../../3/route")
require_relative("../../3/station")

RSpec.describe Train do
  before do
    @train = Train.new("12345", "cargo", 10)
  end

  describe "#initialize" do
    it "initializes with a number, type, and number of carriages" do
      expect(@train.num).to eq("12345")
      expect(@train.type).to eq("cargo")
      expect(@train.carriages_num).to eq(10)
      expect(@train.speed).to eq(0)
    end
  end

  describe "#accelerate" do
    it "increases the speed by 5" do
      expect { @train.accelerate }.to change { @train.speed }.by(5)
    end
  end

  describe "#brake" do
    it "resets the speed to 0" do
      @train.accelerate
      expect { @train.brake }.to change { @train.speed }.to(0)
    end
  end

  describe "#attach_carriage" do
    it "increases the number of carriages by 1 if the train is not moving" do
      expect { @train.attach_carriage }.to change { @train.carriages_num }.by(1)
    end

    it "does not change the number of carriages if the train is moving" do
      @train.accelerate
      expect { @train.attach_carriage }.not_to change { @train.carriages_num }
    end
  end

  describe "#detach_carriage" do
    it "decreases the number of carriages by 1 if the train is not moving" do
      expect { @train.detach_carriage }.to change { @train.carriages_num }.by(-1)
    end

    it "does not change the number of carriages if the train is moving" do
      @train.accelerate
      expect { @train.detach_carriage }.not_to change { @train.carriages_num }
    end
  end

  describe "#route=" do
    before do
      @station1 = "Kyiv"
      @station2 = "Zhytomyr"
      @station3 = "Vinnytsia"
      @route = [@station1, @station2, @station3]
    end

    it "assigns a route to the train and sets the current station to the first station on the route" do
      @train.route = @route
      expect(@train.route).to eq(@route)
      expect(@train.station).to eq(@station1)
    end
  end

  describe "#next_station" do
    before do
      @station1 = "Kyiv"
      @station2 = "Zhytomyr"
      @station3 = "Vinnytsia"
      @route = [@station1, @station2, @station3]
      @train.route = @route
    end

    it "returns the next station if there is one" do
      expect(@train.next_station).to eq(@station2)
    end

    it "returns nil if the train is at the last station" do
      @train.move_to_next_station
      @train.move_to_next_station
      expect(@train.next_station).to be_nil
    end
  end

  describe "#prev_station" do
    before do
      @station1 = "Kyiv"
      @station2 = "Zhytomyr"
      @station3 = "Vinnytsia"
      @route = [@station1, @station2, @station3]
      @train.route = @route
    end

    it "returns the previous station if there is one" do
      @train.move_to_next_station
      expect(@train.prev_station).to eq(@station1)
    end

    it "returns nil if the train is at the first station" do
      expect(@train.prev_station).to be_nil
    end
  end

  describe "#move_to_next_station" do
    before do
      @station1 = "Kyiv"
      @station2 = "Zhytomyr"
      @station3 = "Vinnytsia"
      @route = [@station1, @station2, @station3]
      @train.route = @route
    end

    it "moves the train to the next station" do
      expect { @train.move_to_next_station }.to change { @train.station }.from(@station1).to(@station2)
    end

    it "does not move the train beyond the last station" do
      @train.move_to_next_station
      @train.move_to_next_station
      expect { @train.move_to_next_station }.not_to change { @train.station }.from(@station3)
    end
  end

  describe "#move_to_prev_station" do
    before do
      @station1 = "Kyiv"
      @station2 = "Zhytomyr"
      @station3 = "Vinnytsia"
      @route = [@station1, @station2, @station3]
      @train.route = @route
      @train.move_to_next_station
    end

    it "moves the train to the previous station" do
      expect { @train.move_to_prev_station }.to change { @train.station }.from(@station2).to(@station1)
    end

    it "does not move the train before the first station" do
      @train.move_to_prev_station
      expect { @train.move_to_prev_station }.not_to change { @train.station }.from(@station1)
    end
  end
end
