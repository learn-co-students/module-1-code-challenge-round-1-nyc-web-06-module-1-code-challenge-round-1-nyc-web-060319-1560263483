
# Y `Review#customer`
# - returns the customer object for that given review
# - Once a review is created, I should not be able to change the author

# Y `Review#restaurant`
# - returns the restaurant object for that given review
# - Once a review is created, I should not be able to change the restaurant

# Y `Review#rating`
# - returns the star rating for a restaurant. This should be an integer from 1-5

# Y `Review#content`
# - returns the review content, as a string, for a particular review

class Review
  
    attr_reader :author, :restaurant  #author is same as customer leaving review

    attr_accessor :content, :rating

    @@all = []

    def initialize(author, restaurant, rating, content)
        @author = author
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        self.author
    end

    def restaurant_reviewed
        self.restaurant 
    end

end

