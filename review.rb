class Review

attr_accessor :content, :rating
attr_reader :customer, :restaurant

@@all = []

def initialize(restaurant, content, rating, customer)
  @restaurant = restaurant
  @content = content
  @rating = rating
  @customer = customer
  @@all << self
end

def self.all
  @@all
end














end
