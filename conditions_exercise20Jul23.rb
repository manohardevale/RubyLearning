# What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
#Should iterate over the array and should return [1, 2, 3, 4, 5]

#=======================================================================

# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

puts "Enter a word"
word = ""
while word!="STOP" 
  puts "performing some action"
  puts "Enter a word"
  word = gets.chomp.upcase
  p "you entered: #{word}"
  if word == "STOP"
    break
end
end
#======================================================================

#Write a method that counts down to zero using recursion. Copied solution its a bit confusing. But now undestood

def recurse(a)
  if a<=0
    puts a
  else
    puts a 
    recurse(a-1)
  end
end

recurse(5)
    