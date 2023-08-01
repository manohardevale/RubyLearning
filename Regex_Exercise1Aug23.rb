# a) Check whether the given strings contain 0xB0. Display a boolean result as shown below.

line1 = 'start address: 0xA0, func1 address: 0xC0'
line2 = 'end address: 0xFF, func2 address: 0xB0'

p line1.match?(/0xB0/)
p line2.match?(/0xB0/)
# I dont get the method help for many 

#=========================================================
#b) For the given input, print all lines containing the string two.

readfile = File.open("Files-Folder/input.txt","r").readlines 
readfile.each {|line| puts line}
# readfile.match?(/\w+ two/ [^"].*[^"])
# readfile.match?(/\b"\w two.*\b"/)
# p readfile.match?(/^(readline.include?('two')$"/))



# read_text = input.readlines do {|line| p line}
# p input.match(/two/ w+/^by/)
#==========================================================
#using the sub and gsub methods for finding and replacing the strings(sub=substituting)
puts "My cat eats catfood".sub("cat", "dog")
#=> My dog eats catfood substitutes only cat as the other is catfood
puts "My cat eats catfood".sub(/cat/, "dog")
#=> My dog eats catfood even here /cat/ matches its literal value cat

# cases where we want match and replace all values we use gsub
puts "My cat eats catfood".gsub("cat", "dog")

#==============================================================

str="My cat goes catatonic when I concatenate his food with Muscat grapes"
puts str.gsub("cat", "dog")
puts str.sub("cat","dog") # however this does the work but using a regex with using the boundaries will give the result by replacing the only the word
# with regex match
puts str.gsub(/\bcat\b/, 'dog')

#===========================================================
# string methods scan and match used to perform some operation on matching string after pattern matching

contracts_arr =    
   ["Hughes Missile Systems Company, Tucson, Arizona, is being awarded a $7,311,983 modification to a firm fixed price contract for the FY94 TOW missile production buy, total 368 TOW 2Bs. Work will be performed in Tucson, Arizona, and is expected to be completed by April 30, 1996. Of the total contract funds, $7,311,983 will expire at the end of the current fiscal year. This is a sole source contract initiated on January 14, 1991. The contracting activity is the U.S. Army Missile Command, Redstone Arsenal, Alabama (DAAH01-92-C-0260).",
   "Conventional Munitions Systems, Incorporated, Tampa, Florida, is being awarded a $6,952,821 modification to a firm fixed price contract for Dragon Safety Circuits Installation and retrofit of Dragon I Missiles with Dragon II Warheads. Work will be performed in Woodberry, Arkansas (90%), and Titusville, Florida (10%), and is expected to be completed by May 31, 1996. Contract funds will not expire at the end of the current fiscal year. This is a sole source contract initiated on May 2, 1994. The contracting activity is the U.S. Army Missile Command, Redstone Arsenal, Alabama (DAAH01-94-C-S076)."]
# find each contract's dollar amount using enumeration and match

# contracts_arr.each {|arr| p arr}
contracts_arr.each do |contract| match = contract.match(/\$[\d,]+/)
  puts match
end
# + his is the greedy operator and it will match the pattern that precedes it one or more times hence will stop as we have a space after number in our case else will end in problems
# ===========================================================
#Using the sample text and code snippet above, modify the code to print out the dates in each contract.
contracts_arr.each do |contract| match =
    contract.match(/\w+ (\d{1,2}), (\d{4})+/)
  puts match
end
# this will show the 1st occurance of date only

#==============================================================
contracts_arr.each do |contract| match =
    contract.match(/(.+?)\w+ (\d{1,2}), (\d{4})+/)
  puts match
end
