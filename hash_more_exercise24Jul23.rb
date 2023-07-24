#Ask user to give name and marks of 10 different students. Store them in hash.

x=1
student = Hash.new

while x < 4
  puts "Enter name for students"
  name = gets.chomp 
  puts "Enter marks for students"
  marks = gets.chomp.to_i
  student[name] = marks
  
  x += 1
end

p student
#==========================================

#student = {["mm",45]["jj",58]["qq",28]}
#sort the hash created above according to marks
p student.sort_by{|k,v| v}
p student.class
#sort the hash according to name(alphabetically)
p student.sort_by{|k,v| k}
p student.class
#===========================================


#Use hash to store antonyms of words. E.g.- 'Right'=>'Left', 'Up'=>'Down', etc. Display all words and then ask user to enter a word and display antonym of it.
#atonyms = meaning opposite 
opposites = {'above' => 'below', 'top'=> 'down', 'right' => 'left', 'white' => 'black', 'solid' => 'liquid'}

puts "Enter a word from list (above,top,right,white,solid) to see the opposites"
word = gets.chomp
p opposites.fetch(word)

#===========================================

