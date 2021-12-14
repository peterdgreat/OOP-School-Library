class Corrector
    attr_accessor :name
    def initialize(name)
        @name = name
    end
  def correct_name
  @name.length > 10 ?  @name[0..9].capitalize : @name.capitalize
  end
end
# correct_1 = Corrector.new("joseph")
# puts correct_1.correct_name