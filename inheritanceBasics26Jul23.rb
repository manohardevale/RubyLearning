# One class(child class) inherits behavior from other class(parent class)
# Inheritance example 'child < parent' indicate inheriting from
class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal
end

class Cat < Animal
end

tommy = Dog.new
puts tommy.speak #Hello! will be printed from Dog
catty = Cat.new
puts catty.speak#Hello! will be printed from Cat

#===================================================
# If we want the original speak method from Dog class
class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal
  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end
  
  def speak
    p "#{name} says Bow Bow"
  end
end

class Cat < Animal
end

sparky = Dog.new("Sparky")
sparky.speak
paws = Cat.new
puts paws.speak

# Observe the speak returned for Dog is from Dog class because Dogs speak method overrides the Animal class speak. When program runs, ruby checks the speak method first in objects class and runs, if that method is not found it will check the superclass for that method. 
# As cat method does not define any speak method it moves to superclass/parent class Animal and runs the Animals speak method

#=====================================================

#super keyword and inheritance
class Animal
  def speak
    "Hello from Parent "
  end
end

class Dog < Animal
  def speak
    super + "from Dog child class"
  end
end

sparky = Dog.new
puts sparky.speak
# Inherited 'Hello from parent' and extended 'from Dog child class' from the child class method in Dog class.
#======================================================

# More common way of using the super keyword 
#type 1 with super and no ()
class Animal 
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(age)
    super
    @age = age
  end
end

bruno = Dog.new("Bruno")
#returns <Dog:0x00007ff484c7bf70>

#Type 2 with super () with ()
class Animal 
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

bruno = Dog.new(12, "Bruno")
puts bruno
# returns  #<Dog:0x00007ff9c614a2b8>
# always make sure the of the arguments to be passed to the super keyword matching that of the super class else argument error will be thrown

# 2 types of inheritance 
#1. Class inheritance i.e., parent and child class where child class inherits from parent class and is applicable only when there is a is-a relation ship.Eg Dog is-a Animal
#2. Interface inheritance i.e., inheriting the behaviors of a module using <include> keyword where we cannot create an object of a module. Eg: Dog has-a ability to swim

