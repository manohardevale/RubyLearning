# Hashes are advanced collections similar to dictionaries in python
#Basic example of a hash 
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

# creating a new hash 
my_hash = Hash.new
p my_hash
#=====================================================

#Accessing values from hashes 
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

p shoes["summer"]   #=> "sandals"
#=====================================================
#Accessing non-existant key returns nil
p "accessing 3rd element in hash : #{shoes[3]}"
p shoes[3]
# ===================================================
#fetch method in hashes which raises error when trying to access non-exiting keys in hash
begin 
  shoes.fetch("hiking")
rescue
  "No item 'Hiking' in shoes"
end

# return a default value instead of raising error when key not found

p shoes.fetch("hiking","Hiking shoes does not exist, hiking boots availale")
##====================================================
# editing the hash Data
# adding data to hash by calling key and passing value to it

shoes["fall"] = "sneakers"
shoes

#editing existing value of a hash 
shoes["summer"] = "slippers"
p shoes

#Removing the data from hash
shoes.delete("summer")
p shoes

#===================================================

# Hash methods specific to hashes #keys and #values

books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

p books.keys
p books.values
p books.key("Jon Krakauer") # here when passing value it returns the key for that value
p books.value?("Jon Krakauer")# returns true/false for the value specified if it exists in the hash
#=====================================================

#merging 2 hashes

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }

p hash1.merge(hash2)
# when merged output is {"a"=>100, "b"=>254, "c"=>300} where value of b is changed and hash2 overwrites hash1 values for same keys 

#  Symbols --> practically symbols are frequently used as compared to the rocket syntax 

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

#note {9: "value"} will not work and will throw error
#====================================================

#Accessing values from hash with symbols
p american_cars[:ford]
p japanese_cars[:honda]
#====================================================


# Iterating over hashes
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

#====================================================

# hashes can have parameters to have consistent output

def greeting(name, options = {})
  if options.empty? 
    puts "Hi, my name is #{name}"
    else
    puts "Hi, my name is #{name}, age is#{options [:age]}"+ "years and I live in#{options[:city]}"
  end
end

greeting("Bob")
greeting("joe", {age: 16, city: "Bangalore"})

# we can also below statement to execute method only if hash is last argument (Normally used way)
greeting("Hans", age: 20, city: "Bangalore")

#====================================================
# note: very commonly symbols are used as keys in hashes
# but hashes keys can have different data types also.

diff_type_keys_hash = {
  "height" => "6 ft",
  ["weight"] => "60 kg",
  1 => "one",
  45.676 => "Fourty five point something"  
}

p diff_type_keys_hash.keys
p diff_type_keys_hash.values

#========================================================

# common hash methods
# key? check if a key exists in hash and returns true/false

name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}

p name_and_age.key?("Bob") #-> true
p name_and_age.key?("bob") #-> false

# using select method 
p name_and_age.select{|k,v| k=="Joe"}

# using fetch method 
p name_and_age.fetch("Steve")
# accessing key that dosent exist will throw error
# p name_and_age.fetch("Larry")
# messaging if the key does not exist using the same fetch statement
p name_and_age.fetch("Larry","Larry not in hash")

# using the to_a method which converts the hash into an array, and is non ditructive

p name_and_age.to_a # each key value is an array
p name_and_age

# accessing all keys and values in hash
p name_and_age.keys
p name_and_age.values

# Note : after 1.9 version of ruby hashes maintain order preior version order was not maintained.
