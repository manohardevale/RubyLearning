#Write a Ruby program to find most occurred item in a given array.
arr = [10, 20, 30, 40, 10, 10, 20]

p arr.uniq.map{|ele|[ele,arr.count(ele)]}.to_h

# copied this answer. 
