class Game

attr_reader :player_1, :player_2

  def initialize
    @player_1 = Player.new("name")
    @player_2 = Player.new("name")
  end

  def attack(player)
    player.receive_damage
  end

end