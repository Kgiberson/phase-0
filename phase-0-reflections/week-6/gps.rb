# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # baker_goods is a hash with a list of items and their inventory value
  bakery_goods = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError, "#{item_to_make} is not a valid input" unless baker_goods[item_to_make]

  serving_size = baker_goods[item_to_make]
  p remaining_ingredients = num_of_ingredients % serving_size
  calc_remaining_ingredients(item_to_make, num_of_ingredients, serving_size, remaining_ingredients)
end

def calc_remaining_ingredients(item_to_make, num_of_ingredients, serving_size, remaining_ingredients)
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
  # Choose relevant variable names, use single responsibility to separate code into mutliple methods, thus reducing repetitive chunks of code.
# Did you learn any new methods? What did you learn about them?
  # .values_at : returns a new array populated with the values from the hash
  # raise ArgumentError, "Message here" - new format of Argument Error
# What did you learn about accessing data in hashes?
  # Access values in a hash with hash_name[key] = value.
# What concepts were solidified when working through this challenge?
  # The importance of checking your code after every (even minor) change, using p to show what a variable stores, and the value of using keyboard shortcuts.