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