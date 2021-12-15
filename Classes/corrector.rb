class Corrector
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def correct_name
    @name.capitalize[0, 5]
  end
end
