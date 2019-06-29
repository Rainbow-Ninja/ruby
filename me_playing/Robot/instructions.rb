class Commands
    def welcome_and_rules
        puts "Welcome to the robot playground!".cyan
        sleep(2)
        puts "You have a robot on a 5 by 5 table that you may move using the following commands: ".blue
        puts "\nPLACE X, Y, Direction (North South, East or West)".red + " - places the robot in position x, y on the table, facing direction".cyan
        puts "MOVE".red + " - moves the robot 1 square in the direction it is facing".blue
        puts "LEFT".red + " - rotates the robot 90degrees anti-clockwise".cyan
        puts "RIGHT".red + " - rotates the robot 90degrees clockwise".blue
        puts "REPORT".red + " - the robot will tell you where it is on the table".cyan
        sleep(4)
        puts "\nSome Rules:".blue
        puts "- You must use the ".cyan + "PLACE".red + " command first".cyan
        puts "- If you try to PLACE the robot off the table, the robot will not follow your commands".blue
        puts "- The robot will not follow any commands that put it in danger i.e. make it fall off the table".cyan
        puts "\nHave fun!\n".blue
        sleep(4)
    end

    def commands
        commands = {1 => "PLACE", 2 => "MOVE", 3 => "LEFT", 4 => "RIGHT", 5 => "REPORT", 6 => "EXIT"}
        commands.each {|option, command| puts "#{option} - #{command}"}
        print "Select an option (1 - 6): "
    end

    def place
        puts "Where would you like the robot placed?".blue
        error = true
        while error == true
            print "X coordinate (between 0 and 4): ".cyan
            x_coord = gets.chomp.to_i
            error = check_coords(x_coord)
        end
        error = true
        while error == true
            print "\nY coordinate (between 0 and 4): ".cyan
            y_coord = gets.chomp.to_i
            error = check_coords(y_coord)
        end
        nsew = false
        until nsew
            puts "Would you like me to face (N)orth, (S)outh, (E)ast or (W)est?".cyan
            facing = gets.chomp.downcase
            if facing == "n" || facing == "s" || facing == "e" || facing == "w"
                nsew = true
                return place_coords = [x_coord, y_coord, facing]
            else
                puts "\nI didn't get that, please try again".red
            end
        end
    end

    def check_coords(coord)
        if coord > 4 || coord < 0
            puts "\nThat is an invalid entry. Please try again".red
            return true
        else
            return false
        end
    end

    def move(coords)
        if coords[2] == "n" && coords[1] < 4
            coords[1] += 1
        elsif coords[2] == "s" && coords[1] > 0
            coords[1] -= 1
        elsif coords[2] == "e" && coords[0] < 4
            coords[0] += 1
        elsif coords[2] == "w" && coords[0] > 0
            coords[0] -= 1
        else
            fall_msg
        end 
    end

    def fall_msg
        puts "I can't move that way, else I'll fall\n".red
    end

    def turn_left(coords)
        coords[2].tr!("nsew", "wens")
    end

    def turn_right(coords)
        coords[2].tr!("nsew", "ewsn")
    end

    def report_position(coords)
        direction = coords[2].gsub(/[nsew]/, "n" => "NORTH", "s" => "SOUTH", "e" => "EAST", "w" => "WEST")
        puts "#{coords[0]}, #{coords[1]}, #{direction}".blue
    end
end