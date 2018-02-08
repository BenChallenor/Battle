class Game

  DEFAULT_QUANTITY = 50
  attr_reader :hit_points

  def initialize(hit_points = DEFAULT_QUANTITY)
    @hit_points = hit_points
  end

  def attack
    @hit_points -= 10
  end

end
