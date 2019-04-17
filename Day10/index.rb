require_relative 'restaurant_order.rb'

customer1 = RestaurantOrder.new("Jo")
customer1.welcome_msg
 
exit = false

until exit
    customer1.menu

    #gets input form the user
    user_choice = gets.chomp.to_i
    case user_choice
        when 1, 2, 3
            #place order
            customer1.place_order(user_choice)
        when 0
            #exit the app
            puts "Thank you! Come again #{customer1.name} and your bill is $#{customer1.bill}"
            exit = true
        else
            #invalid key message
            puts "** Invalid key, item not on menu. Try again **"
    end
end
