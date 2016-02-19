
# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer.
# What is the output? (i.e. What should the code return?)
# Returns a comma-separated integer as a string.
# What are the steps needed to solve the problem?
# 1. Take the integer, separate each of the digits into individual objects
#  - potentially convert to string here?
# 2. Place a comma after every third objet from the end.
#  - If there's three or less digits, don't put a comma.
#  - We can place the comma by using the #insert method.
# 3. Join the objects back together into one string.
# if index from the end is divisible by 3, insert comma before object.

# 1. Initial Solution

# def separate_comma(test_int)
#   test_string = test_int.to_s.reverse
#   if test_string.length < 4
#     return test_string.reverse
#   end
#   test_array = []
#   test_string.each_char do |d|
#     test_array << d
#   end
#   i = 0
#   final_array = []
#   test_array.each do |x|
#     final_array << x
#     i = i + 1
#     if i % 3 == 0 && test_array[i] != nil
#       final_array << ","
#     end
#   end
#    return final_array.reverse.join
# end



# 2. Refactored Solution
def separate_comma(test_int)
  test_string = test_int.to_s.reverse
  test_arr = []
  test_string.each_char do |d|
    test_arr << d
  end
  i = 0
  final_arr = []
  test_arr.each do |x|
    final_arr << x
    i = i + 1
    if i % 3 == 0 && test_arr[i] != nil
      final_arr << ","
    end
  end
   return final_arr.reverse.join
end


# 3. Reflection
# Things I struggled with: How to separate a string of numbers into its individual digits.
# What was your process for breaking the problem down? What different approaches did you consider?
#
# Was your pseudocode effective in helping you build a successful initial solution?
#
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#
# How did you initially iterate through the data structure?
#
# Do you feel your refactored solution is more readable than your initial solution? Why?