# frozen_string_literal: true

# create a class Nameable
class Nameable
  def correct_name
    raise NotImplementationError "#{self.class} has not implemented method '#{__method__}'"
  end
end
