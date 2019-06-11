class Restaurant
  attr_accessor :name


  	@@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

	def self.all
		@@all
	end


	def my_reviews
  		Review.all.select do |rev|
  			rev.restaurant == self
  		end
  	end


	# given a string of restaurant name, returns the first restaurant that matches
	def self.find_by_name(name)		#OK
		self.all.find do |r|
			r.name == name
		end
	end

	def customers # **unique** list of all customers who have reviewed a particular restaurant.
		self.my_reviews.select do |rev| 	
			rev.customer
		end.unique
	end

	# IT doesnt say content, assume want whole obj
	def reviews # returns an array of all reviews for that restaurant
		self.my_reviews
	end

	def average_star_rating
		my_stars_total = self.my_reviews.rating.reduce(0) {|total, n| total + n } 
		my_review_count = self.my_reviews.count
		my_stars_total / my_review_count
	end


	def longest_review # longest review content for a given restaurant
		self.my_reviews.content.max_by{ |content_str| content_str.length }
	end





end
