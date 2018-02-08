require "player"

describe Player do
subject(:player_1) {described_class.new("Ben")}

  describe "#Name" do
    it "returns player name" do
      expect(subject.name).to eq "Ben"
    end
  end

end
