class Review

	attr_accessor :rating
	attr_reader :customer, :restaurant

	@@all = []

	def Initialize(customer, restaurant, rating)
		@customer = customer
		@restaurant = restaurant

		if ratings > 5
			@ratings = 5
		elsif ratings <1
			@ratings = 1
		else
			@ratings = rating

		@@all << self
	end

	def self.all
		@@all
	end	

	def customer(customer)
		self.customer
	end

	def content(customer)
		puts self.content
	end
  

end

