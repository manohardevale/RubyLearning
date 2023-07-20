# print name of the day when a day number is passed as parameter using the case statements

puts "Enter your day"
weekday = gets.chomp

case weekday
when "Monday"
  puts "1th Day"
when "Tuesday"
  puts "2nd Day"
when "Wednesday"
  puts "3rd Day"
when "Thursday"
  puts "4th Day"
when "Friday"
  puts "5th Day"
when "Saturday"
  puts "6th Day"
when "Saturday"
  puts "7th Day"

else
  puts "Not a valid day"
# end
#=======================================================================


#Tell student grades based on their scores
  
puts 'enter score'
score = gets.chomp.to_i

case score
when 0..35 then puts 'FAIL'
when 36..50 then puts '3rd Grade'
when 51..59 then puts '2nd Grade'
when 60..69 then puts '1st Grade'
when 70..100 then puts 'Distinction'
else puts "Out of score range"
end
#=======================================================================
  

  
# Loan approval using case statement
puts 'Enter a designation wrt Bank like clerk, manager, accountant, cashier'
designation = gets.chomp

case designation
when clerk then puts 'Not authorized for Loan Approvals'
when accountant then puts 'Not authorized for Loan Approvals'
when cashier then puts 'Not authorized for Loan Approvals'
when manager then puts 'Authorized for Loan Approvals'
else
  puts 'Not Bank employee'
end
