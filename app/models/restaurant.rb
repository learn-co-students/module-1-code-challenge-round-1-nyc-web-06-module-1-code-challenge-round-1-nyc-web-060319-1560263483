# #### Restaurant

# Y `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# Y `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# Y `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# Y `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant


# Y `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name) #Look thru all, return first match where @name == name rg
    self.all.find{|restaurant| restaurant.name == name}
  end

  def customers #go through reviews, return just authors (customers)
    reviews.map {|review| review.author}.uniq
  end

  def reviews #Look thru al reviews, filter ones where @restaurant == self
    Review.all.select do |review| 
      review.restaurant == self 
    end
  end

  def average_star_rating #From reviews, map out ratings. Sum ratings, divide by rtings.length
    ratings = reviews.map {|review| review.rating} #[5, 4, 5, 3]
     (ratings.reduce(:+).to_f / ratings.length.to_f).round(2)
  end

  def review_content #From reivews, return just content strings
    reviews.map {|review| review.content} # ["This place rules", "Amazing."] 
  end

  def longest_review #From review_content, sort by length, then return longest one (ast element of sroted)
    sorted_lengths = review_content.sort_by {|content| content.length}
    sorted_lengths[-1]
  end

end
