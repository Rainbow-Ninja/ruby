# C1: Use blocks to cycle through wishlist items when displaying the entire wishlist. Use the blocks to add nice formatting (eg. rows or dividers between entries) instead of just displaying the raw array.

wish_list = ["basketball", "bag", "juggling balls", "harp", "laptop", "books", "dvds", "music book", "electronics", "Lego", "kitten", "puppy", "baby pool", "hat"]

def pretty_list(wish_list)
    for item in wish_list
        yield item
    end
end

#print it out centered based on my pretty decorations
pretty_list(wish_list) {|item| 
    puts line = "*--------------------*"
    puts "#{item.center(line.length)}" #centre it on my pretty line
}
puts "*--------------------*"

#print it out centred using 11 as the centre point
# pretty_list(wish_list) {|item| 
#     line = "*--------------------*"
#     line_length = line.length
#     puts "*--------------------*"
#     puts "#{item.center(11)}"
# }
# puts "*--------------------*"

# #print it out centred using 40 as the centre point
# pretty_list(wish_list) {|item| 
#     line = "*--------------------*"
#     line_length = line.length
#     puts "*--------------------*"
#     puts "#{item.center(40)}"
# }
# puts "*--------------------*"