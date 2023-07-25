#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# puts "Enter a valid word to search from the dictionary"
# word = gets.chomp

# using for loop
def substring(word)
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
count = 0
  for i in dictionary
    if i[0..-1]==word || i == word || i.include?(word)
      p "Complete word is => #{i}"
      count+=1
    end
  end
  p "The \'#{word}\' word repeated #{count} times"
end

substring("ow")

# method 2 using direct methods
def substring(word,dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])

puts "Enter a valid word to search from the dictionary"
word = gets.chomp

  words = dictionary.select{|dict| dict == word || dict.include?(word)}
  
  puts "Complete words are #{words} and \'#{word}\' repeated #{words.count()} times"
end

substring("ow")

# could not convert this into a hash which is pending









