def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

puts add(10,20)
puts subtract(40,20)

# passing the above methods as parameter to this multiplication Method (Nested methods)

def multiply(num1, num2)
  num1 * num2
end

puts multiply(add(5,5),subtract(4,2))

# Case 2:=====================================

puts add(multiply(5,5),subtract(100,50))

# case 3:==========================================
puts add(multiply(10,10),add(multiply(2,2),10))

