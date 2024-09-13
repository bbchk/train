require_relative("../../3/train")
require_relative("../../3/route")
require_relative("../../3/station")

# Create stations
#

RSpec.describe Station do
  let(:name) { "Kyiv" }
  let(:kyiv_st) { Station.new(name) }

  before do
    @kyiv_st = kyiv_st
  end

  describe "#initialize" do
    it "has name" do
      expect(@kyiv_st.name).to eq(name)
    end

    it "has empty trains array initially" do
      expect(@kyiv_st.trains).to eq([])
    end
  end

  describe "#receive_train" do
    it "receives only trains" do
      expect { @kyiv_st.receive_train("some_stringy_train") }.to raise_error(ArgumentError)
    end

    it "does receives train" do
      t = Train.new("1", "passenger", 3)
      @kyiv_st.receive_train(t)

      expect(@kyiv_st.trains).to eq([t])
    end
  end

  describe "#trains_by_type" do
    before do
      @passanger_trains = [Train.new("1", "passanger", 3), Train.new("2", "passanger", 7)]
      @freight_trains = [Train.new("3", "freight", 10), Train.new("4", "freight", 5)]

      @all_trains = [*@passanger_trains, *@freight_trains]
      @all_trains.each do |train|
        @kyiv_st.receive_train(train)
      end
    end

    it "shows passanger trains" do
      expect(@kyiv_st.trains_by_type("passanger")).to eq(@passanger_trains)
    end

    it "shows freight trains" do
      expect(@kyiv_st.trains_by_type("freight")).to eq(@freight_trains)
    end

    it "shows error for unknown train type" do
      expect { @kyiv_st.trains_by_type("unknownType") }.to raise_error(ArgumentError)
    end
  end
end
