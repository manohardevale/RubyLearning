#Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.
class MyCar
  attr_accessor :name, :distance, :fuel
  
  # def initialize(name, total_distance,total_fuel)
  #   self.name = name
  #   self.distance = distance
  #   self.fuel = fuel
  # end
  # above 5 lines not required as we are creating a class method
  
  def self.milage(name,distance,fuel)
    # 1 gallon = 3.78 litres
    # 1 mile = 1.5 km
    # milage = miles/gallon
    # 1 gallon-> 15miles
    # 10 gallon->? miles
    milage = distance/fuel
    puts "#{self.name} car milage is #{milage} miles/gallon"
  end
end

MyCar.milage("Maruti",10,10)
#below 2 commands not required as we are accessing class method
# maruti = MyCar.new("Maruti")
# MyCar.milage(150,10)

# Here even when I am using the name to print the name of car we are seeing the MyCar as car name as self is pointing to the MyCar class and is a class method and hence taking MyCar as car name. 
#======================================================
# Override the to_s method to create a user friendly print out of your object.
class Something
  attr_accessor :name, :age
  
  def initialize(name, age)
    self.name = name
    self.age = age
  end
  
  def to_s
    "My name is #{name}, I am #{age} years old"
  end
end
  
a = Something.new("Hans", 10)
# puts a # note that the puts calls to_s method automatically
#======================================================

#When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# We are getting this value because we have defined :name only to be read but in bob.name="Bob" we are trying to modify the name value which is a getter method and we can fix this error by defining the attr_accessor :name


class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
#======================================================