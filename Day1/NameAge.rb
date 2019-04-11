puts "What is your name? "
name = gets.chomp
name = name.capitalize!
puts "Hi #{name}! How old are you? "
age = gets.chomp.to_i
puts "Wow! You are #{age} years old. Congratulations"
century = 100 - age
puts "#{name}, in #{century} years you will be 100 years old!"