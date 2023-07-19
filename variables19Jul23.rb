# Assigning values to variables and variables pointing to other variable

a = 4
b = a
a = 7
puts b # remains b = 4 as was assigned earlier

# getting data from user using gets method i.e., gets refers to get string

puts 'Enter your first name'
first_name = gets.chomp
puts "Hello #{first_name}"

puts 'enter your last name'
last_name = gets
full_name = ' ' + first_name + ' ' + last_name
puts "Hello #{first_name.concat(+' ' + last_name)}"
puts 'Hello'.concat(full_name)
