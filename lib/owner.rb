require 'pry'


class Owner
    attr_accessor :dog, :cat, :pets
   attr_reader :name, :species
   
   
   @@all = []
   @@pets = {:dog => [], :cat => []}
   
  def initialize(name, species= "human")
    @name = name
    @species = species
    @@all << self
    
  end
  
  def say_species
   phrase = "I am a human."
   phrase
  end
  
  def self.all
   @@all
  end
  
  def pets
    @@pets
  end
  
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    @@pets[:cat] << Cat.new(name, self)
    #purchased = []
    #bought = Cat.new(name, self)
    #purchased << name
  end
  
  def buy_dog(name)
    #binding.pry
    @@pets[:dog] << Dog.new(name, self)
    #purchased = []
    #purchased << Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.collect {|feel| feel.mood = "happy"}
  end
  
  def feed_cats
    cats.collect {|eat| eat.mood = "happy"}  
  end
  
  def sell_pets
    #binding.pry
   pets.each do |pet, moods|
     moods.map do |pet|
     pet.mood 
     end
      arr.clear
    end
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
end
