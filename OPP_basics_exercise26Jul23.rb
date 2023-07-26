#Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @start_speed = 0
  end

  def car_info
    puts "car info:make #{@year}, color #{@color} and model #{@model}"
  end

  def start_speed
    puts "#{@model}s start speed is #{@start_speed}km/h"
  end 
  
  def speed_up(num)
    puts "car speeds up to #{ num}km/h"
  end

  def brake(num)
    puts "Breaks applied - speed reduced to#{ num} km/h"
  end

  def shut_off
    puts "Turning off car engines and speed reduced to#{@start_speed}km/h "
  end
end

bmw = MyCar.new(2012,"Red","E-Class")
bmw.car_info
bmw.speed_up(200)
bmw.start_speed
bmw.brake("50")
bmw.shut_off
#======================================================

#Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

class MyCar
  attr_accessor :color
  attr_reader :year, :model
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @start_speed = 0
  end

  def car_info
    puts "car info:make #{self.year}, color #{self.color} and model #{self.model}"
  end

  def start_speed
    puts "#{self.model}s start speed is #{@start_speed}km/h"
  end 
  
  def speed_up(num)
    puts "car speeds up to #{ num}km/h"
  end

  def brake(num)
    puts "Breaks applied - speed reduced to#{ num} km/h"
  end

  def shut_off
    puts "Turning off car engines and speed reduced to#{ @start_speed}km/h "
  end
end

audi = MyCar.new(1960, "Black", "Audi Super")
audi.color = "White"
puts audi.color
puts audi.year
audi.car_info
audi.speed_up(300)
audi.start_speed
audi.brake("60")
audi.shut_off

#=====================================================

#You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

class MyCar
  attr_accessor :color
  attr_reader :year, :model
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @start_speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "Change the car color to #{color}"
  end
    
  def car_info
    puts "car info:make #{self.year}, color #{self.color} and model #{self.model}"
  end

  def start_speed
    puts "#{self.model}s start speed is #{@start_speed}km/h"
  end 
  
  def speed_up(num)
    puts "car speeds up to #{ num}km/h"
  end

  def brake(num)
    puts "Breaks applied - speed reduced to#{ num} km/h"
  end

  def shut_off
    puts "Turning off car engines and speed reduced to#{ @start_speed}km/h "
  end
end

maruti = MyCar.new(1970, "Gold", "Swift")
maruti.spray_paint("White")
puts maruti.color
maruti.car_info