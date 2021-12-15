require './corrector'
class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = rand(1..100)
    @corrector = Corrector.new(name)
    @rentals = []
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    if of_age? and @parent_permission
      true
    else
      false
    end
  end

  def validate_name
    @corrector.correct_name
  end

  def add_rental(rental)
    @rentals.push(rental)
  end
end
