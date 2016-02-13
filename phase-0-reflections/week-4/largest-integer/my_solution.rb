# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# # Your Solution Below
# Solution 1: Using while loop
# def largest_integer(list_of_nums)
#   if list_of_nums == []
#     return nil
#   end
#   i = 0
#   largest = list_of_nums[0]
#    while list_of_nums[i] != nil
#       if list_of_nums[i] > largest
#         largest = list_of_nums[i]
#       end
#        i = i + 1
#   end
#   return largest
# end
# Solution 2: Using each method
def largest_integer(list_of_nums)
  largest = list_of_nums[0]
  list_of_nums.each do |thisNum|
    if thisNum > largest
      largest = thisNum
    end
  end
  return largest
end

  #each method: for each integer in list_of_nums, point the variable number to the object, and then do everything I tell you to until you come to the end.

# Solution 3: Using sort
# def largest_integer(list_of_nums)
#   if list_of_nums == []
#     return nil
#   end
#   # else
#   # list_of_nums.sort! {}
#   return list_of_nums.sort![-1]
#   # return list_of_nums[-1]

# end

