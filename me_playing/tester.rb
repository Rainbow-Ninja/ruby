# # # # num1 = 5
# # # # num2 = 7
# # # # num3 = 5
# # # # num4 = 5
# # # # num5 = 12

# # # # if num1==num2 && num1==num3
# # # #     puts "num1 2 and 3 are the same"
# # # # elsif num1==num3&&num1==num4
# # # #     puts "num 1, 3 and 4 are the same"
# # # # else 
# # # #     puts "Bleh"
# # # # end

# # # start = 0
# # # stars1 = "\r\r\r\r\r\r*  *  *  *  *  *  *  *  *  *  *  *  *\n\n           Hey sexy legs\n\n  *  *  *  *  *  *  *  *  *  *  *  * "
# # # stars2 = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n           Hey sexy legs\n\n *  *  *  *  *  *  *  *  *  *  *  *  "
# # # stars3 = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n           Hey sexy legs\n\n*  *  *  *  *  *  *  *  *  *  *  *  *"

# # # puts "Hey There :) "
# # # while(start <= 20)
# # #    print stars1
# # #    sleep(0.1)
# # #    print "\r\r\r\r\r\r"
# # #    print stars2
# # #    sleep(0.1)
# # #    print "\r\r\r\r\r\r"
# # #    print stars3
# # #    sleep(0.1)
# # #    print "\r\r\r\r\r\r"
# # #    start +=1
# # # end

# # # puts regex = /W[aeiou]rd/.match("Ward")

# # # puts hat = /[csh](..) [csh]\1 in/.match("The cat sat in the hat")

# # # puts egg = /[aeiou]\w{3}/.match("Caenorhabditis elegans")
# # # puts bacon = /([aeiou]\w){2}/.match("Caenorhabditis elegans")
# # # puts blue = /\band/.match("Demand")

# # # puts hey = /(.)(.)/.match("matt")[0] 
# # # puts hey = /(.)(.)/.match("matt")[1] 
# # # puts hey = /(.)(.)(.)/.match("matt")[2] 
# # # puts hey = /(.)(.)(.)/.match("matt")[3] 
# # # puts hey = /(.)(.)(.)/.match("matt")[4] 
# # # puts hey = /(.)(.)(.)/.match("matt")[5]

# # # put hi = /hay/.match('haystack')

# # # require 'io/console'

# # # loop do
# # #   case $stdin.getch
# # #   when 'q'    then exit
# # #   when "\c?"  then puts 'backspace'
# # #   when "\e"   # ANSI escape sequence
# # #     case $stdin.getch
# # #     when '['  # CSI
# # #       case $stdin.getch
# # #       when 'A' then puts 'up'
# # #       when 'B' then puts 'down'
# # #       when 'C' then puts 'right'
# # #       when 'D' then puts 'left'
# # #       end
# # #     end
# # #   end
# # # end
# # # class String
# # # def bold; "\e[1m#{self}\e[22m" end
# # # end
# # # puts "<b> Ruby </b>".bold
# # # puts "Ruby"
# # # puts "<b> C </b>"
# # # puts "C"

# # def greet
# #     yield("Alex")
# #     #puts "the name inside the method, but outside the block is #{name}"
# # end
# # greet {|name| puts "value of the name in the block is #{name}"}

# board = Array.new(10){Array.new(20)}
# $posA = 5
# $posB = 0
# current_spot = board[$posA][$posB]
# $score = 0
# $count = 0

# class String
#     def gold; "\e[33m#{self}\e[0m" end
#     def magenta; "\e[35m#{self}\e[0m" end
#     def bold; "\e[1m#{self}\e[22m" end
#     def cyan; "\e[36m#{self}\e[0m" end
#     def red; "\e[31m#{self}\e[0m" end
#     def blue; "\e[34m#{self}\e[0m" end
#     def green; "\e[32m#{self}\e[0m" end

#     def bg_red; "\e[41m#{self}\e[0m" end
#     def bg_green; "\e[42m#{self}\e[0m" end
#     def bg_gold; "\e[43m#{self}\e[0m" end
#     def bg_blue; "\e[44m#{self}\e[0m" end
#     def bg_magenta; "\e[45m#{self}\e[0m" end
# end

# board [0] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]
# board [1] = ["|".cyan, "O".red, "o", "o", "o", "|".cyan, "o", "o", "o", "o", "o","o","o","o", "|".cyan, "o", "o", "o", "O".red, "|".cyan]
# board [2] = ["|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan]
# board [3] = ["|".cyan, "o", "|".cyan, "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|".cyan, "o", "|".cyan]
# board [4] = ["|".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "-".cyan, "-".cyan, " ", " ","-".cyan,"-".cyan,"o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "|".cyan]
# board [5] = ["c".gold, "o", "o", "o", "o", "o", "o", "|".cyan, "n".bg_red, "n".bg_blue, "n".bg_green, "n".bg_magenta, "|".cyan, "o", "o", "o", "o", "o", "o", " "]
# board [6] = ["|".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan,"-".cyan,"-".cyan,"o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "|".cyan]
# board [7] = ["|".cyan, "o", "|".cyan, "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|".cyan, "o", "|".cyan]
# board [8] = ["|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan]
# board [9] = ["|".cyan, "O".red, "o", "o", "o", "|".cyan, "o", "o", "o", "o", "o","o","o","o", "|".cyan, "o", "o", "o", "O".red, "|".cyan]
# board [10] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]

# def print_board(board)
#     system("clear")
#     puts board.map { |x| x.join(' ') }
#     puts "\nScore is  #{$score}"
#     puts "\nHit 'q' to quit "
# end

# def current_score(current_spot)
#     if current_spot == "o"
#         $score += 10
#     elsif current_spot == "O".red
#         $score += 50 
#     end
#     $count += 1 #use later to annouce winning
# end

# def move_up(board, current_spot)
#     if conflict{}#(board[$posA-1][$posB] == "-".cyan)||(board[$posA-1][$posB] == "|".cyan)
#         print_board(board)
#     else
#         board[$posA][$posB] = " "
#         $posA = $posA-1
#         current_spot = board[$posA][$posB]
#         current_score(current_spot)
#         board[$posA][$posB] = "c".gold
#         print_board(board)
#     end
#     return current_spot
# end

# def move_down(board, current_spot)
#     if (board[$posA+1][$posB] == "-".cyan)||(board[$posA+1][$posB] == "|".cyan)
#         print_board(board)
#     else
#         board[$posA][$posB] = " "
#         $posA = $posA+1
#         current_spot = board[$posA][$posB]
#         current_score(current_spot)
#         board[$posA][$posB] = "c".gold
#         print_board(board)
#     end
#     return current_spot
# end

# def move_right(board, current_spot)
#     if (board[$posA][$posB + 1] == "-".cyan)||(board[$posA][$posB + 1] == "|".cyan)
#         print_board(board)
#     elsif $posA == 5 && $posB == 19 #if board is at edge and \door go through
#         board[$posA][$posB] = " "
#         $posB = $posB - 19
#         current_spot = board[$posA][$posB]
#         current_score(current_spot)
#         board[$posA][$posB] = "c".gold
#         print_board(board)
#     else
#         board[$posA][$posB] = " "
#         $posB = $posB + 1
#         current_spot = board[$posA][$posB]
#         current_score(current_spot)
#         board[$posA][$posB] = "c".gold
#         print_board(board)
#     end
#     return current_spot
# end

# def move_left(board, current_spot)
#     if (board[$posA][$posB - 1] == "-".cyan)||(board[$posA][$posB - 1] == "|".cyan)
#         print_board(board)
#     elsif $posA == 5 && $posB == 0 #if board is at edge and \door go through
#         board[$posA][$posB] = " "
#         $posB = $posB + 19
#         current_spot = board[$posA][$posB]
#         current_score(current_spot)
#         board[$posA][$posB] = "c".gold
#         print_board(board)
#     else
#         board[$posA][$posB] = " "
#         $posB = $posB-1
#         current_spot = board[$posA][$posB]
#         current_score(current_spot)
#         board[$posA][$posB] = "c".gold
#         print_board(board)
#     end
#     return current_spot
# end

# def pill
    
# end

# def conflict
#     (board[$posA-1][$posB] == "-".cyan)||(board[$posA-1][$posB] == "|".cyan)
# end

# # #yield can take parameters/arguments
# # def add(num1, num2)
# #     sum = num1 + num2
# #     diff = num1 - num2
# #     yield(sum, diff)
# # end
# # add(10,20) {|sum, diff| puts "sum of two numbers is #{sum}"
# # puts "diff of two numbers is #{diff}"}

# print_board(board)
# require 'io/console'
# loop do
#     case $stdin.getch
#     when 'q'    then exit
#     when "\c?"  then puts 'backspace'
#     when "\e"   # ANSI escape sequence
#       case $stdin.getch
#       when '['  # CSI
#         case $stdin.getch
#         when 'A' then move_up(board, current_spot)
#         when 'B' then move_down(board, current_spot)
#         when 'C' then move_right(board, current_spot)
#         when 'D' then move_left(board, current_spot)
#         end
#       end
#     end
#   end

def reset(arr1, arr2)
    arr1 = arr2
    puts "arrays in reset method (should be same)"
    p arr1
    p arr2
    return arr1
end

def midPt(arr1, arr2)
    puts "MidPt method (should be diff)"
    p arr1
    p arr2
    arr1[0] = 21
    puts "one more change in midpt"
    p arr1
    reset(arr1, arr2)
    puts "after reset but still in midpt (should be same?)"
    p arr1
    p arr2
end

# arr1 = [[0, 2], [2, 3], [4, 5], [6, 7]]
# arr2 = [[0, 2], [2, 3], [4, 5], [6, 7]]
arr1 = [1, 2, 3, 4]
arr2 = [1, 2, 3, 4]
puts "original arrays (should be the same)"
p arr1
p arr2
# arr1[3][0] = 7
# arr1[0][1] = 22
# arr1[1][1] = 10
arr1[1] = 7
arr1[2] = 45
puts "changed arr1 not arr2"
p arr1
p arr2
midPt(arr1, arr2)
reset(arr1, arr2)
puts "after midpt and reset (same?)"
p arr1
p arr2