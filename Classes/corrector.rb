class Corrector
    attr_accessor :name
    def initialize(name)
        @name = name
    end
  def correct_name
  @name.length > 10 ?  @name[0..9].capitalize : @name.capitalize
  end
end
