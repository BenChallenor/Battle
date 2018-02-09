class Game

attr_reader :player_1, :player_2, :attacker, :victim

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @attacker = @player_1
    @victim = @player_2
  end

  def attack
    @victim.receive_damage
    turn_switcher
  end

  private

  def turn_switcher
    @attacker, @victim = @victim, @attacker
  end


end
