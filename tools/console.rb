require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("Vinny")
r2 = Restaurant.new("Provence")

c1 = Customer.new("Evan", "Schech")
c2 = Customer.new("Julia", "Aileen")
c3 = Customer.new("Diane", "Winston")
c4 = Customer.new("Evan", "Winston")

c1.add_review(r1, "Place sucks", 2)
c1.add_review(r2, "place rocks", 4)

c3.add_review(r2, "Awful", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
