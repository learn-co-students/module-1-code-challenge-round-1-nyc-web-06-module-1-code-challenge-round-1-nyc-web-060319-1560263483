
class Review
   attr_reader :customer, :restaurant
   attr_accessor :content, :rating
   
    @@all = []

    def initialize (customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating

        @@all << self

    end

    def self.all
        @@all 
    end

    def customer
        self.customer.restaurant

    end

    def restaurant
        self.restaurant.customer 
    end

    def rating

        
    end

    def content
        self.content.restaurant

    end
  
end

