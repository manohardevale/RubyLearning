# rubys methods used for printing  
STDOUT.print("This is ", 100, " percent.\n")
p "printing using p"
puts"priting using puts"
print"priting using print \n"
putc"putc prints 1st letter for specified string - King"
putc"King \n"
puts
#==============================================
rubys reading from console
inp = $stdin.read
puts inp

#===============================================
# open a file in write mode and write using puts and close file
f = File.open('output.txt','w')
f.puts"The ruby tutorial"
f.close

# open the last written file in append mode and write a few more strings into it
f = File.open('output.txt','a') do |f|
  f.write"Ruby"
  f.write("Java\n")
  f << "Python\n"
end

# open the file written so far and print it to the console and once file reading and writing is complete close file. 
f = File.open("output.txt") 
while line = f.gets do 
  puts line
end

f.close
#===============================================

# working with directories in RUBY
# Dir.mkdir "raju"
# puts Dir.exist? "raju"
# puts "raju directory created in the same workspace"

# begin
# if Dir.exists? "raju"
#   puts Dir.pwd
# rescue "cant print/access pwd in win"  
  
# end
# end

# Dir.rmdir "raju"
# p Dir.exist? "raju"
# p "raju directory no more available"

# fls = Dir.entries '.'
# p fls.inspect

#===============================================

# # reading and writing to files
Dir.chdir("./Files-Folder")
file = File.new("master.txt", 'w+')
file = File.open("master.txt", 'a+')
file.puts("Writing this to master text file")
file.write("Writing text through the write method of ruby")
# file.close

Dir.chdir("./Files-Folder")
file = File.open("master.txt", 'r+')
#IO.readline method usage
arr = IO.readlines("master.txt")
puts arr[0]
p arr[1]

# # using the foreach method of IO 
if File.exist?"master1.txt"
  IO.foreach("master1.txt"){|block| puts block}
else
  puts"No data, file empty"
end

# # renaming and deleting the files
File.rename("master.txt","master1.txt" )
arr = IO.readlines("master1.txt")
puts arr[0]
p arr[1]

# #deleting a File
File.delete("master1.txt")
if File.exist?"master1.txt"
  p "master1.txt File exists"
else 
  p "File does not exist"
end

# to check if the file name provided is a file
p File::directory?("master1.txt")
to check if the mentioned filename is a directory 
p File::directory?( "/usr/local/bin/master1.txt" )
missing something here how to check if its a file or directory
file.close

#==============================================

# to check if a file is readable, writable, executable
p "+==========================================="
Dir.chdir("./Files-Folder")

file = File.new("newfile.txt", 'a+')
# p File.exist?("newfile.txt")
file.write("Writing")

#IO.readline method usage
arr = IO.readlines("newfile.txt")
puts arr[0]
p arr[1]
p arr.size

p File.readable?("newfile.txt")
p File.writable?("newfile.txt")
p File.executable?("newfile.txt")
p File.size?("newfile.txt")
p File.zero?("newfile.txt") # check if file size is 0
p File.ftype("newfile.txt")# to check if it is a file, directory, link, socket etc
#======================================
# commands used to when file was created

p File::ctime("newfile.txt")
p File::mtime("newfile.txt")
p File::atime("newfile.txt")

#===============================================
# get the list of files in directory
p File::directory?("/Files-Folder")
p file.path

# Dir.chdir dir.chomp("/Files-Folder") do 
#   puts Dir.pwd 
#   p Dir.entries("/Files-Folder/")
# end