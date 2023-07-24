#Write a Ruby program to iterate over the first n elements of a given array.

arr = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]

# iterate over n  elements of array
# #method1
# puts "enter the value of n"
# n = gets.chomp.to_i
# i = 0
# while i <= n
#   p arr[i]
#   i+=1
#   if i == n
#     break
#   end
# end

#method 2
puts "enter the value of n"
n = gets.chomp.to_i
x = 0
until x == n
  p arr[x]
  x+=1
end