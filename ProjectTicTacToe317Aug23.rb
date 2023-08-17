class Display_status
  attr_accessor :row1, :row2, :row3
  # :arr1, :arr2, :arr3
  
  def initialize()
    @row1 = row1 = [1, 2, 3]
    @row2 = row2 = [4, 5, 6]
    @row3 = row3 = [7, 8, 9]
    # @arr1 = arr1 = [1, 2, 3]
    # @arr2 = arr2 = [4, 5, 6]
    # @arr3 = arr3 = [7, 8, 9]
  end  
  
  def display
     p row1, row2, row3 
  end
end

class User_Input < Display_status   
  @@win = false
  @@show = Display_status.new()
  @@show.display
  
  def check_exists
    if (@@show.row1.include?("x")|| @@show.row1.include?("O") || @@show.row2.include?("x") || @@show.row2.include?("O") || @@show.row3.include?("x") || @@show.row3.include?("O"))     
        puts "Choose number from board"
    end
  end
  
  def user_input
    
    
    for i in (1..9)  
      if i.odd? 
        puts "P1 enter your selection"
        p1_selection = gets.chomp.to_s
        
        case p1_selection
          when "1"
          if check_exists 
          else
            @@show.row1[0] = "x"
            @@show.display
          end
          when "2"
          if check_exists 
          else
            @@show.row1[1] = "x"
            @@show.display
          end
          when "3"
          if check_exists 
          else
            @@show.row1[2] = "x"
            @@show.display
          end
          when "4"
          if check_exists 
          else
            @@show.row2[0] = "x"
            @@show.display
          end
          when "5"
          if check_exists  
          else
            @@show.row2[1] = "x"
            @@show.display
          end
          when "6"
          if check_exists  
          else
            @@show.row2[2] = "x"
            @@show.display
          end
          when "7"
          if check_exists  
          else
            @@show.row3[0] = "x"
            @@show.display
          end
          when "8"
          if check_exists 
          else
            @@show.row3[1] = "x"
            @@show.display
          end
          when "9"
          if check_exists 
          else
            @@show.row3[2] = "x"
            @@show.display
          end
        else
          p "Invalid selection"   
        end
          p1_selection  
  
        elsif i.even?
          puts "P2 enter your selection"
          p2_selection = gets.chomp.to_s

          case p2_selection
            
          when "1"
            if check_exists 
            else
              @@show.row1[0] = "O"
              @@show.display
            end
            when "2"
            if check_exists 
            else
              @@show.row1[1] = "O"
              @@show.display
            end
            when "3"
            if check_exists 
            else
              @@show.row1[2] = "O"
              @@show.display
            end
            when "4"
            if check_exists 
            else
              @@show.row2[0] = "O"
              @@show.display
            end
            when "5"
            if check_exists 
            else
              @@show.row2[1] = "O"
              @@show.display
            end
            when "6"
            if check_exists 
            else
              @@show.row2[2] = "O"
              @@show.display
            end
            when "7"
            if check_exists 
            else
              @@show.row3[0] = "O"
              @@show.display
            end
            when "8"
            if check_exists 
            else
              @@show.row3[1] = "O"
              @@show.display
            end
            when "9"
            if check_exists 
            else
              @@show.row3[2] = "O"
              @@show.display
            end
          else
            p "Invalid selection" 
          end
         p2_selection
      end 
          break if won       
    end
  end


  def won
    # left to right top to bottom diagonal elements 
    if (row1[0] == row2[1]) && (row1[0] == row3[2])
      puts "You WON!" 
      @@win = true 
      # setting flag to true to break out of user input loop 
    # rigth to left top to bottom diagonal elements
    elsif (row1[2] == row2[1]) && (row1[2] == row3[0])
      puts "You WON!"
      @@win = true 
    # First row elements
    elsif (row1[0] == row1[1]) && (row1[0] == row1[2]) 
      puts "You WON!" 
      @@win = true
    #2nd row elements
    elsif (row2[0] == row2[1]) && (row2[0] == row2[2]) 
      puts "You WON!"
      @@win = true   
    #3rd row elements
    elsif (row3[0] == row3[1]) && (row3[0] == row3[2])
      puts "You WON!"
      @@win = true 
    # 1st column elements
    elsif  (row1[0] == row2[0]) && (row1[0] == row3[0]) 
      puts "You WON!" 
      @@win = true   
    # 2nd column elements
    elsif  (row1[1] == row2[1]) && (row1[1] == row3[1]) 
      puts "You WON!" 
      @@win = true   
    #3rd column elements
    elsif  (row1[2] == row2[2]) && (row1[2] == row3[2]) 
      puts "You WON!" 
      @@win = true   
    else
      # puts "No player won its a Draw"
      @@win = false
    end
  end
end      


game = User_Input.new()
game.user_input

  
# input1 = User_Input.new
# input1.user_input
  
#     def won
#       # left top to right bottom diagonal elements 
#       #(arr[0] == arr[4]) && (arr[0] == (arr[8])&& 
#       if (arr1[0] == arr2[1] && arr1[0] == arr3[2]) 
#         puts "You WON!" 
#         @@win = true 
#         # setting flag to true to break out of user input loop 
      
#         # rigth top to left bottom diagonal elements
#       #&& (arr[2]) == (arr[4]) && (arr[2]) == (arr[6])  
#       elsif (arr1[2] == arr2[1] && arr1[2] == arr3[0]) 
#         puts "You WON!"
#         @@win = true 
      
#         # First row elements
#         #&& (arr[0]) == (arr[1]) && (arr[0]) == (arr[2]) 
#       elsif (arr1[0] == arr1[1] && arr1[0] == arr1[2]) 
#         puts "You WON!" 
#         @@win = true
      
#         #2nd row elements
#         #&& (arr[3]) == (arr[4]) && (arr[3]) == (arr[5]) 
#       elsif (arr2[0] == arr2[1] && arr2[0] == arr2[2]) 
#         puts "You WON!"
#         @@win = true   
      
#         #3rd row elements
#         #&& (arr[6]) == (arr[7]) && (arr[6]) == (arr[8])
#       elsif (arr3[0] == arr3[1] && arr3[0] == arr3[2]) 
#         puts "You WON!"
#         @@win = true 
      
#         # 1st column elements
#         #&& (arr[0]) == (arr[3]) && (arr[0]) == (arr[6]) 
#       elsif (arr1[0] == arr2[0] && arr1[0] == arr3[0]) 
#         puts "You WON!" 
#         @@win = true   
      
#         # 2nd column elements
#         #&& (arr[1]) == (arr[4]) && (arr[1]) == (arr[7]) 
#       elsif (arr1[1] == arr2[1] && arr1[1] == arr3[1]) 
#         puts "You WON!" 
#         @@win = true   
      
#         #3rd column elements
#         #&& (arr[2]) == (arr[5]) && (arr[2]) == (arr[8]) 
#       elsif (arr1[2] == arr2[2] && arr1[2] == arr3[2]) 
#         puts "You WON!" 
#         @@win = true   
#       else
#         # puts "No player won its a Draw"
#         @@win = false
#       end
#     end
# end      

# input1 = User_Input.new
# input1.check_input
# input1.selection
