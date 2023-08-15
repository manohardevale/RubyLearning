class Display_status
  attr_accessor :row1, :row2, :row3
  
  def initialize()
    @row1 = row1 = %w[1 2 3]
    @row2 = row2 = %w[4 5 6]
    @row3 = row3 = %w[7 8 9]
  end  
  
  def display_status
     p row1 
     p row2 
     p row3 
  end
end
  
class User_Input < Display_status   
  @@win = false
  def user_input
    display = Display_status.new()
    display.display_status
    
    
    for i in 1..9  
      if i.odd? 
        puts "P1 enter your selection"
        p1_selection = gets.chomp.to_s
          
        case p1_selection
          when "1"
          display.row1[0] = "x"
          display.display_status
          row1[0] = "x"
          when "2"
          display.row1[1] = "x"
          display.display_status
          row1[1] = "x"
          when "3"
          display.row1[2] = "x"
          display.display_status
          row1[2] = "x"  
          when "4"
          display.row2[0] = "x"
          display.display_status
          row2[0] = "x"  
          when "5"
          display.row2[1] = "x"
          display.display_status
          row2[1] = "x"  
          when "6"
          display.row2[2] = "x"
          display.display_status
          row2[2] = "x"
          when "7"
          display.row3[0] = "x"
          display.display_status
          row3[0] = "x"
          when "8"
          display.row3[1] = "x"
          display.display_status
          row3[1] = "x"  
          when "9"
          display.row3[2] = "x"
          display.display_status
          row3[2] = "x"  
        else
          p "Invalid selection"   
        end
          p1_selection  
          # break if winning
        elsif i.even?
          puts "P2 enter your selection"
          p2_selection = gets.chomp.to_s
         
          case p2_selection
            when "1"
            display.row1[0] = "O"
            display.display_status
            row1[0] = "O"
            when "2"
            display.row1[1] = "O"
            display.display_status
            row1[1] = "O"
            when "3"
            display.row1[2] = "O"
            display.display_status
            row1[2] = "O"  
            when "4"
            display.row2[0] = "O"
            display.display_status
            row2[0] = "O"  
            when "5"
            display.row2[1] = "O"
            display.display_status
            row2[1] = "O"  
            when "6"
            display.row2[2] = "O"
            display.display_status
            row2[2] = "O"
            when "7"
            display.row3[0] = "O"
            display.display_status
            row3[0] = "O"
            when "8"
            display.row3[1] = "O"
            display.display_status
            row3[1] = "O"  
            when "9"
            display.row3[2] = "O"
            display.display_status
            row3[2] = "O"  
          else
            p "Invalid selection"   
            # break if 
          end
         p2_selection
      end 
          break if won       
    end
  end


  def won
    if (row1[0]) == (row2[1]) && (row2[1]) == (row3[2])
      puts "You WON!" 
      @@win = true
    elsif (row1[0]) == (row1[1]) && (row1[0]) == (row1[2]) 
      puts "You WON!" 
      @@win = true
    elsif (row2[0]) == (row2[1]) && (row2[0]) == (row2[2]) 
      puts "You WON!"
      @@win = true   
    elsif  (row1[0]) == (row2[0]) && (row1[0]) == (row3[0]) 
      puts "You WON!" 
      @@win = true   
    elsif  (row1[1]) == (row2[1]) && (row1[1]) == (row3[1]) 
      puts "You WON!" 
      @@win = true   
    elsif  (row1[2]) == (row2[2]) && (row1[2]) == (row3[2]) 
      puts "You WON!" 
      @@win = true   
    else
      # puts "No player won its a Draw"
      @@win = false
    end
  end
  def check
    if @@win == false
    puts "No player won its a Draw"
    end
  end
end      

input1 = User_Input.new
input1.user_input
