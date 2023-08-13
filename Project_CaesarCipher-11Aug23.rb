=begin
CaesarCipher -- This is an simplest encryption technique. Here if we specify a shift number, say left shift of 3,  then D would be the first letter of the alphabet in place of A,
E would be 2nd letter in place of B,
F in place of C and so on.

Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string: as below

> caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
=end


# class CeaserCipher
alphabet = { 1=>"a", 2=>"b", 3=>"c", 4=>"d", 5=>"e", 6=>"f", 7=>"g", 8=>"h", 9=>"i", 10=>"j", 11=>"k", 12=>"l", 13=>"m", 14=>"n", 15=>"o", 16=>"p", 17=>"q", 18=>"r", 19=>"s", 20=>"t", 21=>"u", 22=>"v", 23=>"w", 24=>"x", 25=>"y", 26=>"z"}
# end

puts alphabet[10]
puts alphabet[29]

# str = "kill"
# # str.each_char{|ele| p ele}
# ("a".."z").each do |ele|
#   puts ele
# end

# ("a".."z").each{|ele| str.each_char{|c| puts c if ele == c}}


# ("a".."z").to_a.each_with_index{|ele,index| str.each_char{|c| puts "#{c}:#{index}" if c == ele}}

# str.each_char{|c| ("a".."z").to_a.each_with_index{|ele,index| puts "#{c}:#{index}" if c == ele}}


# ("a".."z").each_with_index{|val, index| puts "#{val} : #{index+5}"}
# # increasing the index value only increases the index number and does not repeate through the alphabtes once after 'z' is complete. 

# str = "What"
# str.each_char {|ele| p "#{ele}"} 

# # to convert the above string to ciphered value say shift by 3
# ("a".."z").to_a.each_with_index{|val,index| puts "#{val}:#{index}"}

# puts "#{("a".."z").to_a[28]}"

# alpha = %w[a..z]
# for i in alpha
#   p alpha(28) 
# end


# puts "Enter the shift number for the ceaser cipher"
# jump = gets.chomp
# puts "Enter string or sentance to be ciphered"
# str = gets.chomp.to_s

#This works only for chars between a-z but once anything that crosses 'z' this will print only blank need to check how to restart from 'a' once 'z' is reached for any word

jump = 5 
str = "zee"

  str.each_char do |ele|
    ("a".."z").each_with_index do |item,index|
      if item == ele 
        index = index + jump
         # puts "#{index.}"
        print ("a".."z").to_a[index]
  end
    end
  end

  # ("a".."z").each{|ele| puts ele.ord}
  # puts ("a".ord.."z".ord)
  # puts "x".sum
puts "================================"  
jump1 = 3 
str1 = "back"

# str1.each_char {|ele| puts "#{(ele.ord) + jump1}"}
# how to start over again from a=97 if it reaches z=122 or something after adding jump reaches more than 122 

  # ("a".."z").each{|ele| puts ele.ord}
  # str1.each_byte do |c|
  #   if c.between?(97,122)
  #     puts  c+jump1
  #   end
  # end


#=========================================================================================================
def char_range(in_str,jump_num) 
  in_str.each_char do |ele|
    if (ele.ord+jump_num).between?(65,90) || (ele.ord+jump_num).between?(97,122)
      print "#{(ele.ord+jump_num).chr}"
    elsif (ele.ord+jump_num) < 65 || (ele.ord+jump_num) > 90 || (ele.ord+jump_num) > 122
      print "#{(ele.ord+jump_num-26).chr}"
    end
  end
end

char_range("What a string!", 5)
#=================================================================================

# To print the ciphered string in the same line but not taking spaces into consideration. 
def ceiser(string, jump_number)
  string.each_char do |char| 
    #to check if char is uppercase or lowercase
    if (char.ord).between?(65,90) || (char.ord).between?(97,122)
      new_text = (char.ord+jump_number)
    # to check for the char out of [a..z] and [A..Z]
    if (new_text) < 65 || new_text > 122 || new_text.between?(90,97)
      new_text-=26 
    end 
     print new_text.chr
   end
end
end
ceiser("What a string!", 5)


#================================================================================
# taking the spaces into consideration along with small and caps chars 











