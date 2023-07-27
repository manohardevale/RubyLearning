#Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...
# puts "Well done!" if joe.better_grade_than?(bob)
# problem statement not clear, runs only if 1st better than 2nd else no output

# protected part copied from solution provided

# class Student 
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end

#   def better_grade_than?(new_student)
#      grade > new_student.grade
#   end
    
#   protected
    
#   def grade
#     @grade
#   end
# end  


# john = Student.new("John", 50)
# cris = Student.new("Cris",70)
# puts "Well Done!" if john.better_grade_than?(cris) # No out put as this condition is failing

# #2nd trial
# bill = Student.new("Bill", 90)
# # p joe.grade
# pam = Student.new("Pam",80)
# puts "Well Done!" if bill.better_grade_than?(pam) 

 
#===================================================================

# Given the following code...

# bob = Person.new
# bob.hi

# And the corresponding error message...

# NoMethodError: private method `hi' called for # 
# <Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# What is the problem and how would you go about fixing it?
# The problem is hi is declared as a private method and Person object is trying to access thhis private method. You can remove private method for the Hi method

#====================================================================
  # consider a class Carmaker with a method turn and a parameter to guide the direction of turn. 


# class Carmaker
#   def turn(direction)
#     puts "car is turning"
#   end

#   def turning_direction
#     puts "Turning direction is#{direction}"
#   end
# end

# car1 = Carmaker.new
# car1.turn("left")
# car1.turning_direction
# here from the turning_direction method, i cannot access the 'direction' variable specified in turn method as its local variable to turn. 
# to make this direction a instance variable so that any instance can access that variable we add a @ to the variable.  
# class Carmaker
#   def turn(direction)
#     @direction = direction
#      "car is turning"
#   end

#   def turning_direction
#     puts "Turning direction is #{@direction}"
#   end
# end

# car1 = Carmaker.new
# car1.turn("left")
# car1.turning_direction
# puts "#{@direction}"

#====================================================================
#Run the following code and then change the code so that the error goes away.
# class House
#   def building_number(new_number)
#   end

#   def info
#     puts "The building number is #{}"
#   end
# end

# house = House.new
# house.building_number("A872")
# house.info
# similar to the previous program we need to make the local variable 'new_number' which is passed as parameter to method building_number an instance variable by prefixing it with @ i.e., @new_number and declare it within the method @new_number = new_number inside building_number. 
#===================================================================

#Class level instance variable
#Class level instance variable is different from a regular instance variable which is specific to each individual object 

# Class level instance variables are declared with @@ before variable
class Counter
  @@count=0

  def initialize
    @@count += 1
  end

  def self.counted
    @@count
  end
end

obj1 = Counter.new
obj2 = Counter.new

puts Counter.counted
    