# frozen_string_literal: true

# In the constructor assign a nameable object from params to an instance variable.
# Implement the correct_name method that returns the result of the correct_name method of the @nameable.

require_relative 'nameable'

# create a class Nameable
class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

# TrimmerDecorator class
class TrimmerDecorator < Decorator
  def correct_name
    name = nameable.correct_name
    name.length > 10 ? name[0, 10] : name
  end
end

# Capitalize Decorator Class
class CapitalizeDecorator < Decorator
  def correct_name
    nameable.correct_name.capitalize
  end
end
