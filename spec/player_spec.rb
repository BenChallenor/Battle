require "player"

describe Player do
subject(:player_1) {described_class.new("Ben")}

  describe "#Name" do
    it "returns player name" do
      expect(subject.name).to eq "Ben"
    end
  end

  describe '#hit_points' do
    it "returns player's hit points" do
      expect(subject.hit_points).to eq Player::DEFAULT_QUANTITY
    end
  end



end
