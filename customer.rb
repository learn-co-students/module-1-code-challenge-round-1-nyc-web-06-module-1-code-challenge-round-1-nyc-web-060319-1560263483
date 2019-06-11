class Customer

  attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def add_review(restaurant, content, rating)
  Review.new(restaurant, content, rating, self)
end

def num_reviews
  Review.all.select do |revs|
    revs.customer == self
  end.length
end

def restaurants
  array = Review.all.select do |revs|
    revs.customer == self
  end
  newArray = array.collect do |revs|
    revs.restaurant
  end
  return newArray.uniq
end

def self.find_by_name(name)
  self.all.find do |custys|
    custys.name == name
  end
end

def self.find_all_by_first_name(name)
  self.all.select do |custys|
    custys.name[0..custys.name.index(" ") - 1] == name
  end
end

def self.all_names
  self.all.collect do |custys|
    custys.name
  end
end











end
