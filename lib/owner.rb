class Owner
  attr_reader :name, :species
  
  @@all = []
  @@pets = []
  
  def initialize(name, species="human")
    @name = name
    @species = species
    save
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
  end
    
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    @cats << Cat.new(name, self)
  end
  
  
  def buy_dog(name)
    @dogs << Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each {|puppy|puppy.mood = "happy"}
  end
  
  def feed_cats
    cats.each {|kitty| kitty.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each
  end
    
    
    
    
 end