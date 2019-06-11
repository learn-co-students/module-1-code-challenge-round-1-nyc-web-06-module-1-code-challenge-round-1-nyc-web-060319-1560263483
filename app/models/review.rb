class Review
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content

        if rating.to_f < 1 #setting limits 1-5 for rating
            @rating = 1
        elsif rating.to_f > 5
            @rating = 5
        else
            @rating = rating.to_f
        end
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end

end

