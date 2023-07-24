#Create a Hash, with one key-value pair, using both Ruby syntax styles.

#using the rocket style
hash_1 = {
    '1' => 'one',
    '2' => 'two',
    '3' => 'three'  
}
p hash_1
# p hash1.class

# using the symbol style
hash_2 = {one: '1', two: '2', three: '3'}

p hash_2
# hash2.class

# Note always the value has '' in case of symbol method and also keys cannot start with numbers

hash_3 = {:one => "1", :two => "2", :three => "3"}

p hash_3

#=======================================
#Suppose you have a hash 

h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

p h[:b]

h[:e]=5
p h

h.each do
  |k,v| puts "key #{k} : #{v}" if v<3.5
end

#=======================================
#Can hash values be arrays? Can you have an array of hashes? (give examples)

# yes hash values can be arrays
s = {name: ['john','bob','mac'], grade: ['A','B','C']}

p s.keys
p s.values

#=======================================

#Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
