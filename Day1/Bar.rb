cocktails = 3
waters = 2
beers = 6
cocktail_price = 22
cocktail_cost = 8
beer_price = 12
beer_cost = 3
water_price = 6
water_cost = 0.15
cocktail_profit = cocktail_price-cocktail_cost
beer_profit = beer_price-beer_cost
water_profit = water_price-water_cost
order = true
times_ordered = 0

while (order == true)
    if (times_ordered == 0)
       puts "Would you like a drink? Y/N "
    else
       puts "Would you like any more drinks? Y/N "
    end
    wants_order = gets.chomp
    wants_order.downcase!
    if (wants_order == "y")
        puts "What drink would you like? "
        drink_order = gets.chomp
        drink_order.downcase!

        if drink_order.include?"cocktail"
            puts "How many would you like? "
            num_cocktails = gets.chomp.to_i
            cocktails = cocktails + num_cocktails
            times_ordered += 1
        elsif drink_order.include?"beer"
            puts "How many would you like? "
            num_beers = gets.chomp.to_i
            beers = beers + num_beers
            times_ordered += 1
        elsif drink_order.include?"water"
           puts "How many would you like? "
            num_waters = gets.chomp.to_i
            waters = waters + num_waters
            times_ordered += 1
        else
            puts "We only serve cocktails, beer or water"
        end
        
    else
        order = false
        puts "Enjoy your drinks!"
    end
end
puts "You need to make #{cocktails} cocktails, #{beers} beers and #{waters} waters"
profit = cocktails*cocktail_profit + beers*beer_profit + waters*water_profit
puts "You have made \$#{'%.2f' % profit} today!"