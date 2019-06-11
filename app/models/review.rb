class Review

attr_accessor :customers, :review, :restaurant

@@all = []

def initialize(restaurant, customers, review)
  @restaurant= restaurant
  @customers = customers
  @review = review
  @@all << self
end

def self.all
  @@all
end

def customer
  self.customers
end

def restaurant
  self.restaurants
end

def rating
  self.review
end

end
