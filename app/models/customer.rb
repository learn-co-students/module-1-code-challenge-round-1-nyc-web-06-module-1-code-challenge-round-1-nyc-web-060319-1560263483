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


  def my_reviews
  	Review.all.select do |rev|
  		#binding.pry
  		(rev.customer == self)
  	end
  end


  def self.find_by_name(name) # **first customer** whose full name matches
  	self.all.find do |c|
  		c.first_name == self.first_name
  	end
  end

  #given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(name)
  	self.all.select do |cust|
  		cust.first_name == name
	end
  end


  def self.all_names	# Full names
  	self.all.map do |c|
  		c.full_name
  	end
  end




  			#  (rr_obj, customer, content, rating)
  def add_review(restaurant, content, rating)
  	Review.new(restaurant, self, content, rating)
  end


  def num_reviews 	# total number of reviews that a customer has authored
  	my_reviews.count 
  end


  def restaurants 	# **unique** array of all restaurants a customer has reviewed
  	t = my_reviews.select do |rev| 		
  		rev.restaurant
  	end
  	return t.unique
  end	


# [3] pry(main)> c1.my_reviews
# => [#<Review:0x00007ffe3a0a6d98
#   @content="bad",
#   @customer=
#    #<Customer:0x00007ffe3a0a7130 @first_name="first", @last_name="lastnombre">,
#   @rating=5,
#   @restaurant=#<Restaurant:0x00007ffe3a0a6ed8 @name="Restaurant No 1">>,





end
