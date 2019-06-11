require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'

  william = Customer.new("William", "Pescherine")
  fred = Customer.new("Fred", "Flintstone")
  homer = Customer.new("Homer", "Simpson")
  fiveguys = Restaurant.new("Five Guys")
  bking = Restaurant.new("Burger King")
  chipolte = Restaurant.new("chipolte")
  r1 = Review.new(william, fiveguys, 4)
  r2 = Review.new(fred, chipolte, 2)
  r3 = Review.new(homer, bking, 1)
  r4 = Review.new(homer, chipolte, 5)
  r5 = Review.new(fred, fiveguys, 2)  


end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line