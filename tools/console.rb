require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Harpreet", "Ghotra")
c2 = Customer.new("Chett", "has_last_name")
c3 = Customer.new("Harpreet", "Singh")

r1 = Restaurant.new("Plaza Deli")
r2 = Restaurant.new("Burger King")

c1.add_review(r1, "Great Place to eat", 5)
c1.add_review(r1, "Great Place to eat and making it longer", 4)

c2.add_review(r2, "Good Place to eat", 3)

found_existing_review = Review.all.find{|review| review.restaurant == r1}


binding.pry
0 #leave this here to ensure binding.pry isn't the last line