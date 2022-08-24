class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

malory = Person.new(64)
sterling = Person.new(42)

malory.older?(sterling)  # => true
sterling.older?(malory)  # => false

malory.age
  # => NoMethodError: protected method `age' called for #<Person: @age=64>

=begin
  The above code shows us that like private methods, protected methods cannot 
  be invoked from outside of the class. However, unlike private methods, 
  other instances of the class (or subclass) can also invoke the method. 
  This allows for controlled access, but wider access between objects of the 
  same class type.     
=end