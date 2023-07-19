#Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name="Rock")
  puts "Hello #{name}" 
end

greeting()
greeting("manohar")
#==========================================================


#What do the following expressions evaluate to? That is, what value does each expression return?

x = 2        #---> Returns 2 as int  
puts x.class

puts x = 2   #---> thought returns 2 as string but puts   return nil
puts x.class

p name = "Joe" #--> returns Joe as string
puts name.class

four = "four"  #--> returns str variable value as "four" 
puts four.class

print something = "nothing" #--> returns nil why nil? as thats default if nothing is returned. 
#==========================================================


# Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(n1, n2)
  n1 * n2
end

multiply(2,3)
# when this last method is executed seeing nothing6 as output, not sure why nothing is output
# As per ruby docs their is no way you will ever get a nothing returned. 
#==========================================================


#What will the following code print to the screen?
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# Nothing will be printed on to the screen as we are just calling the method and it will get executed and return a value as we are not printing. 
#==========================================================

#Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

print scream("Yippeee")
#=======================================================================

#What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby2.5.3/bin/irb:12:in `<main>'

# The error says number of arguments expected was 2 and given was 1 in program `calculate_product'
#=======================================================================

