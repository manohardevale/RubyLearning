text = "A regular expression is a sequence of characters that define a search pattern."

# to check "charater" and "sentences" in the above string.
matches = text.match(/character/)
p matches

# finding the matches using Anchors i.e., boundaries i.e., beginning and end of a line

p "A at the beginning of string" if text.match(/^A/)
p "'O' at the beginning will be printing only if condition true" if text.match(/^O/) 

p "string 'character' part of sentance" if text.match(/character/)
# to check if 'character' present in text, will not match as \b will try to match the exact word "character" but text has 'characters' which has a 's' to the end. Hence wont match
puts 'Found the word "character".' if text.match(/character\b/)

#=============================================================
#character classes
# Character classes are used to find all the matches in a specific string/word/sentance.
# method match returns an object when pattern matches
# scan method returns an array of all matching patterns
text1 = "A regular expression is a sequence of characters that define a search pattern."

p text.scan(/\b[aeiou][a-z]*\b/) #=> ["expression", "is", "a", "of", "a"] returns all words that start with any of the owvels

# starts with a word boundary,
# followed by a character that is either “a”, “e”, “i”, “o”, or “u”,
# and potentially (*) followed by any character between “a” and “z”, and
# finally ends with a word boundary.

# * = matches all none, 1 or more character words
# + = matches all words with more than 1 character (1 char words excluded)
# ? = matches all words in condition which are not more than 2 characters 
# if no quantifier is mentioned it matches all words which are not more than 2 characters like 'is', 'of' etc
#Here’s a list of common classes:

# \d is the same as [0-9] (any digit)
# \D is the same as [^0-9] (everything except digits)
# \w is the same as [A-Za-z_\-], called word character (i.e. this allows all lowercase and uppercase latin letters, as well as underscores and dashes)
# \W is the same as [^A-Za-z_\-] (everything that is not a word character)
# \s means “any whitespace”, including spaces, tabs, and linebreaks
# \S everything that is not whitespace
# .* matches “any character, zero, or any number of times”

#==============================================================


