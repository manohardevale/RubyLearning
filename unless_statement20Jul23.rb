# candidate voting permission case

def vote
  puts 'Enter age'
  age = gets.chomp.to_i
  if age >= 18
    p 'Eligible to vote'
  else
    p 'Not eligible to vote'
  end
end

vote

# Unless you are the MANAGER cant approve loans

puts 'Enter a designation wrt Bank like clerk, manager, accountant, cashier'
designation = gets.chomp

if designation != 'manager'
  p 'Cant approve loans'
else
  p 'Authorized to approve loans'
end

# Unless you have the right fit dont buy the shoes

def buyshoes
  puts 'Enter your shoe size'
  shoe_size = gets.chomp.to_i
  if shoe_size == 9
    p 'Can buy this it fits'
  else
    p 'Dont buy, not a fit'
  end
end

buyshoes
