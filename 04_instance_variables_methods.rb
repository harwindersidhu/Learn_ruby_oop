class GoodDog

  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w 
  end

=begin
These two getter and setter mthods commented below 
can be replaced by one liner attr_accessor :name (Line 3)
  def name
    @name
  end

  def name=(n)
    @name = n
  end
=end
  def speak
    "#{name} says arf!" #Here name is getter method
  end

  def change_info(n, h, w)
    self.name = n 
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  #Below is a class method
  def self.what_am_i
    "I'm a GoodDog class!"
  end 
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# puts sparky.speak
# puts sparky.name
# sparky.name = "Spartacus"
# puts sparky.name

puts sparky.info

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info

# fido = GoodDog.new("Fido")
# puts fido.speak

puts GoodDog.what_am_i
