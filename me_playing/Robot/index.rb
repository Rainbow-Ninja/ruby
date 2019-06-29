require_relative './instructions.rb'

class String
    def cyan; "\e[36m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
end

user1 = Commands.new
user1.welcome_and_rules

exit = false
placed_yet = false

until exit
    user1.commands
    user_command = gets.chomp.to_i
    case user_command
    when 1 #place
        coords = user1.place
        placed_yet = true
    when 2 #move
        if placed_yet == false
            puts "Cannot move until first PLACED".red
        else
            user1.move(coords)
        end
    when 3 #left
        if placed_yet == false
            puts "Cannot turn until first PLACED".red
        else
            user1.turn_left(coords) 
        end
    when 4 #right
        if placed_yet == false
            puts "Cannot turn until first PLACED".red
        else
            user1.turn_right(coords)
        end
    when 5 #report
        if placed_yet == false
            puts "Cannot report until first PLACED".red
        else
            user1.report_position(coords)
        end
    when 6 #exit
        exit = true
    end
end
            