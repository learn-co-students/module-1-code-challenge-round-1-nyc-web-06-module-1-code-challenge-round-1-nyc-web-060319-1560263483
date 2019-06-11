

require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'
require 'pry'

#require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



c1 = Customer.new("first", "lastnombre")
c2 = Customer.new("frank", "lname")
c3 = Customer.new("franny", "lastlast")

r1 = Restaurant.new("Restaurant No 1")
r2 = Restaurant.new("Restaurant No 2")
r3 = Restaurant.new("Restaurant No 3")


v1 = Review.new(r1, c1, "bad", 6)	# Rating check
v2 = Review.new(r1, c1, "bad2", 0)	# Rating check,   dupl cust check
v3 = Review.new(r1, c2, ".....yes", 4)
v4 = Review.new(r2, c1, "has postcards", 4)
v5 = Review.new(r2, c3, "okay", 3)
v6 = Review.new(r2, c2, "cold", 3)
v7 = Review.new(r3, c3, "tourists", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line