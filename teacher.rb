# frozen_string_literal: true

# create a class Teacher

require_relative 'person'

# create a class Teacher
class Teacher < Person
  def initialize(specialization, age, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    p true
  end
end
