# create class Book

class Book
  attr_accessor :name, :author
  def initialize(name, author)
    @name = name
    @author = author
    @rentals = []
  end

  def add_rentals(rental)
    @rentals.push(rental)
    rental.book = self
  end
end
