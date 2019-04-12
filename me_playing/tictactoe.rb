moves_so_far = Array.new(3){Array.new(3, "-")}
$player = "Player 1"
no_winner = true
total_moves = 0

def print_board(moves_so_far)
    puts "         |         |         "
    puts "    #{moves_so_far[0][0]}    |    #{moves_so_far[0][1]}    |    #{moves_so_far[0][2]}    "
    puts "_________|_________|_________"
    puts "         |         |         "
    puts "    #{moves_so_far[1][0]}    |    #{moves_so_far[1][1]}    |    #{moves_so_far[1][2]}    "
    puts "_________|_________|_________"
    puts "         |         |         "
    puts "    #{moves_so_far[2][0]}    |    #{moves_so_far[2][1]}    |    #{moves_so_far[2][2]}    "
    puts "         |         |         "
end

def switch_player(total_moves)
    total_moves +=1
    if total_moves%2==0
        $player = "Player 1"
    else
        $player = "Player 2"
    end
    puts "\n#{$player} your turn: "
    return total_moves
end

def mark_board(moves_so_far, posA, posB)
    if $player == "Player 1"
        moves_so_far[posA][posB] = "O"
    else
        moves_so_far[posA][posB] = "X"
    end
end

def ask_for_move(moves_so_far)
    valid_row = false
    valid_column = false
    spot_free = false
    
    while valid_row == false
        puts "\nWould you like to go in the \n1. Top row \n2. Middle row or \n3. Bottom row?\n(type 1, 2 or 3) "
        row = gets.chomp.to_i
        if row == 1
            posA = 0
            valid_row = true
        elsif row == 2
            posA = 1
            valid_row = true
        elsif row == 3
            posA = 2
            valid_row = true
        else
            puts "Invalid option. Try again: "
        end
    end
    while valid_column == false
        puts "\nWould you like to go on the \n1. Left \n2. Middle or \n3. Right of the row?\n(type 1, 2 or 3) "
        column = gets.chomp.to_i
        if column == 1
            posB = 0
            valid_column = true
        elsif column == 2
            posB = 1
            valid_column = true
        elsif column == 3
            posB = 2
            valid_column = true
        else
            puts "Invalid option. Try again: "
        end
    end

    while spot_free == false    
        if  moves_so_far[posA][posB] == "-"
            mark_board(moves_so_far, posA, posB)
            print_board(moves_so_far)
            spot_free = true
        else
            puts "That spot is already taken. Try again "
            ask_for_move(moves_so_far)
        end 
    end
end


def cool_end
    start = 0
    stars1 = "*  *  *  *  *  *  *  *  *  *  *  *  *\n\n           #{$player} Wins!!\n\n  *  *  *  *  *  *  *  *  *  *  *  * "
    stars2 = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n           #{$player} Wins!!\n\n *  *  *  *  *  *  *  *  *  *  *  *  "
    stars3 = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n           #{$player} Wins!!\n\n*  *  *  *  *  *  *  *  *  *  *  *  *"
    
    sleep(3)
    while(start <= 20)
        print stars1
        sleep(0.1)
        system("clear")
        print stars2
        sleep(0.1)
        system("clear")
        print stars3
        sleep(0.1)
        system("clear")
        start +=1
    end
end

def winner(moves_so_far)
    if ((moves_so_far[0][0]==moves_so_far[0][1]&&moves_so_far[0][0]==moves_so_far[0][2]))&&((moves_so_far[0][0]!="-"&&moves_so_far[0][1]!="-"&&moves_so_far[0][2]!="-"))||((moves_so_far[1][0]==moves_so_far[1][1]&&moves_so_far[1][0]==moves_so_far[1][2]))&&((moves_so_far[1][0]!="-"&&moves_so_far[1][1]!="-"&&moves_so_far[1][2]!="-"))||((moves_so_far[2][0]==moves_so_far[2][1]&&moves_so_far[2][0]==moves_so_far[2][2]))&&((moves_so_far[2][0]!="-"&&moves_so_far[2][1]!="-"&&moves_so_far[2][2]!="-"))||((moves_so_far[0][0]==moves_so_far[1][0]&&moves_so_far[0][0]==moves_so_far[2][0]))&&((moves_so_far[0][0]!="-"&&moves_so_far[1][0]!="-"&&moves_so_far[2][0]!="-"))||((moves_so_far[0][1]==moves_so_far[1][1]&&moves_so_far[0][1]==moves_so_far[2][1]))&&((moves_so_far[0][1]!="-"&&moves_so_far[1][1]!="-"&&moves_so_far[2][1]!="-"))||((moves_so_far[0][2]==moves_so_far[1][2]&&moves_so_far[0][2]==moves_so_far[2][2]))&&((moves_so_far[0][2]!="-"&&moves_so_far[1][2]!="-"&&moves_so_far[2][2]!="-"))||((moves_so_far[0][0]==moves_so_far[1][1]&&moves_so_far[0][0]==moves_so_far[2][2]))&&((moves_so_far[0][0]!="-"&&moves_so_far[1][1]!="-"&&moves_so_far[0][0]!="-"))||((moves_so_far[0][2]==moves_so_far[1][1]&&moves_so_far[0][2]==moves_so_far[2][0]))&&((moves_so_far[0][2]!="-"&&moves_so_far[1][1]!="-"&&moves_so_far[0][2]!="-"))
       cool_end
       return false
    else
        return true
    end
end


print_board(moves_so_far)
puts "** Player 1: you are naughts. Player 2: you are crosses **"
puts "\nPlayer 1 goes first"
while no_winner&&(total_moves<9)
    ask_for_move(moves_so_far)
    no_winner = winner(moves_so_far)
    if no_winner == true
        total_moves = switch_player(total_moves)
    end
end
if (total_moves == 9)
    puts "We have a Draw!"
end
