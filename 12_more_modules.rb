module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

# We call classes in a module by appending the class name to the module name with two colons(::)

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"

# We can call methods directly from the module
value = Mammal.some_out_of_place_method(4)
puts value

value = Mammal::some_out_of_place_method(4)   #Another way of calling
puts value