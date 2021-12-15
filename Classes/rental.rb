class Rental
  attr_accesor :date, :book, :person
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
end
