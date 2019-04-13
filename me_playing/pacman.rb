board = Array.new(10){Array.new(20)}
$posA = 5
$posB = 0
current_spot = board[$posA][$posB]
$score = 0
$count

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

def print_board(board)
    system("clear")
    puts board.map { |x| x.join(' ') }
    puts "\nScore is  #{$score}"
    puts "\nHit 'q' to quit "
end

def current_score(current_spot)
    if current_spot == "o"
        $score += 10
        $count += 1 #use later to annouce winning
    end
end

def move_up(board, current_spot)
    if (board[$posA-1][$posB] == "-".cyan)||(board[$posA-1][$posB] == "|".cyan)
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posA = $posA-1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
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
        current_score(current_spot)
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
        current_score(current_spot)
        board[$posA][$posB] = "c".gold
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posB = $posB + 1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
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
        current_score(current_spot)
        board[$posA][$posB] = "c".gold
        print_board(board)
    else
        board[$posA][$posB] = " "
        $posB = $posB-1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
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
