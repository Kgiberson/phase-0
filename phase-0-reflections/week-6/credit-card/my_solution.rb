# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   attr_accessor :number
#   def initialize(number)
#     number_array = number.to_s.split('')
#     if number_array.length != 16
#       raise ArgumentError.new('Credit card number is incorrect')
#     else
#     @number = number_array
#     end
#   end


#   def check_card
#     @number.reverse!
#     @number.map! {|num| num.to_i}
#     @number[1] = @number[1] * 2
#     @number[3] = @number[3] * 2
#     @number[5] = @number[5] * 2
#     @number[7] = @number[7] * 2
#     @number[9] = @number[9] * 2
#     @number[11] = @number[11] * 2
#     @number[13] = @number[13] * 2
#     @number[15] = @number[15] * 2
#     @number = @number.join.split('')
#     @number.map! {|num| num.to_i}
#     @sum = 0
#     @number.each do |num|
#       @sum = @sum + num
#     end
#     if @sum % 10 == 0
#       print "your card works!"
#       return true
#     else
#       print "your card is not valid"
#       return false
#     end
#   end
# end



# Refactored Solution
class CreditCard
  attr_accessor :number
  def initialize(number)
    number_array = number.to_s.split('')
    if number_array.length != 16
      raise ArgumentError.new('Credit card number is incorrect')
    else
    @number = number_array
    end
  end

  def check_card
    @number.reverse!
    @number.map! {|num| num.to_i}
    @number.each_with_index do |num, i|
      if ( i % 2 == 1)
        @number[i] = num * 2
      end
    end
    # Other Option:
    # @number.map!.with_index { | num, i| i.odd? ? num * 2 : num * 1 }
    @number = @number.join.split('')
    @number.map! {|num| num.to_i}
    @sum = 0
    @number.each do |num|
      @sum = @sum + num
    end
    if @sum % 10 == 0
      print "your card works!"
      return true
    else
      print "your card is not valid"
      return false
    end
  end
end


# Reflection
# What was the most difficult part of this challenge for you and your pair?
  # We struggled with iterating over the array and modify only odd value indexes (line 75).
# What new methods did you find to help you when you refactored?
  # We played around with .map!.with_index and .each_with_index to more efficiently iterate over the array.
# What concepts or learnings were you able to solidify in this challenge?
  # My understanding of the initialize method how to iterate destructively over an array has gotten stronger.