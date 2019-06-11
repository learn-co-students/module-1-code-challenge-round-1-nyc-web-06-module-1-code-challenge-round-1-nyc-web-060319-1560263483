class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end	

  def find_by_name(name)
  	Restaurant.all.find do |restaurant|
  		restaurant == name
  end	

  def customers
  	customers.restaurant.select do |restaurant|
  		restaurant == self
  end	
end
