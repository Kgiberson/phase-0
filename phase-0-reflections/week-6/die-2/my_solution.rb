# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: An array
# Output: A string
# Steps: 1. Initialize the class by creating instance variables and an ArgumentError statement
# 2. Define sides as the array's length
# 3. Define roll to output one random string from the array.



# Initial Solution

# class Die
#   def initialize(labels)
#     if Die.new[] == nil
#         raise ArgumentError.new("No argument was received")
#     else
#       @labels = labels
#     end
#       # @sides = labels.count
#   end

#   def sides
#     return @labels.length
#   end

#   def roll
#     @labels.sample
#     # Random.rand(x..@sides)
#   end
# end



# Refactored Solution
class Die
  def initialize(label)
    if label.length == 0
        raise ArgumentError.new("No argument was received")
    else
      @label = label
    end
  end

  def sides
    return @label.length
  end

  def roll
    @label.shuffle[0]
  end
end


# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The biggest difference was that our original die class took an integer as its argument, and our second die class takes an array of strings. There wasn't much logic that needed to change.
What does this exercise teach you about making code that is easily changeable or modifiable?
  It reminds us that classes are useful for doing just that!
What new methods did you learn when working on this challenge, if any?
  No new methods, but did realize I could use sample instead of shuffle here.
What concepts about classes were you able to solidify in this challenge?
  Classes are blueprints from which you can make objects that share instance variables but may have different values.