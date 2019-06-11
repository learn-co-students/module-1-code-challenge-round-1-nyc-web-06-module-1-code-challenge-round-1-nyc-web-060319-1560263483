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

  def average_star_rating
    star_sum = reviews.inject(0) do |sum, review|
      sum + review.rating
    end
    star_sum / reviews.length.to_f
  end

  def longest_review
    reviews.max_by do |review|
      review.content.length
    end.content
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end
end
