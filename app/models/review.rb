class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    self.rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def rating=(rating)
    # Not sure if I needed this? Wanted to make sure the rating was from 1-5
    if rating < 1
        puts "unavailable rating"
        @rating = 1
    elsif rating > 5
        puts "unvailable rating"
        @rating = 5
    else
        @rating = rating
    end
  end

end

