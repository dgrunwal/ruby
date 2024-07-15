class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

# Define a custom iterator for the PersonCollection class
class PersonCollection
  include Enumerable

  def initialize
    @people = []
  end

  def add_person(person)
    @people << person
  end

  # Implement the each method required by the Enumerable module
  def each
    @people.each { |person| yield person }
  end
end

# Create instances of the Person class
person1 = Person.new("Alice", 30)
person2 = Person.new("Bob", 35)
person3 = Person.new("Charlie", 28)

# Create a PersonCollection and add Person objects to it
people_collection = PersonCollection.new
people_collection.add_person(person1)
people_collection.add_person(person2)
people_collection.add_person(person3)

# Iterate through the PersonCollection using each iterator
puts "People in the collection:"
people_collection.each do |person|
  puts "Name: #{person.name}, Age: #{person.age}"
end