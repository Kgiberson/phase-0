# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says it did not expect an end-of-input, bt was expecting keyword_end.
# 5. Where is the error in the code?
#It's at the end of the program.
# 6. Why did the interpreter give you this error?
# We forgot to put an 'end' to close the while loop.

# --- error -------------------------------------------------------

south_park = 'best place'

# 1. What is the line number where the error occurs?
# Line 36
# 2. What is the type of error message?
# Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# 'south_park' for main:Object has a Name Error
# 4. Where is the error in the code?
# On line 36, related to the object 'south_park'
# 5. Why did the interpreter give you this error?
#  irb gave us this error because we have not define south_park to be either a method or a variable.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#  Line 51
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'cartman' for main: Object, No Method Error
# 4. Where is the error in the code?
# Line 51, at the cartman method.
# 5. Why did the interpreter give you this error?
# We did not define (and end) the method, cartman.

# --- error -------------------------------------------------------

def cartmans_phrase(a)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# Arguments error, from errors.rb 71: in '<main>'
# 4. Where is the error in the code?
# in 'cartmans_phrase'
# 5. Why did the interpreter give you this error?
# When we defined cartmans_phrase we did not assign it any parameters. When we called the method on line 71, we didn't have a parameter to insert the argument in.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('No, you are fat')

# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1) argument error
# 4. Where is the error in the code?
# Error is on line 90, where we called the method without assigning an argument.
# 5. Why did the interpreter give you this error?
# We had 0 arguments called for 1 parameter.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2) Argument Error
# 4. Where is the error in the code?
# Error occurs on 111 and 107
# 5. Why did the interpreter give you this error?
# We called the carmans_lie method on only one parameter, when it requires two.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# in * - universal selector?
# 5. Why did the interpreter give you this error?
# You can't multiply 5 'respect my authority!' times. Mismatch of values!

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# in the '/'
# 5. Why did the interpreter give you this error?
# 20/0 is infinity

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file /users/karigiberson/Desktop/DBC/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# in 'require_relative'
# 5. Why did the interpreter give you this error?
# Cartmans_essay.md doesn't exist on my local drive.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?
  The second error, requiring a second end to close the while loop, was the most difficult to read because the error's line number threw me off for a bit.
How did you figure out what the issue with the error was?
  I commented out that section of code, and saw that the error message changed to another line, so I knew it was a problem with the cartman_hates method. I researched more about while loops and saw that they, too, require an end.
Were you able to determine why each error message happened based on the code?
  No, I had to do some googling.
When you encounter errors in your future code, what process will you follow to help you debug?
  Look at which file the error occurs in, then which line, then what type of error, then the additional information, then more specifically about where the error lies. If that information doesn't give me enough puzzle pieces to figure it out, I'll research in WGR or online.

=end