
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
  # While pseudocoding, I considered inserting the comma while iterating through the test_string but realized that I didn't yet have a strong understanding of strings as objects. I also looked into using the mod operator to divide through the integer instead of creating an array to store it.
# Was your pseudocode effective in helping you build a successful initial solution?
  # Yes and no, I actually found it more helpful to talk the process aloud because the words on my screen were not connecting fully with my brain.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  # I found .each_char by reading through the methods listed in the string ruby docs. I also found it helpful to review the % operator and it's funcitoning by referencing the ruby docs. The Ruby docs for Newbies resource was helpful in introducing best practices for how/when to search through the docs and find relevant methods. I found that .map could be a good alternative to .each but decided to stick with .each.
# How did you initially iterate through the data structure?
  # I initally used .each_char to iterate through the string and turn it into an array, and used .each to iterate through the test_arr to form the final_arr
# Do you feel your refactored solution is more readable than your initial solution? Why?
  # Yes, I was able to remove a redundant if statement.