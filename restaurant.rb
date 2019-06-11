class Restaurant

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def customers
  reviews = Review.all.select do |revs|
    revs.restaurant == self
  end
  custys = reviews.collect do |revs|
    revs.customer
  end
  return custys.uniq
end

def reviews
  Review.all.select do |revs|
    revs.restaurant == self
  end
end

def average_star_rating
  revs = self.reviews
  ratings = revs.collect do |revs|
    revs.rating
  end
  total = ratings.reduce(:+)
  return total.to_f / revs.length.to_f
end

def longest_review
  revs = self.reviews
  longest = 0
  answer = ""
  revs.each do |r|
    if r.content.length > longest
      longest = r.content.length
      answer = r
    end
  end
  return answer
end

def self.find_by_name(name)
  self.all.find do |rests|
    rests.name == name
  end
end














end
