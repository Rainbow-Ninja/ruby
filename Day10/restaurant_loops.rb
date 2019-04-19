require_relative 'restaurant_order.rb'
#system "clear"
all_customer_orders = []

loop do
  puts "Enter your name: "
  name = gets.chomp.capitalize
  customer = RestaurantOrder.new(name)
  customer.welcome_message
  
  exit = false

  until exit
    customer.menu

    user_choice = gets.chomp.to_i

    case user_choice
      when 1, 2, 3
        #place order
        customer.place_order(user_choice)
      when 0
        #exit the app
        all_customer_orders.push( {"Thank you " => customer.name, "Your bill is $" => customer.bill} )

        puts "Thankyou #{customer.name}. Your bill is $#{customer.bill}."

        exit = true
      else
        #invalid key message
        puts "Invalid choice. Try again."
    end
  end

  puts "\nWould anyone else like to order? (y/n)"
  cont_order = gets.chomp.downcase
  if cont_order.include?('n')
    i = 0
    while i < all_customer_orders.length
      all_customer_orders[i].each{|name, price| puts "#{name} #{price}"}
      i += 1
    end
    break
  end
end