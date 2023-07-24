
#Write a Ruby program to search items start with specified string of a given array.
arr = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]

#method1
puts "Enter the letter/letters to search"
letter = gets.chomp

for i in arr
  if i.start_with?(letter)
    p i
  end
end

#ends_with method 
arr = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]

puts "Enter the letter/letters to search"
letter = gets.chomp

for x in arr
  if x.end_with?(letter)
    p x
  end
end