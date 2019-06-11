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
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def total_star_rating
    var = reviews.map do |review|
      review.rating
    end
    var.inject(:+)
  end

  def average_star_rating
    total_star_rating.to_f / reviews.size.to_f
  end

  def review_content
    reviews.map do |review|
      review.content
    end
  end

  def longest_review
    review_content.max_by do |content|
      content.length
    end
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

end
