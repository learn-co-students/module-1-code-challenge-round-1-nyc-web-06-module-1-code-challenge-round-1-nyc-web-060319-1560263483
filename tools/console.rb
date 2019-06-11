require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


customer1 = Customer.new("Miss","Waffleson" )
customer2 = Customer.new("Sharon", "Syrupo")
customer3 = Customer.new("Dolores", "Jammi")

restaurant1 = Restaurant.new("Outfront", "Austrian", 4)
restaurant2 = Restaurant.new("Waffle garden", "Breakfast", 5)
restaurant3 = Restaurant.new("Burger queen", "Nuggets", 3)

review1 = Review.new(restaurant1, customer1, "Ehhhh")
review2 = Review.new(restaurant2, customer2, "Terrible")
review3 = Review.new(restaurant3, customer3, "Good")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
