class Owner

  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets{fish: fish}
  end

end
