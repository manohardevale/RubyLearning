# Working with method return values
def add_three(num)
  num + 3
end

puts"Returned value of the method is #{add_three(5)}"

#method chaining
add_three(5).times{puts"printing it \"return value\" times"}
puts "#{add_three(100).to_s.length}"
type = add_three(100).to_s.length
puts "#{type.class}"
puts "#{type.to_s.class}"

# check if the method return value works here
def add_two(a)
    puts a + 2
end

print"Returned value add_two method is #{add_two(2)}"

#method chaining case2
begin
add_two(2).times { puts "when hovered over puts in the program will show return value as nil" }
rescue
puts "when hovered over puts in the program will show return value as nil"  
puts "puts method will always return nil hence chaining wont work on nil better to use print"
end

# To fix the above problem we need to create a new value and return it in the last expression
def add_four(a)
  new_value = a + 2
  puts new_value
  new_value
end
add_four(2)

