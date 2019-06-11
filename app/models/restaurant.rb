class Restaurant
  attr_reader :name, :content, :rating

@@all = []

  def initialize(name, content, rating)
    @name = name
    @content = content
    @rating = rating
    @@all << self
  end


def customer_sort
  Review.all.select do |reviews|
    reviews.restaurant == self
  end
end

def customer
  customer_sort.map do |y|
    y.customers
  end
end

def reviews
  customer_sort.map do |x|
    x.review
  end
end


# def reviews



def self.all
  @@all
end


end
