class Customer
  attr_reader :first_name, :last_name
  attr_accessor :reviews
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, rating, content)
    restaurant.reviews << new_review
    @reviews << new_review
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    restaurants = reviews.map do |rest|
      rest.restaurant
    end
    restaurants.uniq!
    restaurants
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    found = @@all.find{ |customer| customer.full_name == name}
    found
  end

  def self.find_all_by_first_name(first_name)
    all_found = @@all.find_all{ |customer| customer.first_name == first_name }
    all_found
  end

  def self.all_names
    @@all.map do |cust|
      cust.full_name
    end
  end
end
