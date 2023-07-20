# Break statement
a = 0
loop do
  a+=1
  p a
  if a>100
    break
end
end
#======================================================================

# break to break loop and next to skip the current iteration and move to next iteration

i = 0
loop do
  i+=2
  if i == 4
    next    # skip the current execution when val of i==4
  end
  puts i
  if i ==10
    break
  end
end
#======================================================================

# From inside the block accessing variables that are outside the block is allowed and from outside the block accessing the variables that are inside the block not allowed(# Raises an error -- x is not in scope outside of the block)

loop do
  x = 42
  break
end
  print "Accessing value of x which is inside loop #{x}"

# however not seeing this error but seeing undefined variable x for main:Object(NameError)

# Checking accessing the variables outside loop from inside the loop
x = 5
loop do
  c = 10
  puts "Accessing value of x which is outside loop is #{x}"
  break
end
#=======================================================================
