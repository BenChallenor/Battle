require "player"

describe Player do
subject(:player_1) {described_class.new("Ben")}
subject(:player_2) {described_class.new("Hannah")}

  describe "#Name" do
    it "returns player name" do
      expect(player_1.name).to eq "Ben"
    end
  end

  describe '#hit_points' do
    it "returns player's hit points" do
      expect(player_2.hit_points).to eq Player::DEFAULT_QUANTITY
    end
  end

  describe "#Attack" do
    it "returns a players hit points minus 10" do
      expect {player_1.attack(player_2) }.to change {player_2.hit_points}.by(-10)
    end
  end


end
