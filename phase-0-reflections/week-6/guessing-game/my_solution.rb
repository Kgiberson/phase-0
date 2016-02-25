
# Build a simple guessing game


# I worked on this challenge by myself.
# I spent  hours on this challenge.

# Pseudocode

# Input: integer
# Output:
# Steps:
# 1. Initialize class with an integer called answer
# 2. Define an instance method which takes an integer as its input and returns :high IF guess > answer, ELSE :correct the guess == answer, and ELSE :low guess < answer.
# 3. Define an instance method, #solved? IF most recent guess == correct RETURNS true ELSE RETURNS false.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     if guess > @answer
#       return :high
#     elsif guess == @answer
#       return :correct
#     else guess < @answer
#       return :low
#     end
#   end

#   def solved?
#     @guess == @answer
#   end
# end


# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif guess == @answer
      return :correct
    else guess < @answer
      return :low
    end
  end

  def solved?
    @guess == @answer
  end
end




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  # They are the characteristics and general behaviors shared by objects of the same blueprint. Their values and, therefore, actions change from object to object.
# When should you use instance variables? What do they do for you?
  # Use isntance variables when you expect to use the variable across different methods within the same Class.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  # If statements are a form of flow control. If the if-statement is true it will run the next line of code, if it's false the parser moves on to the next elsif statement and does the same thing, determines if it's true. If it is, the next line of code is run, if not it moves on to the else statement, which is the code that is run if the above statements are all false.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  # Symbol's chief characteristics are immutability and uniqueness. Just like integers, you can't append characters to a symbol once the symbol exists and whenever you see :correct you're seeing a representation of the same object.