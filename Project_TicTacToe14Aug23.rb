# creating a 3x3 matrix in 2d 

class Display_status
  attr_accessor :row1, :row2, :row3, :new_row1, :new_row2, :new_row3
  
  def initialize()
    @row1 = row1 = %w[1 2 3]
    @row2 = row2 = %w[4 5 6]
    @row3 = row3 = %w[7 8 9]
    @new_row1 = new_row1  
    @new_row2 = new_row2  
    @new_row3 = new_row3  
  end  
  
  def display_status
     p row1 
     p row2 
     p row3 
  end
end
  
class User_Input < Display_status
  def won 
    case n
    when (new_row1[0]) == (new_row2[1]) && (new_row1[0]) == (new_row3[2]) 
    puts "You WON!" 
    when (new_row1[0]) == (new_row1[1]) && (new_row1[0]) == (new_row1[2]) 
    puts "You WON!"
    when (new_row2[0]) == (new_row2[1]) && (new_row2[0]) == (new_row2[2]) 
    puts "You WON!"    
    when (new_row1[0]) == (new_row2[0]) && (new_row1[0]) == (new_row3[0]) 
    puts "You WON!"    
    when (new_row1[1]) == (new_row2[1]) && (new_row1[1]) == (new_row3[1]) 
    puts "You WON!"    
    when (new_row1[2]) == (new_row2[2]) && (new_row1[2]) == (new_row3[2]) 
    puts "You WON!"    
    else 
    puts "No player won its a Draw"
    end
  end
  
  def user_input
    new_row1 = Array.new(3)
    new_row2 = Array.new(3)
    new_row3 = Array.new(3)
    
    display = Display_status.new()
    display.display_status
    
    while new_row1.all? == false || new_row2.all? == false || new_row3.all? == false do 
      
      for i in 1..9  
        if i.odd? 
          puts "P1 enter your selection"
          p1_selection = gets.chomp.to_s
          
            case p1_selection
              when "1"
              display.row1[0] = "x"
              p display.display_status
              new_row1[0] = "x"
              when "2"
              display.row1[1] = "x"
              p display.display_status
              new_row1[1] = "x"
              when "3"
              display.row1[2] = "x"
              p display.display_status
              new_row1[2] = "x"  
              when "4"
              display.row2[0] = "x"
              p display.display_status
              new_row2[0] = "x"  
              when "5"
              display.row2[1] = "x"
              p display.display_status
              new_row2[1] = "x"  
              when "6"
              display.row2[2] = "x"
              p display.display_status
              new_row2[2] = "x"
              when "7"
              display.row3[0] = "x"
              p display.display_status
              new_row3[0] = "x"
              when "8"
              display.row3[1] = "x"
              p display.display_status
              new_row3[1] = "x"  
              when "9"
              display.row3[2] = "x"
              p display.display_status
              new_row3[2] = "x"  
            else
              p "Invalid selection"   
            end
           p1_selection    
        elsif i.even?
          puts "P2 enter your selection"
          p2_selection = gets.chomp.to_s
         
          case p2_selection
            when "1"
            display.row1[0] = "O"
            p display.display_status
            new_row1[0] = "O"
            when "2"
            display.row1[1] = "O"
            p display.display_status
            new_row1[1] = "O"
            when "3"
            display.row1[2] = "O"
            p display.display_status
            new_row1[2] = "O"  
            when "4"
            display.row2[0] = "O"
            p display.display_status
            new_row2[0] = "O"  
            when "5"
            display.row2[1] = "O"
            p display.display_status
            new_row2[1] = "O"  
            when "6"
            display.row2[2] = "O"
            p display.display_status
            new_row2[2] = "O"
            when "7"
            display.row3[0] = "O"
            p display.display_status
            new_row3[0] = "O"
            when "8"
            display.row3[1] = "O"
            p display.display_status
            new_row3[1] = "O"  
            when "9"
            display.row3[2] = "O"
            p display.display_status
            new_row3[2] = "O"  
          else
            p "Invalid selection"   
            # break if 
          end
        end
         p2_selection
      end       
      break if won 
      # || break if new_row1.all? == true && new_row2.all? == true && new_row3.all? == true
    end
  end
end

input1 = User_Input.new
input1.user_input



# while matrix.empty? == false
#   puts "Player1 Enter your selection"
#   x = gets.chomp
#   puts "Player2 Enter selection"
#   o = gets.chomp
#   break if matrix.empty? == true
# end


# 1 == matrix[0][0] = " "#"1"
# 2 == matrix[0][1] = " "#"2"
# 3 == matrix[0][2] = " "#"3"
# puts "----"
# 4 == matrix[1][0] = " "#"4"
# 5 == matrix[1][1] = " "#"5"
# 6 == matrix[1][2] = " "#"6"
# puts "----"
# 7 == matrix[2][0] = " "#"7"
# 8 == matrix[2][1] = " "#"8"
# 9 == matrix[2][2] = " "#"9"
# puts "----"

# case win 
# when diagonalRtoL
#   matrix[0][0] == "x" && matrix[1][1]=="x" && matrix[2][2] =="x"
#   print "You won!"
# when diagonalLtoR 
#   matrix[0][0] == "x" && matrix[1][1]=="x" && matrix[2][2] =="x"
#   print "You won!"
# when col1
#   matrix[0][0] == "x" && matrix[1][0] == "x" && matrix[2][0]=="x"
#   print "you won!"
# when col2
#   matrix[0][1] == "x" && matrix[1][1] == "x" && matrix[2][1]=="x"
#   print "you won!"
# when col3
#   matrix[0][2] == "x" && matrix[1][2] == "x" && matrix[2][2]=="x"
#   print "you won!"
# when row1
#   matrix[0][0] == "x" && matrix[0][1] == "x" && matrix[0][3]=="x"
#   print "you won!"
# when row2
#   matrix[1][0] == "x" && matrix[1][1] == "x" && matrix[1][2]=="x"
#   print "you won!"
# when row3
#   matrix[2][0] == "x" && matrix[2][1] == "x" && matrix[2][2]=="x"
#   print "you won!"
# else 
#   print "Invalid selection"
# end
  
