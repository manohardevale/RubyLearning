# case 1
# accessing elements in an array using for loop
names = %w[Bob Joe Steve Janice Susan Helen]
for i in names do
  puts i
end

# case 2 iterator using each  method
names.each { |name| puts name }

# Iterate over names and also print index numbering for each element
i = 1
names.each do |name|
  puts "#{i}.#{name}"
  i += 1
end
