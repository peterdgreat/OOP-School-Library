require './Classes/person'

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, classroom)
    @classroom = classroom
       super(age,name)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
