#Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings = family.select do |keys,values| keys == :sisters || keys == :brothers
end
result = siblings.values.flatten
p result

# couldnot solve this!->copied solution from website
# =======================================================

# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
# merge method should not affect the original mash after modifying anything should be put into a new hash.
# merge! will modify the original hash and original hash cannot be retrieved. 
# 1st hash values will be overwritten with 2nd hash and its a merge 1st hash and second hash items will be written to 1st hash. 


#========================================================
# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.each do |key,val|
  puts "key : #{key}"
end

family.each do |key, val|
  puts "value : #{val}"
end

family.each do |key, val|
  puts "key: #{key}, value:#{val}"  
end

#=========================================================
#Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]
p person[:occupation]
p person[:hobbies]

#=========================================================

# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.value?("painting")

#========================================================
# Given the following code...What's the difference between the two hashes that were created?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

my_hash - is using the symbol to define the x
my_hash2 - is using the rocket to define the x 

#=========================================================
#If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.