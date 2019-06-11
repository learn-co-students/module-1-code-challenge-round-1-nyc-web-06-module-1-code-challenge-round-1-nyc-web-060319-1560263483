require_relative 'review'

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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}
  end

  def average_star_reviews
    total_rating = 0
    num_ratings = 0
    self.reviews.each do |review|
      num_ratings += 1
      total_rating += review.rating
    end

    return total_rating/(num_ratings/1.0)
  end

  def longest_review
    longest = self.reviews[0]
    self.reviews.each do |review|
      if review.content.length > longest.content.length
        longest = review
      end
    end
    longest
  end

  def self.find_by_name(name)
    all.find{|restaurant| restaurant.name == name}
  end



end
