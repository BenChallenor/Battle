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

end
