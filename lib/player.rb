class Player

  #responsible for having a name and managing fame points

  attr_reader :name, :attack, :fp

  DEFAULT_FP = 100

  def initialize(name)
    @name = name
    @fp = DEFAULT_FP
  end

  def restore_points(option)
    if option == "is filled with rage as you restore your celebrity status by adopting a village of African children"
      self.fp += 10
    end
  end


  def got_attacked(option)
      if option == "has been sent to the Jungle"
      self.fp -= 10
    elsif option == "has been embarrassingly tripped up on the red carpet"
      self.fp -= 25
    elsif option == "has had their private matters leaked"
      self.fp -= 40
    elsif option == "has had their drink spiked at the Made In Chelsea premier after party"
      self.fp -= 15
    elsif option == "flashes a hint of side boob in an embellished sheer dress at the NYC premiere of Ghostbusters"
      self.fp -= 5
    elsif option == "is accused of photoshopping their NAKED picture to promote raunchy new shoe range"
      self.fp -= 30
    elsif option == "got caught on camera expressing alt-right views"
      self.fp -= 99
    else
      self.fp -= 7
    end
  end

  attr_writer :fp

end
