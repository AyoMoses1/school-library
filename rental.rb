# frozen_string_literal: true

#  create class Rental
class Rental
  attr_accessor :date, :book, :person

  def initialize(book, date, person)
    @book = book
    @date = date
    @person = person
    book.rentals << self
    person.rentals << self
  end
  
end
