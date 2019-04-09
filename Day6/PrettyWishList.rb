# C1: Use blocks to cycle through wishlist items when displaying the entire wishlist. Use the blocks to add nice formatting (eg. rows or dividers between entries) instead of just displaying the raw array.

wish_list = ["basketball", "bag", "juggling balls", "harp", "laptop", "books", "dvds", "music book", "electronics", "Lego", "kitten", "puppy", "baby pool", "hat"]

def pretty_list(wish_list)
    for item in wish_list
        yield item
    end
end

pretty_list(wish_list) {|item| 
    puts "*--------------------*"
    puts "#{item.center(22)}"
}
puts "*--------------------*"