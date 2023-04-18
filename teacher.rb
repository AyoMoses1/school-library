require_relative 'person'

class Teacher < Person
  
  def initialize(specialization, parent_permission: true, name: "Unknown")
    super(age, parent_permission: true, name: "Unknown")
    @specialization = specialization
  end

  def can_use_services? 
    p true
  end
end