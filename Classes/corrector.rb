class Corrector
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def correct_name
    @name.Capitalize[0, 5]
  end
end
