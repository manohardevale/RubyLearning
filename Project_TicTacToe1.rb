class Display_status
  attr_accessor :row1, :row2, :row3
  
  def initialize()
    @row1 = row1 = [1, 2, 3]
    @row2 = row2 = [4, 5, 6]
    @row3 = row3 = [7, 8, 9]
    # @board = Array.new(9).to_s
  end  
  
  def display_status
     p row1 
     p row2 
     p row3 
  end
end
  
class User_Input < Display_status   
  # @@win = false
  def user_input
    display = Display_status.new()
    display.display_status
    count = 0 
    for i in (1..9)  
      if i.odd? 
        puts "P1 enter your selection"
        p1_selection = gets.chomp.to_s
        
        # (0..9).select{|p1_selection| @board[p1_selection].nil?}  
        case p1_selection
          when "1"
          display.row1[0] = "x"
          display.display_status
          row1[0] = "x"
          # @board[p1_selection] = "x"
          when "2"
          display.row1[1] = "x"
          display.display_status
          row1[1] = "x"
          # @board[p1_selection] = "x"
          when "3"
          display.row1[2] = "x"
          display.display_status
          row1[2] = "x"  
          # @board[p1_selection] = "x"
          when "4"
          display.row2[0] = "x"
          display.display_status
          row2[0] = "x"  
          # @board[p1_selection] = "x"
          when "5"
          display.row2[1] = "x"
          display.display_status
          row2[1] = "x"  
          # @board[p1_selection] = "x"
          when "6"
          display.row2[2] = "x"
          display.display_status
          row2[2] = "x"
          # @board[p1_selection] = "x"
          when "7"
          display.row3[0] = "x"
          display.display_status
          row3[0] = "x"
          # @board[p1_selection] = "x"
          when "8"
          display.row3[1] = "x"
          display.display_status
          row3[1] = "x"  
          # @board[p1_selection] = "x"
          when "9"
          display.row3[2] = "x"
          display.display_status
          row3[2] = "x"  
        else
          i-=1
          p "Invalid selection"   
        end
          p1_selection  
  
        elsif i.even?
          puts "P2 enter your selection"
          p2_selection = gets.chomp.to_s

          # (0..9).select{|p2_selection| @board[p2_selection].nil?} 
          case p2_selection
            when "1"
            display.row1[0] = "O"
            display.display_status
            row1[0] = "O"
            # @board[p2_selection] = "O"
            when "2"
            display.row1[1] = "O"
            display.display_status
            row1[1] = "O"
            # @board[p2_selection] = "O"
            when "3"
            display.row1[2] = "O"
            display.display_status
            row1[2] = "O"
            # @board[p2_selection] = "O"
            when "4"
            display.row2[0] = "O"
            display.display_status
            row2[0] = "O"  
            # @board[p2_selection] = "O"
            when "5"
            display.row2[1] = "O"
            display.display_status
            row2[1] = "O"  
            # @board[p2_selection] = "O"
            when "6"
            display.row2[2] = "O"
            display.display_status
            row2[2] = "O"
            # @board[p2_selection] = "O"
            when "7"
            display.row3[0] = "O"
            display.display_status
            row3[0] = "O"
            # @board[p2_selection] = "O"
            when "8"
            display.row3[1] = "O"
            display.display_status
            row3[1] = "O"  
            # @board[p2_selection] = "O"
            when "9"
            display.row3[2] = "O"
            display.display_status
            row3[2] = "O"  
          else
            i-=1
            p "Invalid selection" 
            # break if 
          end
         p2_selection
      end 
          break if won       
    end
  end


  def won
    # left to right top to bottom diagonal elements 
    if (row1[0]) == (row2[1]) && (row1[0]) == (row3[2])
      puts "You WON!" 
      @@win = true 
      # setting flag to true to break out of user input loop 
    # rigth to left top to bottom diagonal elements
    elsif (row1[2]) == (row2[1]) && (row1[2]) == (row3[0])
      puts "You WON!"
      @@win = true 
    # First row elements
    elsif (row1[0]) == (row1[1]) && (row1[0]) == (row1[2]) 
      puts "You WON!" 
      @@win = true
    #2nd row elements
    elsif (row2[0]) == (row2[1]) && (row2[0]) == (row2[2]) 
      puts "You WON!"
      @@win = true   
    #3rd row elements
    elsif (row3[0]) == (row3[1]) && (row3[0]) == (row3[2])
      puts "You WON!"
      @@win = true 
    # 1st column elements
    elsif  (row1[0]) == (row2[0]) && (row1[0]) == (row3[0]) 
      puts "You WON!" 
      @@win = true   
    # 2nd column elements
    elsif  (row1[1]) == (row2[1]) && (row1[1]) == (row3[1]) 
      puts "You WON!" 
      @@win = true   
    #3rd column elements
    elsif  (row1[2]) == (row2[2]) && (row1[2]) == (row3[2]) 
      puts "You WON!" 
      @@win = true   
    else
      # puts "No player won its a Draw"
      @@win = false
    end
  end
end      

input1 = User_Input.new
input1.user_input
