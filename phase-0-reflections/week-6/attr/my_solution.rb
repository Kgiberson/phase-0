#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: data from a separate class
# Output: string containing interpolated instance variable from separate method.
# Steps:
# 1. Initialize NameData with my name
#   - set attr_reader
# 2. Initialize Greetings with an instance of NameData class
# 3. Define a method, hello, in Greetings that pulls my name from the first class defined
# 4. Write a method call that prints the "Hello ..." string

class NameData
  attr_reader :name
  def initialize
    @name = 'Kari'
  end
  # def name
  #   @name = Kari
  # end
end

# name_data = NameData.new
# puts name_data.name


class Greetings
  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.name}! How wonderful to see you today."
  end
end


greet = Greetings.new
p greet.hello


# Reflection
# Release 1:
# What are these methods doing?
  # These methods are setting and getting variables.
# How are they modifying or returning the value of instance variables?
  # The setter (or writer) methods are using syntactic sugar to modify instance variables with user input. The reader/getter methods, returns the value of the instance variables.

# Release 2:
# What changed between the last release and this release?
  # An attribute reader, :age, was added which allowed the what_is_age method to become redundant.
  # the p instance_of_profile.age method also changed names, it still returns the value of @age.
# What was replaced?
  # def what_is_age @age end; method was replaced with attr_reader :age.
# Is this code simpler than the last?
  # Yes, just a little bit!

# Release 3:
#What changed between the last release and this release?
  # Added :age as an attribute writer, attr_writer.
# What was replaced?
  # Took out the change_my_age= method, replaced with attr_writer :age
# Is this code simpler than the last?
  # Yes, it's two lines of code shorter.
#What changed between the last release and this release?
  # attr_writer was combined with attr_reader to become attr_accessor
# What was replaced?
  # attr_writer replaced with attr_accessor
# Is this code simpler than the last?
  # Yes, it's a couple lines shorter.


# Release 6: Reflect
# What is a reader method?
  # A reader method is an accessor that reads the variable input and stores it as an instance variable.
# What is a writer method?
  # A writer method is an accessor that allows us to write/set instance variables.
# What do the attr methods do for you?
  # attr methods allow you to not have to write accessor methods explicitly. They serve as shortcuts for the standard forms.
# Should you always use an accessor to cover your bases? Why or why not?
  # No, it is helpful for someone who's reading your code to know which variables can only be read and which can be set.
# What is confusing to you about these methods?
  # WGR did a great job of further explaining how these methods work. Somthing that's still confusing to me is how exactly to talk about is how the reader/writer methods can be used. I'm sure that understanding will come with practice.

