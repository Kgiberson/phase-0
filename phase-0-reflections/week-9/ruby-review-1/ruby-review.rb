
# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 3 hours on this challenge.

# Pseudocode
# Step 1 - Create a class
# Step 2 - initialize with 2 dimensional array
# Step 3 - Check for horizontal win
#   - Iterate through each sub array
#   - IF subarray at the first slot is 'x' and subarray at all slots is 'x'
#     - print 'BINGO'
# Step 4 - Check for vertical win
#   - IF vertical[x][i] is 'x' && vertical [x+1][i] ... && vertical [x=4][i] is 'x'
#     - print 'BINGO'
# Step 5 - Check right_to_left diagonal win
#   - IF array[0][0] = 'x' && array[1][1] = 'x' && ... array[4][4] = 'x'
#     - print 'BINGO'
# Step 6 - Check left_to_right diagonal win
#   - IF array[0][4] = 'x' && array[1][3] = 'x' ... && array[4][0] = 'x'
#     - print 'BINGO'




# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# descending_diagonal = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# ascending_diagonal = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# # Initial Solution
# class BingoScorer
#   attr_reader :bingo_card
#   def initialize(bingo_card)
#     @bingo_card = bingo_card
#   end

#   def horizontal_check
#     @bingo_card.each do |sub|
#       if sub[0] == 'x' && sub[1] == 'x' && sub[2] == 'x' && sub[3] == 'x' && sub[4] == 'x'
#         p 'BINGO'
#       end
#     end
#   end

#   def vertical_check
#     i = 0
#     @bingo_card.each do
#       if @bingo_card[0][i] == 'x' && @bingo_card[1][i] == 'x' && @bingo_card[2][i] == 'x' && @bingo_card[3][i] == 'x' && @bingo_card[4][i] == 'x'
#           p 'BINGO'
#       else
#         i += 1
#       end
#     end
#   end


#   def descending_diagonal_check
#     if @bingo_card[0][0] == 'x' && @bingo_card[1][1] == 'x' && @bingo_card[2][2] == 'x' && @bingo_card[3][3] == 'x' && @bingo_card[4][4] == 'x'
#         return true
#     end
#     false
#   end

#   def ascending_diagonal_check
#     if @bingo_card[0][4] == 'x' && @bingo_card[1][3] == 'x' && @bingo_card[2][2] == 'x' && @bingo_card[3][1] == 'x' && @bingo_card[4][0] == 'x'
#         return true
#     end
#     false
#   end

# end




# Refactored Solution
class BingoScorer
  attr_reader :bingo_card
  def initialize(bingo_card)
    @bingo_card = bingo_card
    @key = ['x','x','x','x','x']
  end

  def horizontal_check
    @bingo_card.each do |row|
      if row == @key
        return true
      end
    end
    false
  end

  def vertical_check
    @bingo_card.transpose.each do |column|
      if column == @key
        return true
      end
    end
    false
  end

  def descending_diagonal_check
    if @bingo_card.each_with_index.map {|row, index| row[index]} == @key
        return true
    end
    false
  end

  def ascending_diagonal_check
    if @bingo_card.each_with_index.map {|row, index| row[4 - index]} == @key
        return true
    end
    false
  end

end





# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

horizontal_test_1 = BingoScorer.new([[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]])
horizontal_test_2 = BingoScorer.new([[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'y'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]])
#

p horizontal_test_1.horizontal_check
p horizontal_test_2.horizontal_check

vertical_test_1 = BingoScorer.new([[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]])

vertical_test_2 = BingoScorer.new([[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'y', 83]])

p vertical_test_1.vertical_check
p vertical_test_2.vertical_check

desc_diag_test_1 = BingoScorer.new([['x', 44, 71, 8, 88],[22, 'x', 75, 65, 73],[83, 85, 'x', 89, 57],[25, 31, 96, 'x', 51],[75, 70, 54, 80, 'x']])

desc_diag_test_2 = BingoScorer.new([['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'y', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']])

p desc_diag_test_1.descending_diagonal_check
p desc_diag_test_2.descending_diagonal_check

asc_diag_test_1 = BingoScorer.new([[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]])

asc_diag_test_2 = BingoScorer.new([[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'y', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]])

p asc_diag_test_1.ascending_diagonal_check
p asc_diag_test_2.ascending_diagonal_check


# Reflection
# What concepts did you review in this challenge?
#   I reviewed how to create a ruby class and instances of that class, how to write driver tests, how to iterate through nested arrays, and how to conceptualize the .each_with_index method.
# What is still confusing to you about Ruby?
#   I'm still not as familiar with a lot of the useful build in methods as I wish was!
# What are you going to study to get more prepared for Phase 1?
#   More iteration through nested arrays!