moves_so_far = Array.new(3){Array.new(3, " ")}
$player = "Player 1"
no_winner = true
total_moves = 0

def print_board(moves_so_far) #prints the board with current moves included
    puts "\n               |         |         "
    puts "          #{moves_so_far[0][0]}    |    #{moves_so_far[0][1]}    |    #{moves_so_far[0][2]}    "
    puts "      _________|_________|_________"
    puts "               |         |         "
    puts "          #{moves_so_far[1][0]}    |    #{moves_so_far[1][1]}    |    #{moves_so_far[1][2]}    "
    puts "      _________|_________|_________"
    puts "               |         |         "
    puts "          #{moves_so_far[2][0]}    |    #{moves_so_far[2][1]}    |    #{moves_so_far[2][2]}    "
    puts "               |         |         "
end

def switch_player(total_moves) #switches between player 1 and player 2
    total_moves +=1
    if total_moves < 9
        if total_moves%2==0
            $player = "Player 1"
        else
            $player = "Player 2"
        end
        puts "\n    #{$player} your turn: "
    end
    return total_moves
end

def mark_board(moves_so_far, posA, posB) #saves the players choice so it can be marked on the board
    if $player == "Player 1"
        moves_so_far[posA][posB] = "O"
    else
        moves_so_far[posA][posB] = "X"
    end
end

def ask_for_move(moves_so_far) #asks player for position to mark. Loops until valid choice
    spot_free = false

    while spot_free == false #loops if player chooses an already taken spot
        valid_row = false
        valid_column = false

        while valid_row == false #loops until player gives valid row choice
            puts "\n    Would you like to go in the \n    1. Top row \n    2. Middle row or \n    3. Bottom row?\n    (type 1, 2 or 3) "
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
                puts "\n*** Invalid option. Try again ***"
            end
        end
        
        system('clear')
        print_board(moves_so_far)

        while valid_column == false #loops until player gives valid column choice
            puts "\n    Would you like to go on the \n    1. Left \n    2. Middle or \n    3. Right of the row?\n    (type 1, 2 or 3) "
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
                puts "\n*** Invalid option. Try again ***"
            end
        end
        
        system('clear')

        if  moves_so_far[posA][posB] == " " #makes sure spot is actually free then marks it
            mark_board(moves_so_far, posA, posB)
            print_board(moves_so_far)
            spot_free = true
        else
            puts "\n* That spot is already taken. Try again *"
        end 
    end
end


def cool_end #does cool flashy stars for the winner
    start = 0
    stars1 = "*  *  *  *  *  *  *  *  *  *  *  *  *\n\n           #{$player} Wins!!\n\n  *  *  *  *  *  *  *  *  *  *  *  * "
    stars2 = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n           #{$player} Wins!!\n\n *  *  *  *  *  *  *  *  *  *  *  *  "
    stars3 = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n           #{$player} Wins!!\n\n*  *  *  *  *  *  *  *  *  *  *  *  *"
    
    sleep(1.5)
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

def winner(moves_so_far) #checks to see if either player has won yet
    if ((moves_so_far[0][0]==moves_so_far[0][1]&&moves_so_far[0][0]==moves_so_far[0][2]))&&((moves_so_far[0][0]!=" "&&moves_so_far[0][1]!=" "&&moves_so_far[0][2]!=" "))||((moves_so_far[1][0]==moves_so_far[1][1]&&moves_so_far[1][0]==moves_so_far[1][2]))&&((moves_so_far[1][0]!=" "&&moves_so_far[1][1]!=" "&&moves_so_far[1][2]!=" "))||((moves_so_far[2][0]==moves_so_far[2][1]&&moves_so_far[2][0]==moves_so_far[2][2]))&&((moves_so_far[2][0]!=" "&&moves_so_far[2][1]!=" "&&moves_so_far[2][2]!=" "))||((moves_so_far[0][0]==moves_so_far[1][0]&&moves_so_far[0][0]==moves_so_far[2][0]))&&((moves_so_far[0][0]!=" "&&moves_so_far[1][0]!=" "&&moves_so_far[2][0]!=" "))||((moves_so_far[0][1]==moves_so_far[1][1]&&moves_so_far[0][1]==moves_so_far[2][1]))&&((moves_so_far[0][1]!=" "&&moves_so_far[1][1]!=" "&&moves_so_far[2][1]!=" "))||((moves_so_far[0][2]==moves_so_far[1][2]&&moves_so_far[0][2]==moves_so_far[2][2]))&&((moves_so_far[0][2]!=" "&&moves_so_far[1][2]!=" "&&moves_so_far[2][2]!=" "))||((moves_so_far[0][0]==moves_so_far[1][1]&&moves_so_far[0][0]==moves_so_far[2][2]))&&((moves_so_far[0][0]!=" "&&moves_so_far[1][1]!=" "&&moves_so_far[0][0]!=" "))||((moves_so_far[0][2]==moves_so_far[1][1]&&moves_so_far[0][2]==moves_so_far[2][0]))&&((moves_so_far[0][2]!=" "&&moves_so_far[1][1]!=" "&&moves_so_far[0][2]!=" "))
       cool_end
       return false
    else
        return true
    end
end

#-------------------------------------------------------------------------------------------

print_board(moves_so_far)
puts "\n\n** Player 1: you are naughts. Player 2: you are crosses **"
puts "\n    Player 1 goes first"
while no_winner&&(total_moves<9)
    ask_for_move(moves_so_far)
    no_winner = winner(moves_so_far)
    if no_winner == true
        total_moves = switch_player(total_moves)
    end
end
if (total_moves == 9) #if there have been 9plays and no wins
    puts "\n** We have a Draw! **"
end