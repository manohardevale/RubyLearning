#Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

puts "Enter your age"
current_age = gets.chomp
puts "In 10 years you will be #{current_age.to_i+10}"
puts "In 10 years you will be #{current_age.to_i+20}"
puts "In 10 years you will be #{current_age.to_i+30}"
puts "In 10 years you will be #{current_age.to_i+40}"

#Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

puts "Enter your name"
name = gets.chomp
i = 1
while i<=10
  puts name
  i+=1
end

puts "Enter your name"
name = gets.chomp
x = 0
10.times do 
  puts name
  x+=1
end

