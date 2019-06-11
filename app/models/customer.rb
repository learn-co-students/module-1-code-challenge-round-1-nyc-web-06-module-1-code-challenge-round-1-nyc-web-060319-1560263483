# Y `Customer.all`
#   - should return **all** of the customer instances
# #### Customer

# Y `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), 
#    creates a new review and associates it with that customer and restaurant.

# Y `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored

# Y `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed

# #### Build the following methods on the `Customer` class

# Y `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# Y `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# Y `Customer.all_names`
#   - should return an **array** of all of the customer full names


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

  def self.find_by_name(full_name) #- given a string of a **full name**, returns the **first customer** whose full name matches
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, rating, content) #content = string, rating = string
    new_review = Review.new(self, restaurant, rating, content)
    new_review
  end

  def reviews
    Review.all.select {|review| review.author == self} 
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  #   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), 

end
