# Pseudocode
# Input: List of names, an array
# Output: Sub arrays of 3-5 names
# Steps:
# 1. Define an array, fill with names of cohort-mates.
# 2. IF array is divisible by 5 with 0, 3, or 4 remainders, create subarrays composed of those divisions
#   - ELSIF array is divisible by 4 with 0 or 3 remainders, create subarrays composed of those divisions (4)
#   - ELSE divide array by 3, create subarrays based on this.
# 3. Separate array into subarrays using the index number for range.

# Initial Solutions:
# rock_doves_arr = (1..56).to_a

# def make_groups(rock_doves_arr)
#   acct_groups_arr = []
#   if rock_doves_arr.count % 5 == 0 || rock_doves_arr.count % 5 == 3
#     acct_groups_arr = rock_doves_arr.each_slice(5).to_a
#   elsif rock_doves_arr.count % 4 == 0 || rock_doves_arr.count % 4 == 3
#     acct_groups_arr = rock_doves_arr.each_slice(4).to_a
#   else
#     acct_groups_arr = rock_doves_arr.each_slice(3).to_a
#   end
#   p acct_groups_arr

#   acct_groups_arr.each_with_index do |name,i|
#     print name
#     puts "You're in group number #{i+1}"
#   end
# end

# make_groups(rock_doves_arr)

# Refactored Solution:
rock_doves_arr = (1..59).to_a

def make_groups(rock_doves_arr)
  if rock_doves_arr.count % 5 == 0 || rock_doves_arr.count % 5 == 3
    acct_groups_arr = rock_doves_arr.shuffle.each_slice(5).to_a
  elsif rock_doves_arr.count % 4 == 0 || rock_doves_arr.count % 4 == 3
    acct_groups_arr = rock_doves_arr.shuffle.each_slice(4).to_a
  else
    acct_groups_arr = rock_doves_arr.shuffle.each_slice(3).to_a
  end
  p acct_groups_arr

  acct_groups_arr.each_with_index do |name,i|
    print name
    puts "You're in group number #{i+1}"
  end
end

make_groups(rock_doves_arr)

# Reflection:
# What was the most interesting and most difficult part of this challenge?
  # The most interesting was incorporating shuffle to allow for each method call to make different groups. The most difficult was figuring out how to use the mod operator effectively. At first I was using rock_doves_arr.count % 5 != 1 || rock_doves_arr.count % 5 != 2  but wasn't getting the result I was expecting so I used == instead.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  # Yes, definitely. Although that might just be because this challenge has elements we've already been exposed to.
# Was your approach for automating this task a good solution? What could have made it even better?
  # I think so. It adjusts to create the most equal amount of groups possible by diving by 3, 4, or 5, prioritizing groups of 5.
# What data structure did you decide to store the accountability groups in and why?
  # I stored them as sub arrays in an array because I haven't created subarrays yet and was curious how it's done. Also, creating a hash with the names as keys and the group number as the value seemed slightly more involved and unnecessary.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  # I learned that .each_cons (each consecutive) accomplishes the same goal as .each_slice in this challenge. I also added the shuffle method and printed the results in an informative way.