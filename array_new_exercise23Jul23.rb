# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# single line statement
num.each {|ele| puts "#{ele}"}

# multiline version
num.each do |ele|
  puts "#{ele}"
end
#==================================
# print out values greater than 5 from above result

num.each {|ele| puts ele if ele>5}

num.each do |ele|
  if ele > 5
  p ele
  end
end

#=======================================
# use the select method to extract all odd numbers into a new array.

number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p number.select{|num| num.odd?}
p number

#=======================================
# Append 11 to the end of the original array. Prepend 0 to the beginning.

p number
p number[0] = 0
p number.unshift(0)
p number << 11
p number.push(11)

#=====================================
#Get rid of 11. And append a 3

p number.pop
p number.push(3)

# Get rid of duplicates without specifically removing any one value.

p number.uniq.map{|ele| [ele,number.count(ele)]}
# unable to understand this flow in block

#What's the major difference between an Array and a Hash?
# Arrays have values and are ordered
# hashes have both key and associated values and are may be unordered

