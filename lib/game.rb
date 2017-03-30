class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player, option)
    player.got_attacked(option)
  end

  def restore_points(player, option)
    player.restore_points(option)
  end

  def player_name(player)
    player.name
  end

  def self.create(player_1, player_2)
  @game = Game.new(player_1, player_2)
end

def self.instance
  @game
end

end
