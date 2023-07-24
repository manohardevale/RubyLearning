# 10. Write a Ruby program to split a delimited string into an array.
# Original delimited string:

original_string = "Red, Green, Blue, White,1, 3, 4, 5, 7"

p original_string
p original_string.split(",")
#=============================================

# find the largest number in Array 
ar = [4,5,2,6,9,6,8,1]
big = 0

for i in ar
  if i > big 
    big = i
  end
end

 p " Largest element is: #{big}"
  
#=============================================
# smallest number from the array

ar1 = [4,5,2,6,9,6,8]
p "Smallest ele using min:#{ar1.min}"
p "Largest ele using max: #{ar1.max}"

small = ar1[1].to_i
for i in ar1
  if i <= small 
    small = i
  end
end
 p "Smallest element : #{small}"

#=============================================

