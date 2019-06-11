class Customer
  attr_reader :first_name, :last_name

  @@all=[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@all
  end

  def add_review(customer, restaurant,content, rating)
  	Review.new(customer,restaurant,content,rating)
  end

  def num_reviews
  	self.Reviews.all.map do |customer|
  		customer == self
  end.size

  def restuarants_visted
  	self.Restaurants.all.select do |customer|
  		customer == self
  end.uniq

  def find_by_name(full_name)
  	Customer.all.find do |first_name, last_name|
  		current_full = "#{first_name} #{last_name}"
  		full_name = current_full
  end

  def find_all_by_first_name(first_name)
  	Customer.all.select do |firstname|
  		firstname = first_name
  end

  def self.all_names
  	  Customer.all.map do |first_name, last_name|
  		"#{first_name} #{last_name}"
  end

end
