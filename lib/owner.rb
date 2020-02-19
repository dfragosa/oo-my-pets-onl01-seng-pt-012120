require 'pry'
class Owner
   attr_reader :name, :species
   
   @@all = []
 
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
  
  def self.count
    self.all.count
    
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
end