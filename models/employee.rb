class Employee
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

  def pay
    "Wooohooooo!"
  end
end
