#Given below is the menu of a pizza restaurant:
# |Veggie Pizza| $7 | |Chicken Pizza| $10 | |Cookies| $3 |
# Mary is having a party and she has ordered the following items:
# |Veggie Pizza| 5| |Chicken Pizza| 7| |Cookies | 20|
# Write a program that will print the total cost like this:
# Total cost of your order is xxxxx.

# pizza.each do |name,cost|
#    p "ordered = #{name}, cost = #{cost}$" 
# end

class Piz
  
  # def initialize(item,quantity)
  #   @item = item
  #   @quantity = quantity
  # end
  
  def get_item(item)
    pizza = {"Veggie Pizza" => "7", "Chicken Pizza" => "10",
"Cookies" => "3"}
    if pizza.include?(item) && item == "Veggie Pizza"
      p pizza["Veggie Pizza"]
      return pizza["Veggie Pizza"]
    end
    if pizza.include?(item) && item == "Chicken Pizza"
      p pizza["Chicken Pizza"]
      return pizza["Chicken Pizza"]
    end
    if pizza.include?(item) && item == "Cookies"
      p pizza["Cookies"]
      return pizza["Cookies"]
    end
    if pizza.include?(item) == false 
      p "Not a valid input please enter one of the pizza names"
    end
  end


  
  def total_cost(item, quantity)
    item_cost = get_item(item)
    total = item_cost.to_i * quantity
    p "Total cost = #{total}"
  end
end

pizo = Piz.new 
pizo.total_cost("Cookies", 5)

#=========================================================================
#optimizing the above code for user input

class Piz
  attr_accessor :item, :quantity 
  def initialize(item,quantity)
    @item = item
    @quantity = quantity
  end

  @@pizza = {"Veggie Pizza" => "7",
              "Chicken Pizza" => "10",
              "Cookies" => "3"}

  def get_item(item)
    
    if @@pizza.include?(item) && item == "Veggie Pizza"
      p @@pizza["Veggie Pizza"]
      return @@pizza["Veggie Pizza"]
    end
    if @@pizza.include?(item) && item == "Chicken Pizza"
      p @@pizza["Chicken Pizza"]
      return @@pizza["Chicken Pizza"]
    end
    if @@pizza.include?(item) && item == "Cookies"
      p @@pizza["Cookies"]
      return @@pizza["Cookies"]
    end
    if pizza.include?(item) == false 
      p "Not a valid input please enter one of the pizza names"
    end
  end


  def total_cost()
    puts "Select from:Veggie Pizza:$7, Chicken Pizza: $10 Cookies:$3"
    item = gets.chomp
    puts "Enter the quantity of #{item}"
    quantity = gets.chomp.to_i
    item_cost = get_item(item)
    p "item cost =#{ item_cost}"
    p "quantity =#{ quantity}"
    total = item_cost.to_i * quantity
    p "Total cost = #{total}"
  end
end

# pizo = Piz.new("Veggie Pizza", 3)
# pizo.total_cost()
#============================================================================

#Given below is the data of some US cities and how many days it rained there in the year 2018:
# Write a program to find the names of all the cities where it rained more than 100 days. Store these city names in an array and display the array result on the screen.

data = {
  "Houston" => 104,
  "Atlanta" => 113,
  "Austin" => 88,
  "Baltimore" => 116,
  "Boston" => 126,
  "Dallas" => 81
}

data.each do |k,v| 
  p "City= #{k} => Days rained #{v}" if v>100 
end
#===========================================================================


cities = ["Paris", "London", "Los Angeles", "Chicago"]
#print names that start with L
puts cities.select {|ele| ele[/\bL/]}
#print names that start with C
puts cities.select {|item| item[/\bC/]}
puts cities.select{|ele| ele.start_with?("L")}


names = ["Mary", "Kevin", "John", "Philip"]
#Find names having more than 4 letters
puts names.select{|ele| ele.length>4}

arr = [05,"manohar",1980]
DOB,name,year=arr
p DOB
p name
p year

arr1 = [1,2,3,4]
a, b, c, d, e = arr1
puts "a is#{ a}"
puts b
p c
p d
p e #"This results in nil as there is nothing assigned to it"

#=============================================================
#quicker way of creating array of symbols
array_of_symbols = %i[green red blue]
p array_of_symbols

#quicker way of creating a string Array
names = %w[Mary Kevin John Philip]
p names

#==========================================================

#Here we have a hash of students with their grades:
# Write a program to find all students who got either the A grade or the B grade.
students = {  "John" => "C",
              "Sally" => "B",
              "Adam" => "A",
              "Nancy" => "C",
              "Kelly" => "A" }

students.select do |name,grade|
  if grade == "A" or grade == "B"
    p name
  end
end 

# method 2 using select
stu_arr = students.select do |k,v|
  v == "A" or v == "B"
end
puts stu_arr

#reject is the opposite of select. Elements that meet the give condition get rejected.
# method 3 using reject
stu_arr1 = students.reject{|k,v| v !="A" and v!="B" }

puts stu_arr1 
#==============================================================

#This is a game of colors. Red gets 50 points. Yellow get 40 points. Any other color gets 30 points.
#Write a program so that the hash returns the right value for pink color.
hash = { "red" => 50,
         "yellow" => 40
         }
hash.default =30

point_for_pink = hash["pink"]
puts point_for_pink

# default value of hash using the Hash.new 
h = Hash.new(0)
hash = h.merge({ "name" => "John Smith","city" => "Chicago"})

age = hash["age"]
puts age # since age is not a part of hash its default assigned during creation of hash is 0
#==========================================================

# regular expressions
# to check if a number is 3 digit number or not
word = "123" 
regex = /\d\d\d/
puts word =~ regex
# returns 0 if condition is true.

word1 = "76PEJRT" 
pattern = /\d\d/
p "matched" if word1.match(/\d\d\d/)
p "scan returns matched content" if word1.scan(/\d\d/)

"TGF87SDD" =~ pattern

#Match Multiple Digits
word1 = "76PEJRT"
p "matched 2 digits next to each other" if "76PEJRT" =~ /\d{2}/

#We have an array with names of people. The names are in an inconsistent manner. Write a program so that the names are printed as shown below:
# expected output
# 1. Linh Tran
# 2. Carlos Alberti
# 3. Lao Xun
# 4. Renu Sen

# names = []
# names << " linh tran"
# names << " carlos alberti "
# names << "lao xun"
# names << " renu sen"

# #method1
optimize_arr = names.each do |a|
  p a.strip 
end 

a = 1
optimize_arr.each do |ele|
  p "#{a}" + "." + "#{ele.capitalize}"
  a+=1
end

# #method2
a=1
proper_names = names.each do |name, index|
  first_name, last_name = name.split   
  f_name = first_name.strip.capitalize
  l_name = last_name.strip.capitalize
  p "#{a}" + "." + f_name + " " + l_name
  a+=1
end

# #=============================================================
# # Given below is the name of a person:
# # Paul Thomas Anderson
# # Write a program which will print his name in the following format: P.T.Anderson

# #method1
name = "Paul Thomas Anderson"
name1 = p name.split
p name1[0][0] + "." + name1[1][0] + "." + name1[2]


# # method2
first_name, middle_name, last_name = name.split

first_letter_of_fn = first_name[0]
first_letter_of_mn = middle_name[0]
short_name = "#{first_letter_of_fn}.#{first_letter_of_mn}.#{last_name}"
puts short_name

# #============================================================


# methods with self.method names are called class methods.
class ClassName
  def self.method_name
  # do something
  end
end

#example below classs method can be directly called on Car class
class Car
  def self.wheels
    puts "The car has 4 wheels."
  end
end

Car.wheels

#instance method can only be called on the instance of a class.
class ClassName
  def methodname # mrhod name without self is an instance method. Which cna be called only with instance of class
    #do Something
  end
end

#=============================================================

# Create a class named Number.
# Add a Class method named addition which accepts two parameters and returns their sum.
# Call the addition method with 3.6 and 4.3 as parameters and display the output on the screen.

class Number
  def self.addition(a,b)
    a + b
  end
end

p Number.addition(3,5)
  

#============================================================
#safe navigation operator

class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

user1 = User.new("Brad")

user1 = nil


#user1&.name is same as user1 && user1.name
if user1&.name
  puts "User1 and user1.name exist on class User"
end

#=============================================================

