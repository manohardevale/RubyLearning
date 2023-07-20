# Print the tables of any number using while loop

puts "Enter a number to see the multiplication table for it"
num = gets.chomp.to_i

x = 1
while x<11
  result = num * x
  x+=1
  p result
  end

#====================================================================

# As there is no do while loop in ruby trying it with do and while loops together 
# Print the name while his age reaches 10 years

name = "Joe"
age = 1

p "I am #{name}"
while age<=10
  p "I am #{name}"+"I am #{age} years old"
  age+=1
end
#====================================================================


# The above is not correct as code within loop should get executed once before entering the loop as per Do while loop, so to achieve that in ruby its done using the loop do and if break conditions as below

loop do
  p "To be executed only once - guess a number"
  num = gets.chomp.to_i
  if num == 5
    break
  end
end
#====================================================================


# perform_again.rb
# This was the example given where puts statement is executed each time which should be executed only once. 
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
#====================================================================
#Its mentioned while loops return nil could not figure out what that means.
#=====================================================================

