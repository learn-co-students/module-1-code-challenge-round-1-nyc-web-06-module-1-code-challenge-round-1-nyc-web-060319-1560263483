require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#require all doesn't work on my computer for some reason so I had to put these in -Tomas
require_relative '../customer.rb'
require_relative '../restaurant.rb'
require_relative '../review.rb'


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#binding.pry
#0 #leave this here to ensure binding.pry isn't the last line


pizza = Restaurant.new("pizza")
pasta = Restaurant.new("pasta")
taco = Restaurant.new("taco")
joe = Customer.new("joe jonas")
joe2 = Customer.new("joey jonas")
rev1 = Review.new(pizza, "too much cheese", 2, joe)
mike = Customer.new("mike jones")
mike2 = Customer.new("mike jackson")
mike3 = Customer.new("mike charles")
joe.add_review(pizza, "wow very tasty", 5)
joe.add_review(pasta, "yummy", 3)
mike.add_review(pizza, "sweet", 5)
mike.add_review(pasta, "cool", 4)
joe2.add_review(taco, "too spicy", 3)
mike2.add_review(taco, "nice", 5)
# puts Review.all.inspect
# puts Customer.all.inspect
# puts Restaurant.all.inspect
#puts joe.num_reviews
#puts joe.restaurants.inspect
# puts pizza.customers.inspect
# puts taco.customers.inspect
#puts pizza.reviews.inspect
# puts pizza.average_star_rating
# puts taco.average_star_rating
#puts pizza.longest_review.inspect
#puts taco.longest_review.inspect
#puts Customer.find_by_name("mike jones").inspect
#puts Customer.find_all_by_first_name("mike").inspect
#puts Customer.all_names.inspect
#puts Restaurant.find_by_name("pasta").inspect
#puts rev1.customer.inspect
#puts rev1.restaurant.inspect
# puts rev1.content
# puts rev1.rating
