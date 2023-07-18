# number convertion
puts "#{21.to_f}" #output => 21.0
puts (23.43).to_i #output => 23

# comments will start with a #
# Check if the number is an odd or even using number methods

puts "6 is odd : #{6.odd?}"
puts "7 is even : #{7.even?}"
puts "8 is even : #{8.even?}"
puts "9 is odd : #{9.odd?}"

# Strings usage with single and double quotes - interpolation
#Specifically, string interpolation and the escape characters work only with double quotes

# String concatination 3 types

puts "Welcome " + "to " + "Bangalore" + " using + operator"

puts "Welcome " << "to " << "Bangalore" << " using << operator"

puts "Welcome " .concat("to ").concat("Bangalore").concat(" using concat() method")

# Accessing the substrings in a string using the indexes

word = "hello"
puts "Hello[0] is #{word[0]}"
puts "Hello"[02]
puts "Hello"[0..3]
puts "Hello"[0..10] # no error displayed trying to access the index value thats not available
puts "Hello"[-4..-5] #no value output only blank


# Escape charaters
puts "Hello\n\tHello"
puts "aaaa\n\tAAAA"
puts "bbbbb\rB" # does not work with '' 
puts "bbbbb\rBB"
puts "bbbbb\rBBB"


# String interpolation
name = "Odin"

puts "Hello #{name}" # Hello Odin
puts 'Hello #{name}' #Hello #{name}

# String methods in RUBY
puts "hello".capitalize
puts "Hello".capitalize! # did not return nil as there were no changes to made to the word
puts "123hello".capitalize # capital conversion happen only to the 1st char 

#upper/lower case conversions
puts "Hello".upcase
puts "hello".downcase

# To check if the chars are a part of the String
puts "Hello".include?("ll")
puts "Hello".include?("3")

# check if the string is empty? using this empty?
puts "String \"Hi\" is empty? #{"Hi".empty?}"
puts "String \"\" is empty?  #{"".empty?}"

# check length of String
name = "India"
puts "lenght of the word #{name} is #{name.length}"

# reverse String
puts "Reverse of #{name} is #{name.reverse}"

#split --> to split words from a sentance
sentance = "Nature is good"
puts "Splitting words from #{sentance} we get a list of words in sentance defined #{sentance.split}"

#split chars from a word
word = "BANGALORE"
puts "chars in word #{word} are #{word.split("")}"

#strip removes the blank spaces before and after the word/sentance
puts "word stripped results in #{sentance.strip}"
puts "word stripped results in #{word.strip}"
puts "   BANGALORE   ".strip
puts "   BANGALO  RE   ".strip
puts "    Nature is good     ".strip
puts "  Nature,    is,   good   ".strip

puts "   \tBANGALORE\n\n   ".strip()


# sub strings and string replacement
puts "he77o".sub("7","l") #==> "hel7o" replace only 1st occrance

puts "he77o".gsub("7","l") #--> "hello" grap all occurance of specified term and replace all occurance

puts "Hello All, Hello Bangalore, Hello India".gsub("Hello","Hi")
puts "casablanca".gsub("a","@")

# Insert a word/char to the end using insert method
puts "Hello".insert(0," Do ")
puts "Hello".insert(-1," Me")
puts "Have a Night".insert(6," good")

puts "Robots are future".replace("Machine") #oops replaces the complete original string with the given String
name1 = "machine"
puts name1.replace("a")

puts "hello world".delete("world") # note that all the characters in the delete parameters are deleted from the original string and rest is printed

puts "hello".delete("l")

puts "what?".prepend("!")
puts "!".prepend("Hello world")

#converting other objects to strings

a = 5.to_s
puts a.class # checking the object type of a 

b = nil.to_s
puts b.class # checking the object type of b
puts nil.to_s
print b

puts :symbol.to_s

#checking the memory location of variables stored
name="krish"
puts name.object_id
name="hari"
puts name.object_id
name="hari"
puts name.object_id

puts "krish".object_id
puts "hari".object_id


puts :symbol.name.object_id
puts name
# puts :symbol.hari.object_id

