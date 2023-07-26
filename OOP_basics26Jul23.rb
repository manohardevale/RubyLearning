#How do we create an object in Ruby? Give an example of the creation of an object
# class creation similar to method creation 
# class GoodDog
# end

# Object of the class GoodDog created and assigned to sparky
# sparky = GoodDog.new
#=====================================================


#What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.--------------------------------------------------------
# Amodule is a generic method which is outside of a class and accessible by any class or method.
# we can use module's in classes by calling 'include <module name>' within the class.
# Eg: 
module Walk
  def walk(walking_style)
  p walking_style
end
end

class Animal
  def speak
  include Walk
end
end

class Human
  include Walk
end

  
animal_obj = Animal.new
animal_obj.walk("4 leg walk")
human_obj = Human.new
human_obj.walk("2 leg walk")
#===================================================
#initialize method = constructor method
class Dog
  def initialize
    puts "This object initialized"
  end
end

sparky = Dog.new
#============================================
# Instance variables 
class Dog
  def initialize(name)
    @name = name # this is an instance variable 
  end
end
sparky = Dog.new("Sparky")
fido = Dog.new("Fido")
p fido # fido created on memory
p sparky # sparky created on memory

#==========================================
# Instance methods - give behavior to the objects using methods

class Dog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} Bow Bow"
  end
end

dog_obj = Dog.new("Tommy")
dog_obj.speak
dog_obj = Dog.new("Fido") # name is the state
dog_obj.speak # speak is the behavior bark
#=========================================

# Accessor methods
# puts sparky.name 
# will return NoMethodError as this method is not available for object or does not exist
# puts sparky.speak # returns Sparky Bow Bow
# To access name we will have to create the name method 
class Dog
  def initialize(name)
    @name = name
   end

  def speak
    "#{@name} Bow Bow"
  end

  def get_name # this is getter method
    @name
  end
end
# #now using the @name defined in classes constructor we access the name from method name. 
sparky = Dog.new("Sparky")
puts sparky.get_name
#==========================================
# Now if we wanted to change the name of sparky? we need to use a setter method

class Dog
  def initialize(name)
    @name = name
   end

  def speak
    "#{@name} Bow Bow"
  end

  def get_name # this is getter method
    @name
  end

  def set_name=(name)
    @name = name
  end
end
sparky = Dog.new("Sparky")
sparky.set_name = "Julee"
puts sparky.get_name
#===========================================

#----------------------------------------
# instead of creating setter and getter methods by us ruby gives us readymade setter and getter methods by using attr_accessor emthod

class Dog
  attr_accessor :name 

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} speaks"
  end 
end

sparky = Dog.new("Sparky")
puts sparky.speak
puts sparky.name
puts sparky.name = "Bill"
#=======================================
# attr_accessor method => for setter and getter together of instace variables
# attr_reader to only use getter method => to only read and retrieve
# attr_writer to only use setter method to modify the instance variables

# Example
class Dog
  attr_accessor :name 

  def initialize(name)
    @name = name
  end

 def speak
    "#{name} speaks"
  end 
end
# as we declared the name as a accessor we can directly use the name in speak method with @ symbol
# by removing @ symbol from name argument we are calling instance method instead of instance variable. 

# this is done to avoid give direct access to that variable if that was supposed to be kept hidden. Say in case that variable was a social security number ssn and was store as @ssn a instance variable. Using this @ssn will expose the complete ssn to everyone. instead of exposing only last 4 digits of ssn. 

# Also maintaining changes to this would be difficult if we need to make changes to this ssn format. With 

# using the attr_accessor to avoid @ in methods to access instacne variables
class Dog
  attr_accessor :name, :height, :weight 

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} speaks"
  end 
 
  def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end

  def info
  "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = Dog.new('sparky', '12inches', '10lbs')
puts sparky.info

sparky.change_info('Hog', '24inches', '45lbs')
puts sparky.info

# here in above program we removed @ symbol from before change_info variables and if we do that passing arguments for change_info does nothing and prints the info values for sparky. 
#since the change_info variables are considered local variables of that method we need to mention change_info variables as below
# def change_info(n, h, w)
#   self.name = n
#   self.height = h
#   self.weight = w
# end

# To be consistent with this style we mention the getter method also in the same way.
# def info
#   "#{self.name} weighs #{self.weight} and is #{self.height} tall."
# end

# when we mention self.<variable> it tells ruby we are calling a setter and getter method and calling local variable.
# Finally code looks like below:
class Dog
  attr_accessor :name, :height, :weight 

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} speaks"
  end 
 
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
  "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = Dog.new('sparky', '12inches', '10lbs')
puts sparky.info

sparky.change_info('Hog', '24inches', '45lbs')
puts sparky.info
