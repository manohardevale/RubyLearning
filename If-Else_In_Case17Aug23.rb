class Game
  attr_accessor :arr1

  def initialize()
    @arr1 = arr1 = [1, 2, 3]
    # @arr = arr = Array.new(3)
  end
end

class UserInput < Game

  def user_input
    game = Game.new()
    p arr1
   
    for i in (1..3)
      if i.odd?
        
       puts "P1 Enter selection"
       selection = gets.chomp.to_i
      
        case selection 
          when 1
            if arr1[0] == "x" or arr1[0] == "O" then puts "Select number from board" 
            else
              arr1[0] = "x"
              p arr1
            end
          when 2
            if arr1[1] == "x" or arr1[1] == "O" then puts "Select number from board"
            else
              arr1[1] = "x"
              p arr1
            end
          when 3
            if arr1[2] =="x" or arr1[2] =="O" then puts "Select number from board"
            else
              arr1[2] = "x"
              p arr1
            end    
          end
      
      elsif i.even?
        puts "P2 Enter selection"
        selection = gets.chomp.to_i
        
        case selection 
          when 1
            if arr1[0] == "x" or arr1[0] == "O" then puts "Select number from board" 
            else
              arr1[0] = "x"
              p arr1
            end
          when 2
            if arr1[1] == "x" or arr1[1] == "O" then puts "Select number from board"
            else
              arr1[1] = "x"
              p arr1
            end
          when 3
            if arr1[2] =="x" or arr1[2] =="O" then puts "Select number from board"
            else
              arr1[2] = "x"
              p arr1
            end    
          end
        end
      
    end
  end

  
end

ui = UserInput.new()
ui.user_input