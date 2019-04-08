$more = true
final_list = []

def anything_else
    valid = true
    while valid
        puts "Would you like anything else? (y/n)"
        answer = gets.chomp.downcase
        if answer.include?("y")
            valid = false
            return "y"
        elsif answer.include?("n")
            $more = false
            valid = false
        else
            puts "I didn't get that"
        end
    end
end

def add_item(final_list)
    item = gets.chomp
    final_list = final_list.push(item)
    puts "So far you have #{final_list}""
end
#---------------------------------------------------------------------------------

puts "What would you like to add to your wish list?"
add_item(final_list)
while anything_else.include?("y")
    puts "What would you like to add? "
    add_item(final_list)    
    anything_else
end
        