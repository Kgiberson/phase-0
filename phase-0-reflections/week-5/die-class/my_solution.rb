# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Object
# Output: Class
# Steps:
# 1. initialize the class by defining the arguments
#   - Raise ArgumentError here
# 2. define argument
# 3. define the roll by implementing a method that randomizes the input argument of sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#       raise ArgumentError.new("Must have 1 or more sides")
#     else
#       @sides = sides
#     end
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     Random.rand(1..@sides)
#   end
# end



# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Must have 1 or more sides")
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    Random.rand(1..@sides)
  end
end


# 4. Reflection
# What is an ArgumentError and why would you use one?
  # An ArgumentError is raised when the arguments are wrong and there isn't a more specific Exception class.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  # .rand was the only new method I implemented in this challenge. It took me awhile to figure out how to call the Random class properly.
# What is a Ruby class?
  # A Ruby class is the blueprint from which individual objects are created. My apple laptop is an instance of the class of objects known as mac computers.
# Why would you use a Ruby class?
  # Ruby classes can be used to construct many different instances by assigning different values to data members.
# What is the difference between a local variable and an instance variable?
  # A local variable is defined in a method and is not available outside the method. An instance variable is available across methods for any particular instance or object. They can change from object to object and are preceded by @.
# Where can an instance variable be used?
  # Instance variables can be used across methods for any instance or object.