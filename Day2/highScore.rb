high_score = 100

puts "What is your score today? "
user_score = gets.chomp.to_i

case user_score <=> high_score
when 1
    puts "You are totally awesome!"
when 0
    puts "You are as awesome as all the awesome people around you!"
else 
    puts "You need to get more awesome!"
end