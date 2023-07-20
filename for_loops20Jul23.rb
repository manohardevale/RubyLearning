# countdown of numbers

puts 'Enter a number to see countdown'
x = gets.chomp.to_i
for i in 1..x do # This is similar to the range
  p x -= 1
end

# Using for loop in an array
x = [1, 2, 3, 4, 5, 6]
for i in x.reverse do
  p i
  end

#=======================================================================
#using range in for loop
for i in 0..5
  p i
end
#=======================================================================



