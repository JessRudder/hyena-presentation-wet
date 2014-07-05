class Hyena
  attr_accessor :all
  @all = []

  def initialize
    self.class.all << self
  end
  
  def self.all
    @all
  end
    
  def self.reset_all
    self.all.clear
  end

  def self.count
    @all.count
  end

  def feed(food)
    if food == "crunchy bones"
      "yipyipyip"
    else
      "grrrrrrrrr"
    end
  end
end
