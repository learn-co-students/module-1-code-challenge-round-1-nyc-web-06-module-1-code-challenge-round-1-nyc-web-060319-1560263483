require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Karen", "Kilgariff")
c2 = Customer.new("Georgia", "Hardstark")
c3 = Customer.new("Albert", "Fish")
c4 = Customer.new("Jeffrey", "Dahmer")

r1 = Restaurant.new("Dahmer Diner")
r2 = Restaurant.new("SSDGM")

rev1 = Review.new(r1, "Barf", 1, c1)
rev2 = Review.new(r2, "Truly", 10, c2)
rev3 = Review.new(r1, "Loved it", 4, c3)
rev4 = Review.new(r1, "My favorite", 5, c4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line