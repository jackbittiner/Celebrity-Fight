class Player

  #responsible for having a name and managing fame points

  attr_reader :name, :attack, :fp

  DEFAULT_FP = 100

  def initialize(name)
    @name = name
    @fp = DEFAULT_FP
  end

  #def attack(player, option)
  #  player.got_attacked(option)
  #end

  def got_attacked(option)
    self.fp -= 10
  end



  attr_writer :fp

end
