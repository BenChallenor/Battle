require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new }
  # let(:player_1) { double 'Ben' }
  let(:player_2) { double 'Hannah' }

  describe "#Attack" do
    it "returns a players hit points minus 10" do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

  describe "#Initialize" do
    it "returns player 1 name" do
      expect(subject.player_1).to be_an_instance_of(Player)
    end
    it "returns player 2 name" do
      expect(subject.player_2).to be_an_instance_of(Player)
    end
  end

end
