require './person'
class Teacher < Person
  attr_accessor :specializaation

  def initialize(name, age, specializaation)
    super(name, age)
    @specializaation = specializaation
  end

  def can_use_services?
    true
  end
end
