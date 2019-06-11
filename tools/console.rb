require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Cindy", "Chen")
customer2 = Customer.new("Cindy", "Lee")
customer3 = Customer.new("Nick", "Kelman")
customer3 = Customer.new("Ben", "Cheney")


restaurant1 = Restaurant.new("Restaurant 1")
restaurant2 = Restaurant.new("Restaurant 2")
restaurant3 = Restaurant.new("Restaurant 3")
restaurant4 = Restaurant.new("Restaurant 4")

review1 = Review.new(restaurant1, "Great", 4, customer1)
review2 = Review.new(restaurant2, "Aweful", 1, customer1)
review3 = Review.new(restaurant3, "Usual", 3, customer1)
review4 = Review.new(restaurant1, "Usual", 3, customer2)
review5 = Review.new(restaurant2, "Great", 4, customer2)
review6 = Review.new(restaurant4, "Great", 4, customer3)
review7 = Review.new(restaurant3, "Amazing", 5, customer3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line