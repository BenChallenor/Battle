class Player

  attr_reader :name, :hit_points
  DEFAULT_QUANTITY = 50

  def initialize(name, hit_points = DEFAULT_QUANTITY)
    @name = name
    @hit_points = hit_points
  end

  def attack
    @hit_points -= 10
  end

end
