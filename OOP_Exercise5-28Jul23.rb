# class variable vs instance variables 
# class variables are indicated using @@<var name> but instance variables are indicated using @<var name>
#================================================

class Vehicle
  def car(name)
    @name = name
    brand = brand # is not made intace variable but is still a local variable
    puts"Car name is #{@name}"
  end
  def info
    puts "brand is not instance variable until its prefixed with @ during declaration #{@brand}"
  end
end

maruti = Vehicle.new
maruti.car("maruti")
maruti.info
 
#============================================
# class variables are prefixed with @@ as below and always have to be initialized

class Animal
@@cowlegs = 4
@@humanlegs = 2
  def cow
    puts "Cow has #{@@cowlegs} legs" 
  end
end

  def humans
    begin
    puts "Humans have #{@@humanlegs} legs"
    rescue
      puts "humanlegs is a class variable which cannot be accessed out side the class"
    end
  end

animal = Animal.new
animal.cow
humans


#================================================
# Use multiple returns to return the grade
# class GradeAssigner
#   def grade(score)
#   end
# end

# assigner = GradeAssigner.new
# puts assigner.grade(60)
#Students are taking Maths test and you need to write a program which will assign a grade to their score based on the given criteria. If the score is 80 or more than 80 then assign grade "A". If the score is 60 or more than 60 but less than 80 then assign grade "B". If the score is 30 or more than 30 but less than 60 then assign grade "C". If the score is less than 30 then assign grade "D".You need to use four return statements to accomplish this task.

class GradeAssigner
  def grade(score)
    if score >=80
      return "A"
    elsif score>=60 && score<80
      return "B"
    elsif score>=30 && score<60
      return "C"
    else
      return "D"
  end
  end
end

assigner = GradeAssigner.new
puts assigner.grade(80)
puts assigner.grade(29)
puts assigner.grade(30)
puts assigner.grade(60)
puts assigner.grade(59)
#================================================

# Last statement is auto returned

class Adder
  def sum(a,b)
    a+b
  end
end

add = Adder.new
p add.sum(2,3)
#================================================

# with a parameterized class, can I access the parameter using the classname.parameter? 

class Name
  def initialize(name)
    @name = name
  end
end

  accessname = Name.new("Ram")
  # puts accessname.@name # SyntaxError unexpected instance variable
  # puts accessname.name # this will throw NoMethod error as it will consider <classname>.method 
# To fix this problem we have to create a method which will return the instance variable from the class 
 class Name
   def initialize(condition)
     @condition = condition
   end

   def return_instance_var
      @condition
   end
 end

name1 = Name.new("radha")
puts name1.return_instance_var
# puts name1.condition or name1.@condition will not work.

class Name2
  def initialize(name)
    p "#{name}"
  end
end

name2 = Name2.new("radha")
# p "name2 is #{name2.name}" # NoMethodError for name not being a method
#==============================================
# Instead of using the setter and getter methods to access and modify the values of instance variables ruby provides a attr_accessor: to read and modify , attr_reader: to only read access instance variables and attr_writer to only modify existing instance variables



