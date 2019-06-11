require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jill_valentine = Customer.new("Jill", "Valentine")
alma_armads = Customer.new("Alma", "Armads")
kim_la_valette = Customer.new("Kim", "La Valette")

vallhalla = Restaurant.new("Valhalla")
nirvana = Restaurant.new("Nirvana")

jill_valentine.add_review(vallhalla, 5, "This place rules!")


jill_valentine.add_review(nirvana, 4, "Pretty Good!")



alma_rev_nirv = Review.new(alma_armads, nirvana, 3, "Needs more Brandtinis! Seriously.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
