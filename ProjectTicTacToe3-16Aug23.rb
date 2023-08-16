class Display_status
  attr_accessor :arr
  
  def initialize()
    @arr = arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end  
  
  def display_status
    # p arr
     p @arr[(0..2)] # range is (0..2) of arr i.e 1,2,3 from above arr  
     p @arr[(3..5)] 
     p @arr[(6..8)]
  end
end
  
class User_Input < Display_status   
  @@win = false
 
  def check_input
    display = Display_status.new()
    display.display_status
    
    for i in 0..arr.size-1  
      if arr[i].integer?
        selection
        else
        puts "Please enter valid input available from the borad"
      end
    end
  end
  
  def selection 
    display = Display_status.new
    display.display_status
    
    for num in 0..15 do |num|
      if num.even?
        puts "P1 enter your selection"
        p1_selection = gets.chomp.to_i
        case p1_selection
        when 1
          arr[0] = "x"
          display.display_status
          # count+=1
        when 2
          display_status.arr[2] = "x"
          display_status
          arr[1] = "x"
          # count+=1
        when 3
          display_status.arr[3] = "x"
          display_status
          arr[2] = "x"
          # count+=1
        when 4
          display_status.arr[4] = "x"
          display_status
          arr[0] = "x"
          # count+=1
        when 5
          display_status.arr[5] = "x"
          display_status
          arr[1] = "x"  
          # count+=1
        when 6
          display_status.arr[6] = "x"
          display_status
          arr[2] = "x"
          # count+=1
        when 7
          display_status.arr[7] = "x"
          display_status
          arr[0] = "x"
          # count+=1
        when 8
          display_status.arr[8] = "x"
          display_status
          arr[1] = "x"
          # count+=1
        when 9
          display_status.arr[9] = "x"
          display_status
          arr[2] = "x"
          # count+=1
        else
          p "Invalid selection" 
          
        end
          p1_selection  
    
      elsif num.odd?
        puts "P2 enter your selection"
        p2_selection = gets.chomp.to_i
        case p2_selection
        when 1
          display_status.arr[1] = "O"
          display_status
          arr[0] = "O"
        when 2
          display_status.arr[2] = "O"
          display_status
          arr[1] = "O"
        when 3
          display_status.arr[3] = "O"
          display_status
          arr[2] = "O"
        when 4
          display_status.arr[4] = "O"
          display_status
          arr[0] = "O"  
        when 5
          display_status.arr[5] = "O"
          display_status
          arr[1] = "O"  
        when 6
          display_status.arr[6] = "O"
          display_status
          arr[2] = "O"
        when 7
          display_status.arr[7] = "O"
          display_status
          arr[0] = "O"
        when 8
          display_status.arr[8] = "O"
          display_status
          arr[1] = "O"  
        when 9
          display_status.arr[9] = "O"
          display_status
          arr[2] = "O"  
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
    if (arr[0]) == (arr[5]) && (arr[0]) == (arr[9])
      puts "You WON!" 
      @@win = true 
      # setting flag to true to break out of user input loop 
    # rigth to left top to bottom diagonal elements
    elsif (arr[3]) == (arr[5]) && (arr[3]) == (arr[7])
      puts "You WON!"
      @@win = true 
    # First row elements
    elsif (arr[0]) == (arr[1]) && (arr[0]) == (arr[2]) 
      puts "You WON!" 
      @@win = true
    #2nd row elements
    elsif (arr[3]) == (arr[4]) && (arr[3]) == (arr[5]) 
      puts "You WON!"
      @@win = true   
    #3rd row elements
    elsif (arr[6]) == (arr[7]) && (arr[6]) == (arr[8])
      puts "You WON!"
      @@win = true 
    # 1st column elements
    elsif  (arr[0]) == (arr[3]) && (arr[0]) == (arr[6]) 
      puts "You WON!" 
      @@win = true   
    # 2nd column elements
    elsif  (arr[1]) == (arr[4]) && (arr[1]) == (arr[7]) 
      puts "You WON!" 
      @@win = true   
    #3rd column elements
    elsif  (arr[2]) == (arr[5]) && (arr[2]) == (arr[8]) 
      puts "You WON!" 
      @@win = true   
    else
      # puts "No player won its a Draw"
      @@win = false
    end
  end
end      

input1 = User_Input.new
input1.selection
