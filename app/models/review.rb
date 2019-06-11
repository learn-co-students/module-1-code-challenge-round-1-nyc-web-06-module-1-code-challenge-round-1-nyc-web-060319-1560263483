class Review
  	attr_accessor  :content
  	attr_reader :customer, :restaurant, :rating

  	@@all = []

	def initialize (restaurant, customer, content, rating)
		@restaurant = restaurant
		@customer = customer
		@content = content
		@rating = ( if (rating < 1)		#Works
						@rating = 1
					elsif (rating > 5)
						@rating = 5
					else
						@rating= rating
					end )				
		 # Validate 1-5
		 @@all << self
	end





	def self.all
		@@all
	end








end

