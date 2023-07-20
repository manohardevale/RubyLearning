# Calling same function within function
def add(a,b)
  puts (a+b)
  if (a+b)<20
    a+=1
    b+=1
    add(a,b)
  end
end

add(2,3)
# #======================================================================

# # Calling same function within function  example from net
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)
#======================================================================


# This did not work and took more time
# def check()
#   puts "Enter an English letter"
#   letter = gets.chomp
#   x = 0
#   vowel = %w[a e i o u]
#   for element in vowel
#     if letter == element
#       puts "#{letter} is a vowel"
#       x+=1
#     elsif letter != element
#       check()
#       if x>5
#         break
#     end
#   end
# end
# end

# check()
