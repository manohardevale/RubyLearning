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


# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.(Explain how to use if, elsif, and else.)

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
#=======================================================================
# Describe and list falsy values.
# Explain the difference between if and unless.
# Describe what ||, &&, and ! do.
# Explain what short circuit evaluation is.
# Describe what the ternary operator is and how to use it.
# Explain what a case statement is and how it works.
#======================================================================
#What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
#--> FALSE as string '4' is not equal to int 4. 

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
  #--> Output should be "Did you get it right?" as the first condition is satisfied.

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

#--> Output Should be "Alright now!" even when the next condition is also true but will exit out of the loop once 1st true condition is met. 
#=======================================================================

#When you run the following code...
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

  #You get the following error message..
  #exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

 # --> We get this error because we have missed adding a end statement for if condition and added end only for the method.
#======================================================================

# Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.
# (32 * 4) >= "129"   #--> Error cant compare int with str
# 847 == '847'        #--> Error cant compare int with str - My mistake                                 its should have been --  False
# '847' < '846'       #--> True as comparing 2 strs and when copares                         last value left side is bigger hence returns   
                       
# '847' > '846'       #--> True 
# '847' > '8478'      #--> False
# '847' < '8478'      #--> True
#======================================================================

