#Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

(32 * 4) >= 129          # --> false
false != !true           # --> false
true == 4                # --> false
false == (847 == '847')  # --> true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false 
#  (!true || (!(100 / 5) == 20) || ((328 / 4) == 82))
#      false || (false ||  true)
#      flase || true
#        true
#=======================================================================


# Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def caps(word)
  if (word.to_s.length)>10
    puts word.upcase
  else
    puts "word length less than 10 chars"
  end
end

caps("hello world")
caps("helloword")
#==================================================================


# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "enter a number between 0 to 100"
num = gets.to_i
if num>0 && num<=50
  puts "Number between 0 to 50"
elsif num>50 && num<=100
  puts "Number between 51 to 100"
elsif num>100
  puts "Number greater than 100"
else
  puts "Not a number enter valid input"
end