# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: identify initial string, create an array of the components of the string, make the array a hash with a defaul value of 1
  #
# init_string = "carrots apples cereal pizza"
# grocery_array = init_string.split

# groceries = Hash[grocery_array.map {|x| [x, quantity = 1]}]

# def make_list(item, quantity = 1)
#   groceries = { item => quantity }
#   return groceries
# end

# list = make_list("banana", 18)
# p list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# # Method to add an item to a list
# # input: item name and optional quantity
# # steps: Add new input items to the groceries hash
# # output: new hash
# def add_to_list(groceries, item, quantity = 1)
#   groceries.store(item, quantity)
# end
# add_to_list(groceries, "orange", 4)
# p groceries

# # Method to remove an item from the list
# # input: Hash
# # steps: Remove new input items from the groceries hash
# # output: New hash
# def remove_from_list(groceries, item, quantity = 1)
#   groceries.delete(item)
# end
# remove_from_list(groceries, "orange")
# p groceries


# # Method to update the quantity of an item
# # input: Hash
# # steps: Search through hash keys to match input, then add to paired value
# # output: New hash

# def update_list(groceries, item, new_q)
#   groceries.each do |k,v|
#     if k == item
#       groceries[k] = new_q
#     end
#   end
# end

# add_quantity(groceries, "apples", 2)
# p groceries

# # Method to print a list and make it look pretty
# # input: Hash
# # steps: Pring the method with a string that helps the reader understand what he/she is looking at.
# # output: Hash with formatting
# def print_list (groceries)
#   groceries.each {|item, new_q| puts "You need to buy #{new_q} #{item}"}
# end
# p print_list(groceries)

# Refactoring
groceries = Hash.new

def add_to_list(groceries, item, quantity = 1)
  groceries.store(item, quantity)
end

def remove_from_list(groceries, item, quantity = 1)
  groceries.delete(item)
  end

def add_quantity(groceries, item, new_q)
  groceries.each do |k,v|
  if k == item
  groceries[k] = new_q
  end
  end
end

def print_list (groceries)
  groceries.each {|item, new_q| puts "You need to buy #{new_q} #{item}"}
end


add_to_list(groceries, "Lemonade", 2)
add_to_list(groceries, "Tomatoes", 3)
add_to_list(groceries, "Onions")
add_to_list(groceries, "Ice Cream", 4)
p groceries

remove_from_list(groceries, "Lemonade")
p groceries

add_quantity(groceries, "Ice Cream", 1)
p groceries

print_list(groceries)
p groceries

#Reflection
# What did you learn about pseudocode from working on this challenge?
  # I learned that pseudocoding is helpful for making sure you understand what methods need to be employed to supply the right output.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
  # Hashes allow the item and quantity to be stored as a pair. Arrays are a good option if you wanted to store just the item name to create the list.
# What does a method return?
  # If a method is nondestructive, it returns the receiver of the method. If it is destructive, it returns a new object.
# What kind of things can you pass into methods as arguments?
  # We can use any data type for a parameter of a method (hash, array, string, etc.)
# How can you pass information between methods?
  # To pass information between methods you can use global variables or define the object in the parameters.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # I can't say for sure if any concepts have been solidified but I can agree that this was great practice for understanding how to compose a code block for the each method and how to set a default value for a hash value.