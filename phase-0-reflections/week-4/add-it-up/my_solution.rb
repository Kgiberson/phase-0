# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: sum of the numbers
# Steps to solve the problem.
# define method

# # 1. total initial solution
# def total(array)
#  result = 0
#  array.each do |x|
#     result = result + x
#   end
#   return result
# #end

# 3. total refactored solution
def total(numbers)
 result = 0
 numbers.each do |x|
    result = result + x
  end
  return result
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: single string, capitalized
# Steps to solve the problem.
# We want to write a method that will join the strings. This can be accomplished with each, but the join method was covered in the Chris Pine book so we decided to use it.

# # 5. sentence_maker initial solution
# def sentence_maker(words)
#   words.join(" ") "."
# end


# 6. sentence_maker refactored solution
def sentence_maker(words)
  words.join(" ").capitalize + "."
end