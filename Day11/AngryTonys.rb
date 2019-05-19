# * Its 21st century, and you want to automate. Write a program that asks the customer for their order. If they order a cocktail, add one to the cocktail lists etc. If they enter something that is not on the list, prompt them to try again.

# * Print the final amount of drinks you need to make!

# Advanced:
# * cocktails sell for $22, and cost $8 to make, beer sell for $12, and cost $3 to pour, water sells for $6, and cost $0.15 to make

# * print out the total profit for the orders you have

class Bar
    def initialize
        @current_cocktails = 3
        @current_waters = 2
        @current_beers = 6

        @cocktail_price = 22
        @cocktail_cost = 8

        @beer_price = 12
        @beer_cost = 3

        @water_price = 6
        @water_cost = 0.15
    end

    def profit
        @cocktail_profit = @cocktail_price - @cocktail_cost
       
        @beer_profit = beer_price - @beer_cost
     
        @water_profit = @water_price - @water_cost

        @total_profit = @cocktail_profit + @beer_profit + @water_profit
    end

    def print_profits
        puts "Your bill is "
    end

end


class Customer_Order < Bar

    def initialize
        @customer_cocktails = 0
        @customer_beers = 0
        @customer_waters = 0
    end

    def order
        order = true
        while order == true
            puts "What would you like to order? \n(1) cocktail\n(2) beer or \n(3) water\n"
            order = gets.chomp
            case order
                when "1"
                    @customer_order += 1
                    current_cocktails += 1
                    order = false
                when "2"
                    @customer_beers +=1
                    current_beers += 1
                    order = false
                when "3"
                    @customer_waters += 1
                    current_waters += 1
                    order = false
                else
                    puts "I didn't get that, please try again: "
            end
        end
    end

    def print_order
        puts "You have ordered #{@customer_cocktails} cocktails, #{@customer_beers} beers and #{@customer_waters} waters"
        @customer_bill = (@customer_cocktails * @cocktail_price) + (@customer_beers * @beer_price) + (@customer_waters * @water_price)
        puts "Your total is #{@customer_bill}/nThanks and have a great night!"
    end

end


