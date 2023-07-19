# Variable scopes:
a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a accessible here, in an inner scope?
end

puts a
#=============================================================
x = 5          #outer scope for variable
y = 10         #outer scope for variable
3.times do |n|
  x = 6        #inner scope for variable
  puts y       #accessing outside variable from inside
end
puts x
#==============================================================
#when accessing any varible inside a method from outside will throw an error as csope of the variable inside a method is retricted within the method

l = 5
def num()
  q = 3
  r = 6
end
begin
puts r #trying to access inner scope varible from outer scope error
rescue
puts "Error: Accessing inner scope variable from outer scope"
end
#=================================================================
