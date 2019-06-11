require_relative '../config/environment.rb'
require 'colorize'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

failure = false

customer1 = Customer.new("Alex", "Virga")

if Customer.all.class == Array
  puts "Customer.all is an Array.".green
else
  puts "Customer.all is NOT an Array.".red
  failure = true
end

if Customer.all.find { |cust| cust.first_name == "Alex"} != nil
  puts 'Customer.all is good.'.green
else
  puts 'Customer.all is bad.'.red
  failure = true
end

if customer1.num_reviews == 0
  puts 'Customer#num_reviews is set correctly.'.green
else
  puts 'Customer#num_reviews is set INcorrectly.'.red
  failure = true
end

restaurant1 = Restaurant.new("La Parm")

if Restaurant.all.find { |rest| rest.name == "La Parm"} != nil
  puts 'Restaurant.all is good.'.green
else
  puts 'Restaurant.all is bad.'.red
  failure = true
end

customer1.add_review(restaurant1, "Good pasta & sauce", 5)

if customer1.num_reviews == 1
  puts 'Customer#num_reviews is set correctly.'.green
else
  puts 'Customer#num_reviews is set INcorrectly.'.red
  failure = true
end

customer1.add_review(restaurant1, "Meh parmisan", 3)
customer1.add_review(restaurant1, "Meh chicken", 2)

if customer1.num_reviews == 3
  puts 'Customer#num_reviews is set correctly.'.green
else
  puts 'Customer#num_reviews is set INcorrectly.'.red
  failure = true
end

if restaurant1.customers.length == 1
  puts 'Customer#customers returns a uniq list correctly!'.green
else
  puts 'Customer#customers returns a uniq list INcorrectly!'.red
  failure = true
end

customer2 = Customer.new("Annie", "Mester")


if Customer.all.length == 2
  puts 'Customer.all is still good.'.green
else
  puts 'Customer.all is now bad.'.red
  failure = true
end

customer2.add_review(restaurant1, "Amazing!", 5)

if restaurant1.customers.length == 2
  puts 'Customer#customers returns a uniq list (of two) correctly!'.green
else
  puts 'Customer#customers returns a uniq list (of two) INcorrectly!'.red
  failure = true
end

restaurant2 = Restaurant.new("Pizza Park")

customer1.add_review(restaurant2, "best pizza!", 5)

if customer1.restaurants.length == 2
  puts 'Customer#restaurants is good!'.green
else
  puts 'Customer#restaurants is bad!'.red
  failure = true
end

if restaurant1.reviews.length == 4
  puts 'Restaurant#reviews is good.'.green
else
  puts 'Restaurant#reviews is bad.'.red
  failure = true
end

customer2.add_review(restaurant2, "meh", 1)

if restaurant2.average_star_rating == 3
  puts "Restaurant#average_star_rating is good.".green
else
  puts "Restaurant#average_star_rating is bad.".red
  failure = true
end

if restaurant1.average_star_rating == 3.75
  puts "Restaurant#average_star_rating is still good.".green
else
  puts "Restaurant#average_star_rating is now bad.".red
  failure = true
end

LONG = "longestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongestlongest"

customer2.add_review(restaurant2, LONG, 1)

if restaurant2.longest_review == LONG
  puts "Restaurant#longest_review is good.".green
else
  puts "Restaurant#longest_review is bad.".red
  failure = true
end

if Customer.find_by_name("Annie Mester") == customer2
  puts "Customer.find_by_name is good.".green
else
  puts "Customer.find_by_name is bad.".red
  failure = true
end

customer3 = Customer.new("Alex", "Riccio")

if Customer.find_all_by_first_name("Alex") == [customer1, customer3]
  puts "Customer.find_all_by_first_name is good.".green
else
  puts "Customer.find_all_by_first_name is bad.".red
  failure = true
end

if Customer.all_names == ["Alex Virga", "Annie Mester", "Alex Riccio"]
  puts "Customer.all_names is good.".green
else
  puts "Customer.all_names is bad.".red
  failure = true
end

if Restaurant.find_by_name("Pizza Park") == restaurant2
  puts "Restaurant.find_by_name is good.".green
else
  puts "Restaurant.find_by_name is bad.".red
  failure = true
end

if Review.all[0].customer == customer1
  puts "Review#customer is good.".green
else
  puts "Review#customer is bad.".red
  failure = true
end

if Review.all[0].restaurant == restaurant1
  puts "Review#restaurant is good.".green
else
  puts "Review#restaurant is bad.".red
end

if Review.all[0].rating == 5
  puts "Review#rating is good.".green
else
  puts "Review#rating is bad.".red
  failure = true
end

if Review.all[0].content == "Good pasta & sauce"
  puts "Review#content is good.".green
else
  puts "Review#content is bad.".red
  failure = true
end

if (failure)
  binding.pry
  0 #leave this here to ensure binding.pry isn't the last line
end
