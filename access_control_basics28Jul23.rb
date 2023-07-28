# usage of private method, usage and its applications:
# private methods are to be used only within the class definition. 
#private methods cannot be called with explicit class. 

class Person
  def speak
    puts"Hey"
  end
  def whisper_louder
    whisper
  end
#private methods are for internal usage within the class 
  private
  def whisper
    puts "What did he do? really!"
  end
end

begin
you.whisper #NoMethodError indicating its a private method
rescue
  puts "cannot access whisper method as its private should throw NoMethodError"
end

you = Person.new
you.speak # Hey
you.whisper_louder# 

# This private method can be accessed by another public method within the same class or subclass/child class

class Person
  def speak
    puts"Hey"
  end
  def whisper_louder
    whisper
  end

  def to_access_privatemethod
    whisper    
  end
  
#private methods are for internal usage within the class 
  private
  def whisper
    puts "What did he do? really!"
  end
   
# note if the private method has to be accessed the accessing public method has to be before the private method ? Not sure why? 
  # def to_access_privatemethod
  #   whisper    
  # end
end

you1 = Person.new
you1.to_access_privatemethod

#=============================================================
# accessing the private method of parent class from a child class public method

class Person
  def speak
    puts"Hey"
  end
  def whisper_louder
    whisper
  end
#private methods are for internal usage within the class 
  private
  def whisper
    puts "What did he do? really!"
  end
end

class Child < Person
  def to_access_privatemethod
    whisper    
  end
end

child = Child.new
child.to_access_privatemethod
#==========================================================

# Protected method
# Protected method are not accessible outside the defined class or subclass
# protected methods can be accessed/invoked with the help of instances of the same class/subclass which defined it.

class Person
  def speak
    puts"Hey you speak method"
  end
  
  def whisper_louder
    puts"whisper_louder method"
  end

  private
  def whisper
    puts"whisper only method"
  end
  
  protected
  def self.greet
    puts"Hello self.greet method"
  end
end

class Me < Person
  def be_nice
    Person.greet
  end
end

b = Me.new
b.be_nice
b.greet #NoMethodError