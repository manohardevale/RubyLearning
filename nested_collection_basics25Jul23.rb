# Nested array are arrays within array
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# Accessing elements fom nested arrays
# get Lewis and Young from teacher_mailboxes
p teacher_mailboxes[1][1]
p teacher_mailboxes[2][-1]
p teacher_mailboxes[2][3]

# creating nexted arrays
a = Array.new(3,Array.new(2))
p a #=> creates array [[nil, nil], [nil, nil], [nil, nil]]
# 3 = num of elements Array.new(2) will return a array of 2 elements 
a[0][0] = 1000
p a #=> will create [[1000, nil], [1000, nil], [1000, nil]] as 100 will be 1st element value

a[0][0] = 10, 4
p a #Output=>[[[10, 4], nil], [[10, 4], nil], [[10, 4], nil]]

# changing 1st element value changes all 1st elements of all arrays, to avoid this and change value of 1st element of 1st array as below

a = Array.new(3){Array.new(2)}
a[0][0]=20
p a # Output => [[20, nil], [nil, nil], [nil, nil]]

# Adding and removing data to nested arrays
# Adding to the end of array can be achieved by using the push or << method
test_scores << [100, 99, 98, 97]
p test_scores # not sure why this is printing [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

# changing specific value of a nexted array we need to mention the index specifically.
# p test_scores[0].push(100)
# p test_scores
# p test_scores.pop

# # iterating over nested array

# teacher_mailboxes = [
#   ["Adams", "Baker", "Clark", "Davis"],
#   ["Jones", "Lewis", "Lopez", "Moore"],
#   ["Perez", "Scott", "Smith", "Young"]
# ]

# teacher_mailboxes.each_with_index do |row, row_index| 
#   puts "Row:#{row_index} = #{row}"
# end
# p "++++++++++++++++++++++++++++++++++++++++"
# teacher_mailboxes.each_with_index do |item, index| 
#   puts "#{item}:#{index}"
# end

# To iterate over the inside elements of each row we will need to iterate again inside of 1st loop/enumerable

# teacher_mailboxes.each_with_index do |row,row_index|
#   row.each_with_index do |teacher,column_index| 
#     puts "Row:#{row_index}:Column#{column_index} = #{teacher}"
#   end
# end
# The above naming is just the way to indicate which row which column mailbox belongs which teacher,
#
p "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
# Using the above nested array of test scores, let’s determine if any student scored higher than 80 on everything.

# p test_scores.any? do |scores|
#   scores.all? { |score| score > 80 }
# end

# p test_scores.all? do |scores|
#   scores.any? { |score| score > 80 }
# end

#==========================================================

# Nested Hashes
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

# Accessing data

p vehicles[:alice][:year]
p vehicles[:caleb][:model]

# Adding removing data from nested hashes
# say Dave just bought a new vehicle details {year: 2021, make: "Ford", model: "Escape"} and we want to add it to the list vehicles
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
puts vehicles

# adding value red colour to daves car  
vehicles[:dave][:colour] = "red"
p vehicles
p "++++++++++++++++++++++++++++++++++++++++++++"
# delete blake and his car details
vehicles.delete(:blake)
p vehicles
p "++++++++++++++++++++++++++++++++++++++++++"
# delete specifically daves vehicle colour
vehicles[:dave].delete(:colour)
p vehicles
#==============================================
