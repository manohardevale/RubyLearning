# conditional statement ? <execute if true> : <execute if false>.

# Student marks and grade using ternary operator statement
marks = 84
grade = marks < 35 ? 'Fail' : 'Pass'
p grade

# multiple grades wrt marks in ternary operator statement(not recommended way of using ternery operator) Tried this and had syntax errors.
# puts "Enter your marks"
# marks = gets.chomp.to_i
# grade = ""
# grade = marks < 35 ? "Fail" : marks 35..50 ? "3rd Grade" : marks 51..59 ? "2nd Grade" : marks 60..69 ? "1st Grade" : marks 70..100 ? "Distinction"
# puts grade
