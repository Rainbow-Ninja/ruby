final_list = []
counter = 0

def anything_else(counter)
    valid = true
    while valid
        if (counter > 0)
            puts "Would you like anything more? (y/n)"
        end
        answer = gets.chomp.downcase
        if answer == "y"
            valid = false
            return "y"
        elsif answer == "n"
            valid = false
            return "n"
        else
            puts "I didn't get that"
        end
    end
end

def add_item(final_list)
    item = gets.chomp
    final_list = final_list.push(item)
    puts "So far you have #{final_list}"
end
#---------------------------------------------------------------------------------

puts "What would you like to add to your wish list?"
add_item(final_list)
puts "Would you like anything more? (y/n) "
more = anything_else(counter)#gets.chomp.downcase
while anything_else(counter) == "y"
    puts "What would you like to add? "
    add_item(final_list)
    counter += 1    
end
if more == "n"
    puts "You have chosen #{final_list}. Enjoy!"
end
       