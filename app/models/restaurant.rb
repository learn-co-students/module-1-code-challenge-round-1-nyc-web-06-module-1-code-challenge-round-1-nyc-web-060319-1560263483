require_relative 'customer.rb'
require_relative 'review.rb'

class Restaurant
  attr_reader :name
  attr_accessor :customer, :review

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all 
  end

  def customers
    customer_all = Customer.all.restaurant.each do {|customer| customer.restaurant} 
    customer_all.uniq
  end

  def reviews
    Review.all

  end

  def average_star_rating



  end

  def longest_review
    Review.all.sort_by {|review| review.restaurant}
      review.restaurant.last

  end

end
