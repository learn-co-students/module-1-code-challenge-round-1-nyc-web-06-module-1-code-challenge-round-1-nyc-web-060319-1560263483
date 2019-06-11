class Restaurant
  attr_reader :name
  attr_accessor :reviews
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
    # @customers_list = []
  end
  
  def self.all
    @@all
  end

  def customers
    customers_list = reviews.map do |review|
      review.customer
    end
    customers_list.uniq!
    customers_list
  end

  def average_star_rating
    review_stars = reviews.map do |review|
      review.rating
    end
    total = review_stars.inject{ |sum, this_review_stars| sum + this_review_stars }
    total_f = total.to_f
    count_f = reviews.length.to_f
    average = total_f / count_f
    average
  end

  def longest_review
    longest = nil
    reviews.each do |review|
      if longest == nil
        longest = review
      end
      if review.content.length > longest.content.length
        longest = review
      end
    end
    longest.content
  end

end
