#Count the number of occurrence of each leter in word "MISSISSIPPI". Store count of every leter with the leter in a dictionary.

word = "MISSISSIPPI"
count = 0
x = 0
# p word.split("").flatten
# p word.chars
# p word[1]

word1 = word.downcase.chars.to_a
p word1.uniq
p word1.uniq.map{|ele|[ele,word1.count(ele)]}
# this program is same as finding the number of duplicate elements in a string or array of strings
p "==============="
#check if the same program works for checking repeated elements in below sentance
str = "ramayana rama katha"
str1 = str.downcase.chars.to_a
p "==============="
p str1.uniq
  p "==============="
p str1.uniq.map{|ele| [ele,str1.count(ele)]}


