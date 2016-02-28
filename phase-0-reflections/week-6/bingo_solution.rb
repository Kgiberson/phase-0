# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array of strings ["b","i","n","g","o"] and of integers [1..100]. Randomly shuffle and select just one value from each.

# Check the called column for the number called.
  # Match index with the letters BINGO. Iterate through subarrays.

# If the number is in the column, replace with an 'x'
  #IF num is in column, object becomes x.

# Display a column to the console
  # Iterate through subarrays and display array[0] aka array at index 0.

# Display the board to the console (prettily)
  # print each array with a line break.

# Initial Solution

# class BingoBoard
#   # attr_accessor :board
#   # attr_reader :letter, :number
#   def initialize(board, letter, number)
#     @bingo_board = board
#     @letter = letter
#     @number = number
#   end

#   def call_letter_number
#      @letter_num =  @letter.sample, @number.sample
#   end

#   def check_board
#     call_letter_number
#     p @letter_num
#     if @letter_num[0] == "B"
#       @bingo_board.each do |array|
#         if array[0] == @letter_num[1]
#           array[0] = "X"
#         end
#       end
#     elsif @letter_num[0] == "I"
#       @bingo_board.each do |array|
#         if array[1] == @letter_num[1]
#           array[1] = "X"
#         end
#       end
#     elsif @letter_num[0] == "N"
#       @bingo_board.each do |array|
#         if array[2] == @letter_num[1]
#           array[2] = "X"
#         end
#       end
#     elsif @letter_num[0] == "G"
#       @bingo_board.each do |array|
#         if array[3] == @letter_num[1]
#           array[3] = "X"
#         end
#       end
#     else @letter_num[0] == "O"
#       @bingo_board.each do |array|
#         if array[4] == @letter_num[1]
#           array[4] = "X"
#         end
#       end
#     end
#     p @bingo_board
#   end

# end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def call_letter_number
    letter = ["B", "I", "N", "G", "O"]
    number = [*1..100]
    @letter_num =  letter.sample, number.sample
  end

  def check_board
    call_letter_number
    p @letter_num
    if @letter_num[0] == "B"
      @bingo_board.each do |array|
        if array[0] == @letter_num[1]
          array[0] = "X"
        end
      end
    elsif @letter_num[0] == "I"
      @bingo_board.each do |array|
        if array[1] == @letter_num[1]
          array[1] = "X"
        end
      end
    elsif @letter_num[0] == "N"
      @bingo_board.each do |array|
        if array[2] == @letter_num[1]
          array[2] = "X"
        end
      end
    elsif @letter_num[0] == "G"
      @bingo_board.each do |array|
        if array[3] == @letter_num[1]
          array[3] = "X"
        end
      end
    else @letter_num[0] == "O"
      @bingo_board.each do |array|
        if array[4] == @letter_num[1]
          array[4] = "X"
        end
      end
    end
  @bingo_board.each {|array| p array}
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
new_game.check_board



#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   This was one of the more useful pseudocoding experiences because the problem was long enough that I really benefited from writing out each step.
# What are the benefits of using a class for this challenge?
#   Using a class allows us to define instance variables and use them across methods. It also would make it easy for us to create more bingo boards for new players.
# How can you access coordinates in a nested array?
#   To access objects in a nested array you must call methods deeper in the array.
# What methods did you use to access and modify the array?
#   To access and modify arrays I iterated over them with the each method.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   .rotate returns a new array by rotating self so that the element at count is the frist element of the new array. If count is negative, it reverses the direction it rotates.
# How did you determine what should be an instance variable versus a local variable?
#   If it needs to be used in more than one method it should be an instance method, if not local variable works.
# What do you feel is most improved in your refactored solution?
#     I figured out how to properly display the bingo_board. I spent time trying to shorten the elsif statements but to no avail.