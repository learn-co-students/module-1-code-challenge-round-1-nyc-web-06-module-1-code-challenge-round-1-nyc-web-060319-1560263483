class Customer
  attr_reader :first_name, :last_name

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, review)
   Review.new(restaurant, self, review)
 end

   def num_reviews
     Review.all.select do |reviews|
      reviews.customers == self
    end.count
  end


def my_reviews
  Review.all.select do |reviews|
    reviews.customers == self
  end
end






  def self.all
    @@all
  end


end
