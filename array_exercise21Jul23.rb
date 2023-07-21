#1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# p arr.include?(number)

#===============================================================


#2. What will the following programs return? What is the value of arr after each?
#case 1.
# arr = ["b", "a"]
# arr = arr.product(Array(1..3)) 
#--> should return [[b,1][b,2][b,3][a,1][a,2][a,3]]
# arr.first.delete(arr.first.last) 
#--> should return [["b"]["b",2]["b",3]["a",1]["a",2]]

# case2:
# arr = ["b", "a"]
# p arr = arr.product([Array(1..3)])
#should return--> [["b", "a"]product[[1,2,3]]]
#--> [["b",[1,2,3]],["a",[1,2,3]]]
# arr.first.delete(arr.first.last)
#--> [["b"],["a",[1,2,3]]]
# this was a bit confusing looked answer from solution provided

#===============================================================

# How do you return the word "example" from the following array?
# arr = [["test", "hello", "world"],["example", "mem"]]
# p arr[1][0]

#================================================================

# What does each method return in the following example?
# arr = [15, 7, 18, 5, 12, 8, 5, 1]
# arr.index(5) #-->should return 3
# p arr.index[5] #--> not sure  No method error from solun provided
# arr[5] #-->should return 8

#================================================================

# What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6] #-->should return "e" 
b = string[11] #-->should return "A"
c = string[19] #-->should return nil
#================================================================

# You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
#-->should return ['bob', 'joe', 'susan', 'jody']
# oops my mistake- typerror it was returning an error no implicit converion of str to int 
# --> to solve this
# names(3) = 'jody'


#================================================================

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

fruits = ["mango", "apple", "orange","banana","jackfruit"]

fruits.each_with_index{|fruit,index| p "Fruit:#{fruit},index:#{index}" }

#================================================================

# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

nums = [1,2,3,4,5,6]
nums.each{|num| p num+2}
p nums

#================================================================

#2. Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more.
arr2 = [7,9,6,8,7]
p (arr2.first || arr2.last) == 7
p arr2.first == 7
p arr2.last == 7
# solution provided by site
p (arr2[0] == 7 || arr2.length-1 == 7)

#===============================================================

#Write a Ruby program to pick number of random elements from a given array.

arr3 = [1,2,12,21,23,32,34,43,45,54,56,65,67,76]
p arr3.sample(3)
#===============================================================


#Write a Ruby program to check whether first and the last element are the same of a given array of integers. The array length must be 1 or more.

arr4 = [1,2,4,1,[5,3,1,3,5],[2,7,6,1],1]
p arr4.first == arr4.last
p arr4[0] == arr4[arr4.length-1]
#===============================================================


# Write a Ruby program to compute the sum of elements in a given array.

result = 0
arr5 = [12, 34, 23, 56]
p arr5[0..arr5.length-1]

for i in arr5
   result=result+i
end
p result
#===============================================================


#Write a Ruby program to remove duplicate elements from a given array.

arr6 = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
p arr6.uniq


# trying to execute this without using uniq method need to check further
# i = 0
# b_arr = []

# while i<= arr6.length-1
#   if b_arr.include? arr6[i]
#     next
#   else
#     b_arr.push(arr6[i])
# end
# end

#   p b_arr



