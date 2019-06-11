require_relative 'review'
require 'pry'

class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
    # found_existing_review = Review.all.find{|review| review.restaurant == restaurant}
    # if find_existing_review == nil
    #   Review.new(restaurant, content, rating, self)
    # else
    #   found_existing_review.content = content
    #   found_existing_review.rating = rating
    # end
  end

  def num_reviews
    Review.all.map { |review| review.customer == self}.length
  end

  def restaurants
    rest = Review.all.select{|review| review.customer == self}
    rest.uniq
  end

  def self.find_by_name(name)
    all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    all.map {|customer| customer.full_name}
  end

end
