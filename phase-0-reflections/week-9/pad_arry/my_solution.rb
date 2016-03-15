# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, an integer, and an optional padding value.
# What is the output? (i.e. What should the code return?) an array, one changed, one unchanged
# What are the steps needed to solve the problem?
# Step 1 - Define pad method, take three parameters
# Step 2 - If array's length < second parameter(non-negative integer), return new array padded with the pad value up to the minimum size.

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length < min_size
#     pad_size = min_size - array.length
#     pad_size.times do |i|
#       array.push(value)
#     end
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   array.each do |x|
#     new_array << x
#   end
#     if new_array.length < min_size
#     pad_size = min_size - new_array.length
#     pad_size.times do |i|
#       new_array.push(value)
#     end
#   end
#   p new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    pad_size = min_size - array.length
    pad_size.times do |i|
      array.push(value)
    end
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |x|
    new_array << x
  end
    if new_array.length < min_size
    pad_size = min_size - new_array.length
    pad_size.times do |i|
      new_array.push(value)
    end
  end
  p new_array
end


# 4. Reflection