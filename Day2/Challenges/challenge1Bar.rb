cocktails = 3
waters = 2
beers = 6
cokes = 0
steaks = 0
nachos = 0
wings = 0
cocktail_price = 22
cocktail_cost = 8
beer_price = 12
beer_cost = 3
water_price = 6
water_cost = 0.15
coke_price = 5
coke_cost = 1
steak_price = 25
steak_cost = 12
nacho_price = 19
nacho_cost = 7
wings_price = 20
wings_cost = 8
cocktail_profit = cocktail_price-cocktail_cost
beer_profit = beer_price-beer_cost
water_profit = water_price-water_cost
times_ordered = 0
times_ordered_food = 0

    puts "Would you like to order? y/n"
    order = gets.chomp.downcase
    if order.include?"y"
        puts "What would you like? Food or drinks?"
        order_what = gets.chomp.downcase
        case order_what
        when "drinks"
        
                puts "What drink would you like? "
                drink_order = gets.chomp
                drink_order.downcase!
        
                case drink_order
                when "cocktail"
                    puts "How many would you like? "
                    num_cocktails = gets.chomp.to_i
                    cocktails = cocktails + num_cocktails
                    times_ordered +=1
                when "beer"
                    puts "How many would you like? "
                    num_beers = gets.chomp.to_i
                    beers = beers + num_beers
                    times_ordered += 1
                when "water"
                    puts "How many would you like? "
                    num_waters = gets.chomp.to_i
                    waters = waters + num_waters
                    times_ordered += 1
                when "coke"
                    puts "How many would you like? "
                    num_cokes = gets.chomp.to_i
                    cokes = cokes + num_cokes
                    times_ordered += 1
                else
                    puts "We only serve cocktails, beer or water"
                end
        
        when "food"   
                puts "What would you like? "
                food_order = gets.chomp
                food_order.downcase!
            case food_order
            when "wings"
                puts "How many would you like? "
                num_wings = gets.chomp.to_i
                wings = wings + num_wings
                times_ordered_food +=1
            when "nachos"
                puts "How many would you like? "
                num_nachos = gets.chomp.to_in
                puts "Beef or chicken nachos? "
                nacho_type = gets.chomp.downcase!
                nachos = nachos + num_nachos
                times_ordered_food += 1
            when "steak"
                puts "How would you like it? "
                steak_cooked = gets.chomp.downcase!
                steaks = steaks += 1
                times_ordered_food +=1
            else
                puts "We only have wings, nachos and steak "
            end
        else
            puts "Can you please repeat that "
        
        end
    else
        puts "Have a great night! "
    end
puts "You need to make #{cocktails} cocktails, #{beers} beers and #{waters} waters"
profit = cocktails*cocktail_profit + beers*beer_profit + waters*water_profit
puts "You have made \$#{'%.2f' % profit} today!"