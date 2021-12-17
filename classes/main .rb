require './rental'
require './person'
require './teacher'
require './student'
require './book'

def list_books(books)
  puts 'List of books:'
  books.each_with_index do |book, index|
    puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
  end
end

def list_people(people)
  puts 'List of people:'
  people.each_with_index do |person, index|
    puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
end

def create_book(books)
  puts 'Please enter the title of the book:'
  title = gets.chomp
  puts 'Please enter the author of the book:'
  author = gets.chomp
  book = Book.new(title, author)
  books.push(book)
  puts 'Book created!'
end

def create_person(people)
  puts 'Do you want to create a student(1) or a teacher(2)[Input the number]?'
  type = gets.chomp
  puts 'Please enter the name of the person:'
  name = gets.chomp
  puts 'Please enter the age of the person:'
  age = gets.chomp
  case type
  when '1'
    puts 'Please enter the classroom of the student:'
    classroom = gets.chomp
    person = Student.new(name, age, classroom)
    people.push(person)
    puts 'Student created!'
  when '2'
    puts 'Please enter the specializaation of the teacher:'
    specializaation = gets.chomp
    person = Teacher.new(name, age, specializaation)
    people.push(person)
    puts 'Teacher created!'
  end
end

def create_rental(books, people)
  puts 'Select a book from the following list by number(not Id):'
  list_books(books)
  book_index = gets.chomp.to_i
  puts ''
  puts 'Select a person from the following list by number(not Id):'
  list_people(people)
  person_index = gets.chomp.to_i
  puts ''
  puts 'Please enter the date of the rental:'
  date = gets.chomp
  puts ''
  Rental.new(date, books[book_index], people[person_index])
  puts 'Rental created!'
end

def list_rentals(people)
  puts 'ID of the person:'
  id = gets.chomp.to_i
  person = people.find | person | person.id == id
  if person
    puts 'List of rentals:'
    person.rentals.each_with_index do |rental, index|
      puts "#{index}) Book: \"#{rental.book.title}\", Date: #{rental.date}"
    end
  else
    puts 'Invalid input!'
  end
end

def display(entry, books, people)
  case entry
  when 1
    list_books(books)
  when 2
    list_people(people)
  when 3
    create_person(people)
  when 4
    create_book(books)
  when 5
    create_rental(books, people)
  when 6
    list_rentals(people)
  end
end

def main
  books = []
  people = []
  loop do
    puts 'Welcome to School Library!'
    puts 'Please choose from the following options:'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rentals for a given person id'
    puts '7. Exit'
    entry = gets.chomp.to_i
    break if entry == 7

    display(entry, books, people)
    puts ''
  end
end

main
