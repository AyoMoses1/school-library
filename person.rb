# frozen_string_literal: true

require_relative 'nameable'
# create a class Person
class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def correct_name
    name
  end

  def can_use_services?
    @age || @parent_permission
  end

  def add_rentals(book, date = Date.today)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
