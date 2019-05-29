# @channel: Morning challenge:

# Core:
# A group of friends have just finished lunch. We all know that Bryce is going to skimp on the bill, so we need to write a method to work out how much each person owes.
# Your first line of code is:
items = [
    {
        customer: "John",
        item: "Soup",
        cost: 8.50
    },
    {
        customer: "Luke",
        item: "Pasta",
        cost: 12
    },
    {
        customer: "Bryce",
        item: "Coke",
        cost: 2.50
    }
]
# # You should ask a user to enter a name, and return what that person owes. If that person is not in the list, return 'Sorry, they did not eat'
# I.e. if a user entered "Luke", it should return "Luke owes $12.0"
# Advanced:
# # Format your total so it always shows two decimal places, e.g. $12.00
# # Allow items to be added to the list. E.g. "Press 1 to add items, press 2 to work out a total".

person = 0
puts "What is your name? "
customer = gets.chomp.capitalize

while person < items.length
    check = items[person].has_value?(customer)
    if check == true
        puts "#{customer} owes $#{'%.2f' % items[person][:cost]}"
        break
    else
        person += 1
    end
    if person == items.length
        puts "Sorry, they did not eat"
    end
end

