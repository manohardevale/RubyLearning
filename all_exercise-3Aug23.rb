# Bring the output to this form 
# John Vanderbilt
# Salt Lake City, USA 84103


person = {
  "name" => "john vanderbilt",
  "city_name" => "salt lake city",
  "country" => "usa",
  "zip_code" => "84103"
}

name = person["name"].split
res_name = name[0].capitalize + " " + name[1].capitalize
puts res_name

city = person["city_name"].split
res_city = city[0].capitalize + " " + city[1].capitalize + " " + city[2].capitalize
puts res_city

puts res_name
puts res_city + ", " + person["country"].upcase + " " + person["zip_code"]

#========================================================
#Properly Format Google Office Address
# Given below is the office address of Google:

# Key	=>Value
# name	=>Google Inc
# address	=>1600 Amphitheatre Pkwy
# city	=>Mountain View
# state	=>CA
# zip	=>94043
# country	=>USA
# Write a program which uses 4 puts statements to print the office address in the format as shown below:

# Google Inc
# 1600 Amphitheatre Pkwy
# Mountain View, CA 94043
# USA

office = {
  "name" => "Google Inc",
  "address" => "1600 Amphitheatre Pkwy",
  "city" => "Mountain View",
  "state" => "CA",
  "zip" => "94043",
  "country" => "USA"
}

puts office["name"]
puts office["address"]
puts office["city"] + ", " + office["state"] +" "+ office["zip"]
puts office["country"]

#==============================================================

#Write a program that will print John's grade based on the following conditions:

# If the score is 100, then print You got A+ grade.
# If the score is more than 80 and less than 100, then print You got A grade.
# If the score is more than 60 and less than 81, then print You got B grade.
# If the score is 60 or less than 60, then print You got C grade.
# Use if and else conditions to solve this problem.


  score = 65

  if score == 100 
    p "A+ grade"
  end
  if score>=81 and score<=100
    p "you got A grade"
  end
  if score>=61 and score<=81 
    p "you got B grade"
  end
  if score<=60 
    p "you got C grade"
  end
 #============================================================

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

pizo = Piz.new("Veggie Pizza", 3)
pizo.total_cost()