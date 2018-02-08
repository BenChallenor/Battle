require 'game'

describe Game do

  describe '#attack' do
    it "reduces player's HP by 10" do
      subject.attack
      expect(subject.hit_points).to eq 40
    end
  end
  
end
