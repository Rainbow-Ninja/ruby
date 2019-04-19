class Bar

    def initialize
        @beer_count = 6
        @cocktail_count = 3
        @water_count = 2
        @count = 0
    end

    def welcome #called by order
        puts "Welcome to the coolest bar in town "
        want_drinks
    end

    def valid_answer(which_drink)
        @drink_chosen = @drink_order.keys
        if drink_chosen.detect{ |choice| choice == which_drink }
            @customer.drinks
        end
    end
   
    def drinks
        (@count > 0? (puts "Would you like anything more? ") : (puts "What yould you like?\n\n"))
        print_drinks
        puts "\nChoose 1, 2, or 3 or 'q' to exit"
        @drink_order = {1 => 22, 2 => 12, 3 => 6}
        which_drink?
    end

    def print_drinks #called by drinks
        @drinks = {"1. Cocktail" => ["$22", 8], "2. Beer" => ["$12", 3], "3. Water" => ["$6", 0.15]}
        @drinks.each{|drink, price| puts "#{drink}     #{price[0]} "}
    end

    def drink_count #called by how_many
        case @which_drink
        when 0 
            @want = false
            tally_all
        when 1 
            @cocktail_count += @how_many
        when 2
            @beer_count += @how_many
        when 3
            @water_count += @how_many
        else
            puts "I didn't get that. Try again "
            drinks
        end
    end
    
    def want_drinks #called by welcome or try_again
        puts "Would you like a drink? (y/n) "
        @like = want_drinks_valid(gets.chomp.downcase) 
        @like || try_again
        if != @like
            tally_all
        end
    end

    def want_drinks_valid(answer) #called by want_drinks
        valid_answer = ["y", "n"]
        if valid_answer.include?(answer)&&"y"
            return true
        else
            return false
        end

    end

    def try_again #called by want_drinks
        puts "I didn't get that. Please try again "
        want_drinks
    end

    def which_drink #called by drinks
        @which_drink = gets.chomp.to_i
        how_many
    end

    def how_many #called by which_drink
        puts "How many would you like? "
        @how_many = gets.chomp.to_i
        count
        drink_count
    end
    
    def count #called by how_many
        @count += 1
    end

    def profit
        @beer_profit = @drinks["2. Beer"[0]] - @drinks["2. Beer"[1]]
        @cocktail_profit = @drinks["1. Cocktail"[0]] - @drinks["1. Cocktail"[1]]
        @water_profit = @drinks["3. Water"[0]] - @drink["3. Water"[1]]
        @profit = @beer_profit + @cocktail_profit + @water_profit
    end

    def tally_all #called by want_drinks and drink_count
        puts "You need to make #{@beer_count} beers, #{@cocktail_count} cocktails and #{@water_count} waters"
        puts "You have made $#{@profit.round(2)} today"
    end

  
    def order
        welcome
        while @want == true
            drinks
        end
    end
end

Bar.new.order