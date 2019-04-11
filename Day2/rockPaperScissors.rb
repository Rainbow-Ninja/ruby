puts "Welcome to the World Championships of Scissors, Paper, Rock!!\n\nPlayer 1 enter you choice 'Scissors, Paper or Rock'"
Player1 = gets.chomp.downcase
system "clear"
puts "Player 2 enter your choice 'Scissors, Paper or Rock'"
Player2 = gets.chomp.downcase
system "clear"

case Player1
when "rock"
    if Player2 =="scissors"
        puts "#{Player1.capitalize} beats #{Player2.capitalise}. Player 1 wins!"
    elsif Player2=="paper"
        puts "#{Player2.capitalize} beats #{Player1.capitalize}. Player 2 wins!"
    else
        puts "You both chose #{Player1}. You tie!"
    end
when "scissors"
    if Player2 =="paper"
        puts "#{Player1.capitalize} beats #{Player2.capitalize}. Player 1 wins!"
    elsif Player2=="rock"
        puts "#{Player2.capitalize} beats #{Player1.capitalize}. Player 2 wins!"
    else
        puts "You both chose #{Player1}. You tie!"
    end
else
    if Player2 =="rock"
        puts "#{Player1.capitalize} beats #{Player2.capitalize}. Player 1 wins!"
    elsif Player2=="scissors"
        puts "#{Player2.capitalize} beats #{Player1.capitalize}. Player 2 wins!"
    else
        puts "You both chose #{Player1}. You tie!"
    end
end