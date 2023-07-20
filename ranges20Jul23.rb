p 'start and end value inclusive when two dots for range'
for i in 1..20 do
  p i
end

p 'Exclusive of only end value when three dots for range'
for x in 1...20 do
  p x
end

# with alphabets
# start end inclusive
for ele in ('a'..'m') do
  p ele
end

# end exclusive
for ele in ('a'...'m') do
  p ele
end
#===================================================================

# upto and downto loops these are basically used by specifying required start and end points with stepping through series of numbers
5.upto(10) { |num| puts "#{num}" }

# a.upto(z){|ele| p "#{ele}"}  Does not work with chars/alphabets

5.upto(10) { |ele| p "#{ele}" }

# using the step method to step through elements in a range
puts (10..20).step(2).to_a
#=====================================================================

if (('a'..'z') ==='v')
  puts ("v lies in this range")
end

if ((1..100)===199)
  puts ("num in this range")
else
  p ("Num not in range")
end

#====================================================================
#reversing a range of numbers
for ele in ('a'..'z')
  p ele
end

puts ('a'..'z').to_a.reverse
#======================================================================

(10..20).step(2) do |i|
p i
end