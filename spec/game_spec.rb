require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double 'player 1' }
  let(:player_2) { double 'player 2' }

  describe "#Attack" do
    it "returns a players hit points minus 10" do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

  describe "#Initialize" do
    it "returns player 1 name" do
      expect(subject.player_1).to eq(player_1)
    end
    it "returns player 2 name" do
      expect(subject.player_2).to eq(player_2)
    end
  end

end
