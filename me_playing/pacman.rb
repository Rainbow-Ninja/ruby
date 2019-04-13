board = Array.new(10){Array.new(20)}
$posA = 5
$posB = 0
current_spot = board[$posA][$posB]
$score = 0

board [0] = ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"]
board [1] = ["|", "O", "o", "o", "o", "|", "o", "o", "o", "o", "o","o","o","o", "|", "o", "o", "o", "O", "|"]
board [2] = ["|", "o", "-", "-", "o", "|", "o", "-", "-", "-", "-", "-", "-", "o", "|", "o", "-", "-", "o", "|"]
board [3] = ["|", "o", "|", "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|", "o", "|"]
board [4] = ["|", "o", "|", "o", "-", "-", "o", "-", "-", " ", " ","-","-","o", "-", "-", "o", "|", "o", "|"]
board [5] = ["C", "o", "o", "o", "o", "o", "o", "|", " ", " ", " ", " ", "|", "o", "o", "o", "o", "o", "o", " "]
board [6] = ["|", "o", "|", "o", "-", "-", "o", "-", "-", "-", "-","-","-","o", "-", "-", "o", "|", "o", "|"]
board [7] = ["|", "o", "|", "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|", "o", "|"]
board [8] = ["|", "o", "-", "-", "o", "|", "o", "-", "-", "-", "-", "-", "-", "o", "|", "o", "-", "-", "o", "|"]
board [9] = ["|", "O", "o", "o", "o", "|", "o", "o", "o", "o", "o","o","o","o", "|", "o", "o", "o", "O", "|"]
board [10] = ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"]

def print_board(board)
    puts board.map { |x| x.join(' ') }
    puts "\n Score is  #{$score}"
    puts "\nHit 'q' to quit "
end

def current_score(current_spot)
    if current_spot == "o"
        return $score += 10
    end
end

def move_up(board, current_spot)
    system("clear")
    if (board[$posA-1][$posB] == "-")||(board[$posA-1][$posB] == "|")
        print_board(board)
    else
        board[$posA][$posB] = "."
        $posA = $posA-1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
        board[$posA][$posB] = "C"
        print_board(board)
    end
    return current_spot
end

def move_down(board, current_spot)
    system("clear")
    if (board[$posA+1][$posB] == "-")||(board[$posA+1][$posB] == "|")
        print_board(board)
    else
        board[$posA][$posB] = "."
        $posA = $posA+1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
        board[$posA][$posB] = "C"
        print_board(board)
    end
    return current_spot
end

def move_right(board, current_spot)
    system("clear")
    if (board[$posA][$posB + 1] == "-")||(board[$posA][$posB + 1] == "|")
        print_board(board)
    else
        board[$posA][$posB] = "."
        $posB = $posB + 1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
        board[$posA][$posB] = "C"
        print_board(board)
    end
    return current_spot
end

def move_left(board, current_spot)
    system("clear")
    if (board[$posA][$posB - 1] == "-")||(board[$posA][$posB - 1] == "|")
        print_board(board)
    else
        board[$posA][$posB] = "."
        $posB = $posB-1
        current_spot = board[$posA][$posB]
        current_score(current_spot)
        board[$posA][$posB] = "C"
        print_board(board)
    end
    return current_spot
end

def conflict

end

system("clear")
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
