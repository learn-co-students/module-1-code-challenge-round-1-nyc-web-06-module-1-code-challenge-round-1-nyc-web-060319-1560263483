require_relative 'restaurant.rb'
require_relative 'review.rb'


class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.all.customer.map {|restaurant| restaurant.review == self }
    review << restaurant.customer
  end

  #review defined in the other class
  def num_reviews
    Review.all.customer.sum
  end

  def restaurants
    self.num_reviews.restaurant.each do |restaurant|
      customer.restaurant.uniq
  end

  #classmethod
  def self.find_by_name(name)
    self.name.first

  end


end

