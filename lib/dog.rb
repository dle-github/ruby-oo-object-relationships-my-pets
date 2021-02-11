class Dog
  attr_accessor :owner, :mood
  attr_reader :name, :species
  @@all = Array.new

  def initialize(input, input2)
    @name = input
    @owner = input2
    @mood = "nervous"
    ##########################
    @@all << self
  end
################################
################################
  def self.all
    @@all
  end
end