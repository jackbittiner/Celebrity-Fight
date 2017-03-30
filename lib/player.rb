class Player

  #responsible for having a name and managing fame points

  attr_reader :name, :attack, :fp, :possible_attacks

  DEFAULT_FP = 100

  def initialize(name)
    @name = name
    @fp = DEFAULT_FP
    @possible_attacks = ["has been sent to the Jungle",
    "has been embarrassingly tripped up on the red carpet",
    "has had their private matters leaked",
  "has had their drink spiked at the Made In Chelsea premier after party",
"flashes a hint of side boob in an embellished sheer dress at the NYC premiere of Ghostbusters",
"is accused of photoshopping their NAKED picture to promote raunchy new shoe range",
"got caught on camera expressing alt-right views",
"has gone braless under jacket bearing her beau Tristan Thompson's basketball number... after ex Lamar Odom claims she 'tolerated' his cocaine use"]
  end

  def computer_attack
    option = @possible_attacks.sample
    if option == "has been sent to the Jungle"
    self.fp -= 10
  elsif option == "has been embarrassingly tripped up on the red carpet"
    self.fp -= 20 + rand(11)
  elsif option == "has had their private matters leaked"
    self.fp -= -50 + rand(100)
  elsif option == "has had their drink spiked at the Made In Chelsea premier after party"
    self.fp -= rand(20)
  elsif option == "flashes a hint of side boob in an embellished sheer dress at the NYC premiere of Ghostbusters"
    self.fp -= -5 + rand(10)
  elsif option == "is accused of photoshopping their NAKED picture to promote raunchy new shoe range"
    self.fp -= 15
  elsif option == "got caught on camera expressing alt-right views"
    self.fp -= rand(100)
  else
    self.fp -= 7
  end
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
      self.fp -= 20 + rand(11)
    elsif option == "has had their private matters leaked"
      self.fp -= -50 + rand(100)
    elsif option == "has had their drink spiked at the Made In Chelsea premier after party"
      self.fp -= rand(20)
    elsif option == "flashes a hint of side boob in an embellished sheer dress at the NYC premiere of Ghostbusters"
      self.fp -= -5 + rand(10)
    elsif option == "is accused of photoshopping their NAKED picture to promote raunchy new shoe range"
      self.fp -= 15
    elsif option == "got caught on camera expressing alt-right views"
      self.fp -= rand(100)
    else
      self.fp -= 7
    end
  end

  attr_writer :fp

end
