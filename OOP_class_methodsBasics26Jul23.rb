# class variables are indicated using @@ and also must be initialized before they can be used in methods.

class Student
  @@num_of_students = 0

  def initialize
    @@num_of_students +=1
  end

  def self.total_students
    @@num_of_students
  end
end

puts Student.total_students

student1 = Student.new # beacomes+1 from initialaze 
student2 = Student.new #beacomes+1 from initialaze

puts Student.total_students # become 2

# ==================================================
# Constants 
# constants are define with Caps starting letter but in general all letters are in caps for constants

class Student
  AVG_LIFE_SPAN = 70

# you can reassign a new value to a constant and ruby will throw a warning.
  
  
  
  #=================================================
# Play around with the self 

  
  
  