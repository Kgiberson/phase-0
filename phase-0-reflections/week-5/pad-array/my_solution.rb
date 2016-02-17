# Pad an Array

# I worked on this challenge with Andrew V.

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input?
  # Array, Parameters including the minimum size of the array, optionally, what we want to pad with, default = nil
# What is the output? (i.e. What should the code return?)
  # Array with pad or just array
# What are the steps needed to solve the problem?
  # Evaulate the length, compare against the second argument given
  # IF The original array is less than min_size then something needs to be padded
  # Find the difference between the array length and the minimum size, and we will just add the pad value that number of times.
  # ELSIF the original array is less than or equal to the minimum size, return the original array
#

# # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if min_size == 0
#     return array
#   elsif array.length >= min_size
#     return array
#   elsif array.length < min_size
#     pad_size = min_size - array.length
#     until pad_size == 0
#         pad_size -= 1
#     array << value
#   end
#   p array
# end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new
#   if  array.length >= min_size
#     return array
#   elsif min_size == 0
#     return []
#   elsif array.length < min_size
#     array.collect { |x| x }
#     pad_size = min_size - array.length
#     while
#     p new_array
#   end
# end


# def pad(array, min_size, value = nil) #non-destructive
# # new_array = Array.new
#  if  array.length >= min_size
#    return array
#  elsif min_size == 0
#    return []
#  elsif array.length < min_size
#    pad_size = min_size - array.length
#    until pad_size == 0
#      pad_size -= 1
#      new_array.push(value)
#    end
#    p new_array
#  end
# end

# 6:30pm solution:
# def pad(array, min_size, value = nil)
# # non-destructive
# # Your code here
#  test_array = array.collect{ |x| x }
#  if test_array.length >= min_size
#    p test_array
#  elsif min_size == 0
#    p []
#  elsif array.length < min_size
#    pad_size = min_size - array.length
#    # p test_array
#    pad_array = Array.new
#    until pad_size == 0
#      pad_size -= 1
#      pad_array.push(value)
#      p pad_array
#    end
#    p test_array + pad_array
#  end
# end

 # pad([1,2,3],5,'banana')


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  elsif array.length < min_size
    pad_size = min_size - array.length
    until pad_size == 0
        pad_size -= 1
    array << value
  end
  p array
end
end

def pad(array, min_size, value = nil)
# non-destructive
# Your code here
 new_array = array.collect{ |x| x }
 if new_array.length >= min_size
   p new_array
 elsif array.length < min_size
   pad_size = min_size - array.length
   # p new_array
   pad_array = Array.new
   until pad_size == 0
     pad_size -= 1
     pad_array.push(value)
     p pad_array
   end
   p new_array.concat(pad_array)
 end
end



# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#   I think so!
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#   The basic concept we had down, but it took us awhile to figure out how to create a new array that was non-destructive, meaning it had a different object_id than the original array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#   It was for pad!, but not pad. We failed on "pad operates non-destructively" and it took us awhile to find which methods would allow us to copy the array into a new_array, and have it point to a different object_id. We also struggled with "pad pads elements to the end of an array" which I'm still a bit confused about actually! I think we had calculated our pad_size correctly and used proper logic to count through our until method, but this failure was also resolved once we figured out how to concatenate our new_array and pad_array.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
#   Yes, instead of adding (+) our arrays, we used concatenate. We were also able to shorted our code by removing our elsif min_size == 0 statement, which was already covered in the if statement.
# How readable is your solution? Did you and your pair choose descriptive variable names?
#   I'm sure there's room for improvement, but I think we did a good job of naming our variables.
# What is the difference between destructive and non-destructive methods in your own words?
#   Destructive methods permanently ammend an object, while non-destructive methods do not. Destructive methods are commonly denoted by ! (bang) but not always! Today we learned how to write a non-destructive method by duplicating the original object and then ammending the duplicate.