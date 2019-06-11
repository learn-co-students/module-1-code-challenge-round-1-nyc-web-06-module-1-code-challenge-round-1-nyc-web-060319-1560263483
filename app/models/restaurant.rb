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

  def reviews #all reviews written about this restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers #customers writing all reviews, by review
    reviews.map do |review|
      review.customer
    end.uniq #makes it unique
  end

  def all_ratings #all reviews for restaurant
    reviews.map do |review|
      review.rating
    end
  end
  
  def average_star_rating #sum and number of ratings, averaged
    (all_ratings.sum) / (all_ratings.length)
  end

  def review_content #reviews by content
    reviews.map do |review|
      review.content
    end
  end
  
  def longest_review
    review_content.sort_by{|content| content.length}
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
