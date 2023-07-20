# print numbers until it reaches count 10 using until loop
i = 1
until i==10 do
  puts "I am #{i}"
  i+=1
end
#===============================================================


# Dont print name until counter reaches 100
count = 0
puts "Enter name"
name = gets.chomp
puts "#{count}"
until count==20 do
  puts count
  count+=1
end
puts name

#==============================================================

#multiplication table using until
i = 1
puts "enter num"
num = gets.chomp.to_i
until i>10 do
  result = i * num
  p result
  i+=1
end

#=========================================================

