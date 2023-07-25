# select enumerable usage to eliminate an element from an array

# avoid inviting Brain using the regula for loop

friends = %w[Sharon Leo Leila Brian Arun]
invited_list = []

for friend in friends do
  invited_list.push(friend) if friend != 'Brian'
end

p invited_list

# The above same can be achieved using the enumerable select method easily

p friends.select { |name| name != 'Brian' }
p friends
# Also can be achieved using the reject method

p friends.reject { |friend| friend == 'Brian' }
p friends
#========================================================

# Enumerate each method can be used to iterate over all elements without doing much logic
p friends.each { |friend| p friend }

# Enumerate each method can be used to iterate over all elements with more logic can be performed using do..end with each
invite_list = []
friends.each do |friend|
  invite_list << friend if friend != 'Brian'
end
p invite_list
#==========================================================
# Usage of each with hash
my_hash = { 'one' => 1, 'two' => 2 }
# method1
my_hash.each { |k, v| p "key:#{k}: value:#{v}" }
# method2
my_hash.each { |pair| puts "pair is #{pair}" }
my_hash.each { |pair| p "pair is #{pair}" }

#=========================================================
# using each_with_index method
# print every other word from an array of strings
fruits = %w[apple banana strawberry pineapple]

fruits.each_with_index { |fruit, index| p fruit if index.even? }

#==========================================================

# using the map method so that after transformation mentioned in block is performed it returns the result in a new array and wont affect original array and when using each we have to explicitly mention new array to store the result.

# Using each method to avaoid inviting "Brian" and store it new array
friends = %w[Sharon Leo Leila Brian Arun]

invitelist = []
friends.each { |friend| invitelist << friend if friend != 'Brian' }

p invitelist

# This same can be achieved using a map where the result is directly saved to a new array and we dont need to create and store into it explicitly

new_list = friends.select { |friend| friend != 'Brian' }
p new_list.map { |ele| ele }

# may be should not be used as in above case as we are still performing it in 2 steps, where we can perform operation in 1 step and put it to a new array, map to be used in such cases

# =======================================================
# change order using map and gsub

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

p my_order.map { |item| item.gsub('medium', 'large') }
#=========================================================
# see if spending on McDonalds is reduced from salary and check other expenditure
salaries = [1200, 1500, 1100, 1800]
McD = 700
p salaries.map { |salary| salary - McD }
p salaries
# In the result salaries = [500, 800, 400, 1100], 700 was deducted from all elements of the array

#=========================================================

# reduce method also called inject method is used to reduce an into into a single object# best example would be get the sum of elements of an array where addition of all elements reduces to 1 object

my_numbers = [5, 6, 7, 8]
sum = 0

#Using each method performing addition
my_numbers.each{|num| sum+=num}
p sum #=>26
# Using the reduce method perfoming addition
p my_numbers.reduce{|sum, num| sum+num} #=>26
            #OR
p my_numbers.reduce(:+)  #=>26


#========================================================
# Bang methods are basically used to transform the original array or collection and original is modified

# map is regular method map! is bang method when map is used a new array is returned after performing logic
# when map! is used original array is affected directly 
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

f = friends.map{|ele| ele.upcase}
p friends  #=> friends not affected and still lower case

p friends.map!{|ele| ele.upcase}
p friends  #=> friends original array affected,all upcase

#========================================================

# Recommended always avoid using the Bang methods. 
# Now that we need to return values from the enumerables we have to either store it into a variable or wrap it in a method to return the values.

# Predicate enumerable methods always end with "?" like 
#include?, any?, all?, none?, which return a true/false
# numbers = [21, 42, 303, 499, 550, 811]
# numbers.any? { |number| number > 500 }
#=> true  checks if any 1 num in the list is >500, returns true 
#numbers.any? { |number| number < 20 }
#=> false  checks if any 1 num in the list is less tha 20, returns false

#fruits = ["apple", "banana", "strawberry", "pineapple"]
#fruits.all? { |fruit| fruit.length > 3 }#=> true
# all? will check all string elements for length >3 and returns true. 
# all? will return true always like empty arra or hash if it has nothing to return will return True
#fruits.none? { |fruit| fruit.length > 10 } #=> true
#none? will check if length of all elements is >10 and returns true.checks all elements for the condition.

