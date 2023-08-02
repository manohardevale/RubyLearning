# when an exception is thrown, ruby program terminates by default. To avoid the termination exception handlers can be declares. 
# Excptions can be handled in 2 ways 
# 1. either by allowing termination of program 
# 2. Handle the program using the rescue clause

def raise_exception     
  puts 'I am before the raise.'     
  raise 'oops! An error has occured'     
  puts 'I am after the raise'     
end     
# raise_exception    

# Handling Exception
def raise_and_rescue     
  begin     
    puts 'Before the raise.'     
    raise 'An error occured.'# Exception raised using raise method 
    puts 'After the raise.'  # This line skipped 
  rescue     
    puts 'Code rescued.'     # executed to handle exception 
  end     
  puts 'After the begin block.'# executed as its out of the block     
end     
# raise_and_rescue    
#================================================================

# exception object
def exception_obj
  begin   
    raise 'an exception'   
  rescue ZeroDivisionError => e   
    puts "Exception Class: #{ e.class.name }"   
    puts "Exception Message: #{ e.message }"   # explains error 
    puts "Exception Backtrace: #{ e.backtrace }"# returns call stack trace where error occured during program execution.
  end   
end

# exception_obj
#=================================================================
# using the retry method to run through the method again after capturing the Exception
# this is just an example not to be executed 
  begin   
    x = Dir.mkdir "alreadyExist"   
    if x   
       puts "Directory created"   
    end   
  rescue   
     x = "newDir"   
     retry   
  end   

#================================================================
# Using esure statement make sure irrespective of the exception is handled or not the ensure block is executed always

begin   
  code..  
   #..raise exception  
rescue   
   #.. exception is rescued  
ensure   
   #.. This code will always execute.  
end  
begin   
  raise 'Exception'   
rescue Exception => e   
  puts e.message   
  puts e.backtrace.inspect   
ensure   
  puts "The ensure code will always run"   
end  
#===============================================================
# using the else operation with the Exception

begin   
 raise 'A test exception.'   
 raise 'Exception' if this exception is not raised will execute else part then the ensure part.
  puts "no exception is raised"   
rescue Exception => e   
  puts e.message   
  puts e.backtrace.inspect   
else   
   puts "else code will be executed as no exception is raised."   
ensure   
  puts "ensure code will run"   
end  
#==================================================================
# Ruby catch and throw 
# the catch and throw is more faster than rescue and raise clauses. Hence more suitable

def promptAndGet(prompt)   
   print prompt   
   res = readline.chomp   
   throw :quitRequested if res == "!"   
   return res   
end   
  
catch :quitRequested do   
   name = promptAndGet("Name: ")   
   age = promptAndGet("Occupation: ")   
   ..   
   process information   
end   
promptAndGet("Name:")  

#================================================================


def negative
  puts "Enter a number"
  num = gets.chomp.to_i
  throw :negativeNumberError if num < 0
  puts "Num is +ve"
end

catch :negativeNumberError do
  rescue Exception => e
  puts e.message   
  puts e.backtrace.inspect   
end

negative
#===============================================================

# exception handling in accepting value from user and performing number addition

def add
  puts "Enter a number"
  num = gets.chomp.to_i
  p "addition of 2 and #{num} is: #{2+num}" # when #{2+num} is executed, we see `+': String can't be coerced into Integer (TypeError) --> To fix this we need both to be int values so we convert the num to int using to_i after chomp
end

# add
#================================================================
# when we want the exception to be thrown and then handled that is done by begin and rescue blocks

while 1
  puts "Enter number"
  begin
    num = Kernel.gets(/\d+/)[0]
  rescue 
    puts "Enter valid number"
  else 
    puts "num is #{num} and num+1 is #{num.to_i+1}"
  end
end


