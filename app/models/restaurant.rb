require "pry"

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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer 
    end.uniq
  end

  def total_stars 
    star_array = Review.all.select do |review|
      review.restaurant == self
    end

    rating_array = star_array.all.map do |arr|
      arr.rating
    end

    star_array.inject(0){|sum, rating_array| sum + rating_array}
  end
  #binding.pry

  def average_star_rating
    self.total_stars.to_f / reviews.length.to_f
  end

  def longest_review
    longest = nil 
    max_content_size = 0

    self.reviews.each do |review|
      if review.size > max_content_size 
          longest = review
      end
    end
    longest
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name 
    end
  end



end

