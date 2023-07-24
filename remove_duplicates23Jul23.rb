# Write a Ruby program to remove duplicate elements from a given array.
# method1 using uniq method
arr6 = [7, 2, 3, 4, 1, 2, 2, 3, 5, 6]
# p arr6.uniq

# method2 by converting to a set which removes duplicates and bcak to array
# set

# trying to execute this without using uniq method need to check further
arr6 = [7, 2, 3, 4, 1, 2, 2, 3, 5, 6]
# i = 0
b_arr = []

for i in arr6 do
  p i
  if b_arr.include? i
    next
  else
    b_arr << i
end
end

p b_arr

#==============================================

#Write a Ruby program to check two given arrays of integers and test whether they have the same first element or they have the same last element. Both arrays length must be 1 or more. 

arr7 = [4,2,1,5,7] 
arr8 = [3,4,7,9,7]

#checking if in both arrays first element is same
p arr7.first == arr8.first
p arr7.last == arr8.last  

#==============================================
# Write a Ruby program to remove blank elements from a given array

arr9 = ["Red", "Green", "", "Blue", "White"]

if arr9.include?("")
  arr9.delete("")
end
  p arr9
#==============================================

