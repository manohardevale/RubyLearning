#Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

#Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.

class Vehicle
  def float
    p "Can travel on water or float"
  end

  def milage(gallons, miles)
    p "milage = #{miles/gallons} miles/gallon"
  end


  class MyCar < Vehicle
    CARWHEELS = 4
    DOORS = 4
    def fuel
      p "Consumes Petrol,Diesel,CNG"
    end 

    def capacity
      p "Max capacity 4*4"
    end

    class MyTruck < Vehicle
      TRUCKWHEELS = 6
      DOORS = 2
    end
    
  end
end
#=========================================================


# Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

# class Vehicle
#   @@number_of_objects = 0
  
#   def self.number_of_objects
#     puts "total objects created #{@@number_of_objects}"
#   end
  
#   def initialize
#     @@number_of_objects += 1
#   end
# end

# class MyCar < Vehicle
#   DOORS = 4
# end
 
# class MyTruck < Vehicle
#   DOORS = 2
# end



# puts Vehicle.number_of_objects
# car1 = MyCar.new
# truck1 = MyTruck.new
# puts Vehicle.number_of_objects
#=====================================================================


class Vehicle
  @@count_objects = 0
   
  def initialize()
    @@count_objects+=1
  end

  def self.obj_counter
    "Total#{self} objects created: #{@@count_objects}"
  end
end

class Car < Vehicle
end

class Truck < Vehicle
end

puts Vehicle.obj_counter
car1 = Car.new
truck = Truck.new
puts Vehicle.obj_counter
#=====================================================================

#Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

module Danceable
  def dance
    "I am dancing module"
  end
end

class Animal
  def initialize
  end
end
  class Mammal < Animal
  include Danceable

    def walk
      p "#{self} walking"
    end
  end
  
  class Dog < Mammal
    def bark
      p "#{self} barking"
    end
  end

  mammal = Mammal.new
  puts mammal.dance
#=================================================================

#Print to the screen your method lookup for the classes that you have created.
# incontinuation to the above Animal class and module
mammal1 = Mammal.new
puts Mammal.ancestors

#===================================================================

#Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.

class Vehicle
  attr_accessor :name, :model, :year, :color
  def initialize(name, year, color, model)
    self.name = name
    self.model = model
    self.year = year
    self.color = color
  end
  
  def loadcapacity(load)
    puts "#{self.name} car can carry upto #{load}kg"
  end

  def milage(distance_travelled, fuel_consumed)
    p "#{self.name} car milage = #{distance_travelled/fuel_consumed}km/l"
  end
end

class MyCar < Vehicle
  TOTAL_DOORS = 4

  def car_info
    p "This is a #{self.year} #{self.name} of #{self.color}"
  end
  
end

class MyTruck < Vehicle
  TOTAL_DOORS = 2
  
end


maruti = MyCar.new("Maruti",1960,"Red","swift")
maruti.loadcapacity(200)
maruti.milage(250,20)
nano = MyCar.new("Nano",2000,"Gold","Nano Twist")
nano.loadcapacity(100)
nano.milage(250,10)
nano.car_info

#====================================================================

#Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

# problem statement not clear 