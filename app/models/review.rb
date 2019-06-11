class Review
    attr_accessor :customer, :content, :rating
    attr_reader :author, :restaurant
  
    @@all = []

    def initialize(restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@all << self
    end

    def self.all 
        @@all 
    end

    def rating=(num)
        if num < 1
            @rating = 1
        elsif num > 5
            @rating = 5
        else 
            @rating = num
        end
    end

end

