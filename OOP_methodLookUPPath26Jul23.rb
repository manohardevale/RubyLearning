#method look path is order in which classes are checked for a definition of method when a method is called

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

# The method lookup path is the path Ruby takes to look for a method. We can see this path with the ancestors class method.

# puts "---Animal method lookup---"
# puts Animal.ancestors
#==> Output is ---Animal method lookup---
# Animal
# Walkable
# Object
# Kernel
# BasicObject
# When we called any method of Animal object i.e.,when object of animal calss is created and a method is called say for eg:Animal.height, ruby will check for that method first in Animal class, then Walkable module, then Object class, then Kernal and lastly BasicObject class.   
# Here in above example Animal object looks for speak method which it found in Animal class and executes it and will not further continue searching in the order.  

# 2 more uses of modules other than in mixin with classes
#1. Modules for namespacing i.e., all similar classes clubbed/grouped under a same module
# Eg:
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
end

# calling classes in modules 
buddy = Mammal::Dog.new
buddy.speak("BowBow")
kitty = Mammal::Cat.new
kitty.say_name("Meow")
#2. Modules can be used as container of methods called module methods to house other methods. Useful when methods that are needed for the current use is in another class/module on putting into this container can used with this execution. 
#Eg: 
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
  def self.some_not_in_this_container_method(givebirth)
    p "Mammals can give bith to young ones"
  end
end

#Now the last method was brought into mammal module from other place for grouping it here for our use.

