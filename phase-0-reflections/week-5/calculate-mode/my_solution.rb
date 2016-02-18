
# Calculate the mode Pairing Challenge

# I worked on this challenge Andrew Crowley.

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  # An array
# What is the output? (i.e. What should the code return?)
  # New array
# What are the steps needed to solve the problem?
# => Sort array in sequential order.
# Create an empty hash and make the objects in the array the hash's keys.
# Since hash keys are unique, when we iterate over the array to make the hash we can count duplicates and store in the keys pair value.
 # Identify the largest values and select their paired key to be returned as an array.

# 1. Initial Solution
# def mode(array)
#   array2 = array.sort
#   hash = Hash.new 0
#   array2.each {|key| hash.store(key, hash[key]+1)}
#   max = hash.values.max
#   array3 = []
#   hash.each do |k, v|
#     if v == max
#       array3 << k
#     end
#   end
#   return array3
# end



# 3. Refactored Solution

def mode(array1)
  array2 = array1.sort
  hash = Hash.new(0)
  array2.each {|k| hash.store(k, hash[k]+1)}
  max = hash.values.max
  array3 = []
  hash.each do |k, v| if v == max
    array3 << k
    end
  end
  return array3
end



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
  # We implemented a hash (1) because the instructions hinted at it and (2) because it seemed logical to use values to count the duplicates.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yes, definitely. We found it easier to visualize what needed to happen.
# What issues/successes did you run into when translating your pseudocode to code?
# It took us awhile to figure out how to select the largest values and their paired key. It also was our first time working with the hash.store method so that took some figuring out.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#  We used .each to iterate through the content. We read about map and collect, which would be more advanced ways of iterating, but we kept .each because they were difficult!