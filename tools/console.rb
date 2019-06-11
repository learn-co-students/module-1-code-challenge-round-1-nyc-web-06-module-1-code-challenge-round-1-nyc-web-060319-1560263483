require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Lauren", "Milvaney")
cust2 = Customer.new("Katy", "Cornell")
cust3 = Customer.new("Katie", "Owens")
cust4 = Customer.new("Mike", "Cokingtin")
cust5 = Customer.new("Lauren", "Jackson")
cust6 = Customer.new("Lauren", "Milvaney")

rest1 = Restaurant.new("Ted's")
rest2 = Restaurant.new("Empellon")
rest3 = Restaurant.new("Crown Shy")
rest4 = Restaurant.new("Sarge's")
rest5 = Restaurant.new("Crown Shy")

review1 = Review.new(cust1, rest1, 4, "love this place")
review2 = Review.new(cust1, rest2, 3, "so fun")
review3 = Review.new(cust2, rest2, 5, "omg")
review4 = Review.new(cust3, rest3, 1, "wow food is so so so good")
review5 = Review.new(cust4, rest4, 2, "yay sandwich")
review6 = Review.new(cust1, rest3, 4, "oh wow")
review7 = Review.new(cust1, rest3, 5, "better the second time")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line