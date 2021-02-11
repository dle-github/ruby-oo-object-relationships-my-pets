class Owner
  # code goes here
  attr_reader :name, :species
  @@all = Array.new

  def initialize(input)
    @name = input
    @species = "human"
    @myPets = Hash.new
    ##########################
    @@all << self
  end

  def say_species
    p "I am a human."
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(input)
    Cat.new(input, self)
  end

  def buy_dog(input)
    Dog.new(input, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @myPets[:cats] = cats
    @myPets[:dogs] = dogs

    @myPets.each do |species, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
    end
  end

  def list_pets
    p "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
################################
################################
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
end