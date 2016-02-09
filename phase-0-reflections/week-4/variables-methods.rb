puts 'Hello there, what\'s your first name?'
first_name = gets.chomp
puts 'And your middle name?'
middle_name = gets.chomp
puts 'Wonderful, and finally, what is your last name?'
last_name = gets.chomp
puts 'It\'s lovely to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


puts 'What\'s your favorite number?'
favnum = gets.chomp
betternum = favnum.to_i + 1
puts 'Wouldn\'t ' + betternum.to_s + ' be a bigger and better number?'

=begin
(1) How do you define a local variable?
    To define a local variable:
    variable = 'string' or integer,
    (variables can point to any type of object)

(2) How do you define a method?
    To define a method:
    def method(set, amount, parameter)
    body
    end

(3) What is the difference between a local variable and a method?
  A local variable is an object and a method is an action performed on the object.

(4) How do you run a ruby program from the command line?
    :> ruby name_of_ruby_file.rb

(5)How do you run an RSpec file from the command line?
    :> rspec spec_file_name.rb

(6)What was confusing about this material? What made sense?
    I still don't fully understand how rspec checks the code, and what their error messages mean. I expect that will come with time. The simple logic behind methods and variables made sense to me.

=end

https://github.com/Kgiberson/phase-0/blob/master/phase-0-reflections/week-4/address/my_solution.rb

https://github.com/Kgiberson/phase-0/blob/master/phase-0-reflections/week-4/math/my_solution.rb