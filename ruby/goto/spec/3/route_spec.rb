require_relative("../../3/train")
require_relative("../../3/route")
require_relative("../../3/station")

RSpec.describe Route do
  before do
    @start = Station.new("Kyiv")
    @finish = Station.new("Vinnytsia")
    @route = Route.new(@start, @finish)

    @in_s = Station.new("Zhytomyr")
    @route.add_inter(@in_s)
  end

  describe "#initialize" do
    it "has start, end and intermediate stations" do
      expect(@route.stations[0]).to eq(@start)
      expect(@route.stations[-1]).to eq(@finish)
    end
  end

  describe "#add_inter" do
    it "does add intermediate station" do
      expect(@route.stations).to include(@in_s)
    end
  end

  describe "#remove_inter" do
    it "does remove intermediate station" do
      @route.remove_inter(@in_s)
      expect(@route.stations).to eq([@start, @finish])
    end

    it "does not remove finish or start station" do
      expect { @route.remove_inter(@start) }.to raise_error(ArgumentError)
    end
  end
end
