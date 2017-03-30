class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player, option)
    player.got_attacked(option)
  end

  def player_name(player)
    player.name 
  end
end
