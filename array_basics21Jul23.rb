# Arrays can have both numbers and strings and any other data types in it, but recommended is to have a same type of data in an array.

# Types:
num_array = [1, 2, 3, 4, 5, 6]
str_array = %w[This is an array]

# creating a new array
my_array = []
p my_array

# using first(n) method to add first(n) elements of one array to other
my_array = str_array.first(5) # choose index more than elements no error seen when adding
p my_array

# checking if 2 arrays are equal using == operator
p true if str_array == my_array

# using the last(n) method to add last 'n' elements of one array to other.
my_array = str_array.last(100)
p my_array

# Accessing array elements
# when non existing index element accessed it returns nil
p my_array[4]

p str_array[-3] # access using -ve index num

# Adding and removing elements from array
p my_array
my_array[0] = 'This is'
my_array[2] = ' of'
my_array[3] = 'strings'
p my_array
p str_array
#===============================================================

# array methods
# adding elements to array using #push method
my_array.push('element', 'added', 'to', 'the', 'end', 'of', 'array')
p my_array
#===============================================================

# Shift method removes the elements from start of the array
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = %w[One two three four five]
# using the shift it removes the first element and displays the removed element to output
puts a.shift # removes the 1st element in array
p '====Interval===== above this is element removed/shifted'
puts a
#===============================================================

# Unshift adds element to the beginning of the array and works similar to push method
p a # to print the array a
a.unshift('aa', 'bb', 'cc') # adding these to the array a
p a # to print the array a
a.pop # removed the last element in array
p a
#===============================================================
# Adding and subtracting arrays
# addint 2 arrays is same as concatinating 2 str arrays.

a = [1, 2, 3, 4]
A = []
b = [6, 7, 8, 9]
c = %w[a b c d]  # %w refers to string array where we dont need to mention the elements in quotes
B = [' ']

p(a + A + b)
p(b + c)
p A.concat(b)
p A.concat(B.concat(a))

# reverse an array
p c.reverse

# length of array is changed after the above addition operations
p "length of a :#{a.length}, length of b: #{b.length}, length of A: #{A.length}, length of B: #{B.length}"
p "length of a :#{a.length}"
p "length of b :#{b.length}"
p "length of A :#{A.length}" # Why length is 9?
p "length of B :#{B.length}" # Why length is 5?

p "Is A empty? :#{A.empty?}"
p "Is A empty? :#{B.empty?}"
p c.include?('d')
# p c.include?(d) # undefined local variable

p a.join
p a.join(':')
# p a.join(B) #error implicit conversion as B array has a empty str

p a.join(' ')
#==============================================================

# both map and collect methods iterate over the array performing some operation. 

x = [1,2,3,4]
y = [6,7,8,9]
p x
p x.map{|num| num**2}
p x.collect{|num| num**2}

#==============================================================
# delete method for arrays. Once a delete is performed the original array is changed and cannot be reverted back.

#1 . Delete can be used with index numbers and with elements values if case you know the value exactly.

#delete_at(index) 
d = [0,1,2,3,4,5]
p d
p d.delete_at(3)
p d
#delete(element)
my_pets = ["cat", "dog", "bird", "cat", "snake"]
p my_pets
p my_pets.delete("cat")
p my_pets

#==============================================================
# uniq method to remove all the duplicate entries from an array and dave it in a new array
animals = ["cat", "dog", "bird", "cat", "snake"]
p animals
p unique_array = animals.uniq
p unique_array
p animals

# using uniq! to remove all duplicates from original array
d = [1,2,3,1,2,4,5,6,7,9,7,7,9]
p d
p changed = d.uniq!
p changed
p d

#==============================================================
# iterating over arrays using each method
nums = [1,2,3,4,5,6,7,8,9,10]
nums.each do |num|
  puts num+1
end

# iterating over array using select method
puts nums.select{|num| num>4} # prints elements greater than 4 in nums array
p nums # original array unaffected using each and select

#==============================================================

# Nested arrays 
teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
# find the teams by index
p teams[0]
p teams[1]
p teams[2]

# find the 1st element of second team
p teams[1][0]
# find the 2nd element in 1st team
p teams[0][1]

#==============================================================
# comparing arrays
a = [1,2,3]
b = [2,3,4]

p a == b

#Now make the 2nd array equal to 1st array and then Comparable
(b.unshift(1).pop)
# b.pop
p b
p a==b
#=============================================================


# to_s method creates a string expression of an array 
numbers = [1,2,3,4]

p numbers
p numbers.to_s
puts numbers.to_s

#==============================================================

#Array methods
# include? method check if the specified argument is present in the array

p numbers.include?(5)
p numbers.include?(3)

# flatten method is used to convert a nested array into one-dimentional array
d = [[1,2,3,[4,5],[6,7]]]
p d.flatten # not distructive, original array retained  
p d

# each_index iterates through array similar to each method however iterates through the array and prints only the index of elements not the values. 
a = ["one","two","three","four"]
a.each_index{|x| puts "index val: #{x}"}

#each_with_index method iterates through the array and gives both the index and corresponding values, the sequence is value against index 

a = ["one","two","three","four"]
a.each_with_index{|val,index| puts "val:index--> #{val},#{index}"}

# sort method returns sorted array
f = [4,6,8,3,2,9,5]
p f.sort
p f      # not distructive as I can fetch the original array

# product method 
x1 = [1,2,3]
x2 = ["a","b"]
x3 = [6,7,8]
p x1.product(x2)
p x1.product(x3)

# each vs map
y1 = [1,2,3]

# using each without block
p y1.each

# using map without block
p y1.map

p y1.each{|ele| p ele*2} # is not distructive original retained
p "========================================="
p y1.map{|ele| p ele*2}  # distructive original array affected

#note use each for iteration and map for transformation  cases
