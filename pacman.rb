board = Array.new(10){Array.new(20)}
$posA = 5
$posB = 0
current_spot = board[$posA][$posB]
$score = 0
$count = 0

class String
    def gold; "\e[33m#{self}\e[0m" end
    def magenta; "\e[35m#{self}\e[0m" end
    def bold; "\e[1m#{self}\e[22m" end
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def green; "\e[32m#{self}\e[0m" end

    def bg_red; "\e[41m#{self}\e[0m" end
    def bg_green; "\e[42m#{self}\e[0m" end
    def bg_gold; "\e[43m#{self}\e[0m" end
    def bg_blue; "\e[44m#{self}\e[0m" end
    def bg_magenta; "\e[45m#{self}\e[0m" end
end

#initiate board
board [0] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]
board [1] = ["|".cyan, "O".red, "o", "o", "o", "|".cyan, "o", "o", "o", "o", "o","o","o","o", "|".cyan, "o", "o", "o", "O".red, "|".cyan]
board [2] = ["|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan]
board [3] = ["|".cyan, "o", "|".cyan, "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|".cyan, "o", "|".cyan]
board [4] = ["|".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "-".cyan, "-".cyan, " ", " ","-".cyan,"-".cyan,"o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "|".cyan]
board [5] = ["c".gold, "o", "o", "o", "o", "o", "o", "|".cyan, "n".bg_red, "n".bg_blue, "n".bg_green, "n".bg_magenta, "|".cyan, "o", "o", "o", "o", "o", "o", " "]
board [6] = ["|".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan,"-".cyan,"-".cyan,"o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "|".cyan]
board [7] = ["|".cyan, "o", "|".cyan, "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|".cyan, "o", "|".cyan]
board [8] = ["|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan]
board [9] = ["|".cyan, "O".red, "o", "o", "o", "|".cyan, "o", "o", "o", "o", "o","o","o","o", "|".cyan, "o", "o", "o", "O".red, "|".cyan]
board [10] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]

$reset_board = board.clone

#when eaten all 100 'o' reset the board
def reset(board)
        # board = $reset_board
        # board[5][0] = " " #don't put pacman back where he was
        # board[$posA][$posB] = "c".gold #keep pacman in current position
        # return board
end

def print_board(board) #print out the board with current score
    system("clear")
    puts board.map { |x| x.join(' ') }
    puts "\nScore is  #{$score}"
    puts "\nHit 'q' to quit "
    puts "count is #{$count}"
end

def current_score(current_spot, board) 
    if current_spot == "o" #10 pts for eating 'o'
        $score += 10
        $count += 1
    elsif current_spot == "O".red #50 pts for eating 'O'
        $score += 50 
        $count += 1
    end
    # if $count == 100 #if eaten all 'o' reset board
    #     board = reset(board) 
    # end
end

def move_up(board, current_spot)
    if (board[$posA-1][$posB] == "-".cyan)||(board[$posA-1][$posB] == "|".cyan) #dont walk through walls
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posA = $posA-1
        current_spot = board[$posA][$posB]
        board = current_score(current_spot, board)
        board[$posA][$posB] = "c".gold
        print_board(board)
    end
    return current_spot
end

def move_down(board, current_spot)
    if (board[$posA+1][$posB] == "-".cyan)||(board[$posA+1][$posB] == "|".cyan)
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posA = $posA+1
        current_spot = board[$posA][$posB]
        board = current_score(current_spot, board)
        board[$posA][$posB] = "c".gold
        print_board(board)
    end
    return current_spot
end

def move_right(board, current_spot)
    if (board[$posA][$posB + 1] == "-".cyan)||(board[$posA][$posB + 1] == "|".cyan)
        print_board(board)
    elsif $posA == 5 && $posB == 19 #if board is at edge and \door go through
        board[$posA][$posB] = " "
        $posB = $posB - 19
        current_spot = board[$posA][$posB]
        board = current_score(current_spot, board)
        board[$posA][$posB] = "c".gold
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posB = $posB + 1
        current_spot = board[$posA][$posB]
        board = current_score(current_spot, board)
        board[$posA][$posB] = "c".gold
        print_board(board)
    end
    return current_spot
end

def move_left(board, current_spot)
    if (board[$posA][$posB - 1] == "-".cyan)||(board[$posA][$posB - 1] == "|".cyan)
        print_board(board)
    elsif $posA == 5 && $posB == 0 #if board is at edge and \door go through
        board[$posA][$posB] = " "
        $posB = $posB + 19
        current_spot = board[$posA][$posB]
        board = current_score(current_spot, board)
        board[$posA][$posB] = "c".gold
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posB = $posB-1
        current_spot = board[$posA][$posB]
        board = current_score(current_spot, board)
        board[$posA][$posB] = "c".gold
        print_board(board)
    end
    return current_spot
end

def pill
    
end


def conflict

end

print_board(board)
require 'io/console'
loop do
    case $stdin.getch
    when 'q'    then exit
    when "\c?"  then puts 'backspace'
    when "\e"   # ANSI escape sequence
      case $stdin.getch
      when '['  # CSI
        case $stdin.getch
        when 'A' then move_up(board, current_spot)
        when 'B' then move_down(board, current_spot)
        when 'C' then move_right(board, current_spot)
        when 'D' then move_left(board, current_spot)
        end
      end
    end
  end


# #TO DO:
# - the if statement in the moves needs to be the conflict method
# - moves need to become block statements
# - ghosts need to move randomly. Aim one at my position - compare posA to ghostposA etc if cant move left/right, then compare posB etc. Have two do that are various speeds. Other 2??
# - me get larger when eat red pill and maybe flash?? for 5(?) secs. Ghosts change colour and become vulnerable and move away from me. As it wears off ghosts flash...
# - when ghosts die they returning to start for a few secs before coming out again
# - when i die lose a life (need lives!!) and points (?). I die when i touch a ghost while not big (or flashing)
# - extra points for me killing a ghost
# - random dots change colour, if I eat them I get extra points
# - If I eat all the dots board resets
# - win and/or kill screen with score

#glitch - after reset he no longer eats. Also when walks into walls the board disappears momentarily